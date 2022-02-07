/**
*******************************************************************************************************
* @file easyax5044.h
* @brief Definition for Radio communication states
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
* @ingroup TEMPLATE_FIRMWARE_5044_45
*
* @details
*/

#ifndef EASYAX5045_H
#define EASYAX5045_H

#include "axradio.h"

#if defined __ARMEL__ || defined __ARMEB__
#include <stdbool.h>
#ifdef __AXM0
#include <axm0f143.h>
#elif defined __AXM0F2
#include <axm0f243.h>
#endif
#else
#include <ax8052f144_45.h>
#endif

//#define DBGPKT
//#define FREQ_FULL_ADJUST
#define AX5044_REVC_SILICON_REVISION    58
#define AX5045_REVE_SILICON_REVISION    70
#define PKTDATA_BUFLEN 260

// typedefs
typedef enum {
	trxstate_off,
	trxstate_rx,
	trxstate_rxwor,
	trxstate_wait_xtal,
	trxstate_xtal_ready,
	trxstate_pll_ranging,
	trxstate_pll_ranging_done,
	trxstate_pll_settling,
	trxstate_pll_settled,
	trxstate_tx_xtalwait,
	trxstate_tx_longpreamble,
	trxstate_tx_shortpreamble,
	trxstate_tx_packet,
	trxstate_tx_waitdone,
	trxstate_txcw_xtalwait,
	trxstate_txstream_xtalwait,
	trxstate_txstream
} axradio_trxstate_t;

#define AXRADIO_ERR_PACKETDONE               0xf0

// declaration of global variables
//hardware
volatile extern axradio_trxstate_t __data axradio_trxstate;

extern uint8_t __data EASY_RADIO_ax5044_45_powermode_after_send_packet; //used by EASY_RADIO_send_packet() default is powerdown
extern uint8_t __data EASY_RADIO_ax5044_45_powermode_after_rx_packet; // used by EASY_RADIO_radio_isr() upon FIFO not empty, default is powerdown

//packet
extern volatile uint8_t __data EASY_RADIO_saved_radiostate;
#if defined(__ARMEL__) || defined(__ARMEB__)
extern const bool txondemand_mode;
extern const bool AxM0_Mini_Kit;
#endif //#if defined(__ARMEL__) || defined(__ARMEB__)

// power states
#define AX5044_45_PWRSTATE_POWERDOWN           0x0
#define AX5044_45_PWRSTATE_DEEPSLEEP           0x1
#define AX5044_45_PWRSTATE_REGS_ON             0x4
#define AX5044_45_PWRSTATE_XTAL_ON             0x5
#define AX5044_45_PWRSTATE_FIFO_ON             0x7
#define AX5044_45_PWRSTATE_SYNTH_RX            0x8
#define AX5044_45_PWRSTATE_FULL_RX             0x9
#define AX5044_45_PWRSTATE_WOR_RX              0xb
#define AX5044_45_PWRSTATE_SYNTH_TX            0xc
#define AX5044_45_PWRSTATE_FULL_TX             0xd

// power mode
#define AX5044_45_PWRMODE_XOEN                 0x40

//fifo commands
#define AX5044_45_FIFOCMD_NOP                  0x00
#define AX5044_45_FIFOCMD_DATA                 0x01
#define AX5044_45_FIFOCMD_REPEATDATA           0x02
#define AX5044_45_FIFOCMD_TIMER                0x10
#define AX5044_45_FIFOCMD_RSSI                 0x11
#define AX5044_45_FIFOCMD_FREQOFFS             0x12
#define AX5044_45_FIFOCMD_RFFREQOFFS           0x13
#define AX5044_45_FIFOCMD_DATARATE             0x14
#define AX5044_45_FIFOCMD_ANTRSSI              0x15
#define AX5044_45_FIFOCMD_TXCTRL               0x1C
#define AX5044_45_FIFOCMD_TXPWR                0x1D


void axradio_wait_for_xtal(void);

__reentrantb void ax5044_45_receiver_on_continuous(void) __reentrant;
__reentrantb void ax5044_45_receiver_on_wor(void) __reentrant;
__reentrantb void ax5044_45_off(void) __reentrant;
__reentrantb void ax5044_45_off_xtal(void) __reentrant;
__reentrantb void ax5044_45_prepare_tx(void) __reentrant;

