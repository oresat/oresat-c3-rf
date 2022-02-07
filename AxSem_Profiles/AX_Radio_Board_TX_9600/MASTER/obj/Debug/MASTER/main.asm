;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.0 #9615 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl __sdcc_external_startup
	.globl _lcd2_display_radio_error
	.globl _delay_ms
	.globl _memcpy
	.globl _lcd2_writehex16
	.globl _lcd2_writenum16
	.globl _lcd2_writestr
	.globl _lcd2_clear
	.globl _lcd2_setpos
	.globl _lcd2_portinit
	.globl _lcd2_init
	.globl _lcd2_txidle
	.globl _wtimer0_correctinterval
	.globl _wtimer0_addrelative
	.globl _wtimer0_addabsolute
	.globl _wtimer_runcallbacks
	.globl _wtimer_idle
	.globl _wtimer_init
	.globl _wtimer1_setconfig
	.globl _wtimer0_setconfig
	.globl _flash_apply_calibration
	.globl _axradio_commsleepexit
	.globl _axradio_setup_pincfg2
	.globl _axradio_setup_pincfg1
	.globl _axradio_transmit
	.globl _axradio_set_default_remote_address
	.globl _axradio_set_local_address
	.globl _axradio_get_pllvcoi
	.globl _axradio_get_pllrange
	.globl _axradio_set_mode
	.globl _axradio_cansleep
	.globl _axradio_init
	.globl _PORTC_7
	.globl _PORTC_6
	.globl _PORTC_5
	.globl _PORTC_4
	.globl _PORTC_3
	.globl _PORTC_2
	.globl _PORTC_1
	.globl _PORTC_0
	.globl _PORTB_7
	.globl _PORTB_6
	.globl _PORTB_5
	.globl _PORTB_4
	.globl _PORTB_3
	.globl _PORTB_2
	.globl _PORTB_1
	.globl _PORTB_0
	.globl _PORTA_7
	.globl _PORTA_6
	.globl _PORTA_5
	.globl _PORTA_4
	.globl _PORTA_3
	.globl _PORTA_2
	.globl _PORTA_1
	.globl _PORTA_0
	.globl _PINC_7
	.globl _PINC_6
	.globl _PINC_5
	.globl _PINC_4
	.globl _PINC_3
	.globl _PINC_2
	.globl _PINC_1
	.globl _PINC_0
	.globl _PINB_7
	.globl _PINB_6
	.globl _PINB_5
	.globl _PINB_4
	.globl _PINB_3
	.globl _PINB_2
	.globl _PINB_1
	.globl _PINB_0
	.globl _PINA_7
	.globl _PINA_6
	.globl _PINA_5
	.globl _PINA_4
	.globl _PINA_3
	.globl _PINA_2
	.globl _PINA_1
	.globl _PINA_0
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _IP_7
	.globl _IP_6
	.globl _IP_5
	.globl _IP_4
	.globl _IP_3
	.globl _IP_2
	.globl _IP_1
	.globl _IP_0
	.globl _EA
	.globl _IE_7
	.globl _IE_6
	.globl _IE_5
	.globl _IE_4
	.globl _IE_3
	.globl _IE_2
	.globl _IE_1
	.globl _IE_0
	.globl _EIP_7
	.globl _EIP_6
	.globl _EIP_5
	.globl _EIP_4
	.globl _EIP_3
	.globl _EIP_2
	.globl _EIP_1
	.globl _EIP_0
	.globl _EIE_7
	.globl _EIE_6
	.globl _EIE_5
	.globl _EIE_4
	.globl _EIE_3
	.globl _EIE_2
	.globl _EIE_1
	.globl _EIE_0
	.globl _E2IP_7
	.globl _E2IP_6
	.globl _E2IP_5
	.globl _E2IP_4
	.globl _E2IP_3
	.globl _E2IP_2
	.globl _E2IP_1
	.globl _E2IP_0
	.globl _E2IE_7
	.globl _E2IE_6
	.globl _E2IE_5
	.globl _E2IE_4
	.globl _E2IE_3
	.globl _E2IE_2
	.globl _E2IE_1
	.globl _E2IE_0
	.globl _B_7
	.globl _B_6
	.globl _B_5
	.globl _B_4
	.globl _B_3
	.globl _B_2
	.globl _B_1
	.globl _B_0
	.globl _ACC_7
	.globl _ACC_6
	.globl _ACC_5
	.globl _ACC_4
	.globl _ACC_3
	.globl _ACC_2
	.globl _ACC_1
	.globl _ACC_0
	.globl _WTSTAT
	.globl _WTIRQEN
	.globl _WTEVTD
	.globl _WTEVTD1
	.globl _WTEVTD0
	.globl _WTEVTC
	.globl _WTEVTC1
	.globl _WTEVTC0
	.globl _WTEVTB
	.globl _WTEVTB1
	.globl _WTEVTB0
	.globl _WTEVTA
	.globl _WTEVTA1
	.globl _WTEVTA0
	.globl _WTCNTR1
	.globl _WTCNTB
	.globl _WTCNTB1
	.globl _WTCNTB0
	.globl _WTCNTA
	.globl _WTCNTA1
	.globl _WTCNTA0
	.globl _WTCFGB
	.globl _WTCFGA
	.globl _WDTRESET
	.globl _WDTCFG
	.globl _U1STATUS
	.globl _U1SHREG
	.globl _U1MODE
	.globl _U1CTRL
	.globl _U0STATUS
	.globl _U0SHREG
	.globl _U0MODE
	.globl _U0CTRL
	.globl _T2STATUS
	.globl _T2PERIOD
	.globl _T2PERIOD1
	.globl _T2PERIOD0
	.globl _T2MODE
	.globl _T2CNT
	.globl _T2CNT1
	.globl _T2CNT0
	.globl _T2CLKSRC
	.globl _T1STATUS
	.globl _T1PERIOD
	.globl _T1PERIOD1
	.globl _T1PERIOD0
	.globl _T1MODE
	.globl _T1CNT
	.globl _T1CNT1
	.globl _T1CNT0
	.globl _T1CLKSRC
	.globl _T0STATUS
	.globl _T0PERIOD
	.globl _T0PERIOD1
	.globl _T0PERIOD0
	.globl _T0MODE
	.globl _T0CNT
	.globl _T0CNT1
	.globl _T0CNT0
	.globl _T0CLKSRC
	.globl _SPSTATUS
	.globl _SPSHREG
	.globl _SPMODE
	.globl _SPCLKSRC
	.globl _RADIOSTAT
	.globl _RADIOSTAT1
	.globl _RADIOSTAT0
	.globl _RADIODATA
	.globl _RADIODATA3
	.globl _RADIODATA2
	.globl _RADIODATA1
	.globl _RADIODATA0
	.globl _RADIOADDR
	.globl _RADIOADDR1
	.globl _RADIOADDR0
	.globl _RADIOACC
	.globl _OC1STATUS
	.globl _OC1PIN
	.globl _OC1MODE
	.globl _OC1COMP
	.globl _OC1COMP1
	.globl _OC1COMP0
	.globl _OC0STATUS
	.globl _OC0PIN
	.globl _OC0MODE
	.globl _OC0COMP
	.globl _OC0COMP1
	.globl _OC0COMP0
	.globl _NVSTATUS
	.globl _NVKEY
	.globl _NVDATA
	.globl _NVDATA1
	.globl _NVDATA0
	.globl _NVADDR
	.globl _NVADDR1
	.globl _NVADDR0
	.globl _IC1STATUS
	.globl _IC1MODE
	.globl _IC1CAPT
	.globl _IC1CAPT1
	.globl _IC1CAPT0
	.globl _IC0STATUS
	.globl _IC0MODE
	.globl _IC0CAPT
	.globl _IC0CAPT1
	.globl _IC0CAPT0
	.globl _PORTR
	.globl _PORTC
	.globl _PORTB
	.globl _PORTA
	.globl _PINR
	.globl _PINC
	.globl _PINB
	.globl _PINA
	.globl _DIRR
	.globl _DIRC
	.globl _DIRB
	.globl _DIRA
	.globl _DBGLNKSTAT
	.globl _DBGLNKBUF
	.globl _CODECONFIG
	.globl _CLKSTAT
	.globl _CLKCON
	.globl _ANALOGCOMP
	.globl _ADCCONV
	.globl _ADCCLKSRC
	.globl _ADCCH3CONFIG
	.globl _ADCCH2CONFIG
	.globl _ADCCH1CONFIG
	.globl _ADCCH0CONFIG
	.globl __XPAGE
	.globl _XPAGE
	.globl _SP
	.globl _PSW
	.globl _PCON
	.globl _IP
	.globl _IE
	.globl _EIP
	.globl _EIE
	.globl _E2IP
	.globl _E2IE
	.globl _DPS
	.globl _DPTR1
	.globl _DPTR0
	.globl _DPL1
	.globl _DPL
	.globl _DPH1
	.globl _DPH
	.globl _B
	.globl _ACC
	.globl _wakeup_desc
	.globl _XTALREADY
	.globl _XTALOSC
	.globl _XTALAMPL
	.globl _SILICONREV
	.globl _SCRATCH3
	.globl _SCRATCH2
	.globl _SCRATCH1
	.globl _SCRATCH0
	.globl _RADIOMUX
	.globl _RADIOFSTATADDR
	.globl _RADIOFSTATADDR1
	.globl _RADIOFSTATADDR0
	.globl _RADIOFDATAADDR
	.globl _RADIOFDATAADDR1
	.globl _RADIOFDATAADDR0
	.globl _OSCRUN
	.globl _OSCREADY
	.globl _OSCFORCERUN
	.globl _OSCCALIB
	.globl _MISCCTRL
	.globl _LPXOSCGM
	.globl _LPOSCREF
	.globl _LPOSCREF1
	.globl _LPOSCREF0
	.globl _LPOSCPER
	.globl _LPOSCPER1
	.globl _LPOSCPER0
	.globl _LPOSCKFILT
	.globl _LPOSCKFILT1
	.globl _LPOSCKFILT0
	.globl _LPOSCFREQ
	.globl _LPOSCFREQ1
	.globl _LPOSCFREQ0
	.globl _LPOSCCONFIG
	.globl _PINSEL
	.globl _PINCHGC
	.globl _PINCHGB
	.globl _PINCHGA
	.globl _PALTRADIO
	.globl _PALTC
	.globl _PALTB
	.globl _PALTA
	.globl _INTCHGC
	.globl _INTCHGB
	.globl _INTCHGA
	.globl _EXTIRQ
	.globl _GPIOENABLE
	.globl _ANALOGA
	.globl _FRCOSCREF
	.globl _FRCOSCREF1
	.globl _FRCOSCREF0
	.globl _FRCOSCPER
	.globl _FRCOSCPER1
	.globl _FRCOSCPER0
	.globl _FRCOSCKFILT
	.globl _FRCOSCKFILT1
	.globl _FRCOSCKFILT0
	.globl _FRCOSCFREQ
	.globl _FRCOSCFREQ1
	.globl _FRCOSCFREQ0
	.globl _FRCOSCCTRL
	.globl _FRCOSCCONFIG
	.globl _DMA1CONFIG
	.globl _DMA1ADDR
	.globl _DMA1ADDR1
	.globl _DMA1ADDR0
	.globl _DMA0CONFIG
	.globl _DMA0ADDR
	.globl _DMA0ADDR1
	.globl _DMA0ADDR0
	.globl _ADCTUNE2
	.globl _ADCTUNE1
	.globl _ADCTUNE0
	.globl _ADCCH3VAL
	.globl _ADCCH3VAL1
	.globl _ADCCH3VAL0
	.globl _ADCCH2VAL
	.globl _ADCCH2VAL1
	.globl _ADCCH2VAL0
	.globl _ADCCH1VAL
	.globl _ADCCH1VAL1
	.globl _ADCCH1VAL0
	.globl _ADCCH0VAL
	.globl _ADCCH0VAL1
	.globl _ADCCH0VAL0
	.globl _coldstart
	.globl _pkt_counter
	.globl _axradio_statuschange
	.globl _enable_radio_interrupt_in_mcu_pin
	.globl _disable_radio_interrupt_in_mcu_pin
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$ACC$0$0 == 0x00e0
_ACC	=	0x00e0
G$B$0$0 == 0x00f0
_B	=	0x00f0
G$DPH$0$0 == 0x0083
_DPH	=	0x0083
G$DPH1$0$0 == 0x0085
_DPH1	=	0x0085
G$DPL$0$0 == 0x0082
_DPL	=	0x0082
G$DPL1$0$0 == 0x0084
_DPL1	=	0x0084
G$DPTR0$0$0 == 0x8382
_DPTR0	=	0x8382
G$DPTR1$0$0 == 0x8584
_DPTR1	=	0x8584
G$DPS$0$0 == 0x0086
_DPS	=	0x0086
G$E2IE$0$0 == 0x00a0
_E2IE	=	0x00a0
G$E2IP$0$0 == 0x00c0
_E2IP	=	0x00c0
G$EIE$0$0 == 0x0098
_EIE	=	0x0098
G$EIP$0$0 == 0x00b0
_EIP	=	0x00b0
G$IE$0$0 == 0x00a8
_IE	=	0x00a8
G$IP$0$0 == 0x00b8
_IP	=	0x00b8
G$PCON$0$0 == 0x0087
_PCON	=	0x0087
G$PSW$0$0 == 0x00d0
_PSW	=	0x00d0
G$SP$0$0 == 0x0081
_SP	=	0x0081
G$XPAGE$0$0 == 0x00d9
_XPAGE	=	0x00d9
G$_XPAGE$0$0 == 0x00d9
__XPAGE	=	0x00d9
G$ADCCH0CONFIG$0$0 == 0x00ca
_ADCCH0CONFIG	=	0x00ca
G$ADCCH1CONFIG$0$0 == 0x00cb
_ADCCH1CONFIG	=	0x00cb
G$ADCCH2CONFIG$0$0 == 0x00d2
_ADCCH2CONFIG	=	0x00d2
G$ADCCH3CONFIG$0$0 == 0x00d3
_ADCCH3CONFIG	=	0x00d3
G$ADCCLKSRC$0$0 == 0x00d1
_ADCCLKSRC	=	0x00d1
G$ADCCONV$0$0 == 0x00c9
_ADCCONV	=	0x00c9
G$ANALOGCOMP$0$0 == 0x00e1
_ANALOGCOMP	=	0x00e1
G$CLKCON$0$0 == 0x00c6
_CLKCON	=	0x00c6
G$CLKSTAT$0$0 == 0x00c7
_CLKSTAT	=	0x00c7
G$CODECONFIG$0$0 == 0x0097
_CODECONFIG	=	0x0097
G$DBGLNKBUF$0$0 == 0x00e3
_DBGLNKBUF	=	0x00e3
G$DBGLNKSTAT$0$0 == 0x00e2
_DBGLNKSTAT	=	0x00e2
G$DIRA$0$0 == 0x0089
_DIRA	=	0x0089
G$DIRB$0$0 == 0x008a
_DIRB	=	0x008a
G$DIRC$0$0 == 0x008b
_DIRC	=	0x008b
G$DIRR$0$0 == 0x008e
_DIRR	=	0x008e
G$PINA$0$0 == 0x00c8
_PINA	=	0x00c8
G$PINB$0$0 == 0x00e8
_PINB	=	0x00e8
G$PINC$0$0 == 0x00f8
_PINC	=	0x00f8
G$PINR$0$0 == 0x008d
_PINR	=	0x008d
G$PORTA$0$0 == 0x0080
_PORTA	=	0x0080
G$PORTB$0$0 == 0x0088
_PORTB	=	0x0088
G$PORTC$0$0 == 0x0090
_PORTC	=	0x0090
G$PORTR$0$0 == 0x008c
_PORTR	=	0x008c
G$IC0CAPT0$0$0 == 0x00ce
_IC0CAPT0	=	0x00ce
G$IC0CAPT1$0$0 == 0x00cf
_IC0CAPT1	=	0x00cf
G$IC0CAPT$0$0 == 0xcfce
_IC0CAPT	=	0xcfce
G$IC0MODE$0$0 == 0x00cc
_IC0MODE	=	0x00cc
G$IC0STATUS$0$0 == 0x00cd
_IC0STATUS	=	0x00cd
G$IC1CAPT0$0$0 == 0x00d6
_IC1CAPT0	=	0x00d6
G$IC1CAPT1$0$0 == 0x00d7
_IC1CAPT1	=	0x00d7
G$IC1CAPT$0$0 == 0xd7d6
_IC1CAPT	=	0xd7d6
G$IC1MODE$0$0 == 0x00d4
_IC1MODE	=	0x00d4
G$IC1STATUS$0$0 == 0x00d5
_IC1STATUS	=	0x00d5
G$NVADDR0$0$0 == 0x0092
_NVADDR0	=	0x0092
G$NVADDR1$0$0 == 0x0093
_NVADDR1	=	0x0093
G$NVADDR$0$0 == 0x9392
_NVADDR	=	0x9392
G$NVDATA0$0$0 == 0x0094
_NVDATA0	=	0x0094
G$NVDATA1$0$0 == 0x0095
_NVDATA1	=	0x0095
G$NVDATA$0$0 == 0x9594
_NVDATA	=	0x9594
G$NVKEY$0$0 == 0x0096
_NVKEY	=	0x0096
G$NVSTATUS$0$0 == 0x0091
_NVSTATUS	=	0x0091
G$OC0COMP0$0$0 == 0x00bc
_OC0COMP0	=	0x00bc
G$OC0COMP1$0$0 == 0x00bd
_OC0COMP1	=	0x00bd
G$OC0COMP$0$0 == 0xbdbc
_OC0COMP	=	0xbdbc
G$OC0MODE$0$0 == 0x00b9
_OC0MODE	=	0x00b9
G$OC0PIN$0$0 == 0x00ba
_OC0PIN	=	0x00ba
G$OC0STATUS$0$0 == 0x00bb
_OC0STATUS	=	0x00bb
G$OC1COMP0$0$0 == 0x00c4
_OC1COMP0	=	0x00c4
G$OC1COMP1$0$0 == 0x00c5
_OC1COMP1	=	0x00c5
G$OC1COMP$0$0 == 0xc5c4
_OC1COMP	=	0xc5c4
G$OC1MODE$0$0 == 0x00c1
_OC1MODE	=	0x00c1
G$OC1PIN$0$0 == 0x00c2
_OC1PIN	=	0x00c2
G$OC1STATUS$0$0 == 0x00c3
_OC1STATUS	=	0x00c3
G$RADIOACC$0$0 == 0x00b1
_RADIOACC	=	0x00b1
G$RADIOADDR0$0$0 == 0x00b3
_RADIOADDR0	=	0x00b3
G$RADIOADDR1$0$0 == 0x00b2
_RADIOADDR1	=	0x00b2
G$RADIOADDR$0$0 == 0xb2b3
_RADIOADDR	=	0xb2b3
G$RADIODATA0$0$0 == 0x00b7
_RADIODATA0	=	0x00b7
G$RADIODATA1$0$0 == 0x00b6
_RADIODATA1	=	0x00b6
G$RADIODATA2$0$0 == 0x00b5
_RADIODATA2	=	0x00b5
G$RADIODATA3$0$0 == 0x00b4
_RADIODATA3	=	0x00b4
G$RADIODATA$0$0 == 0xb4b5b6b7
_RADIODATA	=	0xb4b5b6b7
G$RADIOSTAT0$0$0 == 0x00be
_RADIOSTAT0	=	0x00be
G$RADIOSTAT1$0$0 == 0x00bf
_RADIOSTAT1	=	0x00bf
G$RADIOSTAT$0$0 == 0xbfbe
_RADIOSTAT	=	0xbfbe
G$SPCLKSRC$0$0 == 0x00df
_SPCLKSRC	=	0x00df
G$SPMODE$0$0 == 0x00dc
_SPMODE	=	0x00dc
G$SPSHREG$0$0 == 0x00de
_SPSHREG	=	0x00de
G$SPSTATUS$0$0 == 0x00dd
_SPSTATUS	=	0x00dd
G$T0CLKSRC$0$0 == 0x009a
_T0CLKSRC	=	0x009a
G$T0CNT0$0$0 == 0x009c
_T0CNT0	=	0x009c
G$T0CNT1$0$0 == 0x009d
_T0CNT1	=	0x009d
G$T0CNT$0$0 == 0x9d9c
_T0CNT	=	0x9d9c
G$T0MODE$0$0 == 0x0099
_T0MODE	=	0x0099
G$T0PERIOD0$0$0 == 0x009e
_T0PERIOD0	=	0x009e
G$T0PERIOD1$0$0 == 0x009f
_T0PERIOD1	=	0x009f
G$T0PERIOD$0$0 == 0x9f9e
_T0PERIOD	=	0x9f9e
G$T0STATUS$0$0 == 0x009b
_T0STATUS	=	0x009b
G$T1CLKSRC$0$0 == 0x00a2
_T1CLKSRC	=	0x00a2
G$T1CNT0$0$0 == 0x00a4
_T1CNT0	=	0x00a4
G$T1CNT1$0$0 == 0x00a5
_T1CNT1	=	0x00a5
G$T1CNT$0$0 == 0xa5a4
_T1CNT	=	0xa5a4
G$T1MODE$0$0 == 0x00a1
_T1MODE	=	0x00a1
G$T1PERIOD0$0$0 == 0x00a6
_T1PERIOD0	=	0x00a6
G$T1PERIOD1$0$0 == 0x00a7
_T1PERIOD1	=	0x00a7
G$T1PERIOD$0$0 == 0xa7a6
_T1PERIOD	=	0xa7a6
G$T1STATUS$0$0 == 0x00a3
_T1STATUS	=	0x00a3
G$T2CLKSRC$0$0 == 0x00aa
_T2CLKSRC	=	0x00aa
G$T2CNT0$0$0 == 0x00ac
_T2CNT0	=	0x00ac
G$T2CNT1$0$0 == 0x00ad
_T2CNT1	=	0x00ad
G$T2CNT$0$0 == 0xadac
_T2CNT	=	0xadac
G$T2MODE$0$0 == 0x00a9
_T2MODE	=	0x00a9
G$T2PERIOD0$0$0 == 0x00ae
_T2PERIOD0	=	0x00ae
G$T2PERIOD1$0$0 == 0x00af
_T2PERIOD1	=	0x00af
G$T2PERIOD$0$0 == 0xafae
_T2PERIOD	=	0xafae
G$T2STATUS$0$0 == 0x00ab
_T2STATUS	=	0x00ab
G$U0CTRL$0$0 == 0x00e4
_U0CTRL	=	0x00e4
G$U0MODE$0$0 == 0x00e7
_U0MODE	=	0x00e7
G$U0SHREG$0$0 == 0x00e6
_U0SHREG	=	0x00e6
G$U0STATUS$0$0 == 0x00e5
_U0STATUS	=	0x00e5
G$U1CTRL$0$0 == 0x00ec
_U1CTRL	=	0x00ec
G$U1MODE$0$0 == 0x00ef
_U1MODE	=	0x00ef
G$U1SHREG$0$0 == 0x00ee
_U1SHREG	=	0x00ee
G$U1STATUS$0$0 == 0x00ed
_U1STATUS	=	0x00ed
G$WDTCFG$0$0 == 0x00da
_WDTCFG	=	0x00da
G$WDTRESET$0$0 == 0x00db
_WDTRESET	=	0x00db
G$WTCFGA$0$0 == 0x00f1
_WTCFGA	=	0x00f1
G$WTCFGB$0$0 == 0x00f9
_WTCFGB	=	0x00f9
G$WTCNTA0$0$0 == 0x00f2
_WTCNTA0	=	0x00f2
G$WTCNTA1$0$0 == 0x00f3
_WTCNTA1	=	0x00f3
G$WTCNTA$0$0 == 0xf3f2
_WTCNTA	=	0xf3f2
G$WTCNTB0$0$0 == 0x00fa
_WTCNTB0	=	0x00fa
G$WTCNTB1$0$0 == 0x00fb
_WTCNTB1	=	0x00fb
G$WTCNTB$0$0 == 0xfbfa
_WTCNTB	=	0xfbfa
G$WTCNTR1$0$0 == 0x00eb
_WTCNTR1	=	0x00eb
G$WTEVTA0$0$0 == 0x00f4
_WTEVTA0	=	0x00f4
G$WTEVTA1$0$0 == 0x00f5
_WTEVTA1	=	0x00f5
G$WTEVTA$0$0 == 0xf5f4
_WTEVTA	=	0xf5f4
G$WTEVTB0$0$0 == 0x00f6
_WTEVTB0	=	0x00f6
G$WTEVTB1$0$0 == 0x00f7
_WTEVTB1	=	0x00f7
G$WTEVTB$0$0 == 0xf7f6
_WTEVTB	=	0xf7f6
G$WTEVTC0$0$0 == 0x00fc
_WTEVTC0	=	0x00fc
G$WTEVTC1$0$0 == 0x00fd
_WTEVTC1	=	0x00fd
G$WTEVTC$0$0 == 0xfdfc
_WTEVTC	=	0xfdfc
G$WTEVTD0$0$0 == 0x00fe
_WTEVTD0	=	0x00fe
G$WTEVTD1$0$0 == 0x00ff
_WTEVTD1	=	0x00ff
G$WTEVTD$0$0 == 0xfffe
_WTEVTD	=	0xfffe
G$WTIRQEN$0$0 == 0x00e9
_WTIRQEN	=	0x00e9
G$WTSTAT$0$0 == 0x00ea
_WTSTAT	=	0x00ea
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$ACC_0$0$0 == 0x00e0
_ACC_0	=	0x00e0
G$ACC_1$0$0 == 0x00e1
_ACC_1	=	0x00e1
G$ACC_2$0$0 == 0x00e2
_ACC_2	=	0x00e2
G$ACC_3$0$0 == 0x00e3
_ACC_3	=	0x00e3
G$ACC_4$0$0 == 0x00e4
_ACC_4	=	0x00e4
G$ACC_5$0$0 == 0x00e5
_ACC_5	=	0x00e5
G$ACC_6$0$0 == 0x00e6
_ACC_6	=	0x00e6
G$ACC_7$0$0 == 0x00e7
_ACC_7	=	0x00e7
G$B_0$0$0 == 0x00f0
_B_0	=	0x00f0
G$B_1$0$0 == 0x00f1
_B_1	=	0x00f1
G$B_2$0$0 == 0x00f2
_B_2	=	0x00f2
G$B_3$0$0 == 0x00f3
_B_3	=	0x00f3
G$B_4$0$0 == 0x00f4
_B_4	=	0x00f4
G$B_5$0$0 == 0x00f5
_B_5	=	0x00f5
G$B_6$0$0 == 0x00f6
_B_6	=	0x00f6
G$B_7$0$0 == 0x00f7
_B_7	=	0x00f7
G$E2IE_0$0$0 == 0x00a0
_E2IE_0	=	0x00a0
G$E2IE_1$0$0 == 0x00a1
_E2IE_1	=	0x00a1
G$E2IE_2$0$0 == 0x00a2
_E2IE_2	=	0x00a2
G$E2IE_3$0$0 == 0x00a3
_E2IE_3	=	0x00a3
G$E2IE_4$0$0 == 0x00a4
_E2IE_4	=	0x00a4
G$E2IE_5$0$0 == 0x00a5
_E2IE_5	=	0x00a5
G$E2IE_6$0$0 == 0x00a6
_E2IE_6	=	0x00a6
G$E2IE_7$0$0 == 0x00a7
_E2IE_7	=	0x00a7
G$E2IP_0$0$0 == 0x00c0
_E2IP_0	=	0x00c0
G$E2IP_1$0$0 == 0x00c1
_E2IP_1	=	0x00c1
G$E2IP_2$0$0 == 0x00c2
_E2IP_2	=	0x00c2
G$E2IP_3$0$0 == 0x00c3
_E2IP_3	=	0x00c3
G$E2IP_4$0$0 == 0x00c4
_E2IP_4	=	0x00c4
G$E2IP_5$0$0 == 0x00c5
_E2IP_5	=	0x00c5
G$E2IP_6$0$0 == 0x00c6
_E2IP_6	=	0x00c6
G$E2IP_7$0$0 == 0x00c7
_E2IP_7	=	0x00c7
G$EIE_0$0$0 == 0x0098
_EIE_0	=	0x0098
G$EIE_1$0$0 == 0x0099
_EIE_1	=	0x0099
G$EIE_2$0$0 == 0x009a
_EIE_2	=	0x009a
G$EIE_3$0$0 == 0x009b
_EIE_3	=	0x009b
G$EIE_4$0$0 == 0x009c
_EIE_4	=	0x009c
G$EIE_5$0$0 == 0x009d
_EIE_5	=	0x009d
G$EIE_6$0$0 == 0x009e
_EIE_6	=	0x009e
G$EIE_7$0$0 == 0x009f
_EIE_7	=	0x009f
G$EIP_0$0$0 == 0x00b0
_EIP_0	=	0x00b0
G$EIP_1$0$0 == 0x00b1
_EIP_1	=	0x00b1
G$EIP_2$0$0 == 0x00b2
_EIP_2	=	0x00b2
G$EIP_3$0$0 == 0x00b3
_EIP_3	=	0x00b3
G$EIP_4$0$0 == 0x00b4
_EIP_4	=	0x00b4
G$EIP_5$0$0 == 0x00b5
_EIP_5	=	0x00b5
G$EIP_6$0$0 == 0x00b6
_EIP_6	=	0x00b6
G$EIP_7$0$0 == 0x00b7
_EIP_7	=	0x00b7
G$IE_0$0$0 == 0x00a8
_IE_0	=	0x00a8
G$IE_1$0$0 == 0x00a9
_IE_1	=	0x00a9
G$IE_2$0$0 == 0x00aa
_IE_2	=	0x00aa
G$IE_3$0$0 == 0x00ab
_IE_3	=	0x00ab
G$IE_4$0$0 == 0x00ac
_IE_4	=	0x00ac
G$IE_5$0$0 == 0x00ad
_IE_5	=	0x00ad
G$IE_6$0$0 == 0x00ae
_IE_6	=	0x00ae
G$IE_7$0$0 == 0x00af
_IE_7	=	0x00af
G$EA$0$0 == 0x00af
_EA	=	0x00af
G$IP_0$0$0 == 0x00b8
_IP_0	=	0x00b8
G$IP_1$0$0 == 0x00b9
_IP_1	=	0x00b9
G$IP_2$0$0 == 0x00ba
_IP_2	=	0x00ba
G$IP_3$0$0 == 0x00bb
_IP_3	=	0x00bb
G$IP_4$0$0 == 0x00bc
_IP_4	=	0x00bc
G$IP_5$0$0 == 0x00bd
_IP_5	=	0x00bd
G$IP_6$0$0 == 0x00be
_IP_6	=	0x00be
G$IP_7$0$0 == 0x00bf
_IP_7	=	0x00bf
G$P$0$0 == 0x00d0
_P	=	0x00d0
G$F1$0$0 == 0x00d1
_F1	=	0x00d1
G$OV$0$0 == 0x00d2
_OV	=	0x00d2
G$RS0$0$0 == 0x00d3
_RS0	=	0x00d3
G$RS1$0$0 == 0x00d4
_RS1	=	0x00d4
G$F0$0$0 == 0x00d5
_F0	=	0x00d5
G$AC$0$0 == 0x00d6
_AC	=	0x00d6
G$CY$0$0 == 0x00d7
_CY	=	0x00d7
G$PINA_0$0$0 == 0x00c8
_PINA_0	=	0x00c8
G$PINA_1$0$0 == 0x00c9
_PINA_1	=	0x00c9
G$PINA_2$0$0 == 0x00ca
_PINA_2	=	0x00ca
G$PINA_3$0$0 == 0x00cb
_PINA_3	=	0x00cb
G$PINA_4$0$0 == 0x00cc
_PINA_4	=	0x00cc
G$PINA_5$0$0 == 0x00cd
_PINA_5	=	0x00cd
G$PINA_6$0$0 == 0x00ce
_PINA_6	=	0x00ce
G$PINA_7$0$0 == 0x00cf
_PINA_7	=	0x00cf
G$PINB_0$0$0 == 0x00e8
_PINB_0	=	0x00e8
G$PINB_1$0$0 == 0x00e9
_PINB_1	=	0x00e9
G$PINB_2$0$0 == 0x00ea
_PINB_2	=	0x00ea
G$PINB_3$0$0 == 0x00eb
_PINB_3	=	0x00eb
G$PINB_4$0$0 == 0x00ec
_PINB_4	=	0x00ec
G$PINB_5$0$0 == 0x00ed
_PINB_5	=	0x00ed
G$PINB_6$0$0 == 0x00ee
_PINB_6	=	0x00ee
G$PINB_7$0$0 == 0x00ef
_PINB_7	=	0x00ef
G$PINC_0$0$0 == 0x00f8
_PINC_0	=	0x00f8
G$PINC_1$0$0 == 0x00f9
_PINC_1	=	0x00f9
G$PINC_2$0$0 == 0x00fa
_PINC_2	=	0x00fa
G$PINC_3$0$0 == 0x00fb
_PINC_3	=	0x00fb
G$PINC_4$0$0 == 0x00fc
_PINC_4	=	0x00fc
G$PINC_5$0$0 == 0x00fd
_PINC_5	=	0x00fd
G$PINC_6$0$0 == 0x00fe
_PINC_6	=	0x00fe
G$PINC_7$0$0 == 0x00ff
_PINC_7	=	0x00ff
G$PORTA_0$0$0 == 0x0080
_PORTA_0	=	0x0080
G$PORTA_1$0$0 == 0x0081
_PORTA_1	=	0x0081
G$PORTA_2$0$0 == 0x0082
_PORTA_2	=	0x0082
G$PORTA_3$0$0 == 0x0083
_PORTA_3	=	0x0083
G$PORTA_4$0$0 == 0x0084
_PORTA_4	=	0x0084
G$PORTA_5$0$0 == 0x0085
_PORTA_5	=	0x0085
G$PORTA_6$0$0 == 0x0086
_PORTA_6	=	0x0086
G$PORTA_7$0$0 == 0x0087
_PORTA_7	=	0x0087
G$PORTB_0$0$0 == 0x0088
_PORTB_0	=	0x0088
G$PORTB_1$0$0 == 0x0089
_PORTB_1	=	0x0089
G$PORTB_2$0$0 == 0x008a
_PORTB_2	=	0x008a
G$PORTB_3$0$0 == 0x008b
_PORTB_3	=	0x008b
G$PORTB_4$0$0 == 0x008c
_PORTB_4	=	0x008c
G$PORTB_5$0$0 == 0x008d
_PORTB_5	=	0x008d
G$PORTB_6$0$0 == 0x008e
_PORTB_6	=	0x008e
G$PORTB_7$0$0 == 0x008f
_PORTB_7	=	0x008f
G$PORTC_0$0$0 == 0x0090
_PORTC_0	=	0x0090
G$PORTC_1$0$0 == 0x0091
_PORTC_1	=	0x0091
G$PORTC_2$0$0 == 0x0092
_PORTC_2	=	0x0092
G$PORTC_3$0$0 == 0x0093
_PORTC_3	=	0x0093
G$PORTC_4$0$0 == 0x0094
_PORTC_4	=	0x0094
G$PORTC_5$0$0 == 0x0095
_PORTC_5	=	0x0095
G$PORTC_6$0$0 == 0x0096
_PORTC_6	=	0x0096
G$PORTC_7$0$0 == 0x0097
_PORTC_7	=	0x0097
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
G$pkt_counter$0$0==.
_pkt_counter::
	.ds 2
