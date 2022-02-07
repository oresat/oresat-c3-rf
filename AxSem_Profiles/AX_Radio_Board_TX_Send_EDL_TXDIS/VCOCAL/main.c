/**
*************************************************************************************************************
* @file TESTS\main.c
* @brief Code for VCOCAL module, for calibration of the VCOI.*
* @internal
* @author   Thomas Sailer, Janani Chellappan, Srinivasan Tamilarasan, Pradeep Kumar GR
* $Rev: $
* $Date: $
*************************************************************************************************************
* Copyright 2016 Semiconductor Components Industries LLC (d/b/a “ON Semiconductor”).
* All rights reserved.  This software and/or documentation is licensed by ON Semiconductor
* under limited terms and conditions.  The terms and conditions pertaining to the software
* and/or documentation are available at http://www.onsemi.com/site/pdf/ONSEMI_T&C.pdf
* (“ON Semiconductor Standard Terms and Conditions of Sale, Section 8 Software”) and
* if applicable the software license agreement.  Do not use this software and/or
* documentation unless you have carefully read and you agree to the limited terms and
* conditions.  By using this software and/or documentation, you agree to the limited
* terms and conditions.
*
* THIS SOFTWARE IS PROVIDED "AS IS".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED
* OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF
* MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE.
* ON SEMICONDUCTOR SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL,
* INCIDENTAL, OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
* @endinternal
*
* @ingroup TEMPLATE_FIRMWARE_504x
*
* @details
*/

#include "../AX_Radio_Lab_output/configslave.h"

#if defined __ARMEL__ || defined __ARMEB__
#ifdef __AXM0
#include <axm0f143.h>
#include "axm0_config.h"
#include "axm0_xbar.h"
#include "axm0.h"
#include <stdbool.h>
#elif defined __AXM0F2
#include <axm0f243.h>
#include "axm0_config.h"
#include "axm0f2_pin.h"
#include "axm0f2.h"
#include <stdbool.h>
#endif // __AXM0
#else
#include <ax8052.h>
#endif //__ARMEL__ || defined __ARMEB__
#include <libmftypes.h>
#include <libmfradio.h>
#include <libmfflash.h>
#include <libmfwtimer.h>
#include <libmfdbglink.h>

#include "../COMMON/display_com0.h"

#ifdef MINI_KIT
#include <libminikitleds.h>
#else
#include <libdvk2leds.h>
#endif // MINI_KIT

#if !(defined __ARMEL__ || defined __ARMEB__)
#include <stdlib.h>
#endif

#include "../COMMON/misc.h"
#include "../COMMON/configcommon.h"
#include "../COMMON/easyax5043.h" /* TODO */

#include "../COMMON/display_com0.h"

#if defined(SDCC)
extern uint8_t _start__stack[];
#endif

uint8_t __data coldstart = 1; // caution: initialization with 1 is necessary! Variables are initialized upon _sdcc_external_startup returning 0 -> the coldstart value returned from _sdcc_external startup does not survive in the coldstart case
volatile axradio_trxstate_t __data axradio_trxstate = trxstate_off;
uint16_t __xdata vtune[64];
uint8_t __data range[2];

extern const uint32_t __code freqinc;
extern const uint32_t __code freqincmhz;
extern const uint32_t __code freqstart;
extern const uint32_t __code freqend;
uint32_t __data freq;

//#define MEMIO

#if defined(SDCC)
    static __xdata uint8_t __at(0x605) number_lines;
    static __xdata uint8_t __at(0x606) lines[50][133];
#elif defined __CX51__ || defined __C51__
    static uint8_t xdata number_lines _at_ 0x605;
    static uint8_t xdata lines[50][133] _at_ 0x606;
#elif defined __ICC8051__
    static __xdata __no_init uint8_t number_lines @ 0x605;
    static __xdata __no_init uint8_t lines[50][133] @ 0x606;
#elif defined __ARMEL__ || defined __ARMEB_
//    static uint8_t __xdata number_lines __attribute__((section(".ARM.__at_0x20000600")));
//    static uint8_t __xdata lines[50][100] __attribute__((section(".ARM.__at_0x20000604")));
    static uint8_t __xdata number_lines ;
    static uint8_t __xdata lines[50][100];
#endif

// Debug Link Configuration
#if defined __ARMEL__ || defined __ARMEB__
    #if defined USE_DBGLINK
        void debuglink_init_axm0(void)
        {
            #ifdef __AXM0
            axm0_xbar_dbglink_config(UART0_TX, UART0_RX_2, AXM0_XBAR_PIN_NOT_REQUIRED, AXM0_XBAR_PIN_NOT_REQUIRED); // tx_pin, rx_pin, UARTx_CLK pin, TxOUT pin
			#endif /* __AXM0 */
            dbglink_timer0_baud(0, 9600, AXM0XX_HFCLK_CLOCK_FREQ);  // HS OSC, Baud rate, Clock
            dbglink_init(0, 8, 1);
        }
    #endif // USE_DBGLINK
#endif // defined


