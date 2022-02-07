/**
*************************************************************************************************************
* @file TESTS\main.c
* @brief Provides basic evaluation functions like transmitting CW or measuring BER from a 101010 bit stream
*        Radio Chip parameters are determined by AX-RadioLAB_output\config.c, produced by the AX-RadioLab GUI
* @internal
* @author   Thomas Sailer, Janani Chellappan, Srinivasan Tamilarasan, Pradeep Kumar GR
* $Rev: $
* $Date: $
*************************************************************************************************************
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

#include "../AX_Radio_Lab_output/basictests.h"
#include <ax8052.h>
#include <libmftypes.h>
#include <libmfradio.h>
#include <libmfflash.h>
#include <libmfwtimer.h>
#include <libmfcrc.h>
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
/* Verify the function display_writenum16 in libaxdvk2.a */
#include <libdvk2leds.h>
#define BUTTON_INTCHG INTCHGB
#define BUTTON_PIN    PINB
#define BUTTON_MASK   0x04
#include "../COMMON/axradio.h"
#include "../COMMON/misc.h"
#include "../COMMON/configcommon.h"
#undef DUMP_PACKET
extern uint8_t _start__stack[];
uint8_t __data coldstart = 1; /* caution: initialization with 1 is necessary! Variables are initialized upon _sdcc_external_startup returning 0 -> the coldstart value returned from _sdcc_external startup does not survive in the coldstart case */
#if BERDIGITS == 3
#define NUMBYTES 125
#elif BERDIGITS == 4
#define NUMBYTES 1250
#elif BERDIGITS == 5
#define NUMBYTES 12500
#else
#error "Invalid BERDIGITS"
#endif

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


enum
{
    TX_CW = 0,
    TX_1010 = 1,
    TX_RANDOM_PATTERN = 2,
    RX_1010 = 3,
    TX_PN17 = 4,
    RX_PN17 = 5,
    TX_PN15 = 6,
    RX_PN15 = 7,
    TX_PN9 = 8,
    RX_PN9 = 9,
    RX_DATA_OUT_PIN = 10,
    TX_USER_DEF_PATTERN = 11
}BER_TEST;

const uint8_t __code txpattern[8] =
{
    ((BASICTESTS_TXPATTERN) >>24) & 0xff,
    ((BASICTESTS_TXPATTERN) >>16) & 0xff,
    ((BASICTESTS_TXPATTERN) >>8) & 0xff,
    (BASICTESTS_TXPATTERN) & 0xff,
    ((BASICTESTS_TXPATTERN) >>24) & 0xff,
    ((BASICTESTS_TXPATTERN) >>16) & 0xff,
    ((BASICTESTS_TXPATTERN) >>8) & 0xff,
    (BASICTESTS_TXPATTERN) & 0xff

};

//changed from 8 to 10 as BER for IAR compiler failed for AX5045.
const uint8_t __code onepattern[16] =
{
    0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff , 0xff, 0xff, 0xff, 0xff, 0xff, 0xff , 0xff, 0xff
};

const uint8_t __code fourfsk_tx1010_pattern[8]=
{
    0x1E, 0x1E, 0x1E, 0x1E, 0x1E, 0x1E, 0x1E, 0x1E
};

const uint8_t __code non_fourfsk_tx1010_pattern[8]=
{
    0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55
};

uint8_t __xdata txdata[8];

union
{
    uint16_t w;
    uint32_t l;
    struct u32endian b;
} scr;
uint32_t bytes;
uint32_t errors;
uint32_t errors2;
uint8_t acquire_agc;
#if defined __ARMEB_
#if defined USE_DBGLINK

/* Debug Link Configuration */
void debuglink_init_axm0(void)
{
    dbglink_timer0_baud(0, 9600, AXM0XX_HFCLK_CLOCK_FREQ);   /* HS OSC, Baud rate, Clock */
    dbglink_init(0, 8, 1);                              /* TImer No., Word length, Stop bit */
}
#endif /* USE_DBGLINK */
#endif /* defined */

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