G$coldstart$0$0==.
_coldstart::
	.ds 1
Lmain.main$saved_button_state$1$405==.
_main_saved_button_state_1_405:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
Lmain._sdcc_external_startup$sloc0$1$0==.
__sdcc_external_startup_sloc0_1_0:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
G$ADCCH0VAL0$0$0 == 0x7020
_ADCCH0VAL0	=	0x7020
G$ADCCH0VAL1$0$0 == 0x7021
_ADCCH0VAL1	=	0x7021
G$ADCCH0VAL$0$0 == 0x7020
_ADCCH0VAL	=	0x7020
G$ADCCH1VAL0$0$0 == 0x7022
_ADCCH1VAL0	=	0x7022
G$ADCCH1VAL1$0$0 == 0x7023
_ADCCH1VAL1	=	0x7023
G$ADCCH1VAL$0$0 == 0x7022
_ADCCH1VAL	=	0x7022
G$ADCCH2VAL0$0$0 == 0x7024
_ADCCH2VAL0	=	0x7024
G$ADCCH2VAL1$0$0 == 0x7025
_ADCCH2VAL1	=	0x7025
G$ADCCH2VAL$0$0 == 0x7024
_ADCCH2VAL	=	0x7024
G$ADCCH3VAL0$0$0 == 0x7026
_ADCCH3VAL0	=	0x7026
G$ADCCH3VAL1$0$0 == 0x7027
_ADCCH3VAL1	=	0x7027
G$ADCCH3VAL$0$0 == 0x7026
_ADCCH3VAL	=	0x7026
G$ADCTUNE0$0$0 == 0x7028
_ADCTUNE0	=	0x7028
G$ADCTUNE1$0$0 == 0x7029
_ADCTUNE1	=	0x7029
G$ADCTUNE2$0$0 == 0x702a
_ADCTUNE2	=	0x702a
G$DMA0ADDR0$0$0 == 0x7010
_DMA0ADDR0	=	0x7010
G$DMA0ADDR1$0$0 == 0x7011
_DMA0ADDR1	=	0x7011
G$DMA0ADDR$0$0 == 0x7010
_DMA0ADDR	=	0x7010
G$DMA0CONFIG$0$0 == 0x7014
_DMA0CONFIG	=	0x7014
G$DMA1ADDR0$0$0 == 0x7012
_DMA1ADDR0	=	0x7012
G$DMA1ADDR1$0$0 == 0x7013
_DMA1ADDR1	=	0x7013
G$DMA1ADDR$0$0 == 0x7012
_DMA1ADDR	=	0x7012
G$DMA1CONFIG$0$0 == 0x7015
_DMA1CONFIG	=	0x7015
G$FRCOSCCONFIG$0$0 == 0x7070
_FRCOSCCONFIG	=	0x7070
G$FRCOSCCTRL$0$0 == 0x7071
_FRCOSCCTRL	=	0x7071
G$FRCOSCFREQ0$0$0 == 0x7076
_FRCOSCFREQ0	=	0x7076
G$FRCOSCFREQ1$0$0 == 0x7077
_FRCOSCFREQ1	=	0x7077
G$FRCOSCFREQ$0$0 == 0x7076
_FRCOSCFREQ	=	0x7076
G$FRCOSCKFILT0$0$0 == 0x7072
_FRCOSCKFILT0	=	0x7072
G$FRCOSCKFILT1$0$0 == 0x7073
_FRCOSCKFILT1	=	0x7073
G$FRCOSCKFILT$0$0 == 0x7072
_FRCOSCKFILT	=	0x7072
G$FRCOSCPER0$0$0 == 0x7078
_FRCOSCPER0	=	0x7078
G$FRCOSCPER1$0$0 == 0x7079
_FRCOSCPER1	=	0x7079
G$FRCOSCPER$0$0 == 0x7078
_FRCOSCPER	=	0x7078
G$FRCOSCREF0$0$0 == 0x7074
_FRCOSCREF0	=	0x7074
G$FRCOSCREF1$0$0 == 0x7075
_FRCOSCREF1	=	0x7075
G$FRCOSCREF$0$0 == 0x7074
_FRCOSCREF	=	0x7074
G$ANALOGA$0$0 == 0x7007
_ANALOGA	=	0x7007
G$GPIOENABLE$0$0 == 0x700c
_GPIOENABLE	=	0x700c
G$EXTIRQ$0$0 == 0x7003
_EXTIRQ	=	0x7003
G$INTCHGA$0$0 == 0x7000
_INTCHGA	=	0x7000
G$INTCHGB$0$0 == 0x7001
_INTCHGB	=	0x7001
G$INTCHGC$0$0 == 0x7002
_INTCHGC	=	0x7002
G$PALTA$0$0 == 0x7008
_PALTA	=	0x7008
G$PALTB$0$0 == 0x7009
_PALTB	=	0x7009
G$PALTC$0$0 == 0x700a
_PALTC	=	0x700a
G$PALTRADIO$0$0 == 0x7046
_PALTRADIO	=	0x7046
G$PINCHGA$0$0 == 0x7004
_PINCHGA	=	0x7004
G$PINCHGB$0$0 == 0x7005
_PINCHGB	=	0x7005
G$PINCHGC$0$0 == 0x7006
_PINCHGC	=	0x7006
G$PINSEL$0$0 == 0x700b
_PINSEL	=	0x700b
G$LPOSCCONFIG$0$0 == 0x7060
_LPOSCCONFIG	=	0x7060
G$LPOSCFREQ0$0$0 == 0x7066
_LPOSCFREQ0	=	0x7066
G$LPOSCFREQ1$0$0 == 0x7067
_LPOSCFREQ1	=	0x7067
G$LPOSCFREQ$0$0 == 0x7066
_LPOSCFREQ	=	0x7066
G$LPOSCKFILT0$0$0 == 0x7062
_LPOSCKFILT0	=	0x7062
G$LPOSCKFILT1$0$0 == 0x7063
_LPOSCKFILT1	=	0x7063
G$LPOSCKFILT$0$0 == 0x7062
_LPOSCKFILT	=	0x7062
G$LPOSCPER0$0$0 == 0x7068
_LPOSCPER0	=	0x7068
G$LPOSCPER1$0$0 == 0x7069
_LPOSCPER1	=	0x7069
G$LPOSCPER$0$0 == 0x7068
_LPOSCPER	=	0x7068
G$LPOSCREF0$0$0 == 0x7064
_LPOSCREF0	=	0x7064
G$LPOSCREF1$0$0 == 0x7065
_LPOSCREF1	=	0x7065
G$LPOSCREF$0$0 == 0x7064
_LPOSCREF	=	0x7064
G$LPXOSCGM$0$0 == 0x7054
_LPXOSCGM	=	0x7054
G$MISCCTRL$0$0 == 0x7f01
_MISCCTRL	=	0x7f01
G$OSCCALIB$0$0 == 0x7053
_OSCCALIB	=	0x7053
G$OSCFORCERUN$0$0 == 0x7050
_OSCFORCERUN	=	0x7050
G$OSCREADY$0$0 == 0x7052
_OSCREADY	=	0x7052
G$OSCRUN$0$0 == 0x7051
_OSCRUN	=	0x7051
G$RADIOFDATAADDR0$0$0 == 0x7040
_RADIOFDATAADDR0	=	0x7040
G$RADIOFDATAADDR1$0$0 == 0x7041
_RADIOFDATAADDR1	=	0x7041
G$RADIOFDATAADDR$0$0 == 0x7040
_RADIOFDATAADDR	=	0x7040
G$RADIOFSTATADDR0$0$0 == 0x7042
_RADIOFSTATADDR0	=	0x7042
G$RADIOFSTATADDR1$0$0 == 0x7043
_RADIOFSTATADDR1	=	0x7043
G$RADIOFSTATADDR$0$0 == 0x7042
_RADIOFSTATADDR	=	0x7042
G$RADIOMUX$0$0 == 0x7044
_RADIOMUX	=	0x7044
G$SCRATCH0$0$0 == 0x7084
_SCRATCH0	=	0x7084
G$SCRATCH1$0$0 == 0x7085
_SCRATCH1	=	0x7085
G$SCRATCH2$0$0 == 0x7086
_SCRATCH2	=	0x7086
G$SCRATCH3$0$0 == 0x7087
_SCRATCH3	=	0x7087
G$SILICONREV$0$0 == 0x7f00
_SILICONREV	=	0x7f00
G$XTALAMPL$0$0 == 0x7f19
_XTALAMPL	=	0x7f19
G$XTALOSC$0$0 == 0x7f18
_XTALOSC	=	0x7f18
G$XTALREADY$0$0 == 0x7f1a
_XTALREADY	=	0x7f1a
Fmain$flash_deviceid$0$0 == 0xfc06
_flash_deviceid	=	0xfc06
Fmain$flash_calsector$0$0 == 0xfc00
_flash_calsector	=	0xfc00
G$wakeup_desc$0$0==.
_wakeup_desc::
	.ds 8