#if defined __ARMEL__ || defined __ARMEB__
#ifdef __AXM0
void GPIO_Handler (void)
{

    // IRQ on PB3
    #ifdef TX_ON_DEMAND

        #ifndef MINI_KIT
            if(GPIO->INT_STS & BUTTON_MASK)
            {
                NVIC_ClearPendingIRQ;
                GPIO->INT_STS = BUTTON_MASK;
                // RIRQ on PR5
                if(GPIO->INT_STS & 0x20000000)                  // IRQ_PIN
                {
                    GPIO->INT_STS = 0x20000000;                 // IRQ_PIN
                    RADIO_IRQ();
                }
                else
                {
                    if(!deglitch_busy)
                    {
                        button_pressed = 1;
                    }
                }
            }
        #else
            if(GPIO->INT_STS & 0x20000000)                  // IRQ_PIN
            {
                NVIC_ClearPendingIRQ;
                GPIO->INT_STS = 0x20000000;                 // IRQ_PIN
                RADIO_IRQ();
            }

            if(GPIO->INT_STS & BUTTON_MASK)
            {
                NVIC_ClearPendingIRQ;
                GPIO->INT_STS = BUTTON_MASK;
                if(!deglitch_busy)
                    {
                        button_pressed = 1;
                    }
            }

        #endif // MINI_KIT
    #else
        // RIRQ on PR5
        if(GPIO->INT_STS & 0x20000000)                      // IRQ_PIN
        {
            NVIC_ClearPendingIRQ;
            GPIO->INT_STS = 0x20000000;                     // IRQ_PIN
            RADIO_IRQ();
        }
    #endif // TX_ON_DEMAND
}
#endif // __AXM0
#ifdef __AXM0F2
// IRQ on PB3 (0.2) or PR5 (2.4)
#ifdef TX_ON_DEMAND
#ifndef MINI_KIT
void GPIOPort0_Handler()
{
    NVIC_ClearPendingIRQ(GPIOPort0_IRQn);

    /* Serve INTR at 0.2 (PB3) */
    if(GPIO_PRT0->INTR & 0x04)
    {
        if(!deglitch_busy)
        {
            button_pressed = 1;
        }
    }

    /* clear PB3 0.2 interrupt */
    GPIO_PRT0->INTR |= 1<<2;
}
#else
void GPIOPort3_Handler()
{
    NVIC_ClearPendingIRQ(GPIOPort3_IRQn);

    /* Serve INTR at 3.6 (PB3) */
    if(GPIO_PRT3->INTR & 0x40)
    {
        if(!deglitch_busy)
        {
            button_pressed = 1;
        }
    }

    /* clear PC4 3.6 interrupt */
    GPIO_PRT3->INTR |= 1<<6;
}
#endif // MINI_KIT
#endif // TX_ON_DEMAND

#endif /* __AXM0F2 */
#endif /* defined __ARMEL__ || defined __ARMEB__ */



#if defined SDCC || defined __ICC8051__
static void pwrmgmt_irq(void) __interrupt(INT_POWERMGMT)
{
    uint8_t pc = PCON;
    if (!(pc & 0x80))
        return;
    GPIOENABLE = 0;
    IE = EIE = E2IE = 0;
    for (;;)
        PCON |= 0x01;
}
#endif // defined

#if defined SDCC
void axradio_isr(void) __interrupt INT_RADIO
#elif defined __CX51__ || defined __C51__
__reentrantb void axradio_isr(void) interrupt INT_RADIO
#elif defined __ICC8051__
#pragma vector=0x23
__interrupt void axradio_isr(void)
#elif defined __ARMEL__ || defined __ARMEB__
void RADIO_IRQ(void)
#else
#error "Compiler unsupported"
#endif
{
    switch (axradio_trxstate)
    {
        default:
            radio_write8(AX5043_REG_IRQMASK1, 0x00);
            radio_write8(AX5043_REG_IRQMASK0, 0x00);
            break;

        case trxstate_wait_xtal:
            radio_write8(AX5043_REG_IRQMASK1, 0x00); // otherwise crystal ready will fire all over again
            axradio_trxstate = trxstate_xtal_ready;
            break;

        case trxstate_pll_ranging:
            radio_write8(AX5043_REG_IRQMASK1, 0x00); // otherwise autoranging done will fire all over again
            axradio_trxstate = trxstate_pll_ranging_done;
            break;

        case trxstate_pll_settling:
            radio_write8(AX5043_REG_RADIOEVENTMASK0, 0x00);
            axradio_trxstate = trxstate_pll_settled;
            break;
    } // end switch(axradio_trxstate)
} //end radio_isr

void axradio_wait_for_xtal(void)
{
	criticalsection_t crit = enter_critical();
	axradio_trxstate = trxstate_wait_xtal;
	radio_write8(AX5043_REG_IRQMASK1, (radio_read8(AX5043_REG_IRQMASK1) | 0x01)); // enable xtal ready interrupt
	for(;;) {
		__disable_irq();
		if (axradio_trxstate == trxstate_xtal_ready)
			break;
		wtimer_idle(WTFLAG_CANSTANDBY);
		__enable_irq();//exit_critical(crit);
		wtimer_runcallbacks();
	}
    exit_critical(crit);     //  Restore all Interrupts
}

static int16_t axradio_tunevoltage(void)
{
	int16_t __autodata r = 0;
	uint8_t __autodata cnt = 64;
	do {
		radio_write8(AX5043_REG_GPADCCTRL, 0x84);
		do {} while ((radio_read8(AX5043_REG_GPADCCTRL)) & 0x80);
	} while (--cnt);
	cnt = 32;
	do {
		radio_write8(AX5043_REG_GPADCCTRL, 0x84);
		do {} while ((radio_read8(AX5043_REG_GPADCCTRL)) & 0x80);
		{
			int16_t x = ((radio_read8(AX5043_REG_GPADC13VALUE1)) & 0x03);
			x <<= 8;
			x |= (radio_read8(AX5043_REG_GPADC13VALUE0));
			r += x;
		}
	} while (--cnt);
	return r;
}

