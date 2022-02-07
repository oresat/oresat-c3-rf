/**
*******************************************************************************************************
* @file display.c
* @brief Display received packets in LCD/Debug link
* @internal
* @author   Thomas Sailer, Janani Chellappan, Srinivasan Tamilarasan
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

#if defined __ARMEL__ || defined __ARMEB__
#ifdef __AXM0
#include <axm0.h>
#elif defined __AXM0F2
#include <axm0f2.h>
#endif // __AXM0
#else
#include <ax8052.h>
#endif
#include <libmftypes.h>
#include <libaxlcd2.h>
#include <libmfwtimer.h>

#ifdef USE_COM0
#include <libmfuart0.h>
#endif // USE_COM0

#ifdef USE_LCD
#include <libaxlcd2.h>
#endif // USE_LCD

#ifdef USE_DBGLINK
#include <libmfdbglink.h>
#endif // USE_DBGLINK

#if defined(USE_LCD) || defined(USE_COM0)
#define USE_DISPLAY
#endif // defined(USE_LCD) || defined(USE_COM0)

#include "../COMMON/display_com0.h"

#include "../COMMON/misc.h"

#if defined __ARMEL__ || defined __ARMEB__
#define AXM0_REVA
#endif // defined

// Debug Link Configuration
#if defined __ARMEL__ || defined __ARMEB_
    #if defined USE_DBGLINK
        #define DBGLNKSTAT 0x10
    #endif // USE_DBGLINK
#endif // defined

uint16_t __data per_test_counter = 0, per_test_counter_previous = 0;
extern uint16_t __data pkts_received, pkts_missing;
uint8_t __data display_timing = 2;

uint8_t display_received_packet(struct axradio_status __xdata *st)
{
    uint8_t retran = 0;

    #if RADIO_MODE == AXRADIO_MODE_SYNC_SLAVE || RADIO_MODE == AXRADIO_MODE_SYNC_ACK_SLAVE
        #if defined __ARMEL__ || defined __ARMEB__
        // TODO :
        #else
            if (!PINB_2)
                display_timing = (!display_timing) | 0x02;
        #endif // defined
    #endif

    #if !(defined __ARMEL__ || defined __ARMEB__)
	if (display_timing & 0x02)
    #endif
    {
        display_timing &= 0x01;
		display_setpos(0);
        display_writestr(display_timing ? "P:      T:      \nL:      t:      \n" : "P:      O:      \nL:      R:      \n");
	}
    display_setpos(0x03);
	display_writehex16(pkts_received, 4, WRNUM_PADZERO);
    #if RADIO_MODE == AXRADIO_MODE_SYNC_SLAVE || RADIO_MODE == AXRADIO_MODE_SYNC_ACK_SLAVE
        if (display_timing)
        {
            display_setpos(0x0b);
            display_writenum16(st->u.rx.phy.timeoffset, 5, WRNUM_SIGNED | WRNUM_PLUS | WRNUM_PADZERO);
        }
        else
    #endif
        {
            //sig_and_abs32(EASY_RADIO_pkt_rffreqoffs, &sgn, &abs);
            display_setpos(0x0A);
            display_writenum16(axradio_conv_freq_tohz(st->u.rx.phy.offset), 6, WRNUM_SIGNED);
        }

    #if RADIO_MODE == AXRADIO_MODE_SYNC_SLAVE || RADIO_MODE == AXRADIO_MODE_SYNC_ACK_SLAVE
        if (display_timing)
        {
            display_setpos(0x4b);
            display_writenum16(st->u.rx.phy.period, 5, WRNUM_SIGNED | WRNUM_PLUS | WRNUM_PADZERO);
        }
        else
    #endif
        //rssi
        {
            display_setpos(0x4C);
            display_writenum16(st->u.rx.phy.rssi, 4, WRNUM_SIGNED);
        }

	if (framing_insert_counter)
    {
		per_test_counter_previous = per_test_counter;
		per_test_counter = ((st->u.rx.pktdata[framing_counter_pos+1])<<8) | st->u.rx.pktdata[framing_counter_pos];
		if (pkts_received != 1)
		{
            if (per_test_counter == per_test_counter_previous)
                retran = 1;
            else
                pkts_missing += per_test_counter - per_test_counter_previous - 1;
		}
		  //pkts_missing += (4 + (int16_t)per_test_counter-(int16_t)per_test_counter_previous -1) & 0x03; // pkt number modulo 4
		  //pkts_missing += (2 + (int16_t)per_test_counter-(int16_t)per_test_counter_previous -1) & 0x01; // pkt number modulo 2
		display_setpos(0x43);
		display_writehex16(pkts_missing, 4, WRNUM_PADZERO);
	}
	else
    {
		display_setpos(0x43);
		display_writestr("?");
	}
    return retran;
}

#ifdef USE_DBGLINK
static volatile uint8_t dbglink_semaphore = 0;

static void wait_dbglink_free(void)
{
    for (;;) {
        if (dbglink_txfree() >= 56)
            break;
        wtimer_runcallbacks();
        wtimer_idle(WTFLAG_CANSTANDBY);
    }
}
#endif // USE_DBGLINK

void dbglink_received_packet(struct axradio_status __xdata *st)
{
#ifdef USE_DBGLINK
    uint16_t pktlen;
    if (!(DBGLNKSTAT & 0x10))
        return;
    ++dbglink_semaphore;
    if (dbglink_semaphore != 1) {
        --dbglink_semaphore;
        return;
    }
    pktlen = st->u.rx.pktlen + axradio_framing_maclen;
    wait_dbglink_free();
    dbglink_writestr("RX counter=");
    //dbglink_writenum16(pkts_received, 5, 0);
    dbglink_writehex16(pkts_received, 4, WRNUM_PADZERO);
    dbglink_writestr(" length=");
    dbglink_writenum16(pktlen, 3, 0);
    wait_dbglink_free();
    dbglink_writestr(" RSSI=");
    dbglink_writenum16(st->u.rx.phy.rssi, 3, WRNUM_SIGNED);
    dbglink_tx('\n');
    wait_dbglink_free();
    dbglink_writestr("  freqoffset=");
    dbglink_writenum32(axradio_conv_freq_tohz(st->u.rx.phy.offset), 7, WRNUM_SIGNED);
    dbglink_writestr("Hz/");
    dbglink_writenum32(axradio_conv_freq_tohz(axradio_get_freqoffset()), 7, WRNUM_SIGNED);
    dbglink_writestr("Hz");
    dbglink_tx('\n');
    wait_dbglink_free();
#if RADIO_MODE == AXRADIO_MODE_SYNC_SLAVE || RADIO_MODE == AXRADIO_MODE_SYNC_ACK_SLAVE
    dbglink_writestr("  TMGoffs=");
    dbglink_writenum16(st->u.rx.phy.timeoffset, 3, WRNUM_SIGNED);
    dbglink_tx('/');
    dbglink_writenum16(st->u.rx.phy.period, 3, WRNUM_SIGNED);
    dbglink_tx('\n');
#endif
    wait_dbglink_free();
    {
        uint16_t i;
        const uint8_t __xdata *pktdata = st->u.rx.mac.raw;
        for (i=0; i < pktlen; ++i) {
            if (!(i & 0x000F)) {
                dbglink_tx('\n');
                wait_dbglink_free();
                dbglink_writehex16(i, 3, WRNUM_PADZERO);
                dbglink_writestr(": ");
            }
            dbglink_writehex16(pktdata[i], 2, WRNUM_PADZERO);
            dbglink_tx(' ');
        }
	}
    dbglink_writestr("\n\n");
    --dbglink_semaphore;
#endif // USE_DBGLINK
}