Lmain.transmit_packet$demo_packet_$1$366==.
_transmit_packet_demo_packet__1_366:
	.ds 18
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	ljmp	_wtimer_irq
	.ds	5
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_axradio_isr
	.ds	5
	reti
	.ds	7
	ljmp	_pwrmgmt_irq
	.ds	5
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_lcd2_irq
	.ds	5
	ljmp	_uart0_irq
	.ds	5
	ljmp	_uart1_irq
	.ds	5
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_dbglink_irq
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;saved_button_state        Allocated with name '_main_saved_button_state_1_405'
;i                         Allocated to registers r7 
;x                         Allocated to registers r6 
;flg                       Allocated to registers r6 
;flg                       Allocated to registers r7 
;------------------------------------------------------------
	G$main$0$0 ==.
	C$main.c$283$1$405 ==.
;	main.c:283: static uint8_t __data saved_button_state = 0xFF;
	mov	_main_saved_button_state_1_405,#0xff
	C$main.c$66$1$405 ==.
;	main.c:66: uint16_t __data pkt_counter = 0;
	clr	a
	mov	_pkt_counter,a
	mov	(_pkt_counter + 1),a
	C$main.c$67$1$405 ==.
;	main.c:67: uint8_t __data coldstart = 1; /* caution: initialization with 1 is necessary! Variables are initialized upon _sdcc_external_startup returning 0 -> the coldstart value returned from _sdcc_external startup does not survive in the coldstart case */
	mov	_coldstart,#0x01
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'pwrmgmt_irq'
;------------------------------------------------------------
;pc                        Allocated to registers r7 
;------------------------------------------------------------
	Fmain$pwrmgmt_irq$0$0 ==.
	C$main.c$74$0$0 ==.