void enable_radio_interrupt_in_mcu_pin(void)
{
#if defined __ARMEL__ || defined __ARMEB__
	__enable_irq();
#ifdef __AXM0
	NVIC_EnableIRQ(GPIO_IRQn);	       // Enable GPIO IRQ
	GPIO_OR->INT_EN = 0x20000000;          // Enable PR5 interrupt
	if (txondemand_mode) {
		if (!AxM0_Mini_Kit)            // AxM0+ DVK2e board
			GPIO_OR->INT_EN = 0x00000800;   // Enable PB3 interrupt
	}
#endif // __AXM0
#ifdef __AXM0F2
    NVIC_EnableIRQ(GPIOPort0_IRQn);
    NVIC_EnableIRQ(GPIOPort2_IRQn);

    /* ENABLE RIRQ PR5 2.4 INTERRUPT */
    GPIO_PRT2->INTR_CFG |= 1 << 8;      /// rising edge interrupt

#endif // __AXM0F2
#else
	IE_4 = 1;
#endif // defined
}

void disable_radio_interrupt_in_mcu_pin(void)
{
#if defined __ARMEL__ || defined __ARMEB__
#ifdef __AXM0
    GPIO_AND->INT_EN = ~0x20000000;     /* Disable PR5interrupt */
#endif // __AXM0
#ifdef __AXM0F2
	GPIO_PRT2->INTR_CFG &= ~(0x3 << 8);     /* Disable PR5interrupt */
#endif // __AXM0F2
#else
	IE_4 = 0;
#endif // defined
}

#if defined __ARMEL__ || defined __ARMEB__
#ifdef __AXM0
/* Clock Calibration   */
static inline void clk_calibrate()
{
    /* Configure HSOSC and LPOSC freq, prescalar, clock source  */
    CMU->HS_OSC_CFG = 0x000001f4;
    CMU->LP_OSC_CFG = 0x3C;

    /* Setup the calibration filter for the Fast RC Oscillator and LPOSC. */
    CMU->HS_OSC_FILT = 0x00004000;
    CMU->LP_OSC_FILT = 0x4000;

    /* select the reference frequency divide. FOR HSOSC and LSOSC  */
    CMU->HS_OSC_REF_DIV = 0x00001300;
    CMU->LP_OSC_REF_DIV = 0x4F80;

    /* select the frequency trim value for 20MHz AND 640Hz operation. */
    CMU->HS_OSC_20M_FREQ_TUNE = 0x00000270;     // Configure the tune value to board specific
    CMU->LP_OSC_FREQ_TUNE = 0x00000220;         // Configure the tune value to board specific
}

/* Enable Peripheral Clocks */
static inline void pclk_En()
{
    CMU->PCLK_CFG_b.GPIO_EN = 1;       /* Enable GPIO Clock */
    CMU->PCLK_CFG_b.WUT_EN = 1;        /* Enable Wakeup Timer Clock */
    CMU->PCLK_CFG_b.CL_SYSCFG_EN = 1;  /* Enable Clock & System config Clock */
    CMU->PCLK_CFG_b.PMU_EN = 1;        /* Enable PMU Clock */
    CMU->PCLK_CFG_b.XBAR_EN = 1;       /* Enable XBAR Clock */
    CMU->PCLK_CFG_b.FLASH_EN = 1;      /* Enable Wakeup Flash Clock */
    CMU->PCLK_CFG_b.TICKER_EN = 1;     /* Enable Ticker Timer Clock */
    CMU->PCLK_CFG_b.SPI0_EN = 1;       /* Enable SPI 0 Clock */
    CMU->PCLK_CFG_b.UART0_EN = 1;      /* Enable UART 0 Clock */
}