/* correct BER for PN measurements */
static void correct_ber(void)
{
    switch (BASICTESTS)
    {
    case 5:
    case 7:
    case 9:
    {
        float x = (1.80720400721969 / 8) / (NUMBYTES); /* (2/3)^(1/4)*2 / nrbits */
        x *= errors;
        x *= x;
        x *= x;
        x += 0.333333333333333;
        errors *= x;
        break;
    }

    default:
        break;
    }
}

static void process_ber(struct axradio_status __xdata *st)
{
    uint8_t fourfsk = axradio_check_fourfsk_modulation();
    {
        uint8_t i = st->u.rx.pktlen;
        bytes -= i;
        acquire_agc = (0 > (int32_t)bytes);

        if (acquire_agc)
        {
            i += (uint8_t)bytes;
            bytes = 0;
        }

        if (i)
        {
            const uint8_t __xdata *p = st->u.rx.pktdata;
            switch (BASICTESTS)
            {
            default:
                if (fourfsk)
                {
                    do
                    {
                        uint8_t databyte = *p++;
                        /* send -3dev, -1dev, +dev, +3dev. OK, that's not 1010... */
                        errors2 += hweight8(databyte ^ 0x87);
                        errors += hweight8(databyte ^ 0xe1);
                    }
                    while (--i);

                    break;
                }

                do
                {
                    uint8_t databyte = *p++;
                    errors += hweight8(databyte ^ 0x55);
                }
                while (--i);

                break;

            case 5:
#if defined RADIO_AX5044 || defined RADIO_AX5045
            case 7:
            case 9:
#endif // RADIO_AX5044, 5045
                /* PN17 */
                do
                {
                    uint8_t databyte = *p++;
                    errors += hweight8(databyte);
                }
                while (--i);

                break;
#ifdef RADIO_AX5043
            case 7:

                // PN15
                do
                {
                    uint8_t databyte;
                    scr.b.b0 = scr.b.b1;
                    scr.b.b1 = scr.b.b2;
                    scr.b.b2 = *p++;
                    databyte = (uint8_t)scr.l ^ (uint8_t)(scr.l >> 14) ^ (uint8_t)(scr.l >> 15);
                    errors += hweight8(databyte);
                }
                while (--i);

                break;

            case 9:

                // PN9
                do
                {
                    uint8_t databyte;
                    scr.b.b0 = scr.b.b1;
                    scr.b.b1 = scr.b.b2;
                    scr.b.b2 = *p++;
                    databyte = (uint8_t)scr.l ^ (uint8_t)(scr.l >> 5) ^ (uint8_t)(scr.l >> 9);
                    errors += hweight8(databyte);
                }
                while (--i);

                break;
#endif  //RADIO_AX5043

            }
        }
    }

    if (!acquire_agc)
        return;

    /* BER > 0.5 means we received an 0xAA sequence rather than 0x55 -> invert (0x1e rather than 0xe1 in 4fsk) */
    if (errors > (((uint32_t)NUMBYTES) << 2))
        errors = (((uint32_t)NUMBYTES) << 3) - errors;

    if (fourfsk && (BASICTESTS==3))         // If it's 4-FSK and if it's 1010 test only then do this additional step.
    {
        if (errors2 > (((uint32_t)NUMBYTES) << 2))
            errors2 = (((uint32_t)NUMBYTES) << 3) - errors2;

        if (errors2 < errors)
            errors = errors2;
    }

    correct_ber();
}

static void dump_pkt(struct axradio_status __xdata *st)
{
#ifdef USE_DBGLINK
    if (!(DBGLNKSTAT & 0x10))
        return;

    {
        const uint8_t __xdata *p = st->u.rx.pktdata;
        uint8_t i = st->u.rx.pktlen, j;

        for (j = 0; j < i; ++j)
        {
            if (!(j & 15))
            {
                dbglink_tx('\n');
                dbglink_writehex16(j, 4, WRNUM_PADZERO);
                dbglink_tx(':');
            }

            dbglink_tx(' ');
            dbglink_writehex16(*p++, 2, WRNUM_PADZERO);
        }

        dbglink_tx('\n');
    }
#endif  /* USE_DBGLINK */
}