;	main.c:74: static void pwrmgmt_irq(void) __interrupt(INT_POWERMGMT)
;	-----------------------------------------
;	 function pwrmgmt_irq
;	-----------------------------------------
_pwrmgmt_irq:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	push	acc
	push	dpl
	push	dph
	push	ar7
	push	psw
	mov	psw,#0x00
	C$main.c$76$1$0 ==.
;	main.c:76: uint8_t pc = PCON;
	C$main.c$78$1$364 ==.
;	main.c:78: if (!(pc & 0x80))
	mov	a,_PCON
	mov	r7,a
	jb	acc.7,00102$
	C$main.c$79$1$364 ==.
;	main.c:79: return;
	sjmp	00106$
00102$:
	C$main.c$81$1$364 ==.
;	main.c:81: GPIOENABLE = 0;
	mov	dptr,#_GPIOENABLE
	clr	a
	movx	@dptr,a
	C$main.c$82$1$364 ==.
;	main.c:82: IE = EIE = E2IE = 0;
;	1-genFromRTrack replaced	mov	_E2IE,#0x00
	mov	_E2IE,a
;	1-genFromRTrack replaced	mov	_EIE,#0x00
	mov	_EIE,a
;	1-genFromRTrack replaced	mov	_IE,#0x00
	mov	_IE,a
