/**
*******************************************************************************************************
* @file easyax5045.c
* @brief Handle data communication between MCU & Radio
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

#include "easyax5045.h"
#include "misc.h"
#include <libmfcrc.h>
#include <libmfradio.h>
#include <libmfwtimer.h>
#if !(defined __ARMEL__ || defined __ARMEB__)
#include <stdlib.h>
#include <string.h>
#endif

#ifdef __AXM0
#include <axm0f143.h>
#endif // __AXM0
#ifdef __AXM0F2
#include <axm0f243.h>
#endif // __AXM0F2

#include <libmfdbglink.h>
#include <libmfuart.h>
#include <libmfuart0.h>
#include <libmfuart1.h>

typedef enum {
	syncstate_off,                  /* 0 */
	syncstate_lbt,                  /* 1 */
	syncstate_asynctx,              /* 2 */
	syncstate_master_normal,        /* 3 */
	syncstate_master_xostartup,     /* 4 */
	syncstate_master_waitack,       /* 5 */
	syncstate_slave_synchunt,       /* 6 */
	syncstate_slave_syncpause,      /* 7 */
	syncstate_slave_rxidle,         /* 8 */
	syncstate_slave_rxxosc,         /* 9 */
	syncstate_slave_rxsfdwindow,    /* 10 */
	syncstate_slave_rxpacket,       /* 11 */
	syncstate_slave_rxack           /* 12 */
} axradio_syncstate_t;

volatile uint8_t __data axradio_mode = AXRADIO_MODE_UNINIT;
volatile axradio_trxstate_t __data axradio_trxstate = trxstate_off;
volatile axradio_syncstate_t __xdata axradio_syncstate;
uint16_t __xdata axradio_txbuffer_len;
uint16_t __xdata axradio_txbuffer_cnt;
uint8_t __xdata axradio_curchannel;
int32_t __xdata axradio_curfreqoffset;
uint8_t __xdata axradio_ack_count;
uint8_t __xdata axradio_ack_seqnr;
#define axradio_sync_seqnr axradio_ack_seqnr
uint32_t __xdata axradio_sync_time;
int16_t __xdata axradio_sync_periodcorr;
struct {
	uint32_t timer0;
	uint32_t radiotimer;
} __xdata axradio_timeanchor;
struct axradio_address_mask __xdata axradio_localaddr;
struct axradio_address __xdata axradio_default_remoteaddr;

#define SYNC_K0 2
#define SYNC_K1 5

uint8_t __xdata axradio_txbuffer[PKTDATA_BUFLEN];
uint8_t __xdata axradio_rxbuffer[PKTDATA_BUFLEN];

uint16_t vcora_tx = 0x100, vcora_rx = 0x100;

/**

Simple call back
	No receive or channel state

	Basic components:
			struct wtimer_callback
			struct st (status, error, time)

**/
struct axradio_callback_simple {
	struct wtimer_callback cb;
	struct {
		uint8_t status;
		uint8_t error;
		union {
			uint32_t t;
			struct u32endian b;
		} time;
	} st;
};

/**

call back with Recive

	Basic components:
			struct wtimer_callback
			struct st (status, error, time, rx)

**/

struct axradio_callback_receive {
	struct wtimer_callback cb;
	struct {
		uint8_t status;
		uint8_t error;
		union {
			uint32_t t;
			struct u32endian b;
		} time;
		struct {
			struct {
				int16_t rssi;
				union {
					int32_t o;
					struct u32endian b;
				} offset;
				int16_t timeoffset;
				int16_t period;
			} phy;
			struct axradio_status_receive_mac mac;
			const __xdata uint8_t *pktdata;
			uint16_t pktlen;
		} rx;
	} st;
};

struct axradio_callback_channelstate {
	struct wtimer_callback cb;
	struct {
		uint8_t status;
		uint8_t error;
		union {
			uint32_t t;
			struct u32endian b;
		} time;
		struct axradio_status_channelstate cs;
	} st;
};

struct axradio_callback_receive __xdata axradio_cb_receive;
struct axradio_callback_simple __xdata axradio_cb_receivesfd;
struct axradio_callback_channelstate __xdata axradio_cb_channelstate;
struct axradio_callback_simple __xdata axradio_cb_transmitstart;
struct axradio_callback_simple __xdata axradio_cb_transmitend;
struct axradio_callback_simple __xdata axradio_cb_transmitdata;
struct wtimer_desc __xdata axradio_timer;

volatile uint8_t __xdata f3f_saved = 0x3f;
volatile uint8_t __xdata f40_saved = 0xf0;
volatile uint8_t __xdata f41_saved = 0x3f;
volatile uint8_t __xdata f42_saved = 0xf0;

uint8_t __xdata silicon_revision = 0;
uint8_t __xdata radio_not_found_lcd_display[] = {"No Radio\nChip found"};
uint8_t __xdata radio_lcd_display[] = {"found AX5044\n"};
#if defined __ICC8051__

void __xdata *memset_xdata(void __xdata *p, uint8_t x, uint16_t l)
{
	uint8_t i = l >> 8;
	uint8_t j = l;
	if (!i && !j)
		return p;
	if (j)
		++i;
	{
		uint8_t __xdata *p1 = p;
		do {
			do {
				*p1++ = x;
			} while (--j);
		} while (--i);
	}
	return p;
}

void __xdata *memcpy_xdata(void __xdata *p, const void __xdata *ps, uint16_t l)
{
	uint8_t i = l >> 8;
	uint8_t j = l;
	if (!i && !j)
		return p;
	if (j)
		++i;
	{
		uint8_t __xdata *p1 = p;
		const uint8_t __xdata *p2 = ps;
		do {
			do {
				*p1++ = *p2++;
			} while (--j);
		} while (--i);
	}
	return p;
}

void __xdata *memcpy_xdatageneric(void __xdata *p, const void __genericaddr *ps, uint16_t l)
{
	uint8_t i = l >> 8;
	uint8_t j = l;
	if (!i && !j)
		return p;
	if (j)
		++i;
	{
		uint8_t __xdata *p1 = p;
		const uint8_t __genericaddr *p2 = ps;
		do {
			do {
				*p1++ = *p2++;
			} while (--j);
		} while (--i);
	}
	return p;
}

void __genericaddr *memcpy_genericxdata(void __genericaddr *p, const void __xdata *ps, uint16_t l)
{
	uint8_t i = l >> 8;
	uint8_t j = l;
	if (!i && !j)
		return p;
	if (j)
		++i;
	{
		uint8_t __genericaddr *p1 = p;
		const uint8_t __xdata *p2 = ps;
		do {
			do {
				*p1++ = *p2++;
			} while (--j);
		} while (--i);
	}
	return p;
}

#else
#include <string.h>
#define memset_xdata memset
#define memcpy_xdata memcpy
#define memcpy_xdatageneric memcpy
#define memcpy_genericxdata memcpy

#endif

static __reentrantb void update_timeanchor(void) __reentrant
{
	criticalsection_t crit;
    crit = enter_critical();
	axradio_timeanchor.timer0 = wtimer0_curtime();
    axradio_timeanchor.radiotimer = radio_read24(AX5044_45_REG_TIMER2);
    exit_critical(crit);
}

__reentrantb uint32_t axradio_conv_time_totimer0(uint32_t dt) __reentrant
{
	dt -= axradio_timeanchor.radiotimer;
	dt = axradio_conv_timeinterval_totimer0(signextend24(dt));
	dt += axradio_timeanchor.timer0;
	return dt;
}

static __reentrantb uint8_t ax5044_45_init_registers_common(void) __reentrant
{
	uint16_t rng = axradio_phy_chanpllrng[axradio_curchannel];
	if (rng & 0x2000)
		return AXRADIO_ERR_RANGING;
	if (radio_read8(AX5044_45_REG_PLLLOOP) & 0x80)
		radio_write16(AX5044_45_REG_PLLRANGINGB1, (rng & 0x1FF));  // AX5044_45: PLL VCO Range increased to 9 bit value.
	else
		radio_write16(AX5044_45_REG_PLLRANGINGA1, (rng & 0x1FF));  // AX5044_45: PLL VCO Range increased to 9 bit value.
	rng = axradio_get_pllvcoi();
    radio_write8(AX5044_45_REG_PLLVCOI, rng);
	return AXRADIO_ERR_NOERROR;
}

__reentrantb uint8_t ax5044_45_init_registers_tx(void) __reentrant
{
	ax5044_45_set_registers_tx();
	if(silicon_revision == AX5045_REVE_SILICON_REVISION)
    {
        radio_write16(AX5044_45_REG_PLLRANGINGA1,       vcora_tx);     // AX5045: Update VCO Ranging for REF 0x0A
    }
	return ax5044_45_init_registers_common();
}

__reentrantb uint8_t ax5044_45_init_registers_rx(void) __reentrant
{
	ax5044_45_set_registers_rx();
	if(silicon_revision == AX5045_REVE_SILICON_REVISION)
    {
        radio_write16(AX5044_45_REG_PLLRANGINGA1,       vcora_rx);     // AX5045: Update VCO Ranging for REF 0x02
    }
	return ax5044_45_init_registers_common();
}

static __reentrantb void receive_isr(void) __reentrant
{
	uint8_t fifo_cmd, flags;
	uint8_t i;
	uint8_t len = radio_read8(AX5044_45_REG_RADIOEVENTREQ0); // clear request so interrupt does not fire again. sync_rx enables interrupt on radio state changed in order to wake up on SDF detected

	uint8_t radioStateTemp = radio_read8(AX5044_45_REG_RADIOSTATE);
	if ((len & 0x04) && radioStateTemp == 0x0F) {
		// radio state has changed and is RX now: Radio has detected SFD -> save radio and LPXOSC time for time conversion
		update_timeanchor();
		if(axradio_framing_enable_sfdcallback) {
			wtimer_remove_callback(&axradio_cb_receivesfd.cb);
			axradio_cb_receivesfd.st.error = AXRADIO_ERR_NOERROR;
			axradio_cb_receivesfd.st.time.t = axradio_timeanchor.radiotimer;
			wtimer_add_callback(&axradio_cb_receivesfd.cb);
		}
	}

#ifdef DBGPKT
	if (len & 0x0C) {
		len = radio_read8(AX5044_45_REG_RADIOSTATE);
		radio_write8(AX5044_45_REG_PINFUNCDATA, (len & 0x01));
		radio_write8(AX5044_45_REG_PINFUNCPWRAMP, ((len >> 1) & 0x01));
	}
#endif

    while (radio_read8(AX5044_45_REG_IRQREQUEST0) & 0x01) {    // while fifo not empty
		fifo_cmd = radio_read8(AX5044_45_REG_FIFODATA); // read command
		len = (fifo_cmd & 0xE0) >> 5; // top 3 bits encode payload len
		if (len == 7)
			len = radio_read8(AX5044_45_REG_FIFODATA); // 7 means variable length, -> get length byte
		fifo_cmd &= 0x1F;
		switch (fifo_cmd) {
		case AX5044_45_FIFOCMD_DATA:
			if (!len)
				break;

			flags = radio_read8(AX5044_45_REG_FIFODATA);
			--len;
			ax5044_45_readfifo(axradio_rxbuffer, len);
			if(axradio_mode == AXRADIO_MODE_WOR_RECEIVE || axradio_mode == AXRADIO_MODE_WOR_ACK_RECEIVE)
            {
				f3f_saved = radio_read8(AX5044_45_REG_0xF3F);
				f40_saved = radio_read8(AX5044_45_REG_0xF40);
				f41_saved = radio_read8(AX5044_45_REG_0xF41);
				f42_saved = radio_read8(AX5044_45_REG_0xF42);
			}

			if (axradio_mode == AXRADIO_MODE_WOR_RECEIVE || axradio_mode == AXRADIO_MODE_SYNC_SLAVE)
			{
                radio_write8(AX5044_45_REG_PWRMODE, AX5044_45_PWRSTATE_POWERDOWN);
			}

			radio_write8(AX5044_45_REG_IRQMASK0, (radio_read8(AX5044_45_REG_IRQMASK0) & (uint8_t)~0x01)); // disable FIFO not empty irq
			wtimer_remove_callback(&axradio_cb_receive.cb);
			axradio_cb_receive.st.error = AXRADIO_ERR_NOERROR;
			axradio_cb_receive.st.rx.mac.raw = axradio_rxbuffer;
			if (AXRADIO_MODE_IS_STREAM_RECEIVE(axradio_mode)) {
				axradio_cb_receive.st.rx.pktdata = axradio_rxbuffer;
				axradio_cb_receive.st.rx.pktlen = len;
				{
					int8_t r = radio_read8(AX5044_45_REG_RSSI);
					axradio_cb_receive.st.rx.phy.rssi = r - (int16_t)axradio_phy_rssioffset;
				}
				if (axradio_phy_innerfreqloop) {
                    axradio_cb_receive.st.rx.phy.offset.o = axradio_conv_freq_fromreg(signextend16(radio_read16(AX5044_45_REG_TRKFREQ1)));
				} else {
                    axradio_cb_receive.st.rx.phy.offset.o = signextend20(radio_read24(AX5044_45_REG_TRKRFFREQ2));
				}
				wtimer_add_callback(&axradio_cb_receive.cb);
				break;
			}
			axradio_cb_receive.st.rx.pktdata = &axradio_rxbuffer[axradio_framing_maclen];
			if (len < axradio_framing_maclen) {
				len = 0;
				axradio_cb_receive.st.rx.pktlen = 0;
			} else {
				len -= axradio_framing_maclen;
				axradio_cb_receive.st.rx.pktlen = len;
				wtimer_add_callback(&axradio_cb_receive.cb);
				if (axradio_mode == AXRADIO_MODE_SYNC_SLAVE ||
				    axradio_mode == AXRADIO_MODE_SYNC_ACK_SLAVE)
					wtimer_remove(&axradio_timer);
			}
			break;

		case AX5044_45_FIFOCMD_RFFREQOFFS:
			if (axradio_phy_innerfreqloop || len != 3)
				goto dropchunk;
			i = radio_read8(AX5044_45_REG_FIFODATA);
			i &= 0x0F;
			i |= 1 + (uint8_t)~(i & 0x08);
			axradio_cb_receive.st.rx.phy.offset.b.b3 = ((int8_t)i) >> 8;
			axradio_cb_receive.st.rx.phy.offset.b.b2 = i;
			axradio_cb_receive.st.rx.phy.offset.b.b1 = radio_read8(AX5044_45_REG_FIFODATA);
			axradio_cb_receive.st.rx.phy.offset.b.b0 = radio_read8(AX5044_45_REG_FIFODATA);
			break;

		case AX5044_45_FIFOCMD_FREQOFFS:
			if (!axradio_phy_innerfreqloop || len != 2)
				goto dropchunk;
			axradio_cb_receive.st.rx.phy.offset.b.b1 = radio_read8(AX5044_45_REG_FIFODATA);
			axradio_cb_receive.st.rx.phy.offset.b.b0 = radio_read8(AX5044_45_REG_FIFODATA);
			axradio_cb_receive.st.rx.phy.offset.o = axradio_conv_freq_fromreg(signextend16(axradio_cb_receive.st.rx.phy.offset.o));
			break;

		case AX5044_45_FIFOCMD_RSSI:
			if (len != 1)
				goto dropchunk;
			{
				int8_t r = radio_read8(AX5044_45_REG_FIFODATA);
				axradio_cb_receive.st.rx.phy.rssi = r - (int16_t)axradio_phy_rssioffset;
			}
			break;

		case AX5044_45_FIFOCMD_TIMER:
			if (len != 3)
				goto dropchunk;
			// use the SFD time anchor
			//update_timeanchor();
			axradio_cb_receive.st.time.b.b3 = 0;
			axradio_cb_receive.st.time.b.b2 = radio_read8(AX5044_45_REG_FIFODATA);
			axradio_cb_receive.st.time.b.b1 = radio_read8(AX5044_45_REG_FIFODATA);
			axradio_cb_receive.st.time.b.b0 = radio_read8(AX5044_45_REG_FIFODATA);
			break;

		case AX5044_45_FIFOCMD_ANTRSSI:
			if (!len)
				break;
			update_timeanchor();
			wtimer_remove_callback(&axradio_cb_channelstate.cb);
			axradio_cb_channelstate.st.error = AXRADIO_ERR_NOERROR;
			{
				int8_t r = radio_read8(AX5044_45_REG_FIFODATA);
				axradio_cb_channelstate.st.cs.rssi = r - (int16_t)axradio_phy_rssioffset;
				axradio_cb_channelstate.st.cs.busy = r >= axradio_phy_channelbusy;
			}
			axradio_cb_channelstate.st.time.t = axradio_timeanchor.radiotimer;
			wtimer_add_callback(&axradio_cb_channelstate.cb);
			--len;
			goto dropchunk;

		default:
			// unhandled chunk type, just remove it from FIFO
		dropchunk:
			if (!len)
				break;
			i = len;
			do {
				radio_read8(AX5044_45_REG_FIFODATA);	// purge FIFO
			}
			while (--i);
			break;
		} // end switch(fifo_cmd)
	} // end while( fifo not empty )
}

