/**
*******************************************************************************************************
* @file SLAVE\main.c
* @brief Code skeleton for SLAVE module, illustrating reception of packets.
*        The packet format is determined by AX-RadioLAB_output\config.c, produced by the AX-RadioLab GUI
* @internal
* @author   Thomas Sailer, Janani Chellappan, Srinivasan Tamilarasan, Pradeep Kumar GR
* $Rev: $
* $Date: $
********************************************************************************************************
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
#include <ax8052.h>
#include <libmftypes.h>
#include <libmfradio.h>
#include <libmfflash.h>
#include <libmfwtimer.h>
#include "libmfosc.h"
#ifdef USE_COM0
#include <libmfuart0.h>
#endif /* USE_COM0 */
#ifdef USE_LCD
#include <libaxlcd2.h>
#endif /* USE_LCD */
#ifdef USE_DBGLINK
#include <libmfdbglink.h>
#include <libmfuart.h>
#include <libmfuart0.h>
#include <libmfuart1.h>
#endif /* USE_DBGLINK */
#define ADJUST_FREQREG
#define FREQOFFS_K 3
#if defined(USE_LCD) || defined(USE_COM0)
#define USE_DISPLAY
#endif /* defined(USE_LCD) || defined(USE_COM0) */
#include "../COMMON/display_com0.h"
#include <libdvk2leds.h>
/*#include <stdlib.h> */
#include "../COMMON/misc.h"
#include "../COMMON/configcommon.h"
/* Verify the function display_writenum16 in libaxdvk2.a */
extern uint8_t _start__stack[];

uint8_t __data coldstart = 1; /* caution: initialization with 1 is necessary! Variables are initialized upon _sdcc_external_startup returning 0 -> the coldstart value returned from _sdcc_external startup does not survive in the coldstart case */
uint16_t __data pkts_received = 0, pkts_missing = 0;

/* Debug Link Configuration */
#if defined __ARMEB_
#if defined USE_DBGLINK
void debuglink_init_axm0(void)
{
    dbglink_timer0_baud(0, 9600, AXM0XX_HFCLK_CLOCK_FREQ);  /* HS OSC, Baud rate, Clock */
    dbglink_init(0, 8, 1);                              	/* TImer No., Word length, Stop bit */
}
#endif /* USE_DBGLINK */
#endif /* defined */

/* If IAR will this condition is valid */
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

