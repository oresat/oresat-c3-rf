/**
*******************************************************************************************************
* @file MASTER\main.c
* @brief Code skeleton for MASTER module, illustrating periodic or on-demand transmission of packets.
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

#include "../AX_Radio_Lab_output/configmaster.h"
/* axm0_uart req for both; remove warnings */
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
#if defined(USE_LCD) || defined(USE_COM0)
#define USE_DISPLAY
#endif /* defined(USE_LCD) || defined(USE_COM0) */
#include "../COMMON/display_com0.h"
#include <libdvk2leds.h>
#define BUTTON_INTCHG INTCHGB
#define BUTTON_PIN    PINB
#define BUTTON_MASK   0x04
#include <string.h>
#include "../COMMON/misc.h"
#include "../COMMON/configcommon.h"

/* *.*.*. OreSat */
/* SI41XX Status and test registers */
#define SI41XX_REG_MAIN_CONFIG             0x0
#define SI41XX_REG_PHASE_GAIN              0x1
#define SI41XX_REG_PWRDOWN                 0x2
#define SI41XX_REG_RF1_NDIV                0x3
#define SI41XX_REG_RF2_NDIV                0x4
#define SI41XX_REG_IF_NDIV                 0x5
#define SI41XX_REG_RF1_RDIV                0x6
#define SI41XX_REG_RF2_RDIV                0x7
#define SI41XX_REG_IF_RDIV                 0x8


uint8_t init_synth_only_once = 1;    /* *.*.*. OreSat */
extern uint8_t _start__stack[];
uint16_t __data pkt_counter = 0;
uint8_t __data coldstart = 1; /* caution: initialization with 1 is necessary! Variables are initialized upon _sdcc_external_startup returning 0 -> the coldstart value returned from _sdcc_external startup does not survive in the coldstart case */
#ifdef TX_ON_DEMAND
__bit deglitch_busy = 0;
#endif

struct wtimer_desc __xdata wakeup_desc;

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

static void transmit_packet(void)
{
    static uint8_t __xdata demo_packet_[sizeof(demo_packet)];

    ++pkt_counter;
    memcpy(demo_packet_, demo_packet, sizeof(demo_packet));

    if (framing_insert_counter)
    {
        demo_packet_[framing_counter_pos] = pkt_counter & 0xFF ;
        demo_packet_[framing_counter_pos+1] = (pkt_counter>>8) & 0xFF;
    }

    axradio_transmit(&remoteaddr, demo_packet_, sizeof(demo_packet));
}

static void display_transmit_packet(void)
{
    if (pkt_counter == 1)
    {
        display_setpos(0x40);
        display_writestr("TX    ");
#ifdef USE_DBGLINK

        if (DBGLNKSTAT & 0x10)
            dbglink_writestr("TX : \n");

#endif /* USE_DBGLINK */
    }

    display_setpos(0x4c);
    display_writehex16(pkt_counter, 4, WRNUM_PADZERO);
#ifdef USE_DBGLINK

    if (DBGLNKSTAT & 0x10)
    {
        dbglink_writehex16(pkt_counter, 4, WRNUM_PADZERO);
        dbglink_tx('\n');
    }

#endif /* USE_DBGLINK */
}

