/**
*******************************************************************************************************
* @file misc.h
* @brief Extern display & debug functions
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
#ifndef MISC_H_INCLUDED
#define MISC_H_INCLUDED

#include "../COMMON/axradio.h"

#if defined SDCC || defined __ICC8051__ || defined __ARMEL__
struct u32endian {
	uint8_t b0;
	uint8_t b1;
	uint8_t b2;
	uint8_t b3;
};

struct u16endian {
	uint8_t b0;
	uint8_t b1;
};
#elif defined __CX51__ || defined __C51__ || defined __ARMEB__
struct u32endian {
	uint8_t b3;
	uint8_t b2;
	uint8_t b1;
	uint8_t b0;
};

struct u16endian {
	uint8_t b1;
	uint8_t b0;
};
#else
#error "Unsupported Compiler"
#endif

extern uint8_t display_received_packet(struct axradio_status __xdata *st);
extern void dbglink_received_packet(struct axradio_status __xdata *st);
extern __reentrantb void delay_ms(uint16_t ms) __reentrant;
extern void lcd2_display_radio_error(uint8_t err);
extern void com0_display_radio_error(uint8_t err);
extern void dbglink_display_radio_error(uint8_t err);
extern uint8_t __xdata radio_lcd_display[];
extern uint8_t __xdata radio_not_found_lcd_display[];
extern void enable_radio_interrupt_in_mcu_pin(void);
extern void disable_radio_interrupt_in_mcu_pin(void);
#endif // MISC_H_INCLUDED