void axradio_statuschange(struct axradio_status __xdata *st)
{
    /*    static uint16_t rssi_ratelimit; */
#if defined(USE_DBGLINK) && defined(DEBUGMSG)
    if (DBGLNKSTAT & 0x10 && st->status != AXRADIO_STAT_CHANNELSTATE)
    {
        dbglink_writestr("ST: 0x");
        dbglink_writehex16(st->status, 2, WRNUM_PADZERO);
        dbglink_writestr(" ERR: 0x");
        dbglink_writehex16(st->error, 2, WRNUM_PADZERO);
        dbglink_tx('\n');
    }

#endif
    switch (st->status)
    {
    case AXRADIO_STAT_RECEIVE:
#if RADIO_MODE == AXRADIO_MODE_SYNC_SLAVE || RADIO_MODE == AXRADIO_MODE_SYNC_ACK_SLAVE
        switch (st->error)
        {
        case AXRADIO_ERR_TIMEOUT:
            led2_on();

        /* fall through */

        case AXRADIO_ERR_NOERROR:
        case AXRADIO_ERR_RESYNCTIMEOUT:
            led3_off();
            break;

        case AXRADIO_ERR_RESYNC:
            axradio_set_freqoffset(0);

        /* fall through */

        case AXRADIO_ERR_RECEIVESTART:
            led3_on();
            break;

        default:
            break;
        }

        if (st->error == AXRADIO_ERR_NOERROR)
        {
            ++pkts_received;
            led2_off();
#ifdef USE_DISPLAY
            display_received_packet(st);
#endif /* USE_DISPLAY */
        }

#ifdef USE_DBGLINK
        switch (st->error)
        {
        case AXRADIO_ERR_RESYNCTIMEOUT:
            if (DBGLNKSTAT & 0x10)
                dbglink_writestr("RESYNC Timeout\n");

            break;

        case AXRADIO_ERR_RESYNC:
            if (DBGLNKSTAT & 0x10)
                dbglink_writestr("RESYNC\n");

            break;

        default:
            break;
        }

#endif /* USE_DBGLINK */
#else  /* RADIO_MODE */
        {
            uint8_t retran = (st->error != AXRADIO_ERR_NOERROR);
            ++pkts_received;
            led0_toggle();
#ifdef USE_DISPLAY

            if (st->error == AXRADIO_ERR_NOERROR)
                retran = display_received_packet(st) || retran;

#endif /* USE_DISPLAY */

            if (retran)
                led2_on();
            else
                led2_off();
        }
#endif /* RADIO_MODE */
#ifdef USE_DBGLINK

        if (st->error == AXRADIO_ERR_NOERROR)
            dbglink_received_packet(st);

#endif
        /* Frequency Offset Correction */
        {
            int32_t foffs = axradio_get_freqoffset();
#if defined(ADJUST_FREQREG)
            foffs -= (st->u.rx.phy.offset)>>(FREQOFFS_K); /*adjust RX frequency by low-pass filtered frequency offset */
#endif

            /* reset if deviation too large */
            if (axradio_set_freqoffset(foffs) != AXRADIO_ERR_NOERROR)
                axradio_set_freqoffset(0);
        }
        break;
#if 0

    case AXRADIO_STAT_CHANNELSTATE:
        if (st->u.cs.busy)
            led3_on();
        else
            led3_off();

        {
            uint16_t t = wtimer0_curtime();
#if WTIMER0_CLKSRC == CLKSRC_LPXOSC
#define RSSIRATE (uint16_t)(32768/2)
#elif WTIMER0_CLKSRC == CLKSRC_LPOSC
#define RSSIRATE (uint16_t)(640/2)
#else
#error "unknown wtimer0 clock source"
#endif

            if ((uint16_t)(t - rssi_ratelimit) < RSSIRATE)
                break;

            rssi_ratelimit = t;
        }
        display_setpos(0x48);
        display_writestr("R:");
        display_tx(st->u.cs.busy ? '*' : ' ');
        display_writenum16(st->u.cs.rssi, 5, WRNUM_SIGNED);
        break;
#endif

    case AXRADIO_STAT_TRANSMITSTART:
        led3_on();
        break;

    case AXRADIO_STAT_TRANSMITEND:
        led3_off();
        break;

    default:
        break;
    }
}

void enable_radio_interrupt_in_mcu_pin(void)
{
	IE_4 = 1;
}

void disable_radio_interrupt_in_mcu_pin(void)
{
	IE_4 = 0;
}