00104$:
	C$main.c$85$1$364 ==.
;	main.c:85: PCON |= 0x01;
	orl	_PCON,#0x01
	sjmp	00104$
00106$:
	pop	psw
	pop	ar7
	pop	dph
	pop	dpl
	pop	acc
	C$main.c$86$1$364 ==.
	XFmain$pwrmgmt_irq$0$0 ==.
	reti
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'transmit_packet'
;------------------------------------------------------------
;demo_packet_              Allocated with name '_transmit_packet_demo_packet__1_366'
;------------------------------------------------------------
	Fmain$transmit_packet$0$0 ==.
	C$main.c$88$1$364 ==.
;	main.c:88: static void transmit_packet(void)
;	-----------------------------------------
;	 function transmit_packet
;	-----------------------------------------
_transmit_packet:
	C$main.c$92$1$366 ==.
;	main.c:92: ++pkt_counter;
	inc	_pkt_counter
	clr	a
	cjne	a,_pkt_counter,00108$
	inc	(_pkt_counter + 1)
00108$:
	C$main.c$93$1$366 ==.
;	main.c:93: memcpy(demo_packet_, demo_packet, sizeof(demo_packet));
	mov	_memcpy_PARM_2,#_demo_packet
	mov	(_memcpy_PARM_2 + 1),#(_demo_packet >> 8)
	mov	(_memcpy_PARM_2 + 2),#0x80
	mov	_memcpy_PARM_3,#0x12
	mov	(_memcpy_PARM_3 + 1),#0x00
	mov	dptr,#_transmit_packet_demo_packet__1_366
	mov	b,#0x00
	lcall	_memcpy
	C$main.c$95$1$366 ==.
