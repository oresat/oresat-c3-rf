/**
*******************************************************************************************************
* @file axradio.h
* @brief Macro definition for Radio Modes & Error types
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
#ifndef AXRADIO_H
#define AXRADIO_H

#include <libmftypes.h>

#if defined __ARMEL__ || defined __ARMEB__
//#include<sys/cdefs.h>
#endif

#define AXRADIO_MODE_UNINIT                     0x00
#define AXRADIO_MODE_OFF                        0x01
#define AXRADIO_MODE_DEEPSLEEP                  0x02
#define AXRADIO_MODE_CW_TRANSMIT                0x03
#define AXRADIO_MODE_ASYNC_TRANSMIT             0x10
#define AXRADIO_MODE_WOR_TRANSMIT               0x11
#define AXRADIO_MODE_ACK_TRANSMIT               0x12
#define AXRADIO_MODE_WOR_ACK_TRANSMIT           0x13
#define AXRADIO_MODE_STREAM_TRANSMIT_UNENC      0x18
#define AXRADIO_MODE_STREAM_TRANSMIT_SCRAM      0x19
#define AXRADIO_MODE_STREAM_TRANSMIT_UNENC_LSB  0x1A
#define AXRADIO_MODE_STREAM_TRANSMIT_SCRAM_LSB  0x1B
#define AXRADIO_MODE_STREAM_TRANSMIT_SCRAM_PN9  0x1A    // AX5044_45: PN9 generation changed to Hardware
#define AXRADIO_MODE_STREAM_TRANSMIT_SCRAM_PN15 0x1B    // AX5044_45: PN15 generation changed to Hardware
#define AXRADIO_MODE_STREAM_TRANSMIT            0x1C
#define AXRADIO_MODE_STREAM_TRANSMIT_SCRAM_PN17 0x1D
#define AXRADIO_MODE_ASYNC_RECEIVE              0x20
#define AXRADIO_MODE_WOR_RECEIVE                0x21
#define AXRADIO_MODE_ACK_RECEIVE                0x22
#define AXRADIO_MODE_WOR_ACK_RECEIVE            0x23
#define AXRADIO_MODE_STREAM_RECEIVE_UNENC       0x28
#define AXRADIO_MODE_STREAM_RECEIVE_SCRAM       0x29
#define AXRADIO_MODE_STREAM_RECEIVE_UNENC_LSB   0x2A
#define AXRADIO_MODE_STREAM_RECEIVE_SCRAM_LSB   0x2B
#define AXRADIO_MODE_STREAM_RECEIVE_SCRAM_PN9   0x2A    // AX5044_45: PN9 generation changed to Hardware
#define AXRADIO_MODE_STREAM_RECEIVE_SCRAM_PN15  0x2B    // AX5044_45: PN15 generation changed to Hardware
#define AXRADIO_MODE_STREAM_RECEIVE             0x2C
#define AXRADIO_MODE_STREAM_RECEIVE_DATAPIN     0x2D
#define AXRADIO_MODE_STREAM_RECEIVE_SCRAM_PN17  0x2E
#define AXRADIO_MODE_SYNC_MASTER                0x30
#define AXRADIO_MODE_SYNC_ACK_MASTER            0x31
#define AXRADIO_MODE_SYNC_SLAVE                 0x32
#define AXRADIO_MODE_SYNC_ACK_SLAVE             0x33

#define AXRADIO_MODE_IS_STREAM_TRANSMIT(x)      (((x) & 0xF8) == ((AXRADIO_MODE_STREAM_TRANSMIT) & 0xF8))
#define AXRADIO_MODE_IS_STREAM_RECEIVE(x)       (((x) & 0xF8) == ((AXRADIO_MODE_STREAM_RECEIVE) & 0xF8))

#define AXRADIO_ERR_NOERROR                     0x00
#define AXRADIO_ERR_NOTSUPPORTED                0x01
#define AXRADIO_ERR_BUSY                        0x02
#define AXRADIO_ERR_TIMEOUT                     0x03
#define AXRADIO_ERR_INVALID                     0x04
#define AXRADIO_ERR_NOCHIP                      0x05
#define AXRADIO_ERR_RANGING                     0x06
#define AXRADIO_ERR_LOCKLOST                    0x07
#define AXRADIO_ERR_RETRANSMISSION              0x08
#define AXRADIO_ERR_RESYNC                      0x09
#define AXRADIO_ERR_RESYNCTIMEOUT               0x0a
#define AXRADIO_ERR_RECEIVESTART                0x0b

#define AXRADIO_STAT_RECEIVE                    0x00
#define AXRADIO_STAT_RECEIVESFD                 0x01
#define AXRADIO_STAT_CHANNELSTATE               0x02
#define AXRADIO_STAT_TRANSMITSTART              0x03
#define AXRADIO_STAT_TRANSMITEND                0x04
#define AXRADIO_STAT_TRANSMITDATA               0x05

#define AXRADIO_DIFFERENTIAL_PA                 0x01
#define AXRADIO_SINGLE_ENDED_PA                 0x02

struct axradio_address {
	uint8_t addr[5];            // AX5044_45: Address increased to 5 bytes range.
};

struct axradio_address_mask {
	uint8_t addr[5];            // AX5044_45: Address increased to 5 bytes range.
	uint8_t mask[5];
};

struct axradio_status {
	uint8_t status; // one of the AXRADIO_STAT_* constants
	uint8_t error;  // one of the AXRADIO_ERR_* constants
	uint32_t time;  // timestamp of the event

	union {
		//status AXRADIO_STAT_RECEIVE
		struct axradio_status_receive {
			struct axradio_status_receive_phy {
				int16_t rssi;       //RSSI,dBm
				int32_t offset;     //frequency offset, internal units
				int16_t timeoffset; // time offset, timer0 units (only sync)
				int16_t period;     // period offset (only sync)
			} phy;
			struct axradio_status_receive_mac {
				uint8_t remoteaddr[5];
				uint8_t localaddr[5];
				const __xdata uint8_t *raw;
			} mac;
			const __xdata uint8_t *pktdata;
			uint16_t pktlen;
		} rx;

		//status AXRADIO_STAT_CHANNELSTATE
		struct axradio_status_channelstate {
			int16_t rssi; // RSSI, dBm
			uint8_t busy; // 1: over the LBT threshold
		} cs;
	} u;
};

extern uint8_t axradio_init(void);
extern __reentrantb uint8_t axradio_cansleep(void) __reentrant;
extern uint8_t axradio_set_mode(uint8_t mode);
extern uint8_t axradio_get_mode(void);
extern uint8_t axradio_set_channel(uint8_t chnum);
extern uint8_t axradio_get_channel(void);
extern uint16_t axradio_get_pllrange(void);
extern uint8_t axradio_get_pllvcoi(void);
extern void axradio_set_local_address(const struct axradio_address_mask __genericaddr *addr);

extern void axradio_get_local_address(struct axradio_address_mask __genericaddr *addr);
extern void axradio_set_default_remote_address(const struct axradio_address __genericaddr *addr);
extern void axradio_get_default_remote_address(struct axradio_address __genericaddr *addr);
extern uint8_t axradio_transmit(const struct axradio_address __genericaddr *addr, const uint8_t __genericaddr *pkt, uint16_t pktlen);

extern uint8_t axradio_set_freqoffset(int32_t offs);
extern int32_t axradio_get_freqoffset(void);
extern __reentrantb int32_t axradio_conv_freq_tohz(int32_t f) __reentrant;
extern __reentrantb int32_t axradio_conv_freq_fromhz(int32_t f) __reentrant;
extern __reentrantb int32_t axradio_conv_timeinterval_totimer0(int32_t dt) __reentrant;
extern __reentrantb uint32_t axradio_conv_time_totimer0(uint32_t dt) __reentrant;
extern void axradio_statuschange(struct axradio_status __xdata *st);
extern uint8_t axradio_agc_freeze(void);
extern uint8_t axradio_agc_thaw(void);
extern void axradio_calibrate_lposc(void);
extern uint8_t axradio_check_fourfsk_modulation(void);
extern uint8_t axradio_get_transmitter_pa_type(void);

extern const uint8_t __code axradio_framing_maclen;
extern const uint8_t __code axradio_framing_addrlen;

// funtions implemented in AX_Radio_output/config.c
__reentrantb void axradio_setup_pincfg1(void) __reentrant;
__reentrantb void axradio_setup_pincfg2(void) __reentrant;

__reentrantb void axradio_commsleepexit(void) __reentrant;
__reentrantb void axradio_dbgpkt_enableIRQ(void) __reentrant;

#ifdef __AXM0F2
__reentrantb void axradio_setup_pincfg3(void) __reentrant;
#endif // __AXM0F2

#if defined(SDCC)
// this is needed to make SDCC include this ISR into the vector table
#define INT_RADIO        4
extern void axradio_isr(void) __interrupt INT_RADIO;
#endif

#endif /* AXRADIO_H */
