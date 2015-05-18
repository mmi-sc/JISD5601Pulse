/*
===============================================================================
 Name        : JISD5601Pulse.c
 Author      : $(author)
 Version     :
 Copyright   : $(copyright)
 Description : main definition
===============================================================================
*/

#ifdef __USE_CMSIS
#include "LPC8xx.h"
#endif
#include "nonuart_romi2c.h"

#include <cr_section_macros.h>
#include "sct_fsm.h"

// from "lpc8xx_mrt.h"
#define MRT_INT_ENA					(0x1<<0)
#define MRT_REPEATED_MODE		(0x00<<1)
/* Status register bit definition */
#define MRT_STAT_IRQ_FLAG		(0x1<<0)

void SwitchMatrix_Init();
void IOCON_Init();

/************ I2C ************/
I2C_HANDLE_T *hI2C;
I2CD_API_T* pI2CApi;
#define I2CCLK 10000

volatile uint8_t iHandle[96];

I2C_PARAM i_param = { 0, 0, (uint8_t *) 0, (uint8_t *) 0, (void *)0, 1, {0, 0, 0 } };
I2C_RESULT i_result = { 0, 0 };

#define S1A (0x3E)  // LCD address
#define S1W (S1A<<1)
static uint8_t initSeq[11] = { 10,
		S1W, 0x38,0x39, 0x14, 0x72,
		0x57, 0x6A, 0x38, 0x0C, 0x01 };