// funtions implemented in AX_Radio_output/config.c
__reentrantb int32_t axradio_conv_freq_fromreg(int32_t f) __reentrant;
__reentrantb void ax5044_45_set_registers(void) __reentrant;
__reentrantb void ax5044_45_set_registers_tx(void) __reentrant;
__reentrantb void ax5044_45_set_registers_rx(void) __reentrant;
__reentrantb void ax5044_45_set_registers_rxwor(void) __reentrant;
__reentrantb void ax5044_45_set_registers_rxcont(void) __reentrant;
__reentrantb void ax5044_45_set_registers_rxcont_singleparamset(void) __reentrant;
__reentrantb uint16_t axradio_framing_check_crc(uint8_t __xdata *pkt, uint16_t cnt) __reentrant;
__reentrantb uint16_t axradio_framing_append_crc(uint8_t __xdata *pkt, uint16_t cnt) __reentrant;

// physical layer
extern const uint8_t __code axradio_phy_pn9;
extern const uint8_t __code axradio_phy_nrchannels;
extern const uint32_t __code axradio_phy_chanfreq[];
extern const uint16_t __code axradio_phy_chanpllrnginit[];
extern const uint8_t __code axradio_phy_chanvcoiinit[];
extern uint16_t __xdata axradio_phy_chanpllrng[];
extern uint8_t __xdata axradio_phy_chanvcoi[];
extern const uint8_t __code axradio_phy_vcocalib;
extern const uint8_t __code axradio_phy_innerfreqloop;
extern const int32_t __code axradio_phy_maxfreqoffset;
extern const int8_t __code axradio_phy_rssioffset;
extern const int8_t __code axradio_phy_rssireference;
extern const int8_t __code axradio_phy_channelbusy;
extern const uint8_t __code axradio_phy_cs_enabled;
extern const uint16_t __code axradio_phy_cs_period;
extern const uint8_t __code axradio_phy_lbt_retries;
extern const uint8_t __code axradio_phy_lbt_forcetx;


extern const uint16_t __code axradio_phy_preamble_wor_longlen;
extern const uint16_t __code axradio_phy_preamble_longlen;
extern const uint16_t __code axradio_phy_preamble_wor_len;
extern const uint16_t __code axradio_phy_preamble_len;
extern const uint8_t __code axradio_phy_preamble_byte;
extern const uint8_t __code axradio_phy_preamble_flags;
extern const uint8_t __code axradio_phy_preamble_appendbits;
extern const uint8_t __code axradio_phy_preamble_appendpattern;

// framing
extern const uint8_t __code axradio_framing_lenpos;
extern const uint8_t __code axradio_framing_lenoffs;
extern const uint8_t __code axradio_framing_lenmask;
extern const uint8_t __code axradio_framing_destaddrpos;
extern const uint8_t __code axradio_framing_sourceaddrpos;

extern const uint8_t __code axradio_framing_synclen;
extern const uint8_t __code axradio_framing_syncword[];
extern const uint8_t __code axradio_framing_syncflags;
extern const uint8_t __code axradio_framing_enable_sfdcallback;
extern const uint16_t __code axradio_framing_swcrclen;


extern const uint32_t __code axradio_framing_ack_timeout;
extern const uint32_t __code axradio_framing_ack_delay;
extern const uint8_t __code axradio_framing_ack_retransmissions;
extern const uint8_t __code axradio_framing_ack_seqnrpos;

extern const uint8_t __code axradio_framing_minpayloadlen;

//WOR
extern const uint16_t __code axradio_wor_period;

// synchronous mode
extern const uint32_t __code axradio_sync_period;
extern const uint32_t __code axradio_sync_xoscstartup;

extern const uint32_t __code axradio_sync_slave_syncwindow;
extern const uint32_t __code axradio_sync_slave_initialsyncwindow;
extern const uint32_t __code axradio_sync_slave_syncpause;
extern const int16_t __code axradio_sync_slave_maxperiod;
extern const uint8_t __code axradio_sync_slave_resyncloss;
extern const uint8_t __code axradio_sync_slave_nrrx;
extern const uint32_t __code axradio_sync_slave_rxadvance[];
extern const uint32_t __code axradio_sync_slave_rxwindow[];
extern const uint32_t __code axradio_sync_slave_rxtimeout;

// LPOSC Oscillator
extern const uint16_t __code axradio_lposckfiltmax;

// XTAL Oscillator
extern const uint32_t __code axradio_fxtal;

// PLL RANGING
extern uint16_t vcora_tx, vcora_rx;
#endif /* EASYAX5045_H */