static __reentrantb void transmit_isr(void) __reentrant
{
	for (;;) {
		uint8_t cnt = radio_read8(AX5044_45_REG_FIFOFREE0);
		if (radio_read8(AX5044_45_REG_FIFOFREE1))
			cnt = 0xff;
		switch (axradio_trxstate) {
		case trxstate_tx_longpreamble:
			if (!axradio_txbuffer_cnt) {
				axradio_trxstate = trxstate_tx_shortpreamble;
				if( axradio_mode == AXRADIO_MODE_WOR_TRANSMIT || axradio_mode == AXRADIO_MODE_WOR_ACK_TRANSMIT )
					axradio_txbuffer_cnt = axradio_phy_preamble_wor_len;
				else
					axradio_txbuffer_cnt = axradio_phy_preamble_len;
				goto shortpreamble;
			}
			if (cnt < 4)
				goto fifocommit;
			cnt = 7;
			if (axradio_txbuffer_cnt < 7)
				cnt = axradio_txbuffer_cnt;
			axradio_txbuffer_cnt -= cnt;
			cnt <<= 5;
			radio_write8(AX5044_45_REG_FIFODATA, (AX5044_45_FIFOCMD_REPEATDATA | (3 << 5)));
			radio_write8(AX5044_45_REG_FIFODATA, axradio_phy_preamble_flags);
			radio_write8(AX5044_45_REG_FIFODATA, cnt);
			radio_write8(AX5044_45_REG_FIFODATA, axradio_phy_preamble_byte);
			break;

		case trxstate_tx_shortpreamble:
		shortpreamble:
			if (!axradio_txbuffer_cnt) {
				if (cnt < 15)
					goto fifocommit;
				if (axradio_phy_preamble_appendbits) {
					uint8_t byte;
					radio_write8(AX5044_45_REG_FIFODATA, (AX5044_45_FIFOCMD_DATA | (2 << 5)));
					radio_write8(AX5044_45_REG_FIFODATA, 0x1C);
					byte = axradio_phy_preamble_appendpattern;
					if (radio_read8(AX5044_45_REG_PKTADDRCFG) & 0x80) {
						// msb first -> stop bit below
						byte &= 0xFF << (8-axradio_phy_preamble_appendbits);
						byte |= 0x80 >> axradio_phy_preamble_appendbits;
					} else {
						// lsb first -> stop bit above
						byte &= 0xFF >> (8-axradio_phy_preamble_appendbits);
						byte |= 0x01 << axradio_phy_preamble_appendbits;
					}
					radio_write8(AX5044_45_REG_FIFODATA, byte);
				}
#ifdef DBGPKT
                radio_write8(AX5044_45_REG_FIFODATA, AX5044_45_FIFOCMD_TXCTRL | (1 << 5));
				radio_write8(AX5044_45_REG_FIFODATA, 0x02); // set PA, state 0
#endif
                if ((radio_read8(AX5044_45_REG_FRAMING) & 0x0E) == 0x06 && axradio_framing_synclen) {
					// write SYNC word if framing mode is raw_patternmatch, might use SYNCLEN > 0 as a criterion, but need to make sure SYNCLEN=0 for WMBUS (chip automatically sends SYNCWORD but matching in RX works via MATCH0PAT)
					uint8_t len_byte = axradio_framing_synclen;
					uint8_t i = (len_byte & 0x07) ? 0x04 : 0;
					// SYNCLEN in bytes, rather than bits. Ceiled to next integer e.g. fractional bits are counted as full bits;
					len_byte += 7;
					len_byte >>= 3;
					radio_write8(AX5044_45_REG_FIFODATA, (AX5044_45_FIFOCMD_DATA | ((len_byte + 1) << 5)));
					radio_write8(AX5044_45_REG_FIFODATA, axradio_framing_syncflags | i);
					for (i = 0; i < len_byte; ++i) {
						// better put a brace, it might prevent SDCC from optimizing away the assignement...
						radio_write8(AX5044_45_REG_FIFODATA, axradio_framing_syncword[i]);
					}
				}
#ifdef DBGPKT
				radio_write8(AX5044_45_REG_FIFODATA, (AX5044_45_FIFOCMD_TXCTRL | (1 << 5)));
				radio_write8(AX5044_45_REG_FIFODATA, 0x03); // set PA, state 1
#endif
				axradio_trxstate = trxstate_tx_packet;
				break;
			}
			if (cnt < 4)
				goto fifocommit;
			cnt = 255;
			if (axradio_txbuffer_cnt < 255*8)
				cnt = axradio_txbuffer_cnt >> 3;
			if (cnt) {
				axradio_txbuffer_cnt -= ((uint16_t)cnt) << 3;
				radio_write8(AX5044_45_REG_FIFODATA, (AX5044_45_FIFOCMD_REPEATDATA | (3 << 5)));
				radio_write8(AX5044_45_REG_FIFODATA, axradio_phy_preamble_flags);
				radio_write8(AX5044_45_REG_FIFODATA, cnt);
				radio_write8(AX5044_45_REG_FIFODATA, axradio_phy_preamble_byte);
				break;
			}
			{
				uint8_t byte = axradio_phy_preamble_byte;
				cnt = axradio_txbuffer_cnt;
				axradio_txbuffer_cnt = 0;
				radio_write8(AX5044_45_REG_FIFODATA, (AX5044_45_FIFOCMD_DATA | (2 << 5)));
				radio_write8(AX5044_45_REG_FIFODATA, 0x1C);
				if (radio_read8(AX5044_45_REG_PKTADDRCFG) & 0x80) {
					// msb first -> stop bit below
					byte &= 0xFF << (8-cnt);
					byte |= 0x80 >> cnt;
				} else {
					// lsb first -> stop bit above
					byte &= 0xFF >> (8-cnt);
					byte |= 0x01 << cnt;
				}
				radio_write8(AX5044_45_REG_FIFODATA, byte);
			}
			break;

		case trxstate_tx_packet:
			if (cnt < 11)
				goto fifocommit;
			{
				uint8_t flags = 0;
				if (!axradio_txbuffer_cnt)
					flags |= 0x01; // flag byte: pkt_start
				{
					uint16_t len = axradio_txbuffer_len - axradio_txbuffer_cnt;
					cnt -= 3;
					if (cnt >= len) {
						cnt = len;
						flags |= 0x02; // flag byte: pkt_end
					}
				}
				if (!cnt)
					goto pktend;
				radio_write8(AX5044_45_REG_FIFODATA, AX5044_45_FIFOCMD_DATA | (7 << 5));
				radio_write8(AX5044_45_REG_FIFODATA, (cnt + 1)); // write FIFO chunk length byte (length includes the flag byte, thus the +1)
				radio_write8(AX5044_45_REG_FIFODATA, flags);
				ax5044_45_writefifo(&axradio_txbuffer[axradio_txbuffer_cnt], cnt);
				axradio_txbuffer_cnt += cnt;
				if (flags & 0x02)
					goto pktend;
			}
			break;

		default:
			return;
		}
	}
  pktend:
	axradio_trxstate = trxstate_tx_waitdone;
	radio_write8(AX5044_45_REG_RADIOEVENTMASK0, 0x01); // enable REVRDONE event
	radio_write8(AX5044_45_REG_IRQMASK0, 0x40); // enable radio controller irq
  fifocommit:
	radio_write8(AX5044_45_REG_FIFOSTAT, 4); // commit
}

