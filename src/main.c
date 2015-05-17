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
		{ 10, S1W, 0x40, 'H', 'e' ,'l', 'l', 'o', '.', ' ', ' '},
		{ 3, S1W, 0x06, 0xC0 },
		{ 10, S1W, 0x40, 'W', 'o', 'r', 'l', 'd', '.', ' ', ' '},
};

static const uint8_t hex2char[16] = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

/************ I2C ************/

#define START_MRT(ch) (LPC_MRT ->Channel[ch].INTVAL |= 0x1UL << 31)
#define STOP_MRT(ch) (LPC_MRT ->Channel[ch].INTVAL &= ~(0x1UL << 31))

#define START_SCT() (LPC_SCT->CTRL_U &= ~(1<<2))
#define STOP_SCT() (LPC_SCT->CTRL_U |= (1<<2))

#define MAX_SPEED (300)

const int downBtnMrtChannel = 0;
const int upBtnMrtChannel = 1;

const int downBtnPort = 2;		/* GPIO PIO0_2 */
const int upBtnPort = 3;		/* GPIO PIO0_3 */

const int downIntrChannel = 0;		/* PININT0 */
const int upIntrChannel = 1;		/* PININT1 */

const int16_t initial_speed = 1;
// current speed
static int16_t speed = 0;	// km/h
// repeat time counter
static uint8_t downButtonDuration = 0;
static uint8_t upButtonDuration = 0;

static uint32_t ppr = 4;		/* pulse per rotation */

// down button handler
void PININT0_IRQHandler(void) {
	START_MRT(downBtnMrtChannel);
	downButtonDuration = 0;
	LPC_PIN_INT->IST = (1<<downIntrChannel);   // Clear interrupt
}

// up button handler
void PININT1_IRQHandler(void) {
	START_MRT(upBtnMrtChannel);
	upButtonDuration = 0;
	LPC_PIN_INT->IST = (1<<upIntrChannel);   // Clear interrupt
}

void updateSpeed(int16_t newSpeed) {
	uint32_t new_limit;
	if (newSpeed <= 0) {
		STOP_SCT();
		LPC_SCT->MATCH[0].U = counter_limit;
		new_limit = counter_limit;
	} else {
		new_limit = (SystemCoreClock * 60 / (ppr * 637) * 30) / newSpeed;
	}
	LPC_SCT->MATCHREL[0].U = new_limit;

	uint8_t *pMsg;
	int i;
	int divisor;

	pMsg = &string1[1][3];
	for (i = 0, divisor = 100; i < 3; i++) {
		*pMsg++ = ((newSpeed / divisor) % 10) + '0';
		divisor /= 10;
	}
	*pMsg++ = 'k';
	*pMsg++ = 'p';
	*pMsg++ = 'h';
	uint8_t pin0 = LPC_GPIO_PORT->PIN0;
	*pMsg++ = hex2char[0xF & (pin0 >> 4)];
	*pMsg++ = hex2char[0xF & pin0];

//	pMsg = &string1[1][3];
//	for (i = 0, divisor = 10000000; i < 8; i++) {
//		*pMsg++ = ((new_limit / divisor) % 10) + '0';
//		divisor /= 10;
//	}
}

void MRT_IRQHandler(void) {
	if (LPC_MRT ->Channel[downBtnMrtChannel].STAT & MRT_STAT_IRQ_FLAG) {
		if( LPC_GPIO_PORT->PIN0 & (1<<downBtnPort) ) {
			downButtonDuration++;
			if (downButtonDuration == 1 || downButtonDuration >= 10) {
				if (speed > 0) {
					speed--;
				} else {
					speed = 0;
				}
			} else {
				// ignore until repeat
			}
		} else {
			downButtonDuration = 0;
			STOP_MRT(downBtnMrtChannel);
		}
		LPC_MRT ->Channel[downBtnMrtChannel].STAT = MRT_STAT_IRQ_FLAG;
	}

	if (LPC_MRT ->Channel[upBtnMrtChannel].STAT & MRT_STAT_IRQ_FLAG) {
		if( LPC_GPIO_PORT->PIN0 & (1<<upBtnPort) ) {
			upButtonDuration++;
			if (upButtonDuration == 1 || upButtonDuration >= 10) {
				if (speed == 0) {
					START_SCT();
					speed = initial_speed;
				} else if (speed < MAX_SPEED) {
					speed++;
				} else {
					// ignore
				}
			} else {
				// ignore until repeat
			}
		} else {
			upButtonDuration = 0;
			STOP_MRT(upBtnMrtChannel);
		}
		LPC_MRT ->Channel[upBtnMrtChannel].STAT = MRT_STAT_IRQ_FLAG;
	}

	// recalculate SCT
	updateSpeed(speed);
		
	return;
}

void init_mrt(uint32_t TimerInterval[]) {
	LPC_SYSCON ->SYSAHBCLKCTRL |= (0x1 << 10);
	LPC_SYSCON ->PRESETCTRL &= ~(0x1 << 7);
	LPC_SYSCON ->PRESETCTRL |= (0x1 << 7);

	volatile uint32_t i = 0;
	for (i = 0; i < 2; i++) {
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

	// down
	LPC_SYSCON->PINTSEL[downIntrChannel] = downBtnPort; // PIO0_2 -> PININT0

	LPC_PIN_INT->ISEL &= ~(1<<downIntrChannel);     // Edge detection
	LPC_PIN_INT->IENF |= (1<<downIntrChannel);      // Falling Edge

	// up
	LPC_SYSCON->PINTSEL[upIntrChannel] = upBtnPort; // PIO0_3 -> PININT3

	LPC_PIN_INT->ISEL &= ~(1<<upIntrChannel);     // Edge detection
	LPC_PIN_INT->IENF |= (1<<upIntrChannel);      // Falling Edge
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

	// IOCON Clock
	IOCON_Init();
    LPC_IOCON->PIO0_2 = 0x90;
    LPC_IOCON->PIO0_3 = 0x90;

	init_gpio();
	switch (LPC_GPIO_PORT->PIN0 & ((1<<downBtnPort) | (1<<upBtnPort))) {
	case (1<<2):
		ppr = 8;	// 8 pulse per rotation if down button was asserted on reset
		break;
	case (1<<3):
		ppr = 16;	// 16 pulse per rotation if up button was asserted on reset
		break;
	case ((1<<2)|(1<<3)):
		ppr = 20;// 20 pulse per rotation if down and up buttons were asserted on reset
		break;
	default:
		ppr = 4;
		break;
	}

	uint32_t tintval[] = { SystemCoreClock/20, SystemCoreClock/20};
	init_mrt(tintval);

    LPC_SYSCON->SYSAHBCLKCTRL |= (1 << 8);	// Clock for SCT
    sct_fsm_init();
    updateSpeed(20);
    START_SCT();

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

	NVIC_EnableIRQ(PININT0_IRQn);               //  Enable PININT0 IRQ
	NVIC_EnableIRQ(PININT1_IRQn);               //  Enable PININT1 IRQ

	register int m;
    while(1) {
		for( m = 0; m < 4; m++ ) {
			i_param.num_bytes_send = string1[m][0];
			i_param.buffer_ptr_send = (uint8_t *) &string1[m][1];
			pI2CApi->i2c_master_transmit_poll(
					(I2C_HANDLE_T*)hI2C, &i_param, &i_result);
		}
		wait_ms(500);
    }
    return 0 ;
}