;	main.c:95: if (framing_insert_counter)
	mov	dptr,#_framing_insert_counter
	clr	a
	movc	a,@a+dptr
	jz	00102$
	C$main.c$97$2$367 ==.
;	main.c:97: demo_packet_[framing_counter_pos] = pkt_counter & 0xFF ;
	mov	dptr,#_framing_counter_pos
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	add	a,#_transmit_packet_demo_packet__1_366
	mov	dpl,a
	clr	a
	addc	a,#(_transmit_packet_demo_packet__1_366 >> 8)
	mov	dph,a
	mov	r5,_pkt_counter
	mov	r6,#0x00
	mov	a,r5
	movx	@dptr,a
	C$main.c$98$2$367 ==.
;	main.c:98: demo_packet_[framing_counter_pos+1] = (pkt_counter>>8) & 0xFF;
	mov	a,r7
	inc	a
	add	a,#_transmit_packet_demo_packet__1_366
	mov	dpl,a
	clr	a
	addc	a,#(_transmit_packet_demo_packet__1_366 >> 8)
	mov	dph,a
	mov	a,(_pkt_counter + 1)
	mov	r7,a
	movx	@dptr,a
00102$:
	C$main.c$101$1$366 ==.
;	main.c:101: axradio_transmit(&remoteaddr, demo_packet_, sizeof(demo_packet));
	mov	_axradio_transmit_PARM_2,#_transmit_packet_demo_packet__1_366
	mov	(_axradio_transmit_PARM_2 + 1),#(_transmit_packet_demo_packet__1_366 >> 8)
	mov	(_axradio_transmit_PARM_2 + 2),#0x00
	mov	_axradio_transmit_PARM_3,#0x12
	mov	(_axradio_transmit_PARM_3 + 1),#0x00
	mov	dptr,#_remoteaddr
	mov	b,#0x80
	lcall	_axradio_transmit
	C$main.c$102$1$366 ==.
	XFmain$transmit_packet$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'display_transmit_packet'
;------------------------------------------------------------
	Fmain$display_transmit_packet$0$0 ==.
	C$main.c$104$1$366 ==.
;	main.c:104: static void display_transmit_packet(void)
;	-----------------------------------------
;	 function display_transmit_packet
;	-----------------------------------------
_display_transmit_packet:
	C$main.c$106$1$369 ==.
;	main.c:106: if (pkt_counter == 1)
	mov	a,#0x01
	cjne	a,_pkt_counter,00108$
	dec	a
	cjne	a,(_pkt_counter + 1),00108$
	sjmp	00109$
00108$:
	sjmp	00102$
00109$:
	C$main.c$108$2$370 ==.
;	main.c:108: display_setpos(0x40);
	mov	dpl,#0x40
	lcall	_lcd2_setpos
	C$main.c$109$2$370 ==.
;	main.c:109: display_writestr("TX    ");
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_lcd2_writestr
00102$:
	C$main.c$118$1$369 ==.
;	main.c:118: display_setpos(0x4c);
	mov	dpl,#0x4c
	lcall	_lcd2_setpos
	C$main.c$119$1$369 ==.
;	main.c:119: display_writehex16(pkt_counter, 4, WRNUM_PADZERO);
	mov	a,#0x08
	push	acc
	rr	a
	push	acc
	mov	dpl,_pkt_counter
	mov	dph,(_pkt_counter + 1)
	lcall	_lcd2_writehex16
	dec	sp
	dec	sp
	C$main.c$129$1$369 ==.
	XFmain$display_transmit_packet$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_statuschange'
;------------------------------------------------------------
;st                        Allocated to registers r6 r7 
;------------------------------------------------------------
	G$axradio_statuschange$0$0 ==.
	C$main.c$131$1$369 ==.
;	main.c:131: void axradio_statuschange(struct axradio_status __xdata *st)
;	-----------------------------------------
;	 function axradio_statuschange
;	-----------------------------------------
_axradio_statuschange:
	C$main.c$144$1$372 ==.
;	main.c:144: switch (st->status)
	mov	r6,dpl
	mov  r7,dph
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x02,00199$
	sjmp	00155$
00199$:
	cjne	r5,#0x03,00200$
	sjmp	00105$
00200$:
	C$main.c$147$2$373 ==.
;	main.c:147: led0_on();
	cjne	r5,#0x04,00173$
	sjmp	00120$
00105$:
	setb	_PORTC_3
	C$main.c$149$2$373 ==.
;	main.c:149: if (st->error == AXRADIO_ERR_RETRANSMISSION)
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x08,00173$
	C$main.c$150$4$377 ==.
;	main.c:150: led2_on();
	setb	_PORTA_2
	C$main.c$161$2$373 ==.
;	main.c:161: break;
	C$main.c$164$2$373 ==.
;	main.c:164: led0_off();
	sjmp	00173$
00120$:
	clr	_PORTC_3
	C$main.c$166$2$373 ==.
;	main.c:166: if (st->error == AXRADIO_ERR_NOERROR)
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	jnz	00138$
	C$main.c$168$5$382 ==.
;	main.c:168: led2_off();
	clr	_PORTA_2
	sjmp	00139$
00138$:
	C$main.c$183$2$373 ==.
;	main.c:183: else if (st->error == AXRADIO_ERR_TIMEOUT)
	cjne	r5,#0x03,00139$
	C$main.c$185$5$385 ==.
;	main.c:185: led2_on();
	setb	_PORTA_2
00139$:
	C$main.c$198$2$373 ==.
;	main.c:198: if (st->error == AXRADIO_ERR_BUSY)
	cjne	r5,#0x02,00149$
	C$main.c$199$4$387 ==.
;	main.c:199: led3_on();
	setb	_PORTA_5
	C$main.c$201$2$373 ==.
;	main.c:201: led3_off();
	sjmp	00173$
00149$:
	clr	_PORTA_5
	C$main.c$203$2$373 ==.
;	main.c:203: break;
	C$main.c$213$2$373 ==.
;	main.c:213: case AXRADIO_STAT_CHANNELSTATE:
	sjmp	00173$
00155$:
	C$main.c$214$2$373 ==.
;	main.c:214: if (st->u.cs.busy)
	mov	a,#0x06
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	a,#0x02
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	jz	00165$
	C$main.c$215$4$391 ==.
;	main.c:215: led3_on();
	setb	_PORTA_5
	C$main.c$217$2$373 ==.
;	main.c:217: led3_off();
	sjmp	00173$
00165$:
	clr	_PORTA_5
	C$main.c$223$1$372 ==.
;	main.c:223: }
00173$:
	C$main.c$224$1$372 ==.
	XG$axradio_statuschange$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'enable_radio_interrupt_in_mcu_pin'
;------------------------------------------------------------
	G$enable_radio_interrupt_in_mcu_pin$0$0 ==.
	C$main.c$226$1$372 ==.
;	main.c:226: void enable_radio_interrupt_in_mcu_pin(void)
;	-----------------------------------------
;	 function enable_radio_interrupt_in_mcu_pin
;	-----------------------------------------
_enable_radio_interrupt_in_mcu_pin:
	C$main.c$228$1$395 ==.
;	main.c:228: IE_4 = 1;
	setb	_IE_4
	C$main.c$229$1$395 ==.
	XG$enable_radio_interrupt_in_mcu_pin$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'disable_radio_interrupt_in_mcu_pin'
;------------------------------------------------------------
	G$disable_radio_interrupt_in_mcu_pin$0$0 ==.
	C$main.c$231$1$395 ==.