uint8_t debug_event = 0;
uint8_t debug_radiostate = 0;

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
	uint8_t radioStateTemp;
	switch (axradio_trxstate) {
	default:
		radio_write8(AX5044_45_REG_IRQMASK1, 0x00);
		radio_write8(AX5044_45_REG_IRQMASK0, 0x00);
		break;

	case trxstate_wait_xtal:
		radio_write8(AX5044_45_REG_IRQMASK1, 0x00); // otherwise crystal ready will fire all over again
		axradio_trxstate = trxstate_xtal_ready;
		break;

	case trxstate_pll_ranging:
		radio_write8(AX5044_45_REG_IRQMASK1, 0x00); // otherwise autoranging done will fire all over again
		axradio_trxstate = trxstate_pll_ranging_done;
		break;

	case trxstate_pll_settling:
		radio_write8(AX5044_45_REG_RADIOEVENTMASK0, 0x00);
		axradio_trxstate = trxstate_pll_settled;
		break;

	case trxstate_tx_xtalwait:
		radio_read8(AX5044_45_REG_RADIOEVENTREQ0); // make sure REVRDONE bit is cleared, so it is a reliable indicator that the packet is out
		radio_write8(AX5044_45_REG_FIFOSTAT, 3); // clear FIFO data & flags (prevent transmitting anything left over in the FIFO, this has no effect if the FIFO is not powerered, in this case it is reset any way)
		radio_write8(AX5044_45_REG_IRQMASK1, 0x00);
		radio_write8(AX5044_45_REG_IRQMASK0, 0x08); // enable fifo free threshold
		axradio_trxstate = trxstate_tx_longpreamble;
#if 1
		if ((radio_read8(AX5044_45_REG_MODULATION) & 0x0F) == 9) { // 4-FSK
			radio_write8(AX5044_45_REG_FIFODATA, (AX5044_45_FIFOCMD_DATA | (7 << 5)));
			radio_write8(AX5044_45_REG_FIFODATA, 2);  // length (including flags)
			radio_write8(AX5044_45_REG_FIFODATA, 0x01);  // flag PKTSTART -> dibit sync
			radio_write8(AX5044_45_REG_FIFODATA, 0x11); // dummy byte for forcing dibit sync
		}
#endif
#ifdef DBGPKT
		radio_write8(AX5044_45_REG_FIFODATA, (AX5044_45_FIFOCMD_TXCTRL | (1 << 5)));
		radio_write8(AX5044_45_REG_FIFODATA, 0x03); // set PA, state 1
#endif
		transmit_isr();
		radio_write8(AX5044_45_REG_PWRMODE, AX5044_45_PWRSTATE_FULL_TX);
		update_timeanchor();
		wtimer_remove_callback(&axradio_cb_transmitstart.cb);
		switch (axradio_mode) {
		case AXRADIO_MODE_ACK_TRANSMIT:
		case AXRADIO_MODE_WOR_ACK_TRANSMIT:
			if (axradio_ack_count != axradio_framing_ack_retransmissions) {
				axradio_cb_transmitstart.st.error = AXRADIO_ERR_RETRANSMISSION;
				break;
			}
			// fall through
		default:
			axradio_cb_transmitstart.st.error = AXRADIO_ERR_NOERROR;
			break;
		}
		axradio_cb_transmitstart.st.time.t = axradio_timeanchor.radiotimer;
		wtimer_add_callback(&axradio_cb_transmitstart.cb);
		break;

	case trxstate_tx_longpreamble:
	case trxstate_tx_shortpreamble:
	case trxstate_tx_packet:
		transmit_isr();
		break;

	case trxstate_tx_waitdone:
		radio_read8(AX5044_45_REG_RADIOEVENTREQ0);
		radioStateTemp = radio_read8(AX5044_45_REG_RADIOSTATE);
		if (radioStateTemp != 0)
			break;
		radio_write8(AX5044_45_REG_RADIOEVENTMASK0, 0x00);
		switch (axradio_mode) {
		case AXRADIO_MODE_ASYNC_RECEIVE:
			ax5044_45_init_registers_rx();
			ax5044_45_receiver_on_continuous();
			break;

		case AXRADIO_MODE_ACK_RECEIVE:
			if (axradio_cb_receive.st.error == AXRADIO_ERR_PACKETDONE) {
				ax5044_45_init_registers_rx();
				ax5044_45_receiver_on_continuous();
				break;
			}
		offxtal:
			ax5044_45_off_xtal();
			break;

		case AXRADIO_MODE_WOR_RECEIVE:
			if (axradio_cb_receive.st.error == AXRADIO_ERR_PACKETDONE) {
				ax5044_45_init_registers_rx();
				ax5044_45_receiver_on_wor();
				break;
			}
			goto offxtal;

		case AXRADIO_MODE_WOR_ACK_RECEIVE:
			ax5044_45_init_registers_rx();
			ax5044_45_receiver_on_wor();
			break;

		case AXRADIO_MODE_SYNC_ACK_MASTER:
			axradio_txbuffer_len = axradio_framing_minpayloadlen;
			// fall through

		case AXRADIO_MODE_ACK_TRANSMIT:
		case AXRADIO_MODE_WOR_ACK_TRANSMIT:
			ax5044_45_init_registers_rx();
			ax5044_45_receiver_on_continuous();
			wtimer_remove(&axradio_timer);
			axradio_timer.time = axradio_framing_ack_timeout;
			wtimer0_addrelative(&axradio_timer);
			break;

		case AXRADIO_MODE_SYNC_MASTER:
			axradio_txbuffer_len = axradio_framing_minpayloadlen;
			// fall through

		default:
			ax5044_45_off();
			break;
		}
		if (axradio_mode != AXRADIO_MODE_SYNC_MASTER &&
		    axradio_mode != AXRADIO_MODE_SYNC_ACK_MASTER &&
		    axradio_mode != AXRADIO_MODE_SYNC_SLAVE &&
		    axradio_mode != AXRADIO_MODE_SYNC_ACK_SLAVE)
			axradio_syncstate = syncstate_off;
		update_timeanchor();
		wtimer_remove_callback(&axradio_cb_transmitend.cb);
		axradio_cb_transmitend.st.error = AXRADIO_ERR_NOERROR;
		if (axradio_mode == AXRADIO_MODE_ACK_TRANSMIT ||
		    axradio_mode == AXRADIO_MODE_WOR_ACK_TRANSMIT ||
		    axradio_mode == AXRADIO_MODE_SYNC_ACK_MASTER)
			axradio_cb_transmitend.st.error = AXRADIO_ERR_BUSY;
		axradio_cb_transmitend.st.time.t = axradio_timeanchor.radiotimer;
		wtimer_add_callback(&axradio_cb_transmitend.cb);
		break;


	case trxstate_txcw_xtalwait:
		radio_write8(AX5044_45_REG_IRQMASK1, 0x00);
		radio_write8(AX5044_45_REG_IRQMASK0, 0x00);
		radio_write8(AX5044_45_REG_PWRMODE, AX5044_45_PWRSTATE_FULL_TX);
		radio_write8(AX5044_45_REG_PINFUNCDATA, 0x84);     // AX5045: Enable wire mode back & set data pin as weak pullup. (4-DATA Input/Output Modem Data)
		axradio_trxstate = trxstate_off;
		update_timeanchor();
		wtimer_remove_callback(&axradio_cb_transmitstart.cb);
		axradio_cb_transmitstart.st.error = AXRADIO_ERR_NOERROR;
		axradio_cb_transmitstart.st.time.t = axradio_timeanchor.radiotimer;
		wtimer_add_callback(&axradio_cb_transmitstart.cb);
		break;

	case trxstate_txstream_xtalwait:
		if (radio_read8(AX5044_45_REG_IRQREQUEST1) & 0x01) {
			radio_write8(AX5044_45_REG_RADIOEVENTMASK0, 0x03); // enable PLL settled and done event
			radio_write8(AX5044_45_REG_IRQMASK1, 0x00);
			radio_write8(AX5044_45_REG_IRQMASK0, 0x40); // enable radio controller irq
			radio_write8(AX5044_45_REG_PWRMODE, AX5044_45_PWRSTATE_FULL_TX);
			axradio_trxstate = trxstate_txstream;
		}
		goto txstreamdatacb;

	case trxstate_txstream:
	{
		uint8_t __autodata evt = radio_read8(AX5044_45_REG_RADIOEVENTREQ0);
		debug_event = evt;
		debug_radiostate = radio_read8(AX5044_45_REG_RADIOSTATE);

		radio_write8(AX5044_45_REG_RADIOEVENTMASK0, 0x00);

		if (evt & 0x03)
			update_timeanchor();
		if (evt & 0x01) {
            update_timeanchor();
			wtimer_remove_callback(&axradio_cb_transmitend.cb);
			axradio_cb_transmitend.st.error = AXRADIO_ERR_NOERROR;
			axradio_cb_transmitend.st.time.t = axradio_timeanchor.radiotimer;
			wtimer_add_callback(&axradio_cb_transmitend.cb);
		}
		if (evt & 0x02) {
			update_timeanchor();
			wtimer_remove_callback(&axradio_cb_transmitstart.cb);
			axradio_cb_transmitstart.st.error = AXRADIO_ERR_NOERROR;
			axradio_cb_transmitstart.st.time.t = axradio_timeanchor.radiotimer;
			wtimer_add_callback(&axradio_cb_transmitstart.cb);
			/*Add transmit data cb into queue as PLL is settled*/
			update_timeanchor();
			wtimer_remove_callback(&axradio_cb_transmitdata.cb);
			axradio_cb_transmitdata.st.error = AXRADIO_ERR_NOERROR;
			axradio_cb_transmitdata.st.time.t = axradio_timeanchor.radiotimer;
			wtimer_add_callback(&axradio_cb_transmitdata.cb);
		}
	}
	txstreamdatacb:
	if (radio_read8(AX5044_45_REG_IRQREQUEST0) & radio_read8(AX5044_45_REG_IRQMASK0) & 0x08) {
		radio_write8(AX5044_45_REG_IRQMASK0, (radio_read8(AX5044_45_REG_IRQMASK0) & (uint8_t)~0x08));
		update_timeanchor();
		wtimer_remove_callback(&axradio_cb_transmitdata.cb);
		axradio_cb_transmitdata.st.error = AXRADIO_ERR_NOERROR;
		axradio_cb_transmitdata.st.time.t = axradio_timeanchor.radiotimer;
		wtimer_add_callback(&axradio_cb_transmitdata.cb);

	}
	break;

	case trxstate_rxwor:
#if defined __ARMEL__ || defined __ARMEB__

#else
		//F144_WOR_TCXO
		//AX8052F144, WOR with TCXO: MCU needs to wake up upon TCXO enable / disable in order to get the TCXO_EN singal into the frozen GPIO
		if (radio_read8(AX5044_45_REG_IRQREQUEST0) & 0x80) { // vdda ready (note irqinversion does not act upon AX5044_45_REG_IRQREQUEST0)
			radio_write8(AX5044_45_REG_IRQINVERSION0, (radio_read8(AX5044_45_REG_IRQINVERSION0) | 0x80)); // invert pwr irq, so it does not fire continuously
		} else {
			radio_write8(AX5044_45_REG_IRQINVERSION0, (radio_read8(AX5044_45_REG_IRQINVERSION0) & (uint8_t)~0x80)); // drop pwr irq inversion --> armed again
		}
#endif // defined
		if (radio_read8(AX5044_45_REG_IRQREQUEST1) & 0x01) { // XTAL ready
			radio_write8(AX5044_45_REG_IRQINVERSION1, (radio_read8(AX5044_45_REG_IRQINVERSION1) | 0x01)); // invert the xtal ready irq so it does not fire continuously
		} else {
			// XTAL not running
			radio_write8(AX5044_45_REG_IRQINVERSION1, (radio_read8(AX5044_45_REG_IRQINVERSION1) & (uint8_t)~0x01)); // drop xtal ready irq inversion --> armed again for next wake-up
			radio_write8(AX5044_45_REG_0xF3F, f3f_saved);
			radio_write8(AX5044_45_REG_0xF40, f40_saved);
			radio_write8(AX5044_45_REG_0xF41, f41_saved);
			radio_write8(AX5044_45_REG_0xF42, f42_saved);
		}

		// fall through
	case trxstate_rx:
		receive_isr();
		break;

	} // end switch(axradio_trxstate)
} //end radio_isr


__reentrantb void ax5044_45_receiver_on_continuous(void) __reentrant
{
	uint8_t rschanged_int = (axradio_framing_enable_sfdcallback | (axradio_mode == AXRADIO_MODE_SYNC_ACK_SLAVE) | (axradio_mode == AXRADIO_MODE_SYNC_SLAVE) );
	if (rschanged_int)
		radio_write8(AX5044_45_REG_RADIOEVENTMASK0, 0x04);
	radio_write8(AX5044_45_REG_RSSIREFERENCE, axradio_phy_rssireference);
	ax5044_45_set_registers_rxcont();

#if 0
	if (axradio_mode == AXRADIO_MODE_ASYNC_RECEIVE ||
	    axradio_mode == AXRADIO_MODE_ACK_RECEIVE ||
	    AXRADIO_MODE_IS_STREAM_RECEIVE(axradio_mode)) {
		radio_write8(AX5044_45_REG_TMGRXPREAMBLE1, axradio_phy_tmgrxpreamble1_cont);
		radio_write8(AX5044_45_REG_PKTSTOREFLAGS, (radio_read8(AX5044_45_REG_PKTSTOREFLAGS) | 0x40));
	} else {
		radio_write8(AX5044_45_REG_TMGRXPREAMBLE1, 0x00);
		radio_write8(AX5044_45_REG_PKTSTOREFLAGS, (radio_read8(AX5044_45_REG_PKTSTOREFLAGS) & (uint8_t)~0x40));
	}
#endif
	radio_write8(AX5044_45_REG_PKTSTOREFLAGS, radio_read8(AX5044_45_REG_PKTSTOREFLAGS) & (uint8_t)~0x40);


	radio_write8(AX5044_45_REG_FIFOSTAT, 3); // clear FIFO data & flags
	if (axradio_mode == AXRADIO_MODE_STREAM_RECEIVE_DATAPIN)
    {
        ax5044_45_set_registers_rxcont_singleparamset();
        radio_write8(AX5044_45_REG_PINFUNCDATA, 0x87);     // AX5045: Disable wire mode & set data pin as weak pullup. (7-DATA Output Modem Data)
        radio_write8(AX5044_45_REG_PWRMODE, AX5044_45_PWRSTATE_FULL_RX);
        radio_write8(AX5044_45_REG_PINFUNCDATA, 0x84);     // AX5045: Enable wire mode back & set data pin as weak pullup. (4-DATA Input/Output Modem Data)
        radio_write8(AX5044_45_REG_PINFUNCDCLK, 0x04);
    }
    else
    {
        radio_write8(AX5044_45_REG_PWRMODE, AX5044_45_PWRSTATE_FULL_RX);
    }
	axradio_trxstate = trxstate_rx;
	if (rschanged_int)
		radio_write8(AX5044_45_REG_IRQMASK0, 0x41); //  enable FIFO not empty / radio controller irq
	else
		radio_write8(AX5044_45_REG_IRQMASK0, 0x01); //  enable FIFO not empty
	radio_write8(AX5044_45_REG_IRQMASK1, 0x00);
}

__reentrantb void ax5044_45_receiver_on_wor(void) __reentrant
{
	radio_write8(AX5044_45_REG_BGNDRSSIGAIN, 0x02);
	if(axradio_framing_enable_sfdcallback)
		radio_write8(AX5044_45_REG_RADIOEVENTMASK0, 0x04);
	radio_write8(AX5044_45_REG_FIFOSTAT, 3); // clear FIFO data & flags
	radio_write8(AX5044_45_REG_LPOSCCONFIG, 0x01); // start LPOSC, slow mode
	radio_write8(AX5044_45_REG_RSSIREFERENCE, axradio_phy_rssireference);
	ax5044_45_set_registers_rxwor();
	radio_write8(AX5044_45_REG_PKTSTOREFLAGS, (radio_read8(AX5044_45_REG_PKTSTOREFLAGS) & (uint8_t)~0x40));

	radio_write8(AX5044_45_REG_PWRMODE, AX5044_45_PWRSTATE_WOR_RX);
	axradio_trxstate = trxstate_rxwor;
	if(axradio_framing_enable_sfdcallback)
		radio_write8(AX5044_45_REG_IRQMASK0, 0x41); //  enable FIFO not empty / radio controller irq
	else
		radio_write8(AX5044_45_REG_IRQMASK0, 0x01); //  enable FIFO not empty
#if defined __ARMEL__ || defined __ARMEB__
    // power irq needed only for AX8052F144 WOR with TCXO
#else
	if (((PALTRADIO & 0x40) && ((radio_read8(AX5044_45_REG_PINFUNCPWRAMP) & 0x0F) == 0x07)) || ((PALTRADIO & 0x80) && ((radio_read8(AX5044_45_REG_PINFUNCANTSEL) & 0x07) == 0x04))) // pass through of TCXO_EN
	{
		// F144_WOR_TCXO
		radio_write8(AX5044_45_REG_IRQMASK0, radio_read8(AX5044_45_REG_IRQMASK0) | 0x80); // power irq (AX8052F144 WOR with TCXO)
		radio_write8(AX5044_45_REG_POWIRQMASK, 0x90); // interrupt when vddana ready (AX8052F144 WOR with TCXO)
	}
#endif // defined
	radio_write8(AX5044_45_REG_IRQMASK1, 0x01); // xtal ready
	{
		uint16_t wp = axradio_wor_period;
		radio_write8(AX5044_45_REG_WAKEUPFREQ1, ((wp >> 8) & 0xFF));
		radio_write8(AX5044_45_REG_WAKEUPFREQ0, ((wp >> 0) & 0xFF)); // actually wakeup period measured in LP OSC cycles
        wp += radio_read16(AX5044_45_REG_WAKEUPTIMER1);
		radio_write8(AX5044_45_REG_WAKEUP1, ((wp >> 8) & 0xFF));
		radio_write8(AX5044_45_REG_WAKEUP0, ((wp >> 0) & 0xFF));
	}
}

__reentrantb void ax5044_45_prepare_tx(void) __reentrant
{
	radio_write8(AX5044_45_REG_PWRMODE, AX5044_45_PWRSTATE_XTAL_ON);
	ax5044_45_init_registers_tx();
	radio_write8(AX5044_45_REG_FIFOTHRESH0, 0x80);
	axradio_trxstate = trxstate_tx_xtalwait;
	radio_write8(AX5044_45_REG_IRQMASK0, 0x00);
	radio_write8(AX5044_45_REG_IRQMASK1, 0x01); // enable xtal ready interrupt
	radio_read8(AX5044_45_REG_POWSTICKYSTAT); // clear pwr management sticky status --> brownout gate works
}

__reentrantb void ax5044_45_off(void) __reentrant
{
	ax5044_45_off_xtal();
	radio_write8(AX5044_45_REG_PWRMODE, AX5044_45_PWRSTATE_POWERDOWN);
}

__reentrantb void ax5044_45_off_xtal(void) __reentrant
{
	radio_write8(AX5044_45_REG_IRQMASK0, 0x00); // IRQ off
	radio_write8(AX5044_45_REG_IRQMASK1, 0x00);
	radio_write8(AX5044_45_REG_PWRMODE, AX5044_45_PWRSTATE_XTAL_ON);
	radio_write8(AX5044_45_REG_LPOSCCONFIG, 0x00); // LPOSC off
	axradio_trxstate = trxstate_off;
}

void axradio_wait_for_xtal(void)
{
	criticalsection_t crit = enter_critical();
	axradio_trxstate = trxstate_wait_xtal;
	radio_write8(AX5044_45_REG_IRQMASK1, (radio_read8(AX5044_45_REG_IRQMASK1) | 0x01)); // enable xtal ready interrupt
	for(;;) {
		__disable_irq();
		if (axradio_trxstate == trxstate_xtal_ready)
			break;
		wtimer_idle(WTFLAG_CANSTANDBY);
		exit_critical(crit);
		wtimer_runcallbacks();
	}
    exit_critical(crit);     //  Restore all Interrupts
}

