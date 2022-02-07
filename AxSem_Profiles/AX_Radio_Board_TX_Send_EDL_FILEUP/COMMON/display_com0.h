/**
*******************************************************************************************************
* @file display_com0.h
* @brief Macro definition for display parameters
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
#ifndef DISPLAY_COM0_H
#define DISPLAY_COM0_H

#ifdef MASTER
#include "../AX_Radio_Lab_output/configmaster.h"
#elif SLAVE
#include "../AX_Radio_Lab_output/configslave.h"
#elif TESTS
#include "../AX_Radio_Lab_output/basictests.h"
#endif /* MASTER/SLAVE/TESTS */

#include <libmf.h>
#include "libmfuart0.h"
#include "libmfuart1.h"

// implementation
#if defined(USE_LCD) /* LCD */
    #define display_portinit          lcd2_portinit
    #define display_init              lcd2_init
    #define display_setpos            lcd2_setpos
    #define display_writestr          lcd2_writestr
    #define display_writenum16        lcd2_writenum16
    #define display_writehex16        lcd2_writehex16
    #define display_writenum32        lcd2_writenum32
    #define display_writehex32        lcd2_writehex32
    #define display_tx                lcd2_tx
    #define display_clear             lcd2_clear
    #define display_wait_txdone       lcd2_wait_txdone
    #define display_txidle            lcd2_txidle
#elif ((defined __AXM0 && defined MINI_KIT && defined USE_COM0) || (defined __AXM0F2 && defined USE_COM0 && defined MINI_KIT)) /* USE_COM0: AXM0 minikit or AXM0F2 minikit */
    #define display_portinit          com0_portinit
    #define display_init              com0_init
    #define display_setpos            com0_setpos
    #define display_writestr          com0_writestr
    #define display_writenum16        uart0_writenum16
    #define display_writehex16        uart0_writehex16
    #define display_writenum32        uart0_writenum32
    #define display_writehex32        uart0_writehex32
    #define display_tx                com0_tx
    #define display_clear             com0_clear
    #define display_wait_txdone       uart0_wait_txdone
    #define display_txidle            uart0_txidle
#elif (defined __AXM0F2 && defined USE_COM0 && !defined MINI_KIT) /* USE_COM0: AXM0F2 DVK2 */
    #define display_portinit          com0_portinit
    #define display_init              com0_init
    #define display_setpos            com0_setpos
    #define display_writestr          com0_writestr
    #define display_writenum16        uart1_writenum16
    #define display_writehex16        uart1_writehex16
    #define display_writenum32        uart1_writenum32
    #define display_writehex32        uart1_writehex32
    #define display_tx                com0_tx
    #define display_clear             com0_clear
    #define display_wait_txdone       uart1_wait_txdone
    #define display_txidle            uart1_txidle
#elif (defined USE_COM0 && (defined SDCC || defined __CX51__ || defined __C51__ || defined __ICC8051__)) /* USE_COM0: 8052, Mini kit/DVK2  */
    #define display_portinit          com0_portinit
    #define display_init              com0_init
    #define display_setpos            com0_setpos
    #define display_writestr          com0_writestr
    #define display_writenum16        uart0_writenum16
    #define display_writehex16        uart0_writehex16
    #define display_writenum32        uart0_writenum32
    #define display_writehex32        uart0_writehex32
    #define display_tx                com0_tx
    #define display_clear             com0_clear
    #define display_wait_txdone       uart0_wait_txdone
    #define display_txidle            uart0_txidle
#else
    #define display_portinit()        do { } while (0)
    #define display_init()            do { } while (0)
    #define display_setpos(v)         do { } while (0)
    #define display_writestr(msg)     do { } while (0)
    #define display_writenum16(v,d,f) do { } while (0)
    #define display_writehex16(v,d,f) do { } while (0)
    #define display_writenum32(v,d,f) do { } while (0)
    #define display_writehex32(v,d,f) do { } while (0)
    #define display_tx(v)             do { } while (0)
    #define display_clear(p,l)        do { } while (0)
    #define display_wait_txdone()     do { } while (0)
    #define display_txidle()          (1)
#endif