uint8_t _sdcc_external_startup(void)
{
    LPXOSCGM = 0x8A;
    wtimer0_setclksrc(WTIMER0_CLKSRC, WTIMER0_PRESCALER);
    wtimer1_setclksrc(CLKSRC_FRCOSC, 7);

    /* caution: coldstart has to be initialized with 1 in it's definition! Variables are initialized upon _sdcc_external_startup returning 0 -> the coldstart value returned from _sdcc_external startup does not survive in the coldstart case */
    coldstart = !(PCON & 0x40);

    ANALOGA = 0x18; /* PA[3,4] LPXOSC, other PA are used as digital pins */
    PORTA = 0xC0 | (PINA & 0x25); /* pull-up for PA[6,7] which are not bonded, no pull up for PA[3,4] (LPXOSC). Output 0 in PA[0,1,2,5] to prevent current consumption in all DIP switch states */
    PORTB = 0xFE; /*PB[0,1]  (LCD RS, LCD RST) are overwritten by lcd2_portinit(), enable pull-ups for PB[2..7]  (PB[2,3] for buttons, PB[4..7] unused) */
    PORTC = 0xF3 | (PINC & 0x08); /* set PC0 = 1 (LCD SEL), PC1 = 1 (LCD SCK), PC2 = 0 (LCD MOSI), PC3 =0 (LED), enable pull-ups for PC[4..7] which are not bonded Mind: PORTC[0:1] is set to 0x3 by lcd2_portinit() */
    PORTR = 0xCB; /* overwritten by ax504x_reset, ax504x_comminit() */

    DIRA = 0x27; /* output 0 on PA[0,1,2,5] to prevent current consumption in all DIP switch states. Other PA are inputs, PA[3,4] (LPXOSC) must have disabled digital output drivers */
    DIRB = 0x03; /* PB[0,1] are outputs (LCD RS, LCD RST), PB[2..7] are inputs (PB[2,3] for buttons,  PB[4..7]  unused) */
    DIRC = 0x0F; /* PC[0..3] are outputs (LCD SEL, LCD,SCK, LCD MOSI, LED), PC[4..7] are inputs (not bonded). */
    DIRR = 0x15; /* overwritten by ax504x_reset, ax504x_comminit() */

    axradio_setup_pincfg1();
    DPS = 0;
    IE = 0x40;
    EIE = 0x00;
    E2IE = 0x00;

    display_portinit();
    GPIOENABLE = 1; /* unfreeze GPIO */
    return !coldstart; /* coldstart -> return 0 -> var initialization; start from sleep -> return 1 -> no var initialization */
}