static void axradio_setaddrregs(void)
{
	radio_write8(AX5044_45_REG_PKTADDRA0, axradio_localaddr.addr[0]);
	radio_write8(AX5044_45_REG_PKTADDRA1, axradio_localaddr.addr[1]);
	radio_write8(AX5044_45_REG_PKTADDRA2, axradio_localaddr.addr[2]);
	radio_write8(AX5044_45_REG_PKTADDRA3, axradio_localaddr.addr[3]);
	radio_write8(AX5044_45_REG_PKTADDRA4, axradio_localaddr.addr[4]);    // AX5044_45: Address increased to 5 bytes range.

	radio_write8(AX5044_45_REG_PKTADDRMASK0, axradio_localaddr.mask[0]);
	radio_write8(AX5044_45_REG_PKTADDRMASK1, axradio_localaddr.mask[1]);
	radio_write8(AX5044_45_REG_PKTADDRMASK2, axradio_localaddr.mask[2]);
	radio_write8(AX5044_45_REG_PKTADDRMASK3, axradio_localaddr.mask[3]);
	radio_write8(AX5044_45_REG_PKTADDRMASK4, axradio_localaddr.mask[4]);   // AX5044_45: Address increased to 5 bytes range.

	if (axradio_phy_pn9 && axradio_framing_addrlen)
    {
		uint16_t __autodata pn = 0x1ff;
		uint8_t __autodata inv = -(radio_read8(AX5044_45_REG_ENCODING0) & 0x02);   // AX5044_45: Invert data if set to 1.
		if (axradio_framing_destaddrpos != 0xff)
        {
            pn = pn9_advance_bits(pn, axradio_framing_destaddrpos << 3);
        }
		radio_write8(AX5044_45_REG_PKTADDRA0, (radio_read8(AX5044_45_REG_PKTADDRA0) ^ (pn ^ inv)));
		pn = pn9_advance_byte(pn);
		radio_write8(AX5044_45_REG_PKTADDRA1, (radio_read8(AX5044_45_REG_PKTADDRA1) ^ (pn ^ inv)));
		pn = pn9_advance_byte(pn);
		radio_write8(AX5044_45_REG_PKTADDRA2, (radio_read8(AX5044_45_REG_PKTADDRA2) ^ (pn ^ inv)));
		pn = pn9_advance_byte(pn);
		radio_write8(AX5044_45_REG_PKTADDRA3, (radio_read8(AX5044_45_REG_PKTADDRA3) ^ (pn ^ inv)));
		pn = pn9_advance_byte(pn);
		radio_write8(AX5044_45_REG_PKTADDRA4, (radio_read8(AX5044_45_REG_PKTADDRA4) ^ (pn ^ inv)));   // AX5044_45: Address increased to 5 bytes range.
	}
}

static void ax5044_45_init_registers(void)
{
	ax5044_45_set_registers();

#ifdef DBGPKT
	radio_write8(AX5044_45_REG_PINFUNCPWRAMP, 0x06); // output pwramp
#endif
    radio_write16(AX5044_45_REG_PKTLENOFFSET1, (radio_read16(AX5044_45_REG_PKTLENOFFSET1) + axradio_framing_swcrclen));     // AX5044_45: Add len offs for software CRC16 (used for both, fixed and variable length packets. Increased to 16 bit value.
	radio_write8(AX5044_45_REG_PINFUNCIRQ, 0x03); // use as IRQ pin
	radio_write8(AX5044_45_REG_PKTSTOREFLAGS, (axradio_phy_innerfreqloop ? 0x13 : 0x15)); // store RF offset, RSSI and delimiter timing
	axradio_setaddrregs();
}

/*
 * Synchronous Mode Helper Routines
 */

static __reentrantb void axradio_sync_addtime(uint32_t dt) __reentrant
{
	axradio_sync_time += dt;
}

static __reentrantb void axradio_sync_subtime(uint32_t dt) __reentrant
{
	axradio_sync_time -= dt;
}

static __reentrantb void axradio_sync_settimeradv(uint32_t dt) __reentrant
{
	axradio_timer.time = axradio_sync_time;
	axradio_timer.time -= dt;
}

static void axradio_sync_adjustperiodcorr(void)
{
	int32_t __autodata dt = axradio_conv_time_totimer0(axradio_cb_receive.st.time.t) - axradio_sync_time;
	axradio_cb_receive.st.rx.phy.timeoffset = dt;
	if (!checksignedlimit16(axradio_sync_periodcorr, axradio_sync_slave_maxperiod)) {
		axradio_sync_addtime(dt);
		dt <<= SYNC_K1;
		axradio_sync_periodcorr = dt;
	} else {
		axradio_sync_periodcorr += dt;
		dt >>= SYNC_K0;
		axradio_sync_addtime(dt);
	}
	axradio_sync_periodcorr = signedlimit16(axradio_sync_periodcorr, axradio_sync_slave_maxperiod);
}

static void axradio_sync_slave_nextperiod()
{
	axradio_sync_addtime(axradio_sync_period);
	if (!checksignedlimit16(axradio_sync_periodcorr, axradio_sync_slave_maxperiod))
		return;
	{
		int16_t __autodata c = axradio_sync_periodcorr;
		axradio_sync_addtime(c >> SYNC_K1);
	}
}
/*
 * Callbacks
 */
static void axradio_timer_callback(struct wtimer_desc __xdata *desc)
{
	desc;
	switch (axradio_mode) {
	case AXRADIO_MODE_STREAM_RECEIVE:
	case AXRADIO_MODE_STREAM_RECEIVE_UNENC:
	case AXRADIO_MODE_STREAM_RECEIVE_SCRAM:
	case AXRADIO_MODE_STREAM_RECEIVE_SCRAM_PN9:
	case AXRADIO_MODE_STREAM_RECEIVE_SCRAM_PN15:
    case AXRADIO_MODE_STREAM_RECEIVE_SCRAM_PN17:
	case AXRADIO_MODE_ASYNC_RECEIVE:
	case AXRADIO_MODE_WOR_RECEIVE:
		if (axradio_syncstate == syncstate_asynctx)
			goto transmitcs;
		wtimer_remove(&axradio_timer);
	rearmcstimer:
		axradio_timer.time = axradio_phy_cs_period;
		wtimer0_addrelative(&axradio_timer);
	chanstatecb:
		update_timeanchor();
		wtimer_remove_callback(&axradio_cb_channelstate.cb);
		axradio_cb_channelstate.st.error = AXRADIO_ERR_NOERROR;
		{
			int8_t __autodata r = radio_read8(AX5044_45_REG_RSSI);
			axradio_cb_channelstate.st.cs.rssi = r - (int16_t)axradio_phy_rssioffset;
			axradio_cb_channelstate.st.cs.busy = r >= axradio_phy_channelbusy;
		}
		axradio_cb_channelstate.st.time.t = axradio_timeanchor.radiotimer;
		wtimer_add_callback(&axradio_cb_channelstate.cb);
		break;

	case AXRADIO_MODE_ASYNC_TRANSMIT:
	case AXRADIO_MODE_WOR_TRANSMIT:
	transmitcs:
		if (axradio_ack_count)
			--axradio_ack_count;
		wtimer_remove(&axradio_timer);
		if ((int8_t)radio_read8(AX5044_45_REG_RSSI) < axradio_phy_channelbusy ||
		    (!axradio_ack_count && axradio_phy_lbt_forcetx)) {
			axradio_syncstate = syncstate_off;
			axradio_txbuffer_cnt = axradio_phy_preamble_longlen;
			ax5044_45_prepare_tx();
			goto chanstatecb;
		}
		if (axradio_ack_count)
			goto rearmcstimer;
		update_timeanchor();
		axradio_syncstate = syncstate_off;
		ax5044_45_off();
		wtimer_remove_callback(&axradio_cb_transmitstart.cb);
		axradio_cb_transmitstart.st.error = AXRADIO_ERR_TIMEOUT;
		axradio_cb_transmitstart.st.time.t = axradio_timeanchor.radiotimer;
		wtimer_add_callback(&axradio_cb_transmitstart.cb);
		break;

	case AXRADIO_MODE_ACK_TRANSMIT:
	case AXRADIO_MODE_WOR_ACK_TRANSMIT:
		if (axradio_syncstate == syncstate_lbt)
			goto transmitcs;
		ax5044_45_off();
		if (!axradio_ack_count) {
			update_timeanchor();
			wtimer_remove_callback(&axradio_cb_transmitend.cb);
			axradio_cb_transmitend.st.error = AXRADIO_ERR_TIMEOUT;
			axradio_cb_transmitend.st.time.t = axradio_timeanchor.radiotimer;
			wtimer_add_callback(&axradio_cb_transmitend.cb);
			break;
		}
		--axradio_ack_count;
		axradio_txbuffer_cnt = axradio_phy_preamble_longlen;
		ax5044_45_prepare_tx();
		break;

	case AXRADIO_MODE_ACK_RECEIVE:
	case AXRADIO_MODE_WOR_ACK_RECEIVE:
		if (axradio_syncstate == syncstate_lbt)
			goto transmitcs;
	transmitack:
		radio_write8(AX5044_45_REG_FIFOSTAT, 3);
		radio_write8(AX5044_45_REG_PWRMODE, AX5044_45_PWRSTATE_FULL_TX);
		while (!(radio_read8(AX5044_45_REG_POWSTAT) & 0x08)); // wait for modem vdd so writing the FIFO is safe
		ax5044_45_init_registers_tx();
		radio_read8(AX5044_45_REG_RADIOEVENTREQ0); // make sure REVRDONE bit is cleared, so it is a reliable indicator that the packet is out
		radio_write8(AX5044_45_REG_FIFOTHRESH0, 0x80);
		axradio_trxstate = trxstate_tx_longpreamble;
		axradio_txbuffer_cnt = axradio_phy_preamble_longlen;
#if 1
		if ((radio_read8(AX5044_45_REG_MODULATION) & 0x0F) == 9) { // 4-FSK
			radio_write8(AX5044_45_REG_FIFODATA, AX5044_45_FIFOCMD_DATA | (7 << 5));
			radio_write8(AX5044_45_REG_FIFODATA, 2);  // length (including flags)
			radio_write8(AX5044_45_REG_FIFODATA, 0x01);  // flag PKTSTART -> dibit sync
			radio_write8(AX5044_45_REG_FIFODATA, 0x11); // dummy byte for forcing dibit sync
		}
#endif
#ifdef DBGPKT
		radio_write8(AX5044_45_REG_FIFODATA, (AX5044_45_FIFOCMD_TXCTRL | (1 << 5)));
		radio_write8(AX5044_45_REG_FIFODATA, 0x03); // set PA, state 1
#endif
		radio_write8(AX5044_45_REG_IRQMASK0, 0x08); // enable fifo free threshold
		update_timeanchor();
		wtimer_remove_callback(&axradio_cb_transmitstart.cb);
		axradio_cb_transmitstart.st.error = AXRADIO_ERR_NOERROR;
		axradio_cb_transmitstart.st.time.t = axradio_timeanchor.radiotimer;
		wtimer_add_callback(&axradio_cb_transmitstart.cb);
		break;

	case AXRADIO_MODE_SYNC_MASTER:
	case AXRADIO_MODE_SYNC_ACK_MASTER:
		switch (axradio_syncstate) {
		default:
			radio_write8(AX5044_45_REG_PWRMODE, AX5044_45_PWRSTATE_XTAL_ON);
			ax5044_45_init_registers_tx();
			axradio_syncstate = syncstate_master_xostartup;
			wtimer_remove_callback(&axradio_cb_transmitdata.cb);
			axradio_cb_transmitdata.st.error = AXRADIO_ERR_NOERROR;
			axradio_cb_transmitdata.st.time.t = 0;
			wtimer_add_callback(&axradio_cb_transmitdata.cb);
			wtimer_remove(&axradio_timer);
			axradio_timer.time = axradio_sync_time;
			wtimer0_addabsolute(&axradio_timer);
			break;

		case syncstate_master_xostartup:
			radio_write8(AX5044_45_REG_FIFOSTAT, 3);
			radio_write8(AX5044_45_REG_PWRMODE, AX5044_45_PWRSTATE_FULL_TX);
			while (!(radio_read8(AX5044_45_REG_POWSTAT) & 0x08)); // wait for modem vdd so writing the FIFO is safe
			radio_read8(AX5044_45_REG_RADIOEVENTREQ0); // make sure REVRDONE bit is cleared, so it is a reliable indicator that the packet is out
			radio_write8(AX5044_45_REG_FIFOTHRESH0, 0x80);
			axradio_trxstate = trxstate_tx_longpreamble;
			axradio_txbuffer_cnt = axradio_phy_preamble_longlen;
#if 1
			if ((radio_read8(AX5044_45_REG_MODULATION) & 0x0F) == 9) { // 4-FSK
				radio_write8(AX5044_45_REG_FIFODATA, (AX5044_45_FIFOCMD_DATA | (7 << 5)));
				radio_write8(AX5044_45_REG_FIFODATA, 2);  // length (including flags)
				radio_write8(AX5044_45_REG_FIFODATA, 0x01);  // flag PKTSTART -> dibit sync
				radio_write8(AX5044_45_REG_FIFODATA, 0x11); // dummy byte for forcing dibit sync
			}
#endif
#ifdef DBGPKT
			radio_write8(AX5044_45_REG_FIFODATA, (AX5044_45_FIFOCMD_TXCTRL | (1 << 5)));
			radio_write8(AX5044_45_REG_FIFODATA, 0x03); // set PA, state 1
#endif
			wtimer_remove(&axradio_timer);
			update_timeanchor();
			radio_write8(AX5044_45_REG_IRQMASK0, 0x08); // enable fifo free threshold
			axradio_sync_addtime(axradio_sync_period);
			axradio_syncstate = syncstate_master_waitack;
			if (axradio_mode != AXRADIO_MODE_SYNC_ACK_MASTER) {
				axradio_syncstate = syncstate_master_normal;
				axradio_sync_settimeradv(axradio_sync_xoscstartup);
				wtimer0_addabsolute(&axradio_timer);
			}
			wtimer_remove_callback(&axradio_cb_transmitstart.cb);
			axradio_cb_transmitstart.st.error = AXRADIO_ERR_NOERROR;
			axradio_cb_transmitstart.st.time.t = axradio_timeanchor.radiotimer;
			wtimer_add_callback(&axradio_cb_transmitstart.cb);
			break;

		case syncstate_master_waitack:
			ax5044_45_off();
			axradio_syncstate = syncstate_master_normal;
			wtimer_remove(&axradio_timer);
			axradio_sync_settimeradv(axradio_sync_xoscstartup);
			wtimer0_addabsolute(&axradio_timer);
			update_timeanchor();
			wtimer_remove_callback(&axradio_cb_transmitend.cb);
			axradio_cb_transmitend.st.error = AXRADIO_ERR_TIMEOUT;
			axradio_cb_transmitend.st.time.t = axradio_timeanchor.radiotimer;
			wtimer_add_callback(&axradio_cb_transmitend.cb);
			break;
		};
		break;

	case AXRADIO_MODE_SYNC_SLAVE:
	case AXRADIO_MODE_SYNC_ACK_SLAVE:
		switch (axradio_syncstate) {
		default:
		case syncstate_slave_synchunt:
			ax5044_45_off();
			axradio_syncstate = syncstate_slave_syncpause;
			axradio_sync_addtime(axradio_sync_slave_syncpause);
			wtimer_remove(&axradio_timer);
			axradio_timer.time = axradio_sync_time;
			wtimer0_addabsolute(&axradio_timer);
			wtimer_remove_callback(&axradio_cb_receive.cb);
			memset_xdata(&axradio_cb_receive.st, 0, sizeof(axradio_cb_receive.st));
			axradio_cb_receive.st.time.t = axradio_timeanchor.radiotimer;
			axradio_cb_receive.st.error = AXRADIO_ERR_RESYNCTIMEOUT;
			wtimer_add_callback(&axradio_cb_receive.cb);
			break;

		case syncstate_slave_syncpause:
			ax5044_45_receiver_on_continuous();
			axradio_syncstate = syncstate_slave_synchunt;
			axradio_sync_addtime(axradio_sync_slave_syncwindow);
			wtimer_remove(&axradio_timer);
			axradio_timer.time = axradio_sync_time;
			wtimer0_addabsolute(&axradio_timer);
			update_timeanchor();
			wtimer_remove_callback(&axradio_cb_receive.cb);
			memset_xdata(&axradio_cb_receive.st, 0, sizeof(axradio_cb_receive.st));
			axradio_cb_receive.st.time.t = axradio_timeanchor.radiotimer;
			axradio_cb_receive.st.error = AXRADIO_ERR_RESYNC;
			wtimer_add_callback(&axradio_cb_receive.cb);
			break;

		case syncstate_slave_rxidle:
			radio_write8(AX5044_45_REG_PWRMODE, AX5044_45_PWRSTATE_XTAL_ON);
			axradio_syncstate = syncstate_slave_rxxosc;
			wtimer_remove(&axradio_timer);
			axradio_timer.time += axradio_sync_xoscstartup;
			wtimer0_addabsolute(&axradio_timer);
			break;

		case syncstate_slave_rxxosc:
			ax5044_45_receiver_on_continuous();
			axradio_syncstate = syncstate_slave_rxsfdwindow;
			update_timeanchor();
			wtimer_remove_callback(&axradio_cb_receive.cb);
			memset_xdata(&axradio_cb_receive.st, 0, sizeof(axradio_cb_receive.st));
			axradio_cb_receive.st.time.t = axradio_timeanchor.radiotimer;
			axradio_cb_receive.st.error = AXRADIO_ERR_RECEIVESTART;
			wtimer_add_callback(&axradio_cb_receive.cb);
			wtimer_remove(&axradio_timer);
			{
				uint8_t __autodata idx = axradio_sync_seqnr;
				if (idx >= axradio_sync_slave_nrrx)
					idx = axradio_sync_slave_nrrx - 1;
				axradio_timer.time += axradio_sync_slave_rxwindow[idx];
			}
			wtimer0_addabsolute(&axradio_timer);
			break;

		case syncstate_slave_rxsfdwindow:
		{
			uint8_t __autodata rs = radio_read8(AX5044_45_REG_RADIOSTATE);
			if (!rs)
				break;

			if (!(0x0F & (uint8_t)~rs)) {
				axradio_syncstate = syncstate_slave_rxpacket;
				wtimer_remove(&axradio_timer);
				axradio_timer.time += axradio_sync_slave_rxtimeout;
				wtimer0_addabsolute(&axradio_timer);
				break;
			}
			// fall through
		}

		case syncstate_slave_rxpacket:
			ax5044_45_off();
			if (!axradio_sync_seqnr)
				axradio_sync_seqnr = 1;
			++axradio_sync_seqnr;
			update_timeanchor();
			wtimer_remove_callback(&axradio_cb_receive.cb);
			memset_xdata(&axradio_cb_receive.st, 0, sizeof(axradio_cb_receive.st));
			axradio_cb_receive.st.time.t = axradio_timeanchor.radiotimer;
			axradio_cb_receive.st.error = AXRADIO_ERR_TIMEOUT;
			if (axradio_sync_seqnr <= axradio_sync_slave_resyncloss) {
				wtimer_add_callback(&axradio_cb_receive.cb);
				axradio_sync_slave_nextperiod();
				axradio_syncstate = syncstate_slave_rxidle;
				wtimer_remove(&axradio_timer);
				{
					uint8_t __autodata idx = axradio_sync_seqnr;
					if (idx >= axradio_sync_slave_nrrx)
						idx = axradio_sync_slave_nrrx - 1;
					axradio_sync_settimeradv(axradio_sync_slave_rxadvance[idx]);
				}
				wtimer0_addabsolute(&axradio_timer);
				break;
			}
			axradio_cb_receive.st.error = AXRADIO_ERR_RESYNC;
			wtimer_add_callback(&axradio_cb_receive.cb);
			ax5044_45_receiver_on_continuous();
			axradio_syncstate = syncstate_slave_synchunt;
			wtimer_remove(&axradio_timer);
			axradio_timer.time = axradio_sync_slave_syncwindow;
			wtimer0_addrelative(&axradio_timer);
			axradio_sync_time = axradio_timer.time;
			break;

		case syncstate_slave_rxack:
			axradio_syncstate = syncstate_slave_rxidle;
			wtimer_remove(&axradio_timer);
			axradio_sync_settimeradv(axradio_sync_slave_rxadvance[1]);
			wtimer0_addabsolute(&axradio_timer);
			goto transmitack;
		};
		break;

	default:
		break;
	}
}