/* Initialize Hardware ports */
static inline void portInit()
{
#ifndef MINI_KIT

    /* Configure state of PORTA */

     /* LEDs at PA0(GPIO0), PA2(GPIO2), PA5(GPIO5), Configure as Output and turn off */
     GPIO_OR->OUT_EN = ((1<<0) | (1<<2) | (1<<5));
     GPIO_AND->DATA_OUT = ~((1<<0)|(1<<2)|(1<<5));

     /* LPXOSC at PA3(GPIO3), PA4(GPIO4), Configure as high Impedance
     Unused pins are PA6(GPIO6), PA7(GPIO7). Configure as PullUp to minimize current consumption */
     XBAR_OR->PULL_UP_CFG = ((1<<7)|(1<<6)|(1<<1));
     XBAR_AND->PULL_DOWN_CFG = ~((1<<7)|(1<<6)|(1<<1));

     /* Configure state of PORTB */

     /* LCD pins at PB0(GPIO8), PB1(GPIO9), Configure as Output.
     For LCD give high and low output at PB1(GPIO9) AND PB0(GPIO8) respectively */
     GPIO_OR->OUT_EN = ((1<<8) | (1<<9));
     GPIO_OR->DATA_OUT = 1<<9;
     GPIO_AND->DATA_OUT = ~(1<<8);

     /* Switch(D & R) at PB2(GPIO10), PB3(GPIO11), Configure as Input and PullUp
     Switch(L & U) at PB6(GPIO14), PB7(GPIO15), Configure as Input and PullUp
     Debug pins are PB4(GPIO12), PB5(GPIO13). Configure as PullUp */
     XBAR_OR->PULL_UP_CFG = ((1<<10)|(1<<11)|(1<<12)|(1<<13)|(1<<14)|(1<<15));
     XBAR_AND->PULL_DOWN_CFG = ~((1<<10)|(1<<11)|(1<<12)|(1<<13)|(1<<14)|(1<<15));

     /* Configure state of PORTC */

     /* LCD pins at PC0(GPIO16), PC1(GPIO17), PC2(GPIO18), PC3(GPIO19), Configure as Output
     For LCD give high and low output at (PC0, PC1) AND (PC2, PC3) respectively */
     GPIO_OR->OUT_EN = ((1<<16) | (1<<17) | (1<<18) | (1<<19));
     GPIO_OR->DATA_OUT = 1<<16 | 1<<17;
     GPIO_AND->DATA_OUT = ~((1<<18)|(1<<19));

     /* Unused pins are PC4(GPIO20), PC5(GPIO21), PC6(GPIO22), PC7(GPIO23). Configure as PullUp to minimize current consumption*/
     XBAR_OR->PULL_UP_CFG = ((1<<20)|(1<<21)|(1<<22)|(1<<23));
     XBAR_AND->PULL_DOWN_CFG = ~((1<<20)|(1<<21)|(1<<22)|(1<<23));

     /* Configure state of PORTR */

     /* RF SIGNALS from DVK to RF Module at PR0(GPIO24), PR2(GPIO26), PR4(GPIO28), Configure as Output. */
     GPIO_OR->OUT_EN = ((1<<24) | (1<<26) | (1<<28));
     GPIO_AND->DATA_OUT = ~((1<<24) | (1<<26) | (1<<28));

     /* RF SIGNALS from RF Module to DVK at PR1(GPIO25), PR3(GPIO27), Configure as Input and PullUp.
     Unused pins are PR6(GPIO30), PR7(GPIO31). Configure as PullUp to minimize current consumption */
    // XBAR_OR->PULL_UP_CFG = ((1<<25)|(1<<27)|(1<<30)|(1<<31));
   //  XBAR_AND->PULL_DOWN_CFG = ~((1<<25)|(1<<27)|(1<<30)|(1<<31));

     display_portinit();

#else

     /* Configure state of PORTA */
     XBAR_OR->PULL_UP_CFG = ((1<<7)|(1<<6)|(1<<5)|(1<<2)|(1<<1)|(1<<0));
     XBAR_AND->PULL_DOWN_CFG = ~((1<<7)|(1<<6)|(1<<5)|(1<<2)|(1<<1)|(1<<0));

     /* Configure state of PORTB */
     GPIO_OR->OUT_EN = ((1<<9) | (1<<10));
     GPIO_OR->DATA_OUT = 1<<10;
     GPIO_AND->DATA_OUT = ~(1<<9);

     XBAR_OR->PULL_UP_CFG = ((1<<8)|(1<<11)|(1<<12)|(1<<13)|(1<<14)|(1<<15));
     XBAR_AND->PULL_DOWN_CFG = ~((1<<8)|(1<<11)|(1<<12)|(1<<13)|(1<<14)|(1<<15));

     /* Configure state of PORTC */
     XBAR_OR->PULL_UP_CFG = ((1<<16)|(1<<17)|(1<<18)|(1<<19)|(1<<20)|(1<<21)|(1<<22)|(1<<23));
     XBAR_AND->PULL_DOWN_CFG = ~((1<<16)|(1<<17)|(1<<18)|(1<<19)|(1<<20)|(1<<21)|(1<<22)|(1<<23));

     /* Configure state of PORTR */

     /* RF SIGNALS from DVK to RF Module at PR0(GPIO24), PR2(GPIO26), PR4(GPIO28), Configure as Output. */
     GPIO_OR->OUT_EN = ((1<<24) | (1<<26) | (1<<28));
     /// GPIO_AND->DATA_OUT = ~((1<<24) | (1<<26) | (1<<28));

     GPIO_OR->DATA_OUT = (1<<24);                                           /// changed already
     GPIO_AND->DATA_OUT = ~((1<<26) | (1<<28));                             /// changed already


     /* RF SIGNALS from RF Module to DVK at PR1(GPIO25), PR3(GPIO27), Configure as Input and PullUp.
     Unused pins are PR6(GPIO30), PR7(GPIO31). Configure as PullUp to minimize current consumption */
    // XBAR_OR->PULL_UP_CFG = ((1<<25)|(1<<27)|(1<<30)|(1<<31));
   //  XBAR_AND->PULL_DOWN_CFG = ~((1<<25)|(1<<27)|(1<<30)|(1<<31));

        XBAR_OR->PULL_UP_CFG = ((1<<25)|(1<<27)|(1<<30)|(1<<31));              /// PR5 left out from pull up
        XBAR_AND->PULL_DOWN_CFG = ~((1<<25)|(1<<27)|(1<<30)|(1<<31));           ///

     lcd2_portinit();

#endif
}

/* Configure clock freq for HSOSC and LPOSC, Also configure System clock */
static inline void clk_config()
{
     /* Configure HSOSC to 20MHz clock frequency */
     CMU->HS_OSC_CFG = AXM0_CONFIG_HSCLK_20M;
     /* Configure LPOSC to 640Hz clock frequency */
     CMU->LP_OSC_CFG = AXM0_CONFIG_LPCLK_640;
     /* Configure System Clock to be HSOSC clock */
     CMU->CFG = AXM0_CONFIG_SYSCLK_HSOSC;
}