static void display_ber(struct axradio_status __xdata *st)
{
    int32_t freqoffs = axradio_conv_freq_tohz(st->u.rx.phy.offset);
    display_setpos(0x44);
    display_writestr("0.");
    display_writenum32(errors, BERDIGITS, WRNUM_PADZERO);

    display_setpos(0x00);
    display_writestr("O:");
    display_writenum32(freqoffs, 6, WRNUM_SIGNED);

    display_setpos(0x0c);
    display_writenum16(st->u.rx.phy.rssi, 4, WRNUM_SIGNED);
#ifdef USE_DBGLINK

    if (DBGLNKSTAT & 0x10)
    {
        dbglink_writestr("BER = 0.");
        dbglink_writenum32(errors, BERDIGITS, WRNUM_PADZERO);
        dbglink_writestr("\tFOFFS = ");
        dbglink_writenum32(freqoffs, 6, WRNUM_SIGNED);
        dbglink_tx('\n');
    }
#endif /*USE_DBGLINK */
}

void axradio_statuschange(struct axradio_status __xdata *st)
{
    uint8_t fourfsk = axradio_check_fourfsk_modulation();
    switch (st->status)
    {
    case AXRADIO_STAT_TRANSMITSTART:
        led0_on();
        break;

    case AXRADIO_STAT_TRANSMITEND:
        led0_off();
        break;

    case AXRADIO_STAT_TRANSMITDATA:
        switch (BASICTESTS)
        {
        case TX_1010:
        {
            if (fourfsk)         // If it's 4-FSK and TX1010 test then transmit 0x1E to get 4 different voltage levels.
                axradio_transmit((void *)0, fourfsk_tx1010_pattern, sizeof(fourfsk_tx1010_pattern));
            else
                axradio_transmit((void *)0, non_fourfsk_tx1010_pattern, sizeof(non_fourfsk_tx1010_pattern));
            break;
        }
        case TX_CW:
        case TX_RANDOM_PATTERN:
        case TX_PN17:
            axradio_transmit((void *)0, onepattern, sizeof(onepattern));
            break;

        case TX_PN15:
        {
            #if defined RADIO_AX5044 || defined RADIO_AX5045
            axradio_transmit((void *)0, onepattern, sizeof(onepattern));
            #else
            uint8_t i;

            for (i = 0; i != sizeof(txdata); ++i)
            {
                txdata[i] = pn15_output(scr.w);
                scr.w = pn15_advance(scr.w);
            }

            axradio_transmit((void *)0, txdata, sizeof(txdata));
            #endif
            break;
        }

        case TX_PN9:
        {
            #if defined RADIO_AX5044 || defined RADIO_AX5045
            axradio_transmit((void *)0, onepattern, sizeof(onepattern));
            #else
            uint8_t i;

            for (i = 0; i != sizeof(txdata); ++i)
            {
                txdata[i] = scr.w;
                scr.w = pn9_advance(scr.w);
            }

            axradio_transmit((void *)0, txdata, sizeof(txdata));
            #endif
            break;
        }

        case TX_USER_DEF_PATTERN:
        {
            axradio_transmit((void *)0, txpattern, sizeof(txpattern));
            break;
        }
        default:
            break;
        }

        break;

    case AXRADIO_STAT_RECEIVE:
    {
        if (acquire_agc == 1)
        {
            /* we have received 1000 bits with a running AGC and we are going to freeze the AGC now */
            led0_off();
            acquire_agc = 2;
            axradio_agc_freeze();
            break;
        }

        if (acquire_agc == 2)
        {
            /* dump bits collected before RXPS0 -> RXPS3 switch happend */
            acquire_agc = 0;

            /* store last bits for PN decode */
#ifdef RADIO_AX5043
            switch (BASICTESTS)
            {
            case RX_PN15:
            case RX_PN9:
            {
                uint8_t i = st->u.rx.pktlen;

                if (i >= 2)
                {
                    const uint8_t __xdata *p = st->u.rx.pktdata;
                    i -= 2;
                    p += i;
                    scr.b.b1 = *p++;
                    scr.b.b2 = *p;
                }

                break;
            }

            default:
                break;
            }
#endif // RADIO_AX5043

            break;
        }

        /* AGC frozen, these are bits to be counted. */
        led0_on();
        process_ber(st);

        if (!acquire_agc)
            break;

        axradio_agc_thaw();
        display_ber(st);
        //dump_pkt(st);
        bytes = NUMBYTES;
        errors = 0;
        errors2 = 0;
        break;
    }

    default:
        break;
    }
}