static __reentrantb void axradio_callback_fwd(struct wtimer_callback __xdata *desc) __reentrant
{
	axradio_statuschange((struct axradio_status __xdata *)(desc + 1));
}

static void axradio_receive_callback_fwd(struct wtimer_callback __xdata *desc)
{
	//struct axradio_status __xdata *st = (struct axradio_status __xdata *)(desc + 1);
	desc;
	if (axradio_cb_receive.st.error != AXRADIO_ERR_NOERROR) {
		axradio_statuschange((struct axradio_status __xdata *)&axradio_cb_receive.st);
		return;
	}
	if (axradio_phy_pn9 && !AXRADIO_MODE_IS_STREAM_RECEIVE(axradio_mode)) {
		uint16_t __autodata len = axradio_cb_receive.st.rx.pktlen;
		len += axradio_framing_maclen;
		pn9_buffer((__xdata uint8_t *)axradio_cb_receive.st.rx.mac.raw, len, 0x1ff, -(radio_read8(AX5044_45_REG_ENCODING0) & 0x01));
	}
	if (axradio_framing_swcrclen && !AXRADIO_MODE_IS_STREAM_RECEIVE(axradio_mode)) {
		uint16_t __autodata len = axradio_cb_receive.st.rx.pktlen;
		len += axradio_framing_maclen;
		len = axradio_framing_check_crc((uint8_t __xdata *)axradio_cb_receive.st.rx.mac.raw, len);
		if (!len)
			// receive error
			goto endcb;
		len -= axradio_framing_maclen;
		len -= axradio_framing_swcrclen; // drop crc
		axradio_cb_receive.st.rx.pktlen = len;
	}


	axradio_cb_receive.st.rx.phy.timeoffset = 0;
	axradio_cb_receive.st.rx.phy.period = 0;
	if (axradio_mode == AXRADIO_MODE_ACK_TRANSMIT ||
	    axradio_mode == AXRADIO_MODE_WOR_ACK_TRANSMIT ||
	    axradio_mode == AXRADIO_MODE_SYNC_ACK_MASTER) {
		ax5044_45_off();
		wtimer_remove(&axradio_timer);
		if (axradio_mode == AXRADIO_MODE_SYNC_ACK_MASTER) {
			axradio_syncstate = syncstate_master_normal;
			axradio_sync_settimeradv(axradio_sync_xoscstartup);
			wtimer0_addabsolute(&axradio_timer);
		}
		wtimer_remove_callback(&axradio_cb_transmitend.cb);
		axradio_cb_transmitend.st.error = AXRADIO_ERR_NOERROR;
		axradio_cb_transmitend.st.time.t = radio_read24(AX5044_45_REG_TIMER2);
		wtimer_add_callback(&axradio_cb_transmitend.cb);
	}
	if (axradio_framing_destaddrpos != 0xff)
		memcpy_xdata(&axradio_cb_receive.st.rx.mac.localaddr, &axradio_cb_receive.st.rx.mac.raw[axradio_framing_destaddrpos], axradio_framing_addrlen);
	if (axradio_framing_sourceaddrpos != 0xff)
		memcpy_xdata(&axradio_cb_receive.st.rx.mac.remoteaddr, &axradio_cb_receive.st.rx.mac.raw[axradio_framing_sourceaddrpos], axradio_framing_addrlen);
	if (axradio_mode == AXRADIO_MODE_ACK_RECEIVE ||
	    axradio_mode == AXRADIO_MODE_WOR_ACK_RECEIVE ||
	    axradio_mode == AXRADIO_MODE_SYNC_ACK_SLAVE) {
		axradio_ack_count = 0;
		axradio_txbuffer_len = axradio_framing_maclen + axradio_framing_minpayloadlen;
		memset_xdata(axradio_txbuffer, 0, axradio_framing_maclen);
		if (axradio_framing_ack_seqnrpos != 0xff) {
			uint8_t seqnr = axradio_cb_receive.st.rx.mac.raw[axradio_framing_ack_seqnrpos];
			axradio_txbuffer[axradio_framing_ack_seqnrpos] = seqnr;
			if (axradio_ack_seqnr != seqnr)
				axradio_ack_seqnr = seqnr;
			else
				axradio_cb_receive.st.error = AXRADIO_ERR_RETRANSMISSION;
		}
		if (axradio_framing_destaddrpos != 0xff) {
			if (axradio_framing_sourceaddrpos != 0xff)
				memcpy_xdata(&axradio_txbuffer[axradio_framing_destaddrpos], &axradio_cb_receive.st.rx.mac.remoteaddr, axradio_framing_addrlen);
			else
				memcpy_xdata(&axradio_txbuffer[axradio_framing_destaddrpos], &axradio_default_remoteaddr, axradio_framing_addrlen);
		}
		if (axradio_framing_sourceaddrpos != 0xff)
			memcpy_xdata(&axradio_txbuffer[axradio_framing_sourceaddrpos], &axradio_localaddr.addr, axradio_framing_addrlen);
		if (axradio_framing_lenmask) {
			uint8_t len_byte = (uint8_t)(axradio_txbuffer_len - axradio_framing_lenoffs) & axradio_framing_lenmask; // if you prefer not counting the len byte itself, set LENOFFS = 1
			axradio_txbuffer[axradio_framing_lenpos] = (axradio_txbuffer[axradio_framing_lenpos] & (uint8_t)~axradio_framing_lenmask) | len_byte;
		}
		if (axradio_framing_swcrclen)
			axradio_txbuffer_len = axradio_framing_append_crc(axradio_txbuffer, axradio_txbuffer_len);
		if (axradio_phy_pn9) {
			pn9_buffer(axradio_txbuffer, axradio_txbuffer_len, 0x1ff, -(radio_read8(AX5044_45_REG_ENCODING0) & 0x01));
		}
		radio_write8(AX5044_45_REG_IRQMASK1, 0x00);
		radio_write8(AX5044_45_REG_IRQMASK0, 0x00);
		radio_write8(AX5044_45_REG_PWRMODE, AX5044_45_PWRSTATE_XTAL_ON);
		radio_write8(AX5044_45_REG_FIFOSTAT, 3);
		axradio_trxstate = trxstate_tx_longpreamble; // ensure that trxstate != off, otherwise we would prematurely enable the receiver, see below
		while (radio_read8(AX5044_45_REG_POWSTAT) & 0x08);
		wtimer_remove(&axradio_timer);
		axradio_timer.time = axradio_framing_ack_delay;
		wtimer1_addrelative(&axradio_timer);
	}
	if (axradio_mode == AXRADIO_MODE_SYNC_SLAVE ||
	    axradio_mode == AXRADIO_MODE_SYNC_ACK_SLAVE) {
		if (axradio_mode != AXRADIO_MODE_SYNC_ACK_SLAVE)
			ax5044_45_off();
		switch (axradio_syncstate) {
		default:
			//case syncstate_slave_synchunt:
			//case syncstate_slave_syncpause:
			axradio_sync_time = axradio_conv_time_totimer0(axradio_cb_receive.st.time.t);
			axradio_sync_periodcorr = -32768;
			axradio_sync_seqnr = 0;
			break;

		case syncstate_slave_rxidle:
		case syncstate_slave_rxsfdwindow:
		case syncstate_slave_rxpacket:
			axradio_sync_adjustperiodcorr();
			axradio_cb_receive.st.rx.phy.period = axradio_sync_periodcorr >> SYNC_K1;
			axradio_sync_seqnr = 1;
			break;
		};
		axradio_sync_slave_nextperiod();
		if (axradio_mode != AXRADIO_MODE_SYNC_ACK_SLAVE) {
			axradio_syncstate = syncstate_slave_rxidle;
			wtimer_remove(&axradio_timer);
			axradio_sync_settimeradv(axradio_sync_slave_rxadvance[axradio_sync_seqnr]);
			wtimer0_addabsolute(&axradio_timer);
		} else {
			axradio_syncstate = syncstate_slave_rxack;
		}
	}
	axradio_statuschange((struct axradio_status __xdata *)&axradio_cb_receive.st);
  endcb:
	if (axradio_mode == AXRADIO_MODE_WOR_RECEIVE) {
		ax5044_45_receiver_on_wor();
	} else if (axradio_mode == AXRADIO_MODE_ACK_RECEIVE ||
		   axradio_mode == AXRADIO_MODE_WOR_ACK_RECEIVE) {
		uint8_t __autodata trxst;
		{
			criticalsection_t crit = enter_critical();
			trxst = axradio_trxstate;
			axradio_cb_receive.st.error = AXRADIO_ERR_PACKETDONE;
			exit_critical(crit);
		}
		if (trxst == trxstate_off) {
			if (axradio_mode == AXRADIO_MODE_WOR_ACK_RECEIVE)
				ax5044_45_receiver_on_wor();
			else
				ax5044_45_receiver_on_continuous();
		}
	} else {
		switch (axradio_trxstate) {
		case trxstate_rx:
		case trxstate_rxwor:
			radio_write8(AX5044_45_REG_IRQMASK0, (radio_read8(AX5044_45_REG_IRQMASK0) | 0x01)); // re-enable FIFO not empty irq
			break;

		default:
			break;
		}
	}
}

static void axradio_killallcb(void)
{
	wtimer_remove_callback(&axradio_cb_receive.cb);
	wtimer_remove_callback(&axradio_cb_receivesfd.cb);
	wtimer_remove_callback(&axradio_cb_channelstate.cb);
	wtimer_remove_callback(&axradio_cb_transmitstart.cb);
	wtimer_remove_callback(&axradio_cb_transmitend.cb);
	wtimer_remove_callback(&axradio_cb_transmitdata.cb);
	wtimer_remove(&axradio_timer);
}

#if 0

static uint16_t axradio_tunevoltage(void)
{
	uint16_t __autodata r;
	uint8_t __autodata cnt = 2;
	uint8_t __autodata cnt2 = 0;
	radio_write8(AX5044_45_REG_GPADCCTRL, 0x84);
	do {} while (radio_read8(AX5044_45_REG_GPADCCTRL) & 0x80);
	r = (((uint16_t)(radio_read8(AX5044_45_REG_GPADC13VALUE1) & 0x03)) << 8) | radio_read8(AX5044_45_REG_GPADC13VALUE0);
	r <<= 6;
	do {
		do {
			radio_write8(AX5044_45_REG_GPADCCTRL, 0x84);
			r -= r >> 6;
			do {} while (radio_read8(AX5044_45_REG_GPADCCTRL) & 0x80);
			r += (((uint16_t)(radio_read8(AX5044_45_REG_GPADC13VALUE1) & 0x03)) << 8) | radio_read8(AX5044_45_REG_GPADC13VALUE0);
		} while (--cnt2);
	} while (--cnt);
	return r;
}

#else