/* External startup function for AXM0+ */
uint8_t _axm0_external_startup(void)
{
    __disable_irq();
    /* Calibrate Clocks */
    clk_calibrate();
    /* Configure clocks */
    clk_config();
    /* Enable Peripheral clocks */
    pclk_En();
    /* Set clock source and prescalar for wakeupTimer0 */
    wtimer0_setclksrc(WTIMER0_CLKSRC, WTIMER0_PRESCALER);
    /* Set clock source and prescalar for wakeupTimer1 */
    wtimer1_setclksrc(CLKSRC_FRCOSC, 7);
    /* Configure Hardware Ports */
    portInit();

    /* Calibrate 20MHz Internal oscillator using Radio Sysclock.
    If radio module not connected to MCU then MCU will consider default trim value &
    the user responsibility to update the trim value manually */
    axm0_calib_hs_osc(1);

    if (((PMU->STS & 0x02) && (PMU->MOD == 0x1)))
        return 1;
    return 0;
}
#endif // __AXM0

#ifdef __AXM0F2

uint8_t _axm0f2_external_startup(void)
{
    uint8_t     start_cause = get_startcause();

#ifndef MINI_KIT

    if((start_cause == STARTCAUSE_COLDSTART) ||
       (start_cause == STARTCAUSE_SWRESET)   ||
       (start_cause == STARTCAUSE_WATCHDOGRESET)) {

		//   __disable_irq();
	    /* Set clock source and prescalar for wakeupTimer0 */
	    wtimer0_setclksrc(WTIMER0_CLKSRC, WTIMER0_PRESCALER);
	    /* Set clock source and prescalar for wakeupTimer1 */
	    wtimer1_setclksrc(CLKSRC_FRCOSC, 7);

	    /** \brief config port0
	     *  0.0 --> LCD_SEL --> Strong drive ---> (1)
	     *  0.1, 0.2 --> BUTTON ---> Weak pullup -->(1)
	     *  0.3, 0.7 --> High Imp Analog
	     *  0.4, 0.5, 0.6  ---> high imp digital
	     *  PORT0 --> GPIO
	     */

	    HSIOM->PORT_SEL0 = 0x00000000u;
	    GPIO_PRT0->DR = 0x00000007u;
	    GPIO_PRT0->PC = 0x00049096u;
		GPIO_PRT0->PC2 = 0x00000000u;

	    /** \brief config port1
	     *  1.0, 1.2.--> LCD --> Strong drive ---> (1)
	     *  1.1, 1.3, 1.5 --> led --> strong drive (0)
	     *  1.4, 1.6, 1.7  ---> high imp analog
	     *  PORT1 --> LCD - SPI; OTHERS - GPIO
	     */

	    HSIOM->PORT_SEL1 = 0x00000F0Fu;
	    GPIO_PRT1->DR = 0x00000005u;
	    GPIO_PRT1->PC = 0x00030DB6u;
		GPIO_PRT1->PC2 = 0x00000000u;

	    /** \brief config port4
	     *  4.0 --> led --> weak pullup ---> (0)
	     *  4.1 ---> RADIO ---> strong drive (0)
	     *  4.2  ---> strong drive (0)
	     *  4.3  ---> strong drive (1)
	     *  PORT4 --> GPIO
	     *
	     */

	    HSIOM->PORT_SEL4 &= ~0xFFFFu;
	    GPIO_PRT4->DR = 0x00000008u;
	    GPIO_PRT4->PC = 0x00000DB6u;
		GPIO_PRT4->PC2 = 0x00000000;

		display_portinit();

		coldstart = 1; 	/* Cold start */
		return 0; 		/* Variables init required */
    }

	coldstart = 0; 	/* Warm start */
	return 1; 		/* Variables init not required */

#else
    if((start_cause == STARTCAUSE_COLDSTART) ||
       (start_cause == STARTCAUSE_SWRESET)   ||
       (start_cause == STARTCAUSE_WATCHDOGRESET)) {

		//   __disable_irq();

	    /* Set clock source and prescalar for wakeupTimer0 */
	    wtimer0_setclksrc(WTIMER0_CLKSRC, WTIMER0_PRESCALER);
	    /* Set clock source and prescalar for wakeupTimer1 */
	    wtimer1_setclksrc(CLKSRC_FRCOSC, 7);


	    /** \brief config port0
	     *  0.0 --> Radio-VTCXO --> High Imp Analog
	     *  0.1, 0.3, 0.7 --> High Imp Analog
	     *  0.2, 0.4, 0.5, 0.6  ---> high imp digital
	     *
	     *  PORT0 --> GPIO
	     */

	    HSIOM->PORT_SEL0 = 0x00000000u;
	    GPIO_PRT0->DR = 0x00000000u;
	    GPIO_PRT0->PC = 0x00049040u;
		GPIO_PRT0->PC2 = 0x00000000u;

	    /** \brief config port1
	     *  high imp analog
	     *
	     *  PORT1 --> GPIO
	     *
	     */

	    HSIOM->PORT_SEL1 = 0x00000000u;
	    GPIO_PRT1->DR = 0x00000000u;
	    GPIO_PRT1->PC = 0x00000000u;
		GPIO_PRT1->PC2 = 0x00000000u;

		/** \brief config port3
	     *  3_6 --> push button
	     *  3_7 --> LED
	     *
	     */

	    HSIOM->PORT_SEL3 &= ~0xFF000000u;
	    GPIO_PRT3->DR |= 0x00000040u;
	    GPIO_PRT3->PC |= 0x00C40000u;

	    /** \brief config port4
	     *  high impedance digital
	     *  PORT4 --> GPIO
	     *
	     */
	    HSIOM->PORT_SEL4 = 0x00000000u;
	    GPIO_PRT4->DR = 0x00000000u;
	    GPIO_PRT4->PC = 0x00000249u;
		GPIO_PRT4->PC2 = 0x00000000;

        coldstart = 1; 	/* Cold start */
        return 0; 		/* Variables init required */
    }

	coldstart = 0; 	/* Warm start */
	return 1; 		/* Variables init not required */

#endif // MINI_KIT
}
#endif // __AXM0F2
#else