static uint8_t string1[4][11] = {
		{ 3, S1W, 0x06, 0x80 },
		{ 10, S1W, 0x40, ' ', ' ' ,'0', 'k', 'm', '/', 'h', ' '},
		{ 3, S1W, 0x06, 0xC0 },
		{ 10, S1W, 0x40, ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '},
};

static const uint8_t hex2char[16] = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

/************ I2C ************/

#define START_MRT(ch) (LPC_MRT ->Channel[ch].INTVAL |= 0x1UL << 31)
#define STOP_MRT(ch) (LPC_MRT ->Channel[ch].INTVAL &= ~(0x1UL << 31))

#define START_SCT() (LPC_SCT->CTRL_U &= ~(1<<2))
#define HALT_SCT() {(LPC_SCT->CTRL_U |= (1<<2));LPC_SCT->OUTPUT &= ~1;}

#define MAX_SPEED (300)

const int pollingMrtChannel = 0;

const int downBtnPort = 2;		/* GPIO PIO0_2 */
const int upBtnPort = 3;		/* GPIO PIO0_3 */

const int downIntrChannel = 0;		/* PININT0 */
const int upIntrChannel = 1;		/* PININT1 */

const int16_t initial_speed = 0;
// current speed
static int16_t speed = 0;	// km/h
// repeat time counter
static uint8_t lastPin0 = 0xFF;
static uint32_t downButtonDuration = 0;
static uint32_t upButtonDuration = 0;

static uint32_t ppr = 4;		/* pulse per rotation */

void updateSpeed(int16_t newSpeed) {
	uint32_t new_limit;
	if (newSpeed <= 0) {
		if ((LPC_SCT->CTRL_U & (1<<2)) == 0) {
			HALT_SCT();
		}
		new_limit = counter_limit;
	} else {
		new_limit = (SystemCoreClock * 60 / (ppr * 637) * 30) / newSpeed;
	}
	LPC_SCT->MATCHREL[0].U = new_limit;
	if (newSpeed > 0 && (LPC_SCT->CTRL_U & (1<<2)) != 0) {
		LPC_SCT->MATCH[0].U = new_limit;
		START_SCT();
	}

	uint8_t *pMsg;
	int i;
	int divisor;

	pMsg = &string1[1][3];
	for (i = 0, divisor = 100; i < 3; i++) {
		if ((newSpeed / divisor) > 0 || divisor == 1) {
			*pMsg++ = ((newSpeed / divisor) % 10) + '0';
		} else {
			*pMsg++ = ' ';
		}
		divisor /= 10;
	}
//	*pMsg++ = 'k';
//	*pMsg++ = 'm';
//	*pMsg++ = '/';
//	*pMsg++ = 'h';
//
//	*pMsg++ = hex2char[ppr & 0xF];
	string1[1][10] = (ppr >> 2) + 'A' - 1;
}

int diffSpeed(uint32_t *duration, int diff, int repeat) {
	int offset = 0;
	if (*duration == 5) {
		offset = diff;
	} else if (*duration > 500 && ((*duration % 100) == 0)) {
		offset = repeat;
		if (*duration > 1000) {
			*duration -= 100;
		}
	}
	return offset;
}

void MRT_IRQHandler(void) {
	if (LPC_MRT ->Channel[pollingMrtChannel].STAT & MRT_STAT_IRQ_FLAG) {
		int newSpeed = speed;
		uint8_t pin0 = (LPC_GPIO_PORT->PIN0 & ((1<<downBtnPort)|(1<<upBtnPort)));
		if (lastPin0 != pin0) {
			downButtonDuration = upButtonDuration = 0;
		}
		switch (pin0) {
		case (1<<3):
			downButtonDuration++;
			newSpeed += diffSpeed(&downButtonDuration, -1, -10);
			break;
		case (1<<2):
			upButtonDuration++;
			newSpeed += diffSpeed(&upButtonDuration, +1, +5);
			break;
		default:
			downButtonDuration = upButtonDuration = 0;
			break;
		}
		lastPin0 = pin0;
		if (newSpeed < 0) {
			newSpeed = 0;
		} else if (newSpeed > MAX_SPEED) {
			newSpeed = MAX_SPEED;
		}
		if (newSpeed != speed) {
			// recalculate SCT
			speed = newSpeed;
			updateSpeed(speed);
		}
		LPC_MRT ->Channel[pollingMrtChannel].STAT = MRT_STAT_IRQ_FLAG;
	}
		
	return;
}

void init_mrt(uint32_t TimerInterval[], int nCh) {
	LPC_SYSCON ->SYSAHBCLKCTRL |= (0x1 << 10);
	LPC_SYSCON ->PRESETCTRL &= ~(0x1 << 7);
	LPC_SYSCON ->PRESETCTRL |= (0x1 << 7);

	volatile uint32_t i = 0;
	for (i = 0; i < nCh; i++) {
		LPC_MRT ->Channel[i].INTVAL = TimerInterval[i];
		//LPC_MRT ->Channel[i].INTVAL |= 0x1UL << 31;
		LPC_MRT ->Channel[i].CTRL = MRT_REPEATED_MODE | MRT_INT_ENA;
	}

	NVIC_EnableIRQ(MRT_IRQn);

	return;
}

void init_gpio(void) {
	LPC_SYSCON->SYSAHBCLKCTRL |= (1<<6);  // Clock for GPIO
    LPC_SYSCON->PRESETCTRL &= ~(0x1<<10);  // GPIO reset
    LPC_SYSCON->PRESETCTRL |= (0x1<<10);   // resume reset

	LPC_GPIO_PORT->DIR0 &= ~(1<<downBtnPort); // PIO0_2 -> IN
	LPC_GPIO_PORT->DIR0 &= ~(1<<upBtnPort); // PIO0_3 -> IN
}

int waiting = 0;
void SysTick_Handler(void) {
	waiting = 0;
}

static inline void wait_ms(uint32_t ms) {
	waiting = 1;
	SysTick_Config(SystemCoreClock/1000*ms);
	while (waiting);
}

int main(void) {
	SystemCoreClockUpdate();
    SwitchMatrix_Init();

    // I2C
	LPC_SYSCON ->SYSAHBCLKCTRL |= (1 << 5);
	pI2CApi = (I2C_HANDLE_T) ROM_DRIVERS_PTR ->pI2CD;
	hI2C = pI2CApi->i2c_setup(LPC_I2C_BASE, (uint32_t *)&iHandle[0]);
	pI2CApi->i2c_set_bitrate( hI2C, SystemCoreClock, I2CCLK);

	wait_ms(500);
	i_param.num_bytes_send = initSeq[0];
	i_param.buffer_ptr_send = (uint8_t *) &initSeq[1];
	pI2CApi->i2c_master_transmit_poll((
			I2C_HANDLE_T*) hI2C, &i_param, &i_result);
	wait_ms(1);

	// IOCON Clock
	IOCON_Init();

	init_gpio();
	switch (LPC_GPIO_PORT->PIN0 & ((1<<downBtnPort) | (1<<upBtnPort))) {
	case (1<<3):
		ppr = 8;	// 8 pulse per rotation if down button was asserted on reset
		break;
	case (1<<2):
		ppr = 16;	// 16 pulse per rotation if up button was asserted on reset
		break;
	case 0:
		ppr = 20;// 20 pulse per rotation if down and up buttons were asserted on reset
		break;
	default:
		ppr = 4;
		break;
	}

	uint32_t tintval[] = { SystemCoreClock/1000};
	init_mrt(tintval, 1);
	START_MRT(pollingMrtChannel);

    LPC_SYSCON->SYSAHBCLKCTRL |= (1 << 8);	// Clock for SCT
    sct_fsm_init();
    updateSpeed(0);

	register int m;
    while(1) {
		for( m = 0; m < 4; m++ ) {
			i_param.num_bytes_send = string1[m][0];
			i_param.buffer_ptr_send = (uint8_t *) &string1[m][1];
			pI2CApi->i2c_master_transmit_poll(
					(I2C_HANDLE_T*)hI2C, &i_param, &i_result);
		}
		wait_ms(100);
    }
    return 0 ;
}
