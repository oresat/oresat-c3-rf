/**
*******************************************************************************************************
* @file display_com0.c
* @brief Display data using Uart0 port
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

/** This file has been ported to configure COM0 to work with UART1 as applicable in DVK2F
Need to be discussed and fixed
*/

#include "display_com0.h"

#if defined __ARMEL__ || defined __ARMEB__
#ifdef __AXM0
#include <axm0.h>
#elif defined __AXM0F2
#include <axm0f2.h>
#endif /* End of __AXM0XX */
#else
#include <ax8052.h>
#endif
#include <libmf.h>
#include <libmfuart.h>
#include <libmfuart0.h>

#ifdef USE_COM0

static const __code char lcd_border[]=
"\x1b[0;8;44;30m\x1b[1;1f"
"******************\x1b[2;1f"
"*                *\x1b[3;1f"
"*                *\x1b[4;1f"
"******************\x1b[5;1f\x1b[37m\x1b[?25l";

uint8_t __xdata row;
uint8_t __xdata column;

#if 0
__reentrantb void com0_inituart0(void) __reentrant
{
	// need this if libmfuart0.h is included. Including but not inizializing the uart prevents sleeping (wtimer_cansleep will evaluate uart0_txidle() which does not work without clock)
	uart_timer0_baud(CLKSRC_SYSCLK, 115200, 20000000UL);
	uart0_init(0, 8, 1);
}
#endif

__reentrantb void com0_portinit(void) __reentrant
{
#if defined __ARMEL__ || defined __ARMEB__
	#if (defined __AXM0)
		uart_timer0_baud(CLKSRC_SYSCLK, 115200, 20000000UL);
		uart0_init(0, 8, 1);
	#endif
	#if (defined __AXM0F2 && defined MINI_KIT)
		uart_timer0_baud(CLKSRC_FRCOSC, 115200, 48000000UL);
		uart0_init(0, 8, 1);
	#endif
	#if (defined __AXM0F2 && !defined MINI_KIT)
		uart_timer1_baud(CLKSRC_FRCOSC, 115200, 48000000UL);
		uart1_init(1, 8, 1);
	#endif
#else
	PALTB |= 0x11;
	DIRB |= (1<<0) | (1<<4);
	DIRB &= (uint8_t)~(1<<5);
	PINSEL &= (uint8_t)~((1<<0) | (1<<1));

	uart_timer0_baud(CLKSRC_SYSCLK, 115200, 20000000UL);
	uart0_init(0, 8, 1);
#endif // defined
}

__reentrantb void com0_init(void) __reentrant
{
#if defined __ARMEL__ || defined __ARMEB__
	#if (defined __AXM0)
		uart_timer0_baud(CLKSRC_SYSCLK, 115200, 20000000UL);
		uart0_init(0, 8, 1);
	#endif
	#if (defined __AXM0F2 && defined MINI_KIT)
		uart_timer0_baud(CLKSRC_FRCOSC, 115200, 48000000UL);
		uart0_init(0, 8, 1);
	#endif

	#if (defined __AXM0F2 && !defined MINI_KIT)
		uart_timer1_baud(CLKSRC_FRCOSC, 115200, 48000000UL);
		uart1_init(1, 8, 1);
	#endif
#else
	uart_timer0_baud(CLKSRC_SYSCLK, 115200, 20000000UL);
	uart0_init(0, 8, 1);
#endif // defined
	com0_writestr(lcd_border);
	com0_setpos(0);
}

__reentrantb void com0_writestr2(const char* msg)  __reentrant
{
#if defined __ARMEL__ || defined __ARMEB__
    #if (defined __AXM0 || (defined __AXM0F2 && defined MINI_KIT))
        uart0_writestr(msg);
    #endif
    #if (defined __AXM0F2 && !defined MINI_KIT)
        uart1_writestr(msg);
    #endif
#else
    uart0_writestr(msg);
#endif // defined
}

static __reentrantb void com0_setrowcol(void) __reentrant
{
#if defined __ARMEL__ || defined __ARMEB__
    #if (defined __AXM0 || (defined __AXM0F2 && defined MINI_KIT))
        uart0_tx(0x1b);
        uart0_tx('[');
        uart0_tx(row + '0');
        uart0_tx(';');
        uart0_tx(column / 10 + '0');
        uart0_tx(column % 10 + '0');
        uart0_tx('f');
    #endif

    #if (defined __AXM0F2 && !defined MINI_KIT)
		uart1_tx(0x1b);
		uart1_tx('[');
		uart1_tx(row + '0');
		uart1_tx(';');
		uart1_tx(column / 10 + '0');
		uart1_tx(column % 10 + '0');
		uart1_tx('f');
	#endif
#else
	uart0_tx(0x1b);
	uart0_tx('[');
	uart0_tx(row + '0');
	uart0_tx(';');
	uart0_tx(column / 10 + '0');
	uart0_tx(column % 10 + '0');
	uart0_tx('f');
#endif // defined

}

__reentrantb void com0_newline(void) __reentrant
{
	if (row < 3)
		++row;
	column = 2;
	com0_setrowcol();
}

__reentrantb void com0_setpos(uint8_t v) __reentrant
{
	//http://www.termsys.demon.co.uk/vtansi.htm
	//Force Cursor Position	<ESC>[{ROW};{COLUMN}f
	row = (v >> 6) + 2;
	column = (v & 0x3F) + 2;
	com0_setrowcol();
}

__reentrantb void com0_writestr(const char __genericaddr *msg) __reentrant
{
	for (;;) {
		char ch = *msg;
		if (!ch)
			break;
		com0_tx(ch);
		msg++;
	}
	//com0_allow_swreset();
}

__reentrantb void com0_tx(uint8_t val)  __reentrant
{
	if (val == '\n')
		com0_newline();
	else
#if defined __ARMEL__ || defined __ARMEB__
	#if (defined __AXM0 || (__AXM0F2 && defined MINI_KIT))
		uart0_tx(val);
	#endif
	#if (defined __AXM0F2 && !defined MINI_KIT)
		uart1_tx(val);
	#endif
#else
        uart0_tx(val);
#endif // defined

}

__reentrantb void com0_clear(uint8_t pos, uint8_t len) __reentrant
{
	com0_setpos(pos);
	if (!len)
		return;
	do {
		com0_tx(' ');
	} while (--len);
}

#endif /* USE_COM0 */