#if defined(__ICC8051__)
//
// If the code model is banked, low_level_init must be declared
// __near_func elsa a ?BRET is performed
//
#if (__CODE_MODEL__ == 2)
__near_func __root char
#else
__root char
#endif
__low_level_init(void) @ "CSTART"
#else
uint8_t _sdcc_external_startup(void)
#endif
{
    LPXOSCGM = 0x8A;
    wtimer0_setclksrc(WTIMER0_CLKSRC, WTIMER0_PRESCALER);
    wtimer1_setclksrc(CLKSRC_FRCOSC, 7);

    coldstart = !(PCON & 0x40);

    ANALOGA = 0x18; // PA[3,4] LPXOSC, other PA are used as digital pins

#ifndef MINI_KIT
    PORTA = 0xC0 | (PINA & 0x25); 	// pull-up for PA[6,7] which are not bonded, no pull up for PA[3,4] (LPXOSC). Output 0 in PA[0,1,2,5] to prevent current consumption in all DIP switch states
    // init LEDs to previous (frozen) state
    PORTB = 0xFE; //PB[0,1]  (LCD RS, LCD RST) are overwritten by lcd2_portinit(), enable pull-ups for PB[2..7]  (PB[2,3] for buttons, PB[4..7] unused)
    PORTC = 0xF3 | (PINC & 0x08); 	// set PC0 = 1 (LCD SEL), PC1 = 1 (LCD SCK), PC2 = 0 (LCD MOSI), PC3 =0 (LED), enable pull-ups for PC[4..7] which are not bonded Mind: PORTC[0:1] is set to 0x3 by lcd2_portinit()
    // init LEDs to previous (frozen) state
    PORTR = 0xCB; // overwritten by ax504x_reset, ax504x_comminit()


    DIRA = 0x27; // output 0 on PA[0,1,2,5] to prevent current consumption in all DIP switch states. Other PA are inputs, PA[3,4] (LPXOSC) must have disabled digital output drivers
    DIRB = 0x03; // PB[0,1] are outputs (LCD RS, LCD RST), PB[2..7] are inputs (PB[2,3] for buttons,  PB[4..7]  unused)
    DIRC = 0x0F; // PC[0..3] are outputs (LCD SEL, LCD,SCK, LCD MOSI, LED), PC[4..7] are inputs (not bonded).
    DIRR = 0x15; // overwritten by ax504x_reset, ax504x_comminit()
#else //

	PORTA = 0xFF;
    PORTB = 0xFD | (PINB & 0x02); // init LEDs to previous (frozen) state
    PORTC = 0xFF; //
    PORTR = 0x0B; //

    DIRA = 0x00; //
    DIRB = 0x0e; //  PB1 = LED; PB2 / PB3 are outputs (in case PWRAMP / ANSTSEL are used)
    DIRC = 0x00; //  PC4 = button
    DIRR = 0x15; //
#endif // else MINI_KIT

    axradio_setup_pincfg1();
    DPS = 0;
    IE = 0x40;
    EIE = 0x00;
    E2IE = 0x00;

    GPIOENABLE = 1; // unfreeze GPIO

#if defined(__ICC8051__)
    return coldstart;
#else
    return !coldstart; // coldstart -> return 0 -> var initialization; start from sleep -> return 1 -> no var initialization
#endif
}
#endif


__reentrantb uint8_t axradio_cansleep(void) __reentrant
{
	if (axradio_trxstate == trxstate_off || axradio_trxstate == trxstate_rxwor)
		return 1;
	return 0;
}