void set_cw(void)
{
    uint8_t i = axradio_set_mode(AXRADIO_MODE_CW_TRANSMIT);

    if (i != AXRADIO_ERR_NOERROR)
    {
        display_radio_error(i);
#ifdef USE_DBGLINK
        dbglink_display_radio_error(i);
#endif /* USE_DBGLINK */

        for (;;)
            enter_sleep();
    }

    display_clear(0x00, 16);
    display_clear(0x40, 16);
    display_setpos(0x00);
    display_writestr("TX CW, PA ");

    if(axradio_get_transmitter_pa_type() == AXRADIO_DIFFERENTIAL_PA)
        display_writestr( "DI ");
    else if(axradio_get_transmitter_pa_type() == AXRADIO_SINGLE_ENDED_PA)
        display_writestr( "SE ");
}

void set_transmit(void)
{
    uint8_t i;

    switch (BASICTESTS)
    {
    case TX_RANDOM_PATTERN:
        i = AXRADIO_MODE_STREAM_TRANSMIT_SCRAM;
        break;

    case TX_PN17:
#ifdef RADIO_AX5043
        i = AXRADIO_MODE_STREAM_TRANSMIT_SCRAM_LSB;
#endif // RADIO_AX5043

#if defined RADIO_AX5044 || defined RADIO_AX5045
        i = AXRADIO_MODE_STREAM_TRANSMIT_SCRAM_PN17;
#endif // RADIO_AX5044
        break;

    case TX_PN15:
#ifdef RADIO_AX5043
        i = AXRADIO_MODE_STREAM_TRANSMIT_UNENC_LSB;
#endif // RADIO_AX5043


#if defined RADIO_AX5044 || defined RADIO_AX5045
        i = AXRADIO_MODE_STREAM_TRANSMIT_SCRAM_PN15;
#endif //RADIO_AX5044

        break;
    case TX_PN9:
#ifdef RADIO_AX5043
        i = AXRADIO_MODE_STREAM_TRANSMIT_UNENC_LSB;
#endif // RADIO_AX5043
#if defined RADIO_AX5044 || defined RADIO_AX5045
        i = AXRADIO_MODE_STREAM_TRANSMIT_SCRAM_PN9;
#endif // RADIO_AX5044,5045

        break;

    default:
        i = AXRADIO_MODE_STREAM_TRANSMIT_UNENC;
        break;
    }

    i = axradio_set_mode(i);

    if (i != AXRADIO_ERR_NOERROR)
    {
        display_radio_error(i);
#ifdef USE_DBGLINK
        dbglink_display_radio_error(i);
#endif /* USE_DBGLINK */

        for (;;)
            enter_sleep();
    }

    scr.w = ~0U;
    display_clear(0x00, 16);
    display_clear(0x40, 16);
    display_setpos(0x00);

    switch (BASICTESTS)
    {
    case TX_RANDOM_PATTERN:
        display_writestr("TX RND, PA ");
        break;

    case TX_PN17:
        display_writestr("TX PN17, PA ");
        break;

    case TX_PN15:
        display_writestr("TX PN15, PA ");
        break;

    case TX_PN9:
        display_writestr("TX PN9, PA ");
        break;

    default:
        display_writestr("TX PAT, PA ");
        break;
    }

    if(axradio_get_transmitter_pa_type() == AXRADIO_DIFFERENTIAL_PA)
        display_writestr( "DI ");
    else if(axradio_get_transmitter_pa_type() == AXRADIO_SINGLE_ENDED_PA)
        display_writestr( "SE ");
}