static int16_t axradio_tunevoltage(void)
{
	int16_t __autodata r = 0;
	uint8_t __autodata cnt = 64;
	do {
		radio_write8(AX5044_45_REG_GPADCCTRL, 0x84);
		do {} while (radio_read8(AX5044_45_REG_GPADCCTRL) & 0x80);
	} while (--cnt);
	cnt = 32;
	do {
		radio_write8(AX5044_45_REG_GPADCCTRL, 0x84);
		do {} while (radio_read8(AX5044_45_REG_GPADCCTRL) & 0x80);
		{
			int16_t x = radio_read8(AX5044_45_REG_GPADCVALUE1) & 0x03;
			x <<= 8;
			x |= radio_read8(AX5044_45_REG_GPADCVALUE0);
			r += x;
		}
	} while (--cnt);
	return r;
}

#endif

static __reentrantb uint8_t axradio_adjustvcoi(uint8_t rng) __reentrant
{
	uint8_t offs;
	uint8_t bestrng;
	uint16_t bestval = (uint16_t)~0;
	rng &= 0x7F;
	bestrng = rng;
	for (offs = 0; offs != 16; ++offs) {
		uint16_t val;
		if (!((uint8_t)(rng + offs) & 0xC0)) {
			radio_write8(AX5044_45_REG_PLLVCOI, (0x80 | (rng + offs)));
			val = axradio_tunevoltage();//todo
			if (val < bestval) {
				bestval = val;
				bestrng = rng + offs;
			}
		}
		if (!offs)
			continue;
		if (!((uint8_t)(rng - offs) & 0xC0)) {
			radio_write8(AX5044_45_REG_PLLVCOI, (0x80 | (rng - offs)));
			val = axradio_tunevoltage(); //todo
			if (val < bestval) {
				bestval = val;
				bestrng = rng - offs;
			}
		}
	}
	// if we hit the lower rail, do not change anything
	if (bestval <= 0x0010)
		return rng | 0x80;
	return bestrng | 0x80;
}

static __reentrantb uint8_t axradio_calvcoi(void) __reentrant
{
	uint8_t i;
	uint8_t r = 0;
	uint16_t vmin = 0xffff;
	uint16_t vmax = 0x0000;
	for (i = 0x40; i != 0;) {
		uint16_t curtune;
		--i;
		radio_write8(AX5044_45_REG_PLLVCOI, (0x80 | i));
		radio_read8(AX5044_45_REG_PLLRANGINGA0); // clear PLL lock loss
		curtune = axradio_tunevoltage();
		radio_read8(AX5044_45_REG_PLLRANGINGA0); // clear PLL lock loss
		((uint16_t __xdata *)axradio_rxbuffer)[i] = curtune;
		if (curtune > vmax)
			vmax = curtune;
		if (curtune < vmin) {
			vmin = curtune;
			// check whether the PLL is locked
			if (!(0xC0 & (uint8_t)~(radio_read8(AX5044_45_REG_PLLRANGINGA0))))
				r = i | 0x80;
		}
	}
	if (!(r & 0x80) || vmax >= 0xFF00 || vmin < 0x0100 || vmax - vmin < 0x4000)
		return 0;
	return r;
}

static uint8_t axradio_pll_autoranging(void)
{
    uint8_t __autodata i;
    uint8_t vcora = 0;
    criticalsection_t crit;
    for (i = 0; i < axradio_phy_nrchannels; ++i)
    {
		uint32_t __autodata f = axradio_phy_chanfreq[i];
		radio_write8(AX5044_45_REG_FREQA0, f);
		radio_write8(AX5044_45_REG_FREQA1, (f >> 8));
		radio_write8(AX5044_45_REG_FREQA2, (f >> 16));
		radio_write8(AX5044_45_REG_FREQA3, (f >> 24));
		crit = enter_critical();
		axradio_trxstate = trxstate_pll_ranging;
		radio_write8(AX5044_45_REG_IRQMASK1, 0x10); // enable pll autoranging done interrupt
		{
			uint16_t __autodata r;
			if (!(axradio_phy_chanpllrnginit[0] & 0xF000)) {
				// start values for ranging available
				r = axradio_phy_chanpllrnginit[i] | 0x1000;
			} else {
				r = 0x1100;     // AX5044_45: PLLRANGINGA VCOR default value & enable auto ranging
				if (i) {
					r = axradio_phy_chanpllrng[i - 1];
					if (r & 0x2000)     // If Ranging Error
						r = 0x100;      // Set default value
					r &= 0x1FF;
					r |= 0x1000;
				}
			}
			radio_write16(AX5044_45_REG_PLLRANGINGA1, r);   // AX5044_45: Start PLL auto ranging of VCOA
		}
		for (;;) {
			reenter_critical();
			if (axradio_trxstate == trxstate_pll_ranging_done)
				break;
			wtimer_idle(WTFLAG_CANSTANDBY);
			exit_critical(crit);
			wtimer_runcallbacks();
		}
		axradio_trxstate = trxstate_off;
		radio_write8(AX5044_45_REG_IRQMASK1, 0x00);
		axradio_phy_chanpllrng[i] = radio_read16(AX5044_45_REG_PLLRANGINGA1);
		exit_critical(crit);
	}
	vcora = radio_read16(AX5044_45_REG_PLLRANGINGA1) & 0x1FF;
	return vcora;
}

/*
 * Public API
 */

uint8_t axradio_init(void)
{
	uint8_t __autodata i;
	uint8_t  display_message1[] = {"found AX5044\n"};
    uint8_t  display_message2[] = {"found AX5045\n"};
	axradio_mode = AXRADIO_MODE_UNINIT;
	axradio_killallcb();
	axradio_cb_receive.cb.handler = axradio_receive_callback_fwd;
	axradio_cb_receive.st.status = AXRADIO_STAT_RECEIVE;
	memset_xdata(axradio_cb_receive.st.rx.mac.remoteaddr, 0, sizeof(axradio_cb_receive.st.rx.mac.remoteaddr));
	memset_xdata(axradio_cb_receive.st.rx.mac.localaddr, 0, sizeof(axradio_cb_receive.st.rx.mac.localaddr));
	axradio_cb_receivesfd.cb.handler = axradio_callback_fwd;
	axradio_cb_receivesfd.st.status = AXRADIO_STAT_RECEIVESFD;
	axradio_cb_channelstate.cb.handler = axradio_callback_fwd;
	axradio_cb_channelstate.st.status = AXRADIO_STAT_CHANNELSTATE;
	axradio_cb_transmitstart.cb.handler = axradio_callback_fwd;
	axradio_cb_transmitstart.st.status = AXRADIO_STAT_TRANSMITSTART;
	axradio_cb_transmitend.cb.handler = axradio_callback_fwd;
	axradio_cb_transmitend.st.status = AXRADIO_STAT_TRANSMITEND;
	axradio_cb_transmitdata.cb.handler = axradio_callback_fwd;
	axradio_cb_transmitdata.st.status = AXRADIO_STAT_TRANSMITDATA;
	axradio_timer.handler = axradio_timer_callback;
	axradio_curchannel = 0;
	axradio_curfreqoffset = 0;
    disable_radio_interrupt_in_mcu_pin();
	axradio_trxstate = trxstate_off;
	if (ax5044_45_reset())
		return AXRADIO_ERR_NOCHIP;
    silicon_revision = radio_read8(AX5044_45_REG_SILICONREVISION);
	ax5044_45_init_registers();
	ax5044_45_set_registers_tx();
	radio_write8(AX5044_45_REG_PLLLOOP, 0x09); // default 100kHz loop BW for ranging
	radio_write8(AX5044_45_REG_PLLCPI, 0x08);
    enable_radio_interrupt_in_mcu_pin();
	// range all channels
	radio_write8(AX5044_45_REG_PWRMODE, AX5044_45_PWRSTATE_XTAL_ON);
	radio_write8(AX5044_45_REG_MODULATION, 0x08);
	radio_write8(AX5044_45_REG_FSKDEV2, 0x00);
	radio_write8(AX5044_45_REG_FSKDEV1, 0x00);
	radio_write8(AX5044_45_REG_FSKDEV0, 0x00);
	axradio_wait_for_xtal();

	if(silicon_revision == AX5045_REVE_SILICON_REVISION)    // AX5045: Store VCORA for 2 different REF values
    {
        ax5044_45_set_registers_rx();
        vcora_rx = axradio_pll_autoranging();
        ax5044_45_set_registers_tx();
    }
	vcora_tx = axradio_pll_autoranging();

	// VCOI Calibration
	if (axradio_phy_vcocalib) {
		ax5044_45_set_registers_tx();
		radio_write8(AX5044_45_REG_MODULATION, 0x08);
		radio_write8(AX5044_45_REG_FSKDEV2, 0x00);
		radio_write8(AX5044_45_REG_FSKDEV1, 0x00);
		radio_write8(AX5044_45_REG_FSKDEV0, 0x00);
		radio_write8(AX5044_45_REG_PLLLOOP, (radio_read8(AX5044_45_REG_PLLLOOP) | 0x04));
		{
			/*uint8_t x = radio_read8(AX5044_45_REG_0xF35);  // FIXME: Convert these debug registers form AX5043 to AX5044_45
			x |= 0x80;
			if (2 & (uint8_t)~x)
				++x;
			radio_write8(AX5044_45_REG_0xF35, x);*/
		}
		radio_write8(AX5044_45_REG_PWRMODE, AX5044_45_PWRSTATE_SYNTH_TX);
		{
			uint8_t __autodata vcoisave = radio_read8(AX5044_45_REG_PLLVCOI);
			uint8_t j = 2;
			for (i = 0; i < axradio_phy_nrchannels; ++i) {
				axradio_phy_chanvcoi[i] = 0;
				if (axradio_phy_chanpllrng[i] & 0x2000)
					continue;
				radio_write16(AX5044_45_REG_PLLRANGINGA1, (axradio_phy_chanpllrng[i] & 0x1FF));
				{
					uint32_t __autodata f = axradio_phy_chanfreq[i];
					radio_write8(AX5044_45_REG_FREQA0, f);
					radio_write8(AX5044_45_REG_FREQA1, (f >> 8));
					radio_write8(AX5044_45_REG_FREQA2, (f >> 16));
					radio_write8(AX5044_45_REG_FREQA3, (f >> 24));
				}
				do {
					if (axradio_phy_chanvcoiinit[0]) {
						uint8_t x = axradio_phy_chanvcoiinit[i];
						if (!(axradio_phy_chanpllrnginit[0] & 0xF000))
							x += (axradio_phy_chanpllrng[i] & 0x1FF) - (axradio_phy_chanpllrnginit[i] & 0x1FF);
						axradio_phy_chanvcoi[i] = axradio_adjustvcoi(x);
					} else {
						axradio_phy_chanvcoi[i] = axradio_calvcoi();
					}
				} while (--j);
				j = 1;
#if 0
				dbglink_writestr("\nVCOI Calibration Channel ");
				dbglink_writenum16(i, 0, 0);
				dbglink_writestr(" result ");
				dbglink_writehex16(axradio_phy_chanvcoi_tx[i], 2, WRNUM_PADZERO);
				dbglink_tx('\n');
				{
					uint8_t i;
					for (i = 0; i != 64; ++i) {
						dbglink_writenum16(i, 2, 0);
						dbglink_tx(' ');
						dbglink_writenum16(axradio_rxbuffer[2*i] | (((uint16_t)axradio_rxbuffer[2*i+1])<<8), 6, WRNUM_SIGNED);
						dbglink_tx(' ');
						dbglink_writehex16(axradio_rxbuffer[2*i] | (((uint16_t)axradio_rxbuffer[2*i+1])<<8), 6, WRNUM_PADZERO);
						dbglink_tx('\n');
					}
				}
#endif
			}
			radio_write8(AX5044_45_REG_PLLVCOI, vcoisave);
		}
#if 0
#if !(defined __ARMEL__ || defined __ARMEB__)
		if (DBGLNKSTAT & 0x10)
#endif // defined
		{
			for (i = 0; i < axradio_phy_nrchannels; ++i) {
				uint8_t chg = ((axradio_phy_chanpllrnginit[0] & 0xF000) || axradio_phy_chanpllrnginit[i] != axradio_phy_chanpllrng[i])
					|| (!axradio_phy_chanvcoiinit[0] || ((axradio_phy_chanvcoiinit[i] ^ axradio_phy_chanvcoi[i]) & 0x7F));
				if (1 && !chg)
					continue;
				dbglink_writestr("CH ");
				dbglink_writenum16(i, 0, 0);
				dbglink_writestr(" RNG ");
				if (!(axradio_phy_chanpllrnginit[0] & 0xF000)) {
					dbglink_writenum16(axradio_phy_chanpllrnginit[i], 0, 0);
					dbglink_tx('/');
				}
				dbglink_writenum16(axradio_phy_chanpllrng[i], 0, 0);
				dbglink_writestr(" VCOI ");
				if (axradio_phy_chanvcoiinit[0]) {
					dbglink_writenum16(axradio_phy_chanvcoiinit[i] & 0x7F, 0, 0);
					dbglink_tx('/');
				}
				dbglink_writenum16(axradio_phy_chanvcoi[i] & 0x7F, 0, 0);
				if (chg)
					dbglink_writestr(" *");
				dbglink_tx('\n');
			}
		}
#endif
	}
	radio_write8(AX5044_45_REG_PWRMODE, AX5044_45_PWRSTATE_POWERDOWN);
	ax5044_45_init_registers();
	ax5044_45_set_registers_rx();
	radio_write16(AX5044_45_REG_PLLRANGINGA1, (axradio_phy_chanpllrng[0] & 0x1FF));
	{
		uint32_t __autodata f = axradio_phy_chanfreq[0];
		radio_write8(AX5044_45_REG_FREQA0, f);
		radio_write8(AX5044_45_REG_FREQA1, (f >> 8));
		radio_write8(AX5044_45_REG_FREQA2, (f >> 16));
		radio_write8(AX5044_45_REG_FREQA3, (f >> 24));
	}

	axradio_mode = AXRADIO_MODE_OFF;
	for (i = 0; i < axradio_phy_nrchannels; ++i)
		if (axradio_phy_chanpllrng[i] & 0x2000)
			return AXRADIO_ERR_RANGING;
#if defined __ICC8051__
    {
        uint8_t c = sizeof(display_message1);
        if (c)
        {
            uint8_t *sp = display_message1;
            if(silicon_revision == AX5044_REVC_SILICON_REVISION)
                sp = &display_message1[0];
            else if(silicon_revision == AX5045_REVE_SILICON_REVISION)
                sp = &display_message2[0];
            uint8_t __xdata *dp = radio_lcd_display;

            do
            {
                *dp++ = *sp++;
            }
            while (--c);
        }
    }
#else
    if(silicon_revision == AX5044_REVC_SILICON_REVISION)
        memcpy(&radio_lcd_display,display_message1,sizeof(radio_lcd_display));
    else if(silicon_revision == AX5045_REVE_SILICON_REVISION)
        memcpy(&radio_lcd_display,display_message2,sizeof(radio_lcd_display));
#endif
	return AXRADIO_ERR_NOERROR;
}

__reentrantb uint8_t axradio_cansleep(void) __reentrant
{
	if (axradio_trxstate == trxstate_off || axradio_trxstate == trxstate_rxwor)
		return 1;
	return 0;
}