int main(void)
{
    uint8_t i;
    uint8_t pllValue;
    criticalsection_t crit;
    uint8_t pll_loop;
    #if defined __ARMEL__ || defined __ARMEB__
        #ifdef __AXM0
       if (!((PMU->STS & 0x02) && (PMU->MOD == 0x1)))
            coldstart = 1;  //  Coldstart
       else
            coldstart = 0;  //  Warmstart
        #endif // __AXM0
        __enable_irq();
        #if defined USE_DBGLINK
            debuglink_init_axm0();
        #endif // USE_DBGLINK
    #else
    #if !defined(SDCC) && !defined(__ICC8051__)
            _sdcc_external_startup();
        #endif

        #if defined(SDCC)
            __asm
            G$_start__stack$0$0 = __start__stack
                                  .globl G$_start__stack$0$0
                                  __endasm;
        #endif
        #ifdef USE_DBGLINK
            dbglink_init();
        #endif

            __enable_irq();
            flash_apply_calibration();
            CLKCON = 0x00;
    #endif // defined

    wtimer_init();
	number_lines = 0;

    if (coldstart)
    {
        #if defined __ARMEL__ || defined __ARMEB__
            #ifdef __AXM0
                delay(4000000);     //  4 second Startup delay to recover the board from hibernate mode
            #endif // __AXM0
            #ifdef __AXM0F2
                #ifdef MINI_KIT
                    axradio_setup_pincfg3();
                #endif // MINI_KIT
            #endif // __AXM0F2
        #endif // defined
        led0_off();
        led1_off();
        led2_off();
        led3_off();
#if defined(SDCC) || defined(__ICC8051__)
        dbglink_init();
#endif //defined(SDCC) || defined(__ICC8051__)
#ifdef USE_DBGLINK
        dbglink_tx('\n');
#endif // USE_DBGLINK
		#if defined(SDCC) || defined(__ICC8051__)
			IE_4 = 0;
		#endif //defined(SDCC) || defined(__ICC8051__)

        #ifdef __AXM0F2  /// TODO
            NVIC_EnableIRQ(GPIOPort2_IRQn);
            NVIC_EnableIRQ(GPIOPort0_IRQn);
            /* ENABLE RIRQ PR5 2.4 INTERRUPT */
            GPIO_PRT2->INTR_CFG |= 1<<8;
        #endif // __AXM0F2

        axradio_trxstate = trxstate_off;
        if (ax5043_reset())
        {
#ifdef USE_DBGLINK
            dbglink_writestr("ERR: AX5043 not found\n");
#endif // USE_DBGLINK
            goto terminate_error;
        }
#ifdef USE_DBGLINK
        else
        {
            dbglink_writestr("AX5043 found\n");
        }
#endif // USE_DBGLINK
        ax5043_set_registers();

        radio_write8(AX5043_REG_PINFUNCIRQ, 0x03);

        ax5043_set_registers_tx();

        pllValue = radio_read8(AX5043_REG_PLLVCODIV);
        pllValue &= 0xFB; // disable RFDIV
        radio_write8(AX5043_REG_PLLVCODIV, pllValue);

        radio_write8(AX5043_REG_MODULATION, 0x08);
        radio_write8(AX5043_REG_FSKDEV2, 0x00);
        radio_write8(AX5043_REG_FSKDEV1, 0x00);
        radio_write8(AX5043_REG_FSKDEV0, 0x00);

        {
            uint8_t x = radio_read8(AX5043_REG_0xF35);
			x |= 0x80;
			if (2 & (uint8_t)~x)
				++x;
			radio_write8(AX5043_REG_0xF35, x);
        }
        #if defined __ARMEL__ || defined __ARMEB__
            __enable_irq();
        #ifdef __AXM0
            NVIC_EnableIRQ(GPIO_IRQn);	       // Enable GPIO IRQ
            GPIO_OR->INT_EN = 0x20000000;          // Enable PR5 interrupt
        #endif // __AXM0
        #ifdef __AXM0F2
            NVIC_EnableIRQ(GPIOPort0_IRQn);
            NVIC_EnableIRQ(GPIOPort2_IRQn);

            /* ENABLE RIRQ PR5 2.4 INTERRUPT */
            GPIO_PRT2->INTR_CFG |= 1 << 8;      /// rising edge interrupt

        #endif // __AXM0F2
        #else
            IE_4 = 1;
        #endif // defined

        // range all channels
        radio_write8(AX5043_REG_PWRMODE, AX5043_PWRSTATE_XTAL_ON);

        axradio_wait_for_xtal();
        for (freq = freqstart; ; freq += freqinc)
        {
            uint8_t __autodata iesave;
            uint8_t __autodata rng;
            radio_write8(AX5043_REG_FREQA0, freq);
            radio_write8(AX5043_REG_FREQA1, (freq >> 8));
            radio_write8(AX5043_REG_FREQA2, (freq >> 16));
            radio_write8(AX5043_REG_FREQA3, (freq >> 24));

            radio_write8(AX5043_REG_PLLVCOI, 0x9B);
            radio_write8(AX5043_REG_PLLLOOP, 0x09); // default 100kHz loop BW for ranging
            radio_write8(AX5043_REG_PLLCPI, 0x08);

            crit = enter_critical();

            axradio_trxstate = trxstate_pll_ranging;

            //IRQMPLLRNGDONE 12 RW 0 PLL autoranging done interrupt enable
            radio_write8(AX5043_REG_IRQMASK1, 0x10); // enable pll autoranging done interrupt

            // init ranging process, initial value of VCORA = 0x08 as per ax5043 programming manual
            radio_write8(AX5043_REG_PLLRANGINGA, 0x18);


            for (;;)
            {
                __disable_irq();
                if (axradio_trxstate == trxstate_pll_ranging_done)
                    break;
                wtimer_idle(WTFLAG_CANSTANDBY);
                exit_critical(crit);
                wtimer_runcallbacks();
            }
            axradio_trxstate = trxstate_off;
            radio_write8(AX5043_REG_IRQMASK1, 0x00);
			exit_critical(crit);

            //00001000 --> STICKY LOCK <-->PLL LOCK <--> RNGERR <--> RNGSTART <--> VCORA (3:0).
            //check for PLL ranging error
            if ((radio_read8(AX5043_REG_PLLRANGINGA)) & 0x20)
                goto nextfreq; //if PLL ranging indicates error move to next frequency

            range[0] = range[1] = (radio_read8(AX5043_REG_PLLRANGINGA)) & 0x0F;
            {
                uint8_t __autodata i;
                for (i = 0; i < 2; ++i)
                {
                    uint8_t r = range[i];
                    if (i)
                    {
                        if (r >= 0x0D)
                            r = 0x0F;
                        else
                            r += 2;
                    }
                    else
                    {
                        if (r <= 0x02)
                            r = 0;
                        else
                            r -= 2;
                    }

                    crit = enter_critical();
                    axradio_trxstate = trxstate_pll_ranging;

                    radio_write8(AX5043_REG_IRQMASK1, 0x10); // enable pll autoranging done interrupt
                    radio_write8(AX5043_REG_PLLRANGINGA, (0x10 | r)); // init ranging process


                    for (;;)
                    {
                        __disable_irq();
                        if (axradio_trxstate == trxstate_pll_ranging_done)
                            break;
                        wtimer_idle(WTFLAG_CANSTANDBY);
                        exit_critical(crit);     //  Restore all Interrupts
                        wtimer_runcallbacks();
                    }

                    axradio_trxstate = trxstate_off;
                    radio_write8(AX5043_REG_IRQMASK1, 0x00);
					exit_critical(crit);     //  Restore all Interrupts

                    //00001000 --> STICKY LOCK <-->PLL LOCK <--> RNGERR <--> RNGSTART <--> VCORA (3:0).
                    //check for PLL ranging error, continue if error exists
                    if ((radio_read8(AX5043_REG_PLLRANGINGA))& 0x20)
                        continue;
                    range[i] = (radio_read8(AX5043_REG_PLLRANGINGA)) & 0x0F;
                }
            }

            pll_loop = (radio_read8(AX5043_REG_PLLLOOP));
            //Enable External FILT Pin
            radio_write8(AX5043_REG_PLLLOOP, (pll_loop | 0x04));

            for (rng = range[0]; rng <= range[1]; ++rng)
            {
                radio_write8(AX5043_REG_PLLRANGINGA, rng);

                radio_write8(AX5043_REG_PWRMODE, AX5043_PWRSTATE_SYNTH_TX);

                {
                    uint8_t __autodata i;
                    for (i = 0x40; i != 0;) {
                        --i;
                        //Setting 0x80 to Enable manual VCOI
                        radio_write8(AX5043_REG_PLLVCOI, (0x80 | i));
                        radio_write8(AX5043_REG_PLLRANGINGA, 0); // clear PLL lock loss
                        vtune[i] = axradio_tunevoltage();
                    }
                }
                radio_write8(AX5043_REG_PWRMODE, AX5043_PWRSTATE_XTAL_ON);

#ifdef MEMIO
                if (number_lines >= 50) {
#ifdef USE_DBGLINK
                    dbglink_writestr("#\n");
#endif // USE_DBGLINK
                    do {
                        // wait for the host to fetch the results
                    } while (number_lines);
                }
                {
                    uint8_t __autodata i;
                    uint8_t __xdata *__autodata p = lines[number_lines];
                    ++number_lines;
                    *p++ = freq;
                    *p++ = freq >> 8;
                    *p++ = freq >> 16;
                    *p++ = freq >> 24;
                    *p++ = (radio_read8(AX5043_REG_PLLRANGINGA));
                    for (i = 0; i != 0x40; ++i) {
                        *p++ = vtune[i];
                        *p++ = vtune[i] >> 8;
                    }
                }
#else
#ifdef USE_DBGLINK
                dbglink_writestr("R: ");
                dbglink_writehex32(freq, 8, WRNUM_PADZERO);
                dbglink_tx(' ');
                dbglink_writehex16((radio_read8(AX5043_REG_PLLRANGINGA)), 2, WRNUM_PADZERO);
                {
                    uint8_t __autodata i;
                    for (i = 0; i != 0x40; ++i) {
                        dbglink_tx(' ');
                        dbglink_writehex16(vtune[i], 4, WRNUM_PADZERO);
                    }
                }
                dbglink_tx('\n');
#endif // USE_DBGLINK
#endif
            }
nextfreq:
            if (freq == freqend)
                break;
        }
#ifdef MEMIO
#ifdef USE_DBGLINK
        if (number_lines)
            dbglink_writestr("#\n");
#endif // USE_DBGLINK
#endif
#ifdef USE_DBGLINK
        dbglink_writestr("END ");
        dbglink_writehex32(freqincmhz, 8, WRNUM_PADZERO);
        dbglink_tx(' ');
        dbglink_writehex32(freqstart, 8, WRNUM_PADZERO);
        dbglink_tx(' ');
        dbglink_writehex32(freqend, 8, WRNUM_PADZERO);
        dbglink_tx(' ');
        dbglink_writehex32(freqinc, 8, WRNUM_PADZERO);
        dbglink_writestr("\n\n");
#endif // USE_DBGLINK

    }
    axradio_setup_pincfg2();


terminate_error:
    for(;;) {
        wtimer_runcallbacks();
        __disable_irq();
        {
            uint8_t flg = WTFLAG_CANSTANDBY;
#ifdef MCU_SLEEP
#ifdef USE_DBGLINK
            if (dbglink_txidle())
                flg |= WTFLAG_CANSLEEP;
#endif // USE_DBGLINK
#endif // MCU_SLEEP
            wtimer_idle(flg);
        }
        __enable_irq();
    }
}



