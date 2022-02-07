/**
*******************************************************************************************************
* @file misc.c
* @brief Display error messages & perform delay in using timer
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
#if defined __ARMEL__ || defined __ARMEB__
#include <libmfuart.h>
#ifdef __AXM0
#include <axm0.h>
#elif defined __AXM0F2
#include <axm0f2.h>
#endif /* End of __AXM0XX */
#else
#include <ax8052.h>
#endif
#include <libmftypes.h>
#include <libmfwtimer.h>
#include <libaxlcd2.h>

/** to get USE_LCD macro to define replacement of display_xx API with lcd2_api **/
#ifdef MASTER
#include "../AX_Radio_Lab_output/configmaster.h"
#elif SLAVE
#include "../AX_Radio_Lab_output/configslave.h"
#elif TESTS
#include "../AX_Radio_Lab_output/basictests.h"
#endif /* MASTER/SLAVE/TESTS */

#include "misc.h"
#include "../COMMON/axradio.h"
#include "display_com0.h"

struct errtbl {
	uint8_t errcode;
	const char __code *msg;
};
static const struct errtbl __code errtbl[] = {
	{ AXRADIO_ERR_NOTSUPPORTED, "E: not supported" },
	{ AXRADIO_ERR_BUSY, "E: busy" },
	{ AXRADIO_ERR_TIMEOUT, "E: timeout" },
	{ AXRADIO_ERR_INVALID, "E: invalid" },
	{ AXRADIO_ERR_NOCHIP, "E: no chip found" },
	{ AXRADIO_ERR_RANGING, "E: ranging" },
	{ AXRADIO_ERR_LOCKLOST, "E: lock lost" },
	{ AXRADIO_ERR_NOERROR, 0 }
};


void lcd2_display_radio_error(uint8_t err)
{
	const struct errtbl __code *p = errtbl;
	do {
		if (p->errcode == err) {
			display_setpos(0);
			display_writestr(p->msg);
			return;
		}
		++p;
	} while (p->errcode != AXRADIO_ERR_NOERROR);
}

#ifdef USE_COM0
void com0_display_radio_error(uint8_t err)
{
	const struct errtbl __code *p = errtbl;
	do {
		if (p->errcode == err) {
			com0_setpos(0);
			com0_writestr(p->msg);
			return;
		}
		++p;
	} while (p->errcode != AXRADIO_ERR_NOERROR);
}
#endif /* USE_COM0 */

void dbglink_display_radio_error(uint8_t err)
{
	const struct errtbl __code *p = errtbl;
	if (!(DBGLNKSTAT & 0x10))
		return;
	do {
		if (p->errcode == err) {
#if defined USE_DBGLINK
			dbglink_writestr(p->msg);
			dbglink_tx('\n');
#endif
		}
		++p;
	} while (p->errcode != AXRADIO_ERR_NOERROR);
}


static struct wtimer_desc __xdata delaymstimer;

static void delayms_callback(struct wtimer_desc __xdata *desc)
{
	desc;
	delaymstimer.handler = 0;
}

__reentrantb void delay_ms(uint16_t ms) __reentrant
{
	// scaling: 20e6/64/1e3=312.5=2^8+2^6-2^3+2^-1
	uint32_t x;
	wtimer_remove(&delaymstimer);
	x = ms;
	delaymstimer.time = ms >> 1;
	x <<= 3;
	delaymstimer.time -= x;
	x <<= 3;
	delaymstimer.time += x;
	x <<= 2;
	delaymstimer.time += x;
	delaymstimer.handler = delayms_callback;
	wtimer1_addrelative(&delaymstimer);
	wtimer_runcallbacks();
	do {
		wtimer_idle(WTFLAG_CANSTANDBY);
		wtimer_runcallbacks();
	} while (delaymstimer.handler);
}