#if defined USE_DBGLINK || defined DEBUGMSG
#if (defined __AXM0 || (defined __AXM0F2 && defined MINI_KIT))
#define dbglink_timer0_baud         uart_timer0_baud
#define dbglink_timer1_baud         uart_timer1_baud
#define dbglink_timer2_baud         uart_timer2_baud
#define dbglink_poll 		        uart0_poll
#define dbglink_txbufptr 	        uart0_txbufptr
#define dbglink_txfreelinear 	    uart0_txfreelinear
#define dbglink_txidle 		        uart0_txidle
#define dbglink_txfree 		        uart0_txfree
#define dbglink_rxbufptr 	        uart0_rxbufptr
#define dbglink_rxcountlinear 	    uart0_rxcountlinear
#define dbglink_rxcount 	        uart0_rxcount
#define dbglink_txbuffersize 	    uart0_txbuffersize
#define dbglink_rxbuffersize 	    uart0_rxbuffersize
#define dbglink_rxpeek 		        uart0_rxpeek
#define dbglink_txpoke 		        uart0_txpoke
#define dbglink_txpokehex 	        uart0_txpokehex
#define dbglink_rxadvance 	        uart0_rxadvance
#define dbglink_txadvance 	        uart0_txadvance
#define axm0_xbar_dbglink_config    axm0_xbar_uart_config
#define dbglink_init                uart0_init
#define dbglink_rx 		            uart0_rx
#define dbglink_tx 		            uart0_tx
#define dbglink_wait_rxcount 	    uart0_wait_rxcount
#define dbglink_wait_txdone 	    uart0_wait_txdone
#define dbglink_wait_txfree 	    uart0_wait_txfree
#define dbglink_writehex16 	        uart0_writehex16
#define dbglink_writehex32 	        uart0_writehex32
#define dbglink_writehexu16 	    uart0_writehexu16
#define dbglink_writehexu32 	    uart0_writehexu32
#define dbglink_writenum16 	        uart0_writenum16
#define dbglink_writenum32 	        uart0_writenum32
#define dbglink_writestr 	        uart0_writestr
#define dbglink_writeu16 	        uart0_writeu16
#define dbglink_writeu32 	        uart0_writeu32
#endif /* (defined __AXM0 || (defined __AXM0F2 && defined MINI_KIT)) */
#if (defined __AXM0F2 && !defined MINI_KIT)
#define dbglink_timer0_baud         uart_timer0_baud
#define dbglink_timer1_baud         uart_timer1_baud
#define dbglink_timer2_baud         uart_timer2_baud
#define dbglink_poll 				uart1_poll
#define dbglink_txbufptr 			uart1_txbufptr
#define dbglink_txfreelinear 		uart1_txfreelinear
#define dbglink_txidle 				uart1_txidle
#define dbglink_txfree 				uart1_txfree
#define dbglink_rxbufptr 			uart1_rxbufptr
#define dbglink_rxcountlinear 		uart1_rxcountlinear
#define dbglink_rxcount 			uart1_rxcount
#define dbglink_txbuffersize 		uart1_txbuffersize
#define dbglink_rxbuffersize 		uart1_rxbuffersize
#define dbglink_rxpeek 				uart1_rxpeek
#define dbglink_txpoke 				uart1_txpoke
#define dbglink_txpokehex 			uart1_txpokehex
#define dbglink_rxadvance 			uart1_rxadvance
#define dbglink_txadvance 			uart1_txadvance
#define dbglink_init               	uart1_init
#define dbglink_rx 		            uart1_rx
#define dbglink_tx 		            uart1_tx
#define dbglink_wait_rxcount 	    uart1_wait_rxcount
#define dbglink_wait_txdone 	    uart1_wait_txdone
#define dbglink_wait_txfree 	    uart1_wait_txfree
#define dbglink_writehex16 	        uart1_writehex16
#define dbglink_writehex32 	        uart1_writehex32
#define dbglink_writehexu16 	    uart1_writehexu16
#define dbglink_writehexu32 	    uart1_writehexu32
#define dbglink_writenum16 	        uart1_writenum16
#define dbglink_writenum32 	        uart1_writenum32
#define dbglink_writestr 	        uart1_writestr
#define dbglink_writeu16 	        uart1_writeu16
#define dbglink_writeu32 	        uart1_writeu32
#endif /* (defined __AXM0F2 && !defined MINI_KIT) */
#endif /* defined USE_DBGLINK || defineed DEBUGMSG */

extern __reentrantb void com0_inituart0(void) __reentrant;
extern __reentrantb void com0_portinit(void) __reentrant;
extern __reentrantb void com0_init(void) __reentrant;
extern __reentrantb void com0_setpos(uint8_t v) __reentrant;
extern __reentrantb void com0_writestr(const char __genericaddr * msg) __reentrant;
extern __reentrantb void com0_tx(uint8_t val) __reentrant;
extern __reentrantb void com0_clear(uint8_t pos, uint8_t len) __reentrant;

#endif // DISPLAY_COM0_H