void set_receiveber(void)
{
    uint8_t i;

    switch (BASICTESTS)
    {
    case RX_PN17:
#ifdef RADIO_AX5043
        i = AXRADIO_MODE_STREAM_RECEIVE_SCRAM_LSB;

#endif // RADIO_AX5043
#if defined RADIO_AX5044 || defined RADIO_AX5045
        i = AXRADIO_MODE_STREAM_RECEIVE_SCRAM_PN17;
#endif // RADIO_AX5044,5045

        break;

    case RX_PN15:
#ifdef RADIO_AX5043
        i = AXRADIO_MODE_STREAM_RECEIVE_UNENC_LSB;
#endif // RADIO_AX5043
#if defined RADIO_AX5044 || defined RADIO_AX5045
        i = AXRADIO_MODE_STREAM_RECEIVE_SCRAM_PN15;
#endif // RADIO_AX5044,5045
        break;
    case RX_PN9:
#ifdef RADIO_AX5043
        i = AXRADIO_MODE_STREAM_RECEIVE_UNENC_LSB;
#endif // RADIO_AX5043
#if defined RADIO_AX5044 || defined RADIO_AX5045
        i = AXRADIO_MODE_STREAM_RECEIVE_SCRAM_PN9;
#endif // RADIO_AX5044,5045
        break;

    case RX_DATA_OUT_PIN:
        i = AXRADIO_MODE_STREAM_RECEIVE_DATAPIN;
        break;

    default:
        i = AXRADIO_MODE_STREAM_RECEIVE_UNENC;
        break;
    }

    i = axradio_set_mode(i);

    if (i != AXRADIO_ERR_NOERROR)
    {
        display_radio_error(i);
#ifdef USE_DBGLINK
        dbglink_display_radio_error(i);
#endif /* USE_DBGLINK */

        for (;;)
            enter_sleep();
    }

    display_clear(0x00, 16);
    display_clear(0x40, 16);
    display_setpos(0x00);
    display_writestr("RX");

    display_setpos(0x40);
    display_writestr("BER=?");

    display_setpos(0x0A);
    display_writestr("R:");

    bytes = NUMBYTES;
    errors = 0;
    errors2 = 0;
    acquire_agc = 1;
}

void enable_radio_interrupt_in_mcu_pin(void)
{
	IE_4 = 1;
}

void disable_radio_interrupt_in_mcu_pin(void)
{
	IE_4 = 0;
}