void axradio_statuschange(struct axradio_status __xdata *st)
{
#if defined(USE_DBGLINK) && defined(DEBUGMSG)
    if (DBGLNKSTAT & 0x10)
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
    case AXRADIO_STAT_TRANSMITSTART:
        led0_on();

        if (st->error == AXRADIO_ERR_RETRANSMISSION)
            led2_on();

#ifdef TX_ON_DEMAND

        if( st->error = AXRADIO_ERR_TIMEOUT )
            deglitch_busy = 0;

#endif
#if RADIO_MODE == AXRADIO_MODE_SYNC_MASTER || RADIO_MODE == AXRADIO_MODE_SYNC_ACK_MASTER
        display_transmit_packet();
#endif
        break;

    case AXRADIO_STAT_TRANSMITEND:
        led0_off();

        if (st->error == AXRADIO_ERR_NOERROR)
        {
            led2_off();
#ifdef TX_ON_DEMAND
            deglitch_busy = 0;
#endif
#if RADIO_MODE == AXRADIO_MODE_ACK_TRANSMIT || RADIO_MODE == AXRADIO_MODE_WOR_ACK_TRANSMIT || RADIO_MODE == AXRADIO_MODE_SYNC_ACK_MASTER
            display_setpos(0x0d);
            display_writestr(":-)");
#ifdef USE_DBGLINK

            if (DBGLNKSTAT & 0x10)
                dbglink_writestr(":-)\n");

#endif /* USE_DBGLINK */
#endif /* RADIO_MODE */
        }
        else if (st->error == AXRADIO_ERR_TIMEOUT)
        {
            led2_on();
#if RADIO_MODE == AXRADIO_MODE_ACK_TRANSMIT || RADIO_MODE == AXRADIO_MODE_WOR_ACK_TRANSMIT || RADIO_MODE == AXRADIO_MODE_SYNC_ACK_MASTER
            display_setpos(0x0d);
            display_writestr(":-(");
#ifdef USE_DBGLINK

            if (DBGLNKSTAT & 0x10)
                dbglink_writestr(":-(\n");

#endif /* USE_DBGLINK */
#endif /* RADIO_MODE */
        }

        if (st->error == AXRADIO_ERR_BUSY)
            led3_on();
        else
            led3_off();

        break;
#if RADIO_MODE == AXRADIO_MODE_SYNC_MASTER || RADIO_MODE == AXRADIO_MODE_SYNC_ACK_MASTER

    case AXRADIO_STAT_TRANSMITDATA:
        /* in SYNC_MASTER mode, transmit data may be prepared between the call to TRANSMITEND until the call to TRANSMITSTART */
        /* TRANSMITDATA is called when the crystal oscillator is enabled, approximately 1ms before transmission */
        transmit_packet();
        break;
#endif

    case AXRADIO_STAT_CHANNELSTATE:
        if (st->u.cs.busy)
            led3_on();
        else
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

static void wakeup_callback(struct wtimer_desc __xdata *desc)
{
    desc;
#if defined(WTIMER0_PERIOD)
    wakeup_desc.time += wtimer0_correctinterval(WTIMER0_PERIOD);
    wtimer0_addabsolute(&wakeup_desc);
    transmit_packet();
    display_transmit_packet();
#endif
}

uint8_t _sdcc_external_startup(void)
{
    LPXOSCGM = 0x8A;
    wtimer0_setclksrc(WTIMER0_CLKSRC, WTIMER0_PRESCALER);
    wtimer1_setclksrc(CLKSRC_FRCOSC, 7);

    LPOSCCONFIG = 0x09; /* Slow, PRESC /1, no cal. Does NOT enable LPOSC. LPOSC is enabled upon configuring WTCFGA (MODE_TX_PERIODIC and receive_ack() ) */

    coldstart = !(PCON & 0x40);

    ANALOGA = 0x18; /* PA[3,4] LPXOSC, other PA are used as digital pins */
    PORTA = 0xC0 | (PINA & 0x25); 	/* pull-up for PA[6,7] which are not bonded, no pull up for PA[3,4] (LPXOSC). Output 0 in PA[0,1,2,5] to prevent current consumption in all DIP switch states */
    /* init LEDs to previous (frozen) state */
    PORTB = 0xFE; /*PB[0,1]  (LCD RS, LCD RST) are overwritten by lcd2_portinit(), enable pull-ups for PB[2..7]  (PB[2,3] for buttons, PB[4..7] unused) */
    PORTC = 0xF3 | (PINC & 0x08); 	/* set PC0 = 1 (LCD SEL), PC1 = 1 (LCD SCK), PC2 = 0 (LCD MOSI), PC3 =0 (LED), enable pull-ups for PC[4..7] which are not bonded Mind: PORTC[0:1] is set to 0x3 by lcd2_portinit() */
    /* init LEDs to previous (frozen) state */
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

/* *.*.*. OreSat */
//write SI41XX registers
static void si_write_reg(uint8_t address, uint32_t data)
{
  int i;
  uint32_t sdata;
  uint32_t mask = 1;
  mask = mask << 31;
  data = (data << 14) | (address << 10);

  // LINE_SI_SENB - LED2
  // LINE_SI_SDATA - LED3
  // LINE_SI_SCLK - LED1
  led2_off(); //palClearLine(LINE_SI_SENB);

  for(i=0; i<22;i++)
  {
    led1_off(); //palClearLine(LINE_SI_SCLK);
    delay_ms(1);
    sdata = data & mask;
    if(sdata > 0){
      //chprintf(DEBUG_CHP, "1");
      led3_on(); //palSetLine(LINE_SI_SDATA);
      }
    else{
      //chprintf(DEBUG_CHP, "0");
      led3_off(); //palClearLine(LINE_SI_SDATA);
      }
    delay_ms(1);
    led1_on(); //palSetLine(LINE_SI_SCLK);
    delay_ms(1);
    data = data <<1;
    delay_ms(1);
  }
  //chprintf(DEBUG_CHP, " \r\n");
  led2_on(); //palSetLine(LINE_SI_SENB);

}

/* *.*.*. OreSat */
// Initialize Si4112 Synthesizer
static void synth_init(void)
{

//    uint32_t freq = 808000; // Fc in kHz  (For Rx)
    uint32_t freq = 760000; // Fc in kHz  (For Tx)
    uint16_t phase = 500;   // PD in kHz, 1 to 1000
    uint8_t pllref = 16;    // External PLL reference

    uint32_t ndiv;
    uint32_t rdiv;

    rdiv = pllref * 1000 / phase;
    ndiv = freq * rdiv / (1000 * pllref);

    led2_on(); //palSetLine(LINE_SI_SENB);
    led3_on(); //palSetLine(LINE_SI_SDATA);
    led1_on(); //palSetLine(LINE_SI_SCLK);
    si_write_reg(SI41XX_REG_MAIN_CONFIG, 0b000011000000000100);
    si_write_reg(SI41XX_REG_PHASE_GAIN,  0b000000000000000000);
    si_write_reg(SI41XX_REG_PWRDOWN,     0b000000000000000000);
    si_write_reg(SI41XX_REG_IF_NDIV, ndiv);
    si_write_reg(SI41XX_REG_IF_RDIV, rdiv);
    si_write_reg(SI41XX_REG_PWRDOWN,     0b000000000000000010);
    led2_on(); //palSetLine(LINE_SI_SENB);
    led3_on(); //palSetLine(LINE_SI_SDATA);
    led1_on(); //palSetLine(LINE_SI_SCLK);

}


int main(void)
{
    uint8_t i;
    static uint8_t __data saved_button_state = 0xFF;
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

        wakeup_desc.handler = wakeup_callback;
#ifdef TX_ON_DEMAND
        BUTTON_INTCHG |= BUTTON_MASK;   /*interrupt on button changed (button SW5 on DVK-2) for wake on button pressed */
#endif /* TX_ON_DEMAND */
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
#if RADIO_MODE == AXRADIO_MODE_SYNC_MASTER || RADIO_MODE == AXRADIO_MODE_SYNC_ACK_MASTER || RADIO_MODE == AXRADIO_MODE_SYNC_SLAVE || RADIO_MODE == AXRADIO_MODE_SYNC_ACK_SLAVE
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
        delay_ms(10000); /* just to show PLL RNG */
        display_clear(0, 16);
        display_clear(0x40, 16);
        display_setpos(0);
        display_writestr("MASTer");
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
            dbglink_writestr("\n\nMASTER\n");
        }

#endif /* USE_DBGLINK */
        i = axradio_set_mode(RADIO_MODE);

        if (i != AXRADIO_ERR_NOERROR)
            goto terminate_radio_error;

#if defined(WTIMER0_PERIOD)
        wakeup_desc.time = wtimer0_correctinterval(WTIMER0_PERIOD);
        wtimer0_addrelative(&wakeup_desc);
#endif
/* *.*.*. OreSat */
        if (init_synth_only_once == 1)
        {
            delay_ms(500);
            synth_init(); //initialize synthesizer.
            delay_ms(750);
            init_synth_only_once = 0;
        }
    }
    else
    {
        /*  Warm Start */
        axradio_commsleepexit();
        IE_4 = 1; /* enable radio interrupt */
    }

    axradio_setup_pincfg2();

#ifdef TX_ON_DEMAND
    BUTTON_INTCHG |= BUTTON_MASK; /*interrupt on button changed (button SW5 on DVK-2) for wake on button pressed */
#endif /* TX_ON_DEMAND */

    for(;;)
    {
        wtimer_runcallbacks();
        __disable_irq();
#ifdef TX_ON_DEMAND
        {
            uint8_t buttonedge;
            {
                uint8_t p;
                p = BUTTON_PIN;
                buttonedge = saved_button_state & ~p;
                saved_button_state = p;
            }

            if (buttonedge & BUTTON_MASK)
            {
                __enable_irq();

                if( !deglitch_busy )
                {
                    deglitch_busy = 1;
                    transmit_packet();
                    display_transmit_packet();
                }

                continue;
            }
        }
        IE_3 = 1;
#endif  /* TX_ON_DEMAND */
        {
            uint8_t flg = WTFLAG_CANSTANDBY;
#ifdef MCU_SLEEP

            if (axradio_cansleep()
#ifdef USE_DBGLINK
                    && dbglink_txidle()
#endif
                    && display_txidle())
                flg |= WTFLAG_CANSLEEP;
#endif /* MCU_SLEEP */
            wtimer_idle(flg);
        }
        IE_3 = 0; /* no ISR! */
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
#endif
                    && display_txidle())
                flg |= WTFLAG_CANSLEEP;
#endif
            wtimer_idle(flg);
        }
    }
}