;	main.c:231: void disable_radio_interrupt_in_mcu_pin(void)
;	-----------------------------------------
;	 function disable_radio_interrupt_in_mcu_pin
;	-----------------------------------------
_disable_radio_interrupt_in_mcu_pin:
	C$main.c$233$1$397 ==.
;	main.c:233: IE_4 = 0;
	clr	_IE_4
	C$main.c$234$1$397 ==.
	XG$disable_radio_interrupt_in_mcu_pin$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'wakeup_callback'
;------------------------------------------------------------
;desc                      Allocated to registers 
;------------------------------------------------------------
	Fmain$wakeup_callback$0$0 ==.
	C$main.c$236$1$397 ==.
;	main.c:236: static void wakeup_callback(struct wtimer_desc __xdata *desc)
;	-----------------------------------------
;	 function wakeup_callback
;	-----------------------------------------
_wakeup_callback:
	C$main.c$240$1$399 ==.
;	main.c:240: wakeup_desc.time += wtimer0_correctinterval(WTIMER0_PERIOD);
	mov	dptr,#(_wakeup_desc + 0x0004)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#0x0280
	clr	a
	mov	b,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_wtimer0_correctinterval
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r0
	add	a,r4
	mov	r4,a
	mov	a,r1
	addc	a,r5
	mov	r5,a
	mov	a,r2
	addc	a,r6
	mov	r6,a
	mov	a,r3
	addc	a,r7
	mov	r7,a
	mov	dptr,#(_wakeup_desc + 0x0004)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$main.c$241$1$399 ==.
;	main.c:241: wtimer0_addabsolute(&wakeup_desc);
	mov	dptr,#_wakeup_desc
	lcall	_wtimer0_addabsolute
	C$main.c$242$1$399 ==.
;	main.c:242: transmit_packet();
	lcall	_transmit_packet
	C$main.c$243$1$399 ==.
;	main.c:243: display_transmit_packet();
	lcall	_display_transmit_packet
	C$main.c$245$1$399 ==.
	XFmain$wakeup_callback$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_sdcc_external_startup'
;------------------------------------------------------------
;c                         Allocated to registers 
;p                         Allocated to registers 
;c                         Allocated to registers 
;p                         Allocated to registers 
;------------------------------------------------------------
	G$_sdcc_external_startup$0$0 ==.
	C$main.c$247$1$399 ==.
;	main.c:247: uint8_t _sdcc_external_startup(void)
;	-----------------------------------------
;	 function _sdcc_external_startup
;	-----------------------------------------
__sdcc_external_startup:
	C$main.c$249$1$401 ==.
;	main.c:249: LPXOSCGM = 0x8A;
	mov	dptr,#_LPXOSCGM
	mov	a,#0x8a
	movx	@dptr,a
	C$main.c$250$2$402 ==.
;	main.c:250: wtimer0_setclksrc(WTIMER0_CLKSRC, WTIMER0_PRESCALER);
	mov	dpl,#0x09
	lcall	_wtimer0_setconfig
	C$main.c$251$2$403 ==.
;	main.c:251: wtimer1_setclksrc(CLKSRC_FRCOSC, 7);
	mov	dpl,#0x38
	lcall	_wtimer1_setconfig
	C$main.c$253$1$401 ==.
;	main.c:253: LPOSCCONFIG = 0x09; /* Slow, PRESC /1, no cal. Does NOT enable LPOSC. LPOSC is enabled upon configuring WTCFGA (MODE_TX_PERIODIC and receive_ack() ) */
	mov	dptr,#_LPOSCCONFIG
	mov	a,#0x09
	movx	@dptr,a
	C$main.c$255$1$401 ==.
;	main.c:255: coldstart = !(PCON & 0x40);
	mov	a,_PCON
	mov	c,acc[6]
	cpl	c
	mov	__sdcc_external_startup_sloc0_1_0,c
	clr	a
	rlc	a
	mov	_coldstart,a
	C$main.c$257$1$401 ==.
;	main.c:257: ANALOGA = 0x18; /* PA[3,4] LPXOSC, other PA are used as digital pins */
	mov	dptr,#_ANALOGA
	mov	a,#0x18
	movx	@dptr,a
	C$main.c$258$1$401 ==.
;	main.c:258: PORTA = 0xC0 | (PINA & 0x25); 	/* pull-up for PA[6,7] which are not bonded, no pull up for PA[3,4] (LPXOSC). Output 0 in PA[0,1,2,5] to prevent current consumption in all DIP switch states */
	mov	a,#0x25
	anl	a,_PINA
	orl	a,#0xc0
	mov	_PORTA,a
	C$main.c$260$1$401 ==.
;	main.c:260: PORTB = 0xFE; /*PB[0,1]  (LCD RS, LCD RST) are overwritten by lcd2_portinit(), enable pull-ups for PB[2..7]  (PB[2,3] for buttons, PB[4..7] unused) */
	mov	_PORTB,#0xfe
	C$main.c$261$1$401 ==.
;	main.c:261: PORTC = 0xF3 | (PINC & 0x08); 	/* set PC0 = 1 (LCD SEL), PC1 = 1 (LCD SCK), PC2 = 0 (LCD MOSI), PC3 =0 (LED), enable pull-ups for PC[4..7] which are not bonded Mind: PORTC[0:1] is set to 0x3 by lcd2_portinit() */
	mov	a,#0x08
	anl	a,_PINC
	orl	a,#0xf3
	mov	_PORTC,a
	C$main.c$263$1$401 ==.
;	main.c:263: PORTR = 0xCB; /* overwritten by ax504x_reset, ax504x_comminit() */
	mov	_PORTR,#0xcb
	C$main.c$265$1$401 ==.
;	main.c:265: DIRA = 0x27; /* output 0 on PA[0,1,2,5] to prevent current consumption in all DIP switch states. Other PA are inputs, PA[3,4] (LPXOSC) must have disabled digital output drivers */
	mov	_DIRA,#0x27
	C$main.c$266$1$401 ==.
;	main.c:266: DIRB = 0x03; /* PB[0,1] are outputs (LCD RS, LCD RST), PB[2..7] are inputs (PB[2,3] for buttons,  PB[4..7]  unused) */
	mov	_DIRB,#0x03
	C$main.c$267$1$401 ==.
;	main.c:267: DIRC = 0x0F; /* PC[0..3] are outputs (LCD SEL, LCD,SCK, LCD MOSI, LED), PC[4..7] are inputs (not bonded). */
	mov	_DIRC,#0x0f
	C$main.c$268$1$401 ==.
;	main.c:268: DIRR = 0x15; /* overwritten by ax504x_reset, ax504x_comminit() */
	mov	_DIRR,#0x15
	C$main.c$269$1$401 ==.
;	main.c:269: axradio_setup_pincfg1();
	lcall	_axradio_setup_pincfg1
	C$main.c$270$1$401 ==.
;	main.c:270: DPS = 0;
	mov	_DPS,#0x00
	C$main.c$271$1$401 ==.
;	main.c:271: IE = 0x40;
	mov	_IE,#0x40
	C$main.c$272$1$401 ==.
;	main.c:272: EIE = 0x00;
	mov	_EIE,#0x00
	C$main.c$273$1$401 ==.
;	main.c:273: E2IE = 0x00;
	mov	_E2IE,#0x00
	C$main.c$275$1$401 ==.
;	main.c:275: display_portinit();
	lcall	_lcd2_portinit
	C$main.c$276$1$401 ==.
;	main.c:276: GPIOENABLE = 1; /* unfreeze GPIO */
	mov	dptr,#_GPIOENABLE
	mov	a,#0x01
	movx	@dptr,a
	C$main.c$277$1$401 ==.
;	main.c:277: return !coldstart; /* coldstart -> return 0 -> var initialization; start from sleep -> return 1 -> no var initialization */
	mov	a,_coldstart
	cjne	a,#0x01,00109$
00109$:
	mov  __sdcc_external_startup_sloc0_1_0,c
	clr	a
	rlc	a
	mov	dpl,a
	C$main.c$278$1$401 ==.
	XG$_sdcc_external_startup$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;saved_button_state        Allocated with name '_main_saved_button_state_1_405'
;i                         Allocated to registers r7 
;x                         Allocated to registers r6 
;flg                       Allocated to registers r6 
;flg                       Allocated to registers r7 
;------------------------------------------------------------
	G$main$0$0 ==.
	C$main.c$280$1$401 ==.
;	main.c:280: int main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	C$main.c$287$1$405 ==.
;	main.c:287: __endasm;
	G$_start__stack$0$0	= __start__stack
	.globl	G$_start__stack$0$0
	C$libmftypes.h$368$4$426 ==.
;	C:/Program Files (x86)/ON Semiconductor/AXSDB/libmf/include/libmftypes.h:368: EA = 1;
	setb	_EA
	C$main.c$292$1$405 ==.
;	main.c:292: flash_apply_calibration();
	lcall	_flash_apply_calibration
	C$main.c$293$1$405 ==.
;	main.c:293: CLKCON = 0x00;
	mov	_CLKCON,#0x00
	C$main.c$294$1$405 ==.
;	main.c:294: wtimer_init();
	lcall	_wtimer_init
	C$main.c$296$1$405 ==.
;	main.c:296: if (coldstart)
	mov	a,_coldstart
	jnz	00188$
	ljmp	00134$
00188$:
	C$main.c$298$4$408 ==.
;	main.c:298: led0_off();
	clr	_PORTC_3
	C$main.c$299$4$410 ==.
;	main.c:299: led1_off();
	clr	_PORTA_0
	C$main.c$300$4$412 ==.