int main(void)
{
    uint8_t i;
    __asm
    G$_start__stack$0$0 = __start__stack
                          .globl G$_start__stack$0$0
                          __endasm;
#ifdef USE_DBGLINK
    dbglink_init();
#endif
    __enable_irq();
    flash_apply_calibration();
    CLKCON = 0x00;
    wtimer_init();

    if (coldstart)
    {
        led0_off();
        led1_off();
        led2_off();
        led3_off();
        display_init();
        display_setpos(0);

        i = axradio_init();

        if (i != AXRADIO_ERR_NOERROR)
        {
            if (i == AXRADIO_ERR_NOCHIP)
            {
                display_writestr(radio_not_found_lcd_display);
#ifdef USE_DBGLINK

                if(DBGLNKSTAT & 0x10)
                    dbglink_writestr(radio_not_found_lcd_display);

#endif /* USE_DBGLINK */
                goto terminate_error;
            }

            goto terminate_radio_error;
        }

        display_writestr(radio_lcd_display);
#ifdef USE_DBGLINK

        if (DBGLNKSTAT & 0x10)
            dbglink_writestr(radio_lcd_display);

#endif /* USE_DBGLINK */
        axradio_set_local_address(&localaddr);
        axradio_set_default_remote_address(&remoteaddr);
#if RADIO_MODE == AXRADIO_MODE_WOR_RECEIVE || RADIO_MODE == AXRADIO_MODE_WOR_ACK_RECEIVE
        /* LPOSC Calibrations needs full control of the radio, so it must run while the radio is idle otherwise */
        axradio_calibrate_lposc();
#endif
#if RADIO_MODE == MODE_SYNC_MASTER || RADIO_MODE == AXRADIO_MODE_SYNC_ACK_MASTER || RADIO_MODE == AXRADIO_MODE_SYNC_SLAVE || RADIO_MODE == AXRADIO_MODE_SYNC_ACK_SLAVE
        display_writestr("settle LPXOSC");
#ifdef USE_DBGLINK

        if (DBGLNKSTAT & 0x10)
            dbglink_writestr("settle LPXOSC\n");

#endif /* USE_DBGLINK */
        delay_ms(lpxosc_settlingtime);
        display_clear(0x40, 16);
        display_setpos(0x40);
#endif  /* RADIO_MODE */
#ifdef USE_DISPLAY
        display_writestr("RNG=");
        display_writenum16(axradio_get_pllrange(), 2, 0);
        {
            uint8_t x = axradio_get_pllvcoi();

            if (x & 0x80)
            {
                display_writestr(" VCOI=");
                display_writehex16(x, 2, 0);
            }
        }
        delay_ms(1000); /* just to show PLL RNG */
        display_clear(0, 16);
        display_clear(0x40, 16);
        display_setpos(0);
#endif /* USE_DISPLAY */
#ifdef USE_DBGLINK

        if (DBGLNKSTAT & 0x10)
        {
            dbglink_writestr("RNG = ");
            dbglink_writenum16(axradio_get_pllrange(), 2, 0);
            {
                uint8_t x = axradio_get_pllvcoi();

                if (x & 0x80)
                {
                    dbglink_writestr("\nVCOI = ");
                    dbglink_writehex16(x, 2, 0);
                }
            }
            dbglink_writestr("\nSLAVE\n");
        }

#endif /* USE_DBGLINK */
#if RADIO_MODE == AXRADIO_MODE_WOR_RECEIVE || RADIO_MODE == AXRADIO_MODE_WOR_ACK_RECEIVE
        display_writestr("SLAVE  RX WOR\n               ");
#ifdef USE_DBGLINK

        if (DBGLNKSTAT & 0x10)
            dbglink_writestr("SLAVE  RX WOR\n");

#endif /* USE_DBGLINK */
#elif RADIO_MODE == AXRADIO_MODE_SYNC_SLAVE || RADIO_MODE == AXRADIO_MODE_SYNC_ACK_SLAVE
        display_writestr("SLAVE  RX SYNC\n               ");
#ifdef USE_DBGLINK

        if (DBGLNKSTAT & 0x10)
            dbglink_writestr("SLAVE  RX SYNC\n");

#endif /* USE_DBGLINK */
#else  /* RADIO_MODE */
        display_writestr("SLAVE  RX CONT\n");
#ifdef USE_DBGLINK

        if (DBGLNKSTAT & 0x10)
            dbglink_writestr("SLAVE  RX CONT\n");

#endif /* USE_DBGLINK */
#endif /* else RADIO_MODE */
        i = axradio_set_mode(RADIO_MODE);

        if (i != AXRADIO_ERR_NOERROR)
            goto terminate_radio_error;

#ifdef DBGPKT
        axradio_dbgpkt_enableIRQ();
#endif
    }
    else
    {
        /*  Warm Start */
        axradio_commsleepexit();
        IE_4 = 1; /* enable radio interrupt */
    }

    axradio_setup_pincfg2();

    for(;;)
    {
        wtimer_runcallbacks();
        __disable_irq();
        {
            uint8_t flg = WTFLAG_CANSTANDBY;
#ifdef MCU_SLEEP

            if (axradio_cansleep()
#ifdef USE_DBGLINK
                    && dbglink_txidle()
#endif /* USE_DBGLINK */
                    && display_txidle())
                flg |= WTFLAG_CANSLEEP;
#endif /* MCU_SLEEP */
            wtimer_idle(flg);
        }
        __enable_irq();
    }

terminate_radio_error:
    display_radio_error(i);
#ifdef USE_DBGLINK
    dbglink_display_radio_error(i);
#endif /* USE_DBGLINK */
terminate_error:

    for (;;)
    {
        wtimer_runcallbacks();
        {
            uint8_t flg = WTFLAG_CANSTANDBY;
#ifdef MCU_SLEEP

            if (axradio_cansleep()
#ifdef USE_DBGLINK
                    && dbglink_txidle()
#endif /* USE_DBGLINK */
                    && display_txidle())
                flg |= WTFLAG_CANSLEEP;
#endif /* MCU_SLEEP */
            wtimer_idle(flg);
        }
    }
}

