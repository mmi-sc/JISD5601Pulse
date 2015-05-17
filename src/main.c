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

#include <cr_section_macros.h>
#include "sct_fsm.h"

void SwitchMatrix_Init();

#define S1A (0x3E)  // LCD address
#define S1W (S1A<<1)

/*
static uint8_t initSeq[11] = { 10,
		S1W, 0x38,0x39, 0x14, 0x72,
		0x57, 0x6A, 0x38, 0x0C, 0x01 };
static uint8_t string1[4][10] = {
		{ 3, S1W, 0x06 , 0x80 },
		{ 8, S1W, 0x40, 0xCA, 0xDB, 0xB0, 0x20,0x20,0x20 },
		{ 3, S1W, 0x06, 0xC0 },
		{ 8, S1W, 0x40, 'W' , 'o', 'r', 'l', 'd' , '.'}
};

static uint8_t string2[4][10] = {
		{ 3, S1W, 0x06 , 0xC0 },
		{ 8, S1W, 0x40, 'H', 'e' ,'l', 'l', 'o','.'},
		{ 3, S1W, 0x06, 0x80 },
		{ 8, S1W, 0x40, 'W' , 'o', 'r', 'l', 'd' , '.'}
};
*/

int main(void) {
	SystemCoreClockUpdate();
    SwitchMatrix_Init();

    LPC_SYSCON->SYSAHBCLKCTRL |= (1 << 8);
    sct_fsm_init();
    LPC_SCT->CTRL_U &= ~(1<<2);

    // Force the counter to be placed into memory
    volatile static int i = 0 ;
    // Enter an infinite loop, just incrementing a counter
    while(1) {
        i++ ;
    }
    return 0 ;
}