#if defined(SDCC)
static void wtimer_cansleep_dummy(void) __naked
{
	__asm
	.area WTCANSLP0 (CODE)
	.area WTCANSLP1 (CODE)
	.area WTCANSLP2 (CODE)

	.area WTCANSLP1 (CODE)
	lcall   _axradio_cansleep
	mov     a,dpl
	jnz     00000$
	ret
00000$:
	.area CSEG      (CODE)
	__endasm;
}
#endif

uint8_t axradio_set_mode(uint8_t mode)
{
	if (mode == axradio_mode)
		return AXRADIO_ERR_NOERROR;
	switch (axradio_mode) {
	case AXRADIO_MODE_UNINIT:
	{
		uint8_t __autodata r = axradio_init();
		if (r != AXRADIO_ERR_NOERROR)
			return r;
		break;
	}

	case AXRADIO_MODE_DEEPSLEEP:
	{
		uint8_t __autodata r = ax5044_45_wakeup_deepsleep();
		if (r)
			return AXRADIO_ERR_NOCHIP;
		ax5044_45_init_registers();
		r = axradio_set_channel(axradio_curchannel);
		if (r != AXRADIO_ERR_NOERROR)
			return r;
		axradio_trxstate = trxstate_off;
		axradio_mode = AXRADIO_MODE_OFF;
		break;
	}

	case AXRADIO_MODE_STREAM_TRANSMIT:
	case AXRADIO_MODE_STREAM_TRANSMIT_UNENC:
	case AXRADIO_MODE_STREAM_TRANSMIT_SCRAM:
	case AXRADIO_MODE_STREAM_TRANSMIT_SCRAM_PN9:
	case AXRADIO_MODE_STREAM_TRANSMIT_SCRAM_PN15:
	case AXRADIO_MODE_STREAM_TRANSMIT_SCRAM_PN17:
	case AXRADIO_MODE_CW_TRANSMIT:
	{
		criticalsection_t crit = enter_critical();
		if (axradio_trxstate == trxstate_off) {
			update_timeanchor();
			wtimer_remove_callback(&axradio_cb_transmitend.cb);
			axradio_cb_transmitend.st.error = AXRADIO_ERR_NOERROR;
			axradio_cb_transmitend.st.time.t = axradio_timeanchor.radiotimer;
			wtimer_add_callback(&axradio_cb_transmitend.cb);
		}
		ax5044_45_off();
		exit_critical(crit);
		// fully initialize chip, to restore modulation and framing registers
		ax5044_45_init_registers();
		axradio_mode = AXRADIO_MODE_OFF;
		break;
	}

	case AXRADIO_MODE_STREAM_RECEIVE:
	case AXRADIO_MODE_STREAM_RECEIVE_UNENC:
	case AXRADIO_MODE_STREAM_RECEIVE_SCRAM:
	case AXRADIO_MODE_STREAM_RECEIVE_SCRAM_PN9:
	case AXRADIO_MODE_STREAM_RECEIVE_SCRAM_PN15:
    case AXRADIO_MODE_STREAM_RECEIVE_SCRAM_PN17:
	case AXRADIO_MODE_STREAM_RECEIVE_DATAPIN:
		ax5044_45_off();
		ax5044_45_init_registers();
		axradio_mode = AXRADIO_MODE_OFF;

	default:
		ax5044_45_off();
		axradio_mode = AXRADIO_MODE_OFF;
		break;
	}
	axradio_killallcb();
	if (mode == AXRADIO_MODE_UNINIT)
		return AXRADIO_ERR_NOTSUPPORTED;
	axradio_syncstate = syncstate_off;
	switch (mode) {
	case AXRADIO_MODE_OFF:
		return AXRADIO_ERR_NOERROR;

	case AXRADIO_MODE_DEEPSLEEP:
		ax5044_45_enter_deepsleep();
		axradio_mode = AXRADIO_MODE_DEEPSLEEP;
		return AXRADIO_ERR_NOERROR;

	case AXRADIO_MODE_ASYNC_TRANSMIT:
	case AXRADIO_MODE_ACK_TRANSMIT:
		axradio_mode = mode;
		axradio_ack_seqnr = 0xff;
		ax5044_45_init_registers_tx();
		return AXRADIO_ERR_NOERROR;

	case AXRADIO_MODE_WOR_TRANSMIT:
	case AXRADIO_MODE_WOR_ACK_TRANSMIT:
		axradio_mode = mode;
		axradio_ack_seqnr = 0xff;
		ax5044_45_init_registers_tx();
		return AXRADIO_ERR_NOERROR;

	case AXRADIO_MODE_ASYNC_RECEIVE:
	case AXRADIO_MODE_ACK_RECEIVE:
		axradio_mode = mode;
		axradio_ack_seqnr = 0xff;
		ax5044_45_init_registers_rx();
		ax5044_45_receiver_on_continuous();
	enablecs:
		if (axradio_phy_cs_enabled) {
			wtimer_remove(&axradio_timer);
			axradio_timer.time = axradio_phy_cs_period;
			wtimer0_addrelative(&axradio_timer);
		}
		return AXRADIO_ERR_NOERROR;

	case AXRADIO_MODE_WOR_RECEIVE:
	case AXRADIO_MODE_WOR_ACK_RECEIVE:
		axradio_ack_seqnr = 0xff;
		axradio_mode = mode;
		ax5044_45_init_registers_rx();
		ax5044_45_receiver_on_wor();
		return AXRADIO_ERR_NOERROR;

	case AXRADIO_MODE_STREAM_TRANSMIT:
	case AXRADIO_MODE_STREAM_TRANSMIT_UNENC:
	case AXRADIO_MODE_STREAM_TRANSMIT_SCRAM:
	case AXRADIO_MODE_STREAM_TRANSMIT_SCRAM_PN9:
	case AXRADIO_MODE_STREAM_TRANSMIT_SCRAM_PN15:
    case AXRADIO_MODE_STREAM_TRANSMIT_SCRAM_PN17:
		axradio_mode = mode;
		if (axradio_mode == AXRADIO_MODE_STREAM_TRANSMIT_UNENC)
			radio_write8(AX5044_45_REG_ENCODING0, 0);
        else if (axradio_mode == AXRADIO_MODE_STREAM_TRANSMIT_SCRAM_PN9)        // AX5044_45: Set PN9 Polynomial with Multiplicative Scrambling Mode.
            radio_write8(AX5044_45_REG_ENCODING0, 0x10);
        else if (axradio_mode == AXRADIO_MODE_STREAM_TRANSMIT_SCRAM_PN15)       // AX5044_45: Set PN15 Polynomial with Multiplicative Scrambling Mode.
            radio_write8(AX5044_45_REG_ENCODING0, 0x20);
		else if (axradio_mode == AXRADIO_MODE_STREAM_TRANSMIT_SCRAM ||
		    axradio_mode == AXRADIO_MODE_STREAM_TRANSMIT_SCRAM_PN17)            // AX5044_45: Set PN17 Polynomial with Multiplicative Scrambling Mode.
			radio_write8(AX5044_45_REG_ENCODING0, 0x30);
		if (axradio_mode == AXRADIO_MODE_STREAM_TRANSMIT_SCRAM_PN9 ||
		    axradio_mode == AXRADIO_MODE_STREAM_TRANSMIT_SCRAM_PN15 ||

		    axradio_mode == AXRADIO_MODE_STREAM_TRANSMIT_SCRAM_PN17)
			radio_write8(AX5044_45_REG_PKTADDRCFG, (radio_read8(AX5044_45_REG_PKTADDRCFG) & 0x7F));
		ax5044_45_init_registers_tx();
		radio_write8(AX5044_45_REG_FRAMING, 0);
		ax5044_45_prepare_tx();
		axradio_trxstate = trxstate_txstream_xtalwait;
		while (!(radio_read8(AX5044_45_REG_POWSTAT) & 0x08)) {}; // wait for modem vdd so writing the FIFO is safe
		radio_write8(AX5044_45_REG_FIFOSTAT, 3); // clear FIFO data & flags (prevent transmitting anything left over in the FIFO, this has no effect if the FIFO is not powerered, in this case it is reset any way)
		radio_read8(AX5044_45_REG_RADIOEVENTREQ0); // make sure REVRDONE bit is cleared, so it is a reliable indicator that the packet is out
		update_timeanchor();
		wtimer_remove_callback(&axradio_cb_transmitdata.cb);
		axradio_cb_transmitdata.st.error = AXRADIO_ERR_NOERROR;
		axradio_cb_transmitdata.st.time.t = axradio_timeanchor.radiotimer;
		wtimer_add_callback(&axradio_cb_transmitdata.cb);
		return AXRADIO_ERR_NOERROR;

	case AXRADIO_MODE_STREAM_RECEIVE:
	case AXRADIO_MODE_STREAM_RECEIVE_UNENC:
	case AXRADIO_MODE_STREAM_RECEIVE_SCRAM:
	case AXRADIO_MODE_STREAM_RECEIVE_SCRAM_PN9:
	case AXRADIO_MODE_STREAM_RECEIVE_SCRAM_PN15:
    case AXRADIO_MODE_STREAM_RECEIVE_SCRAM_PN17:
	case AXRADIO_MODE_STREAM_RECEIVE_DATAPIN:
		axradio_mode = mode;
		ax5044_45_init_registers_rx();
		if (axradio_mode == AXRADIO_MODE_STREAM_RECEIVE_UNENC)
			radio_write8(AX5044_45_REG_ENCODING0, 0);
        else if (axradio_mode == AXRADIO_MODE_STREAM_RECEIVE_SCRAM_PN9)         // AX5044_45: Set PN9 Polynomial with Multiplicative Scrambling Mode.
            radio_write8(AX5044_45_REG_ENCODING0, 0x10);
        else if (axradio_mode == AXRADIO_MODE_STREAM_RECEIVE_SCRAM_PN15)        // AX5044_45: Set PN15 Polynomial with Multiplicative Scrambling Mode.
            radio_write8(AX5044_45_REG_ENCODING0, 0x20);
		if (axradio_mode == AXRADIO_MODE_STREAM_RECEIVE_SCRAM ||
		    axradio_mode == AXRADIO_MODE_STREAM_RECEIVE_SCRAM_PN17)             // AX5044_45: Set PN17 Polynomial with Multiplicative Scrambling Mode.
			radio_write8(AX5044_45_REG_ENCODING0, 0x30);
		if (axradio_mode == AXRADIO_MODE_STREAM_RECEIVE_SCRAM_PN9 ||
		    axradio_mode == AXRADIO_MODE_STREAM_RECEIVE_SCRAM_PN15 ||
		    axradio_mode == AXRADIO_MODE_STREAM_RECEIVE_SCRAM_PN17)
			radio_write8(AX5044_45_REG_PKTADDRCFG, (radio_read8(AX5044_45_REG_PKTADDRCFG) & 0x7F));
		radio_write8(AX5044_45_REG_FRAMING, 0);
		radio_write8(AX5044_45_REG_PKTCHUNKSIZE, 8); // 64 byte
		radio_write8(AX5044_45_REG_RXPARAMSETS, 0x00);
		ax5044_45_receiver_on_continuous();
		goto enablecs;

	case AXRADIO_MODE_CW_TRANSMIT:
		axradio_mode = AXRADIO_MODE_CW_TRANSMIT;
		ax5044_45_init_registers_tx();
		radio_write8(AX5044_45_REG_MODULATION, 8);         // Set an FSK mode
		radio_write8(AX5044_45_REG_FSKDEV2, 0x00);
		radio_write8(AX5044_45_REG_FSKDEV1, 0x00);
		radio_write8(AX5044_45_REG_FSKDEV0, 0x00);
		radio_write8(AX5044_45_REG_TXRATE3, 0x00);         //AX5044_45: Set TXRATE as 0x100 to avoid spurs in CW mode.
		radio_write8(AX5044_45_REG_TXRATE2, 0x00);
		radio_write8(AX5044_45_REG_TXRATE1, 0x01);
		radio_write8(AX5044_45_REG_TXRATE0, 0x00);
		radio_write8(AX5044_45_REG_PINFUNCDATA, 0x87);     // AX5045: Disable wire mode & set data pin as weak pullup. (7-DATA Output Modem Data)
		radio_write8(AX5044_45_REG_PWRMODE, AX5044_45_PWRSTATE_XTAL_ON);
		axradio_trxstate = trxstate_txcw_xtalwait;
		radio_write8(AX5044_45_REG_IRQMASK0, 0x00);
		radio_write8(AX5044_45_REG_IRQMASK1, 0x01);        // enable xtal ready interrupt
		return AXRADIO_ERR_NOERROR;

	case AXRADIO_MODE_SYNC_MASTER:
	case AXRADIO_MODE_SYNC_ACK_MASTER:
		axradio_mode = mode;
		axradio_syncstate = syncstate_master_normal;
		// minimal startup delay
		wtimer_remove(&axradio_timer);
		axradio_timer.time = 2;
		wtimer0_addrelative(&axradio_timer);
		axradio_sync_time = axradio_timer.time;
		axradio_sync_addtime(axradio_sync_xoscstartup);
		return AXRADIO_ERR_NOERROR;

	case AXRADIO_MODE_SYNC_SLAVE:
	case AXRADIO_MODE_SYNC_ACK_SLAVE:
		axradio_mode = mode;
		ax5044_45_init_registers_rx();
		ax5044_45_receiver_on_continuous();
		axradio_syncstate = syncstate_slave_synchunt;
		wtimer_remove(&axradio_timer);
		axradio_timer.time = axradio_sync_slave_initialsyncwindow;
		wtimer0_addrelative(&axradio_timer);
		axradio_sync_time = axradio_timer.time;
		wtimer_remove_callback(&axradio_cb_receive.cb);
		memset_xdata(&axradio_cb_receive.st, 0, sizeof(axradio_cb_receive.st));
		axradio_cb_receive.st.time.t = axradio_timeanchor.radiotimer;
		axradio_cb_receive.st.error = AXRADIO_ERR_RESYNC;
		wtimer_add_callback(&axradio_cb_receive.cb);
		return AXRADIO_ERR_NOERROR;

	default:
		return AXRADIO_ERR_NOTSUPPORTED;
	}
}

uint8_t axradio_get_mode(void)
{
	return axradio_mode;
}

uint8_t axradio_set_channel(uint8_t chnum)
{
	uint16_t __autodata rng;
	if (chnum >= axradio_phy_nrchannels)
		return AXRADIO_ERR_INVALID;
	axradio_curchannel = chnum;
	rng = axradio_phy_chanpllrng[chnum];
	if (rng & 0x2000)
		return AXRADIO_ERR_RANGING;
	{
		uint32_t __autodata f = axradio_phy_chanfreq[chnum];
		f += axradio_curfreqoffset;
		if (radio_read8(AX5044_45_REG_PLLLOOP) & 0x80)
        {
			radio_write16(AX5044_45_REG_PLLRANGINGA1, (rng & 0x1FF));      // AX5044_45: PLLRANGINGA register increased to 16 bit
			radio_write8(AX5044_45_REG_FREQA0, f);
			radio_write8(AX5044_45_REG_FREQA1, f >> 8);
			radio_write8(AX5044_45_REG_FREQA2, f >> 16);
			radio_write8(AX5044_45_REG_FREQA3, f >> 24);
		}
		else
        {
			radio_write16(AX5044_45_REG_PLLRANGINGB1, rng & 0x1FF);      // AX5044_45: PLLRANGINGA register increased to 16 bit
			radio_write8(AX5044_45_REG_FREQB0, f);
			radio_write8(AX5044_45_REG_FREQB1, f >> 8);
			radio_write8(AX5044_45_REG_FREQB2, f >> 16);
			radio_write8(AX5044_45_REG_FREQB3, f >> 24);
		}
	}
	radio_write8(AX5044_45_REG_PLLLOOP, radio_read8(AX5044_45_REG_PLLLOOP) ^ 0x80);
	return AXRADIO_ERR_NOERROR;
}