;	main.c:300: led2_off();
	clr	_PORTA_2
	C$main.c$301$4$414 ==.
;	main.c:301: led3_off();
	clr	_PORTA_5
	C$main.c$303$2$406 ==.
;	main.c:303: wakeup_desc.handler = wakeup_callback;
	mov	dptr,#(_wakeup_desc + 0x0002)
	mov	a,#_wakeup_callback
	movx	@dptr,a
	mov	a,#(_wakeup_callback >> 8)
	inc	dptr
	movx	@dptr,a
	C$main.c$307$2$406 ==.
;	main.c:307: display_init();
	lcall	_lcd2_init
	C$main.c$308$2$406 ==.
;	main.c:308: display_setpos(0);
	mov	dpl,#0x00
	lcall	_lcd2_setpos
	C$main.c$309$2$406 ==.
;	main.c:309: i = axradio_init();
	lcall	_axradio_init
	C$main.c$311$2$406 ==.
;	main.c:311: if (i != AXRADIO_ERR_NOERROR)
	mov	a,dpl
	mov	r7,a
	jz	00128$
	C$main.c$313$3$415 ==.
;	main.c:313: if (i == AXRADIO_ERR_NOCHIP)
	cjne	r7,#0x05,00190$
	sjmp	00191$
00190$:
	ljmp	00140$
00191$:
	C$main.c$315$4$416 ==.
;	main.c:315: display_writestr(radio_not_found_lcd_display);
	mov	dptr,#_radio_not_found_lcd_display
	mov	b,#0x00
	lcall	_lcd2_writestr
	C$main.c$322$4$416 ==.
;	main.c:322: goto terminate_error;
	ljmp	00151$
	C$main.c$325$2$406 ==.
;	main.c:325: goto terminate_radio_error;
00128$:
	C$main.c$328$2$406 ==.
;	main.c:328: display_writestr(radio_lcd_display);
	mov	dptr,#_radio_lcd_display
	mov	b,#0x00
	lcall	_lcd2_writestr
	C$main.c$335$2$406 ==.
;	main.c:335: axradio_set_local_address(&localaddr);
	mov	dptr,#_localaddr
	mov	b,#0x80
	lcall	_axradio_set_local_address
	C$main.c$336$2$406 ==.
;	main.c:336: axradio_set_default_remote_address(&remoteaddr);
	mov	dptr,#_remoteaddr
	mov	b,#0x80
	lcall	_axradio_set_default_remote_address
	C$main.c$350$2$406 ==.
;	main.c:350: display_writestr("RNG=");
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_lcd2_writestr
	C$main.c$351$2$406 ==.
;	main.c:351: display_writenum16(axradio_get_pllrange(), 2, 0);
	lcall	_axradio_get_pllrange
	clr	a
	push	acc
	mov	a,#0x02
	push	acc
	lcall	_lcd2_writenum16
	dec	sp
	dec	sp
	C$main.c$353$3$417 ==.
;	main.c:353: uint8_t x = axradio_get_pllvcoi();
	lcall	_axradio_get_pllvcoi
	C$main.c$355$3$417 ==.
;	main.c:355: if (x & 0x80)
	mov	a,dpl
	mov	r6,a
	jnb	acc.7,00130$
	C$main.c$357$4$418 ==.
;	main.c:357: display_writestr(" VCOI=");
	mov	dptr,#___str_2
	mov	b,#0x80
	push	ar6
	lcall	_lcd2_writestr
	pop	ar6
	C$main.c$358$4$418 ==.
;	main.c:358: display_writehex16(x, 2, 0);
	clr	a
	mov	r5,a
	push	acc
	mov	a,#0x02
	push	acc
	mov	dpl,r6
	mov	dph,r5
	lcall	_lcd2_writehex16
	dec	sp
	dec	sp
00130$:
	C$main.c$361$2$406 ==.
;	main.c:361: delay_ms(1000); /* just to show PLL RNG */
	mov	dptr,#0x03e8
	lcall	_delay_ms
	C$main.c$362$2$406 ==.
;	main.c:362: display_clear(0, 16);
	mov	a,#0x10
	push	acc
	mov	dpl,#0x00
	lcall	_lcd2_clear
	dec	sp
	C$main.c$363$2$406 ==.
;	main.c:363: display_clear(0x40, 16);
	mov	a,#0x10
	push	acc
	mov	dpl,#0x40
	lcall	_lcd2_clear
	dec	sp
	C$main.c$364$2$406 ==.
;	main.c:364: display_setpos(0);
	mov	dpl,#0x00
	lcall	_lcd2_setpos
	C$main.c$365$2$406 ==.
;	main.c:365: display_writestr("MASTER");
	mov	dptr,#___str_3
	mov	b,#0x80
	lcall	_lcd2_writestr
	C$main.c$386$2$406 ==.
;	main.c:386: i = axradio_set_mode(RADIO_MODE);
	mov	dpl,#0x10
	lcall	_axradio_set_mode
	C$main.c$388$2$406 ==.
;	main.c:388: if (i != AXRADIO_ERR_NOERROR)
	mov	a,dpl
	mov	r7,a
	jnz	00140$
	C$main.c$392$2$406 ==.
;	main.c:392: wakeup_desc.time = wtimer0_correctinterval(WTIMER0_PERIOD);
	mov	dptr,#0x0280
	clr	a
	mov	b,a
	lcall	_wtimer0_correctinterval
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	r6,a
	mov	dptr,#(_wakeup_desc + 0x0004)
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	C$main.c$393$2$406 ==.
;	main.c:393: wtimer0_addrelative(&wakeup_desc);
	mov	dptr,#_wakeup_desc
	lcall	_wtimer0_addrelative
	sjmp	00135$
00134$:
	C$main.c$399$2$419 ==.
;	main.c:399: axradio_commsleepexit();
	lcall	_axradio_commsleepexit
	C$main.c$400$2$419 ==.
;	main.c:400: IE_4 = 1; /* enable radio interrupt */
	setb	_IE_4
00135$:
	C$main.c$403$1$405 ==.
;	main.c:403: axradio_setup_pincfg2();
	lcall	_axradio_setup_pincfg2
00149$:
	C$main.c$410$2$420 ==.
;	main.c:410: wtimer_runcallbacks();
	lcall	_wtimer_runcallbacks
	C$libmftypes.h$373$5$429 ==.
;	C:/Program Files (x86)/ON Semiconductor/AXSDB/libmf/include/libmftypes.h:373: EA = 0;
	clr	_EA
	C$main.c$439$3$420 ==.
;	main.c:439: uint8_t flg = WTFLAG_CANSTANDBY;
	mov	r6,#0x02
	C$main.c$442$3$421 ==.
;	main.c:442: if (axradio_cansleep()
	push	ar6
	lcall	_axradio_cansleep
	mov	a,dpl
	pop	ar6
	jz	00137$
	C$main.c$446$3$421 ==.
;	main.c:446: && display_txidle())
	lcall	_lcd2_txidle
	mov	a,dpl
	jz	00137$
	C$main.c$447$3$421 ==.
;	main.c:447: flg |= WTFLAG_CANSLEEP;
	mov	r6,#0x03
00137$:
	C$main.c$449$3$421 ==.
;	main.c:449: wtimer_idle(flg);
	mov	dpl,r6
	lcall	_wtimer_idle
	C$main.c$451$2$420 ==.
;	main.c:451: IE_3 = 0; /* no ISR! */
	clr	_IE_3
	C$libmftypes.h$368$5$432 ==.
;	C:/Program Files (x86)/ON Semiconductor/AXSDB/libmf/include/libmftypes.h:368: EA = 1;
	setb	_EA
	C$main.c$452$4$431 ==.
;	main.c:452: __enable_irq();
	C$main.c$455$1$405 ==.
;	main.c:455: terminate_radio_error:
	sjmp	00149$
00140$:
	C$main.c$456$1$405 ==.
;	main.c:456: display_radio_error(i);
	mov	dpl,r7
	lcall	_lcd2_display_radio_error
	C$main.c$460$1$405 ==.
;	main.c:460: terminate_error:
00151$:
	C$main.c$464$2$422 ==.
;	main.c:464: wtimer_runcallbacks();
	lcall	_wtimer_runcallbacks
	C$main.c$466$3$422 ==.
;	main.c:466: uint8_t flg = WTFLAG_CANSTANDBY;
	mov	r7,#0x02
	C$main.c$469$3$423 ==.
;	main.c:469: if (axradio_cansleep()
	push	ar7
	lcall	_axradio_cansleep
	mov	a,dpl
	pop	ar7
	jz	00143$
	C$main.c$473$3$423 ==.
;	main.c:473: && display_txidle())
	lcall	_lcd2_txidle
	mov	a,dpl
	jz	00143$
	C$main.c$474$3$423 ==.
;	main.c:474: flg |= WTFLAG_CANSLEEP;
	mov	r7,#0x03
00143$:
	C$main.c$476$3$423 ==.
;	main.c:476: wtimer_idle(flg);
	mov	dpl,r7
	lcall	_wtimer_idle
	sjmp	00151$
	C$main.c$479$1$405 ==.
	XG$main$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
Fmain$__str_0$0$0 == .
___str_0:
	.ascii "TX    "
	.db 0x00
Fmain$__str_1$0$0 == .
___str_1:
	.ascii "RNG="
	.db 0x00
Fmain$__str_2$0$0 == .
___str_2:
	.ascii " VCOI="
	.db 0x00
Fmain$__str_3$0$0 == .
___str_3:
	.ascii "MASTER"
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
