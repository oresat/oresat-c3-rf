/**
*******************************************************************************************************
* @file libminidvkled.h
* @brief Macro definition for Led 0 to Led3 ON/OFF/Toggle
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
#ifndef LIBMINIDVKLED_H
#define LIBMINIDVKLED_H

#include "libmftypes.h"

#if defined __ARMEL__ || defined __ARMEB__  /// ///////////////////////////////////////////////////////////////////////////
#ifdef __AXM0
#define led0_toggle() do { GPIO_XOR->DATA_OUT = 0x00000200; } while (0)                                     /// ////////////////
#define led0_set(x)   do { GPIO_XOR->DATA_OUT = (GPIO_XOR->DATA_OUT ^ -!!(x)) & 0x00000200; } while (0)     /// ////////////////
#define led0_on()     do { GPIO_OR->DATA_OUT = 0x00000200; } while (0)                                      /// ////////////////
#define led0_off()    do { GPIO_AND->DATA_OUT = ~0x00000200; } while (0)                                    /// ////////////////

#define led1_toggle() do { } while (0)
#define led1_set(x)   do { } while (0)
#define led1_on()     do { } while (0)
#define led1_off()    do { } while (0)

#define led2_toggle() do { } while (0)
#define led2_set(x)   do { } while (0)
#define led2_on()     do { } while (0)
#define led2_off()    do { } while (0)

#define led3_toggle() do { } while (0)
#define led3_set(x)   do { } while (0)
#define led3_on()     do { } while (0)
#define led3_off()    do { } while (0)
#endif // __AXM0


#else       /// ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

#define led0_toggle() do { PORTB ^= 0x02; } while (0)
#define led0_set(x)   do { PORTB_1 = (x); } while (0)
#define led0_on()     do { led0_set(1); } while (0)
#define led0_off()    do { led0_set(0); } while (0)

#define led1_toggle() do { } while (0)
#define led1_set(x)   do { } while (0)
#define led1_on()     do { led1_set(1); } while (0)
#define led1_off()    do { led1_set(0); } while (0)

#define led2_toggle() do { } while (0)
#define led2_set(x)   do { } while (0)
#define led2_on()     do { led2_set(1); } while (0)
#define led2_off()    do { led2_set(0); } while (0)

#define led3_toggle() do { } while (0)
#define led3_set(x)   do { } while (0)
#define led3_on()     do { led3_set(1); } while (0)
#define led3_off()    do { led3_set(0); } while (0)

#endif

#endif /* LIBMINIDVKLED_H */