uint8_t axradio_get_channel(void)
{
	return axradio_curchannel;
}

uint16_t axradio_get_pllrange(void)
{
	return axradio_phy_chanpllrng[axradio_curchannel] & 0x1FF;
}

uint8_t axradio_get_pllvcoi(void)
{
	if (axradio_phy_vcocalib)
    {
		uint8_t x = axradio_phy_chanvcoi[axradio_curchannel];
        return x;
	}
	/*{     // AX5044_45: Enable manual VCOI not available.
		uint8_t x = axradio_phy_chanvcoiinit[axradio_curchannel];
		if(x)
        {
			if(!(axradio_phy_chanpllrnginit[0] & 0xF000))
			{
				x += (axradio_phy_chanpllrng[axradio_curchannel] & 0x1FF) - (axradio_phy_chanpllrnginit[axradio_curchannel] & 0x1FF);
				x &= 0x3fFF;
				x |= 0x8000;
			}
			return x;
		}
	}*/
    return radio_read8(AX5044_45_REG_PLLVCOI);
}

static uint8_t axradio_set_curfreqoffset(int32_t offs)
{
	axradio_curfreqoffset = offs;
	if (checksignedlimit32(offs, axradio_phy_maxfreqoffset))
		return AXRADIO_ERR_NOERROR;
	if (axradio_curfreqoffset < 0)
		axradio_curfreqoffset = -axradio_phy_maxfreqoffset;
	else
		axradio_curfreqoffset = axradio_phy_maxfreqoffset;
	return AXRADIO_ERR_INVALID;
}

uint8_t axradio_set_freqoffset(int32_t offs)
{
	uint8_t __autodata ret = axradio_set_curfreqoffset(offs);
	{
		uint8_t __autodata ret2 = axradio_set_channel(axradio_curchannel);
		if (ret == AXRADIO_ERR_NOERROR)
			ret = ret2;
	}
	return ret;
}

int32_t axradio_get_freqoffset(void)
{
	return axradio_curfreqoffset;
}

void axradio_set_local_address(const struct axradio_address_mask __genericaddr *addr)
{
	memcpy_xdatageneric(&axradio_localaddr, addr, sizeof(axradio_localaddr));
	axradio_setaddrregs();
}

void axradio_get_local_address(struct axradio_address_mask __genericaddr *addr)
{
	memcpy_genericxdata(addr, &axradio_localaddr, sizeof(axradio_localaddr));
}

void axradio_set_default_remote_address(const struct axradio_address __genericaddr *addr)
{
	memcpy_xdatageneric(&axradio_default_remoteaddr, addr, sizeof(axradio_default_remoteaddr));
}

void axradio_get_default_remote_address(struct axradio_address __genericaddr *addr)
{
	memcpy_genericxdata(addr, &axradio_default_remoteaddr, sizeof(axradio_default_remoteaddr));
}

uint8_t axradio_transmit(const struct axradio_address __genericaddr *addr, const uint8_t __genericaddr *pkt, uint16_t pktlen)
{
	switch (axradio_mode) {
	case AXRADIO_MODE_STREAM_TRANSMIT:
	case AXRADIO_MODE_STREAM_TRANSMIT_UNENC:
	case AXRADIO_MODE_STREAM_TRANSMIT_SCRAM:
	case AXRADIO_MODE_STREAM_TRANSMIT_SCRAM_PN9:
	case AXRADIO_MODE_STREAM_TRANSMIT_SCRAM_PN15:
    case AXRADIO_MODE_STREAM_TRANSMIT_SCRAM_PN17:
	{
		uint16_t __autodata fifofree = radio_read16(AX5044_45_REG_FIFOFREE1); ///

		if (fifofree < pktlen + 3)
			return AXRADIO_ERR_INVALID;
	}
	if (pktlen) {
		uint8_t __autodata i = pktlen;
		radio_write8(AX5044_45_REG_FIFODATA, AX5044_45_FIFOCMD_DATA | (7 << 5));
		radio_write8(AX5044_45_REG_FIFODATA, i + 1);
		radio_write8(AX5044_45_REG_FIFODATA, 0x08);
		do {
			radio_write8(AX5044_45_REG_FIFODATA, *pkt++);
		} while (--i);
	}
	{
		criticalsection_t crit = enter_critical();
		radio_read8(AX5044_45_REG_RADIOEVENTREQ0);
		radio_read8(AX5044_45_REG_IRQREQUEST0);
		radio_write8(AX5044_45_REG_IRQMASK0, radio_read8(AX5044_45_REG_IRQMASK0) | 0x08);
		radio_write8(AX5044_45_REG_FIFOSTAT,  4); // FIFO commit
		exit_critical(crit);
	}

	return AXRADIO_ERR_NOERROR;

	case AXRADIO_MODE_SYNC_MASTER:
	case AXRADIO_MODE_SYNC_ACK_MASTER:
		goto dotx;

	case AXRADIO_MODE_ASYNC_RECEIVE:
	case AXRADIO_MODE_WOR_RECEIVE:
		if (axradio_syncstate != syncstate_off)
			return AXRADIO_ERR_BUSY;
		radio_write8(AX5044_45_REG_IRQMASK1, 0x00);
		radio_write8(AX5044_45_REG_IRQMASK0, 0x00);
		radio_write8(AX5044_45_REG_PWRMODE, AX5044_45_PWRSTATE_XTAL_ON);
		radio_write8(AX5044_45_REG_FIFOSTAT, 3);
		while (radio_read8(AX5044_45_REG_POWSTAT) & 0x08);
		ax5044_45_init_registers_tx();
		goto dotx;

	case AXRADIO_MODE_ASYNC_TRANSMIT:
	case AXRADIO_MODE_WOR_TRANSMIT:
	case AXRADIO_MODE_ACK_TRANSMIT:
	case AXRADIO_MODE_WOR_ACK_TRANSMIT:
		if (axradio_syncstate != syncstate_off)
			return AXRADIO_ERR_BUSY;
	dotx:
		axradio_ack_count = axradio_framing_ack_retransmissions;
		++axradio_ack_seqnr;
		axradio_txbuffer_len = pktlen + axradio_framing_maclen;
		if (axradio_txbuffer_len > sizeof(axradio_txbuffer))
			return AXRADIO_ERR_INVALID;
		memset_xdata(axradio_txbuffer, 0, axradio_framing_maclen);
		memcpy_xdatageneric(&axradio_txbuffer[axradio_framing_maclen], pkt, pktlen);
		if (axradio_framing_ack_seqnrpos != 0xff)
			axradio_txbuffer[axradio_framing_ack_seqnrpos] = axradio_ack_seqnr;
		if (axradio_framing_destaddrpos != 0xff)
			memcpy_xdatageneric(&axradio_txbuffer[axradio_framing_destaddrpos], &addr->addr, axradio_framing_addrlen);
		if (axradio_framing_sourceaddrpos != 0xff)
			memcpy_xdata(&axradio_txbuffer[axradio_framing_sourceaddrpos], &axradio_localaddr.addr, axradio_framing_addrlen);
		if (axradio_framing_lenmask) {
			uint8_t __autodata len_byte = (uint8_t)(axradio_txbuffer_len - axradio_framing_lenoffs) & axradio_framing_lenmask; // if you prefer not counting the len byte itself, set LENOFFS = 1
			axradio_txbuffer[axradio_framing_lenpos] = (axradio_txbuffer[axradio_framing_lenpos] & (uint8_t)~axradio_framing_lenmask) | len_byte;
		}
		if (axradio_framing_swcrclen)
			axradio_txbuffer_len = axradio_framing_append_crc(axradio_txbuffer, axradio_txbuffer_len);
		if (axradio_phy_pn9)
			pn9_buffer(axradio_txbuffer, axradio_txbuffer_len, 0x1ff, -((radio_read8(AX5044_45_REG_ENCODING0) & 0x01)));
		if (axradio_mode == AXRADIO_MODE_SYNC_MASTER ||
		    axradio_mode == AXRADIO_MODE_SYNC_ACK_MASTER)
			return AXRADIO_ERR_NOERROR;
		if (axradio_mode == AXRADIO_MODE_WOR_TRANSMIT ||
		    axradio_mode == AXRADIO_MODE_WOR_ACK_TRANSMIT)
			axradio_txbuffer_cnt = axradio_phy_preamble_wor_longlen;
		else
			axradio_txbuffer_cnt = axradio_phy_preamble_longlen;
		if (axradio_phy_lbt_retries) {
			switch (axradio_mode) {
			case AXRADIO_MODE_ASYNC_TRANSMIT:
			case AXRADIO_MODE_WOR_TRANSMIT:
			case AXRADIO_MODE_ACK_TRANSMIT:
			case AXRADIO_MODE_WOR_ACK_TRANSMIT:
			case AXRADIO_MODE_WOR_RECEIVE:
			case AXRADIO_MODE_WOR_ACK_RECEIVE:
			case AXRADIO_MODE_ASYNC_RECEIVE:
			case AXRADIO_MODE_ACK_RECEIVE:
				ax5044_45_off_xtal();
				ax5044_45_init_registers_rx();
				radio_write8(AX5044_45_REG_RSSIREFERENCE, axradio_phy_rssireference);
				radio_write8(AX5044_45_REG_PWRMODE, AX5044_45_PWRSTATE_FULL_RX);
				axradio_ack_count = axradio_phy_lbt_retries;
				axradio_syncstate = syncstate_lbt;
				wtimer_remove(&axradio_timer);
				axradio_timer.time = axradio_phy_cs_period;
				wtimer0_addrelative(&axradio_timer);
				return AXRADIO_ERR_NOERROR;

			default:
				break;
			}
		}
		axradio_syncstate = syncstate_asynctx;
		ax5044_45_prepare_tx();
		return AXRADIO_ERR_NOERROR;

	default:
		return AXRADIO_ERR_NOTSUPPORTED;
	}
}

static __reentrantb uint8_t axradio_set_paramsets(uint8_t val) __reentrant
{
	if (!AXRADIO_MODE_IS_STREAM_RECEIVE(axradio_mode))
		return AXRADIO_ERR_NOTSUPPORTED;
	radio_write8(AX5044_45_REG_RXPARAMSETS, val);
	return AXRADIO_ERR_NOERROR;
}

uint8_t axradio_agc_freeze(void)
{
	return axradio_set_paramsets(0xff);
}

uint8_t axradio_agc_thaw(void)
{
	return axradio_set_paramsets(0x00);
}

void axradio_wait_n_lposccycles(uint8_t n)
{
    uint8_t cnt = 0;
    __disable_irq();
    radio_write8(AX5044_45_REG_IRQMASK1, radio_read8(AX5044_45_REG_IRQMASK1) | 0x04); // LPOSC irq
    for(;;)
    {
        if( radio_read8(AX5044_45_REG_IRQREQUEST1) & 0x04 )
        {
            cnt++;
            radio_read8(AX5044_45_REG_LPOSCSTATUS); // clear irq request
        }

        if(cnt > n)
            break;
        enter_standby();
    }

    radio_write8(AX5044_45_REG_IRQMASK1, (radio_read8(AX5044_45_REG_IRQMASK1) & ~0x04)); // disable LPOSC irq
    __enable_irq();
}

void axradio_calibrate_lposc(void)
{
        radio_write8(AX5044_45_REG_LPOSCFREQ1, 0x00);
        radio_write8(AX5044_45_REG_LPOSCFREQ0, 0x00);
#if !(axradio_fxtal >= 33000000 && axradio_fxtal <= 47000000)
        radio_write8(AX5044_45_REG_LPOSCREF1, (((axradio_fxtal/640)>>8) & 0xFF));
        radio_write8(AX5044_45_REG_LPOSCREF0, (((axradio_fxtal/640)>>0) & 0xFF));
        radio_write8(AX5044_45_REG_PWRMODE, AX5044_45_PWRSTATE_SYNTH_RX);
        radio_write8(AX5044_45_REG_LPOSCKFILT1, ((axradio_lposckfiltmax >> (8 + 1)) & 0xFF)); // kfiltmax >> 1
        radio_write8(AX5044_45_REG_LPOSCKFILT0, ((axradio_lposckfiltmax >> 1) & 0xFF));
        axradio_wait_for_xtal();

        radio_write8(AX5044_45_REG_LPOSCCONFIG, 0x25); // LPOSC ENA, slow mode; calibrate on rising edge, irq on rising edge
        axradio_wait_n_lposccycles(6);

#if axradio_fxtal > 30000000
        if( radio_read8(AX5044_45_REG_LPOSCFREQ1) == 0x7F)
        {
            // freq tuning went to max pos. start 25% lower
            radio_write8(AX5044_45_REG_LPOSCFREQ1, 0xBC);
            axradio_wait_n_lposccycles(6);
        }

        if( radio_read8(AX5044_45_REG_LPOSCFREQ1) == 0x80)
        {
            // freq tuning went to max neg. start 25% higher
            radio_write8(AX5044_45_REG_LPOSCFREQ1, 0xA8);
            axradio_wait_n_lposccycles(6);
        }
#endif
        radio_write8(AX5044_45_REG_LPOSCKFILT1, ((axradio_lposckfiltmax >> (8 + 2)) & 0xFF)); // kfiltmax >> 2
        radio_write8(AX5044_45_REG_LPOSCKFILT0, ((axradio_lposckfiltmax >> 2) & 0xFF));
        axradio_wait_n_lposccycles(5);

        radio_write8(AX5044_45_REG_LPOSCCONFIG, 0x00);
        radio_write8(AX5044_45_REG_PWRMODE, AX5044_45_PWRSTATE_POWERDOWN);

        {
            uint8_t x = radio_read8(AX5044_45_REG_LPOSCFREQ1);
            if( x == 0x7f || x == 0x80 )
            {
                radio_write8(AX5044_45_REG_LPOSCFREQ1, 0);
                radio_write8(AX5044_45_REG_LPOSCFREQ0, 0);
            }
        }

#endif
}

/* Wrapper for libmf commsleepexit */
__reentrantb void axradio_commsleepexit(void) __reentrant
{
    ax5044_45_commsleepexit();
}

#ifdef DBGPKT
/* Enable IRQ */
__reentrantb void axradio_dbgpkt_enableIRQ(void) __reentrant
{
    AX5044_45_IRQMASK0         = 0x41;
    AX5044_45_RADIOEVENTMASK0  = 0x0C; /* Radio state changed | RXPS changed */
}
#endif /* DBGPKT */

uint8_t axradio_check_fourfsk_modulation(void)
{
    uint8_t modulation = radio_read8(AX5044_45_REG_MODULATION);
    if((modulation & 0x0F) == 9)
        return 1;
    else
        return 0;
}

uint8_t axradio_get_transmitter_pa_type(void)
{
    return (radio_read8(AX5044_45_REG_MODCFGA) & 0x03);
}