uint8_t _sdcc_external_startup(void)
{
    wtimer0_setclksrc(WTIMER0_CLKSRC, WTIMER0_PRESCALER);
    wtimer1_setclksrc(CLKSRC_FRCOSC, 7);

    coldstart = !(PCON & 0x40);
    ANALOGA = 0x18; /* PA[3,4] LPXOSC, other PA are used as digital pins */
    PORTA = 0xC0 | (PINA & 0x25); 	/* pull-up for PA[6,7] which are not bonded, no pull up for PA[3,4] (LPXOSC). Output 0 in PA[0,1,2,5] to prevent current consumption in all DIP switch states */
    /* init LEDs to previous (frozen) state */
    PORTB = 0xFE; /*PB[0,1]  (LCD RS, LCD RST) are overwritten by lcd2_portinit(), enable pull-ups for PB[2..7]  (PB[2,3] for buttons, PB[4..7] unused) */
    PORTC = 0xF3 | (PINC & 0x08); 	/* set PC0 = 1 (LCD SEL), PC1 = 1 (LCD SCK), PC2 = 0 (LCD MOSI), PC3 =0 (LED), enable pull-ups for PC[4..7] which are not bonded Mind: PORTC[0:1] is set to 0x3 by lcd2_portinit() */
    /* init LEDs to previous (frozen) state */
    PORTR = 0xCB; /* overwritten by ax5044_45_reset, ax5044_45_comminit() */

    DIRA = 0x27; /* output 0 on PA[0,1,2,5] to prevent current consumption in all DIP switch states. Other PA are inputs, PA[3,4] (LPXOSC) must have disabled digital output drivers */
    DIRB = 0x03; /* PB[0,1] are outputs (LCD RS, LCD RST), PB[2..7] are inputs (PB[2,3] for buttons,  PB[4..7]  unused) */
    DIRC = 0x0F; /* PC[0..3] are outputs (LCD SEL, LCD,SCK, LCD MOSI, LED), PC[4..7] are inputs (not bonded). */
    DIRR = 0x15; /* overwritten by ax5044_45_reset, ax5044_45_comminit() */

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
    criticalsection_t crit;
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

        display_init();
        display_setpos(0);

        i = axradio_init();             /* to be fixed PB3 to PC4 */

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

            goto terminate_error;
        }

        display_writestr(radio_lcd_display);
#ifdef USE_DBGLINK

        if (DBGLNKSTAT & 0x10)
            dbglink_writestr(radio_lcd_display);

#endif /* USE_DBGLINK */
#ifdef USE_DBGLINK
        if (DBGLNKSTAT & 0x10)
        {
            dbglink_writestr("RNG=");
            dbglink_writenum16(axradio_get_pllrange(), 4, 0);
            {
                uint8_t x = axradio_get_pllvcoi();

                if (x & 0x80)
                {
                    dbglink_writestr("\nVCOI=");
                    dbglink_writehex16(x, 2, 0);
                }
            }
            dbglink_writestr("\n\n");
        }

#endif  /* RADIO_MODE */
#ifdef USE_DISPLAY
        display_writestr("RNG=");
        display_writenum16(axradio_get_pllrange(), 2, 0);     /* verify lcd2_writenum16 in libaxdvk2 */
        {
            uint8_t x = axradio_get_pllvcoi();

            if (x & 0x80)
            {
                display_writestr(" VCOI=");
                display_writehex16(x, 2, 0);
            }
        }
        delay_ms(1000); /* just to show PLL RNG */
#endif /* USE_DISPLAY */
    }
    else
    {
        /*  Warm Start */
        axradio_commsleepexit();
        IE_4 = 1; /* enable radio interrupt */
    }

    axradio_setup_pincfg2();

/* *.*.*. OreSat */
    delay_ms(500);
    synth_init(); //initialize synthesizer.
    delay_ms(500);

    switch (BASICTESTS)
    {
    case TX_CW:
        set_cw();
        break;

    /* pattern (0101) */
    case TX_1010 :
        set_transmit();
        break;

    /* random */
    case TX_RANDOM_PATTERN :
        set_transmit();
        break;

    case RX_1010 :
    default:
        set_receiveber();
        break;

    /* PN17 */
    case TX_PN17 :
        set_transmit();
        break;

    case RX_PN17 :
        set_receiveber();
        break;

    /* PN15 */
    case TX_PN15 :
        set_transmit();
        break;

    case RX_PN15 :
        set_receiveber();
        break;

    /* PN9 */
    case TX_PN9 :
        set_transmit();
        break;

    case RX_PN9 :
        set_receiveber();
        break;

    case RX_DATA_OUT_PIN : /* data pin */
        set_receiveber();
        break;
        /* TX pattern  */
    case TX_USER_DEF_PATTERN :
        set_transmit();
        break;
    }

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
