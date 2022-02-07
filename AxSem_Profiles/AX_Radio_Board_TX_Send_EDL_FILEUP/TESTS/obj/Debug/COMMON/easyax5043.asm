;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.0 #9615 (MINGW64)
;--------------------------------------------------------
	.module easyax5043
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _axradio_wait_n_lposccycles
	.globl _ax5043_init_registers_rx
	.globl _ax5043_init_registers_tx
	.globl _memset
	.globl _memcpy
	.globl _wtimer_remove_callback
	.globl _wtimer_add_callback
	.globl _wtimer_remove
	.globl _wtimer1_addrelative
	.globl _wtimer0_addrelative
	.globl _wtimer0_addabsolute
	.globl _wtimer0_curtime
	.globl _wtimer_runcallbacks
	.globl _wtimer_idle
	.globl _ax5043_writefifo
	.globl _ax5043_readfifo
	.globl _ax5043_wakeup_deepsleep
	.globl _ax5043_enter_deepsleep
	.globl _ax5043_reset
	.globl _ax5043_commsleepexit
	.globl _radio_read24
	.globl _radio_read16
	.globl _pn9_buffer
	.globl _pn9_advance_byte
	.globl _pn9_advance_bits
	.globl _disable_radio_interrupt_in_mcu_pin
	.globl _enable_radio_interrupt_in_mcu_pin
	.globl _axradio_framing_append_crc
	.globl _axradio_framing_check_crc
	.globl _ax5043_set_registers_rxcont_singleparamset
	.globl _ax5043_set_registers_rxcont
	.globl _ax5043_set_registers_rxwor
	.globl _ax5043_set_registers_rx
	.globl _ax5043_set_registers_tx
	.globl _ax5043_set_registers
	.globl _axradio_conv_freq_fromreg
	.globl _axradio_statuschange
	.globl _axradio_conv_timeinterval_totimer0
	.globl _enter_standby
	.globl _checksignedlimit32
	.globl _checksignedlimit16
	.globl _signedlimit16
	.globl _signextend24
	.globl _signextend20
	.globl _signextend16
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
	.globl _radio_not_found_lcd_display
	.globl _radio_lcd_display
	.globl _f33_saved
	.globl _f32_saved
	.globl _f31_saved
	.globl _f30_saved
	.globl _axradio_timer
	.globl _axradio_cb_transmitdata
	.globl _axradio_cb_transmitend
	.globl _axradio_cb_transmitstart
	.globl _axradio_cb_channelstate
	.globl _axradio_cb_receivesfd
	.globl _axradio_cb_receive
	.globl _axradio_rxbuffer
	.globl _axradio_txbuffer
	.globl _axradio_default_remoteaddr
	.globl _axradio_localaddr
	.globl _axradio_timeanchor
	.globl _axradio_sync_periodcorr
	.globl _axradio_sync_time
	.globl _axradio_ack_seqnr
	.globl _axradio_ack_count
	.globl _axradio_curfreqoffset
	.globl _axradio_curchannel
	.globl _axradio_txbuffer_cnt
	.globl _axradio_txbuffer_len
	.globl _axradio_syncstate
	.globl _AX5043_TIMEGAIN3NB
	.globl _AX5043_TIMEGAIN2NB
	.globl _AX5043_TIMEGAIN1NB
	.globl _AX5043_TIMEGAIN0NB
	.globl _AX5043_RXPARAMSETSNB
	.globl _AX5043_RXPARAMCURSETNB
	.globl _AX5043_PKTMAXLENNB
	.globl _AX5043_PKTLENOFFSETNB
	.globl _AX5043_PKTLENCFGNB
	.globl _AX5043_PKTADDRMASK3NB
	.globl _AX5043_PKTADDRMASK2NB
	.globl _AX5043_PKTADDRMASK1NB
	.globl _AX5043_PKTADDRMASK0NB
	.globl _AX5043_PKTADDRCFGNB
	.globl _AX5043_PKTADDR3NB
	.globl _AX5043_PKTADDR2NB
	.globl _AX5043_PKTADDR1NB
	.globl _AX5043_PKTADDR0NB
	.globl _AX5043_PHASEGAIN3NB
	.globl _AX5043_PHASEGAIN2NB
	.globl _AX5043_PHASEGAIN1NB
	.globl _AX5043_PHASEGAIN0NB
	.globl _AX5043_FREQUENCYLEAKNB
	.globl _AX5043_FREQUENCYGAIND3NB
	.globl _AX5043_FREQUENCYGAIND2NB
	.globl _AX5043_FREQUENCYGAIND1NB
	.globl _AX5043_FREQUENCYGAIND0NB
	.globl _AX5043_FREQUENCYGAINC3NB
	.globl _AX5043_FREQUENCYGAINC2NB
	.globl _AX5043_FREQUENCYGAINC1NB
	.globl _AX5043_FREQUENCYGAINC0NB
	.globl _AX5043_FREQUENCYGAINB3NB
	.globl _AX5043_FREQUENCYGAINB2NB
	.globl _AX5043_FREQUENCYGAINB1NB
	.globl _AX5043_FREQUENCYGAINB0NB
	.globl _AX5043_FREQUENCYGAINA3NB
	.globl _AX5043_FREQUENCYGAINA2NB
	.globl _AX5043_FREQUENCYGAINA1NB
	.globl _AX5043_FREQUENCYGAINA0NB
	.globl _AX5043_FREQDEV13NB
	.globl _AX5043_FREQDEV12NB
	.globl _AX5043_FREQDEV11NB
	.globl _AX5043_FREQDEV10NB
	.globl _AX5043_FREQDEV03NB
	.globl _AX5043_FREQDEV02NB
	.globl _AX5043_FREQDEV01NB
	.globl _AX5043_FREQDEV00NB
	.globl _AX5043_FOURFSK3NB
	.globl _AX5043_FOURFSK2NB
	.globl _AX5043_FOURFSK1NB
	.globl _AX5043_FOURFSK0NB
	.globl _AX5043_DRGAIN3NB
	.globl _AX5043_DRGAIN2NB
	.globl _AX5043_DRGAIN1NB
	.globl _AX5043_DRGAIN0NB
	.globl _AX5043_BBOFFSRES3NB
	.globl _AX5043_BBOFFSRES2NB
	.globl _AX5043_BBOFFSRES1NB
	.globl _AX5043_BBOFFSRES0NB
	.globl _AX5043_AMPLITUDEGAIN3NB
	.globl _AX5043_AMPLITUDEGAIN2NB
	.globl _AX5043_AMPLITUDEGAIN1NB
	.globl _AX5043_AMPLITUDEGAIN0NB
	.globl _AX5043_AGCTARGET3NB
	.globl _AX5043_AGCTARGET2NB
	.globl _AX5043_AGCTARGET1NB
	.globl _AX5043_AGCTARGET0NB
	.globl _AX5043_AGCMINMAX3NB
	.globl _AX5043_AGCMINMAX2NB
	.globl _AX5043_AGCMINMAX1NB
	.globl _AX5043_AGCMINMAX0NB
	.globl _AX5043_AGCGAIN3NB
	.globl _AX5043_AGCGAIN2NB
	.globl _AX5043_AGCGAIN1NB
	.globl _AX5043_AGCGAIN0NB
	.globl _AX5043_AGCAHYST3NB
	.globl _AX5043_AGCAHYST2NB
	.globl _AX5043_AGCAHYST1NB
	.globl _AX5043_AGCAHYST0NB
	.globl _AX5043_0xF44NB
	.globl _AX5043_0xF35NB
	.globl _AX5043_0xF34NB
	.globl _AX5043_0xF33NB
	.globl _AX5043_0xF32NB
	.globl _AX5043_0xF31NB
	.globl _AX5043_0xF30NB
	.globl _AX5043_0xF26NB
	.globl _AX5043_0xF23NB
	.globl _AX5043_0xF22NB
	.globl _AX5043_0xF21NB
	.globl _AX5043_0xF1CNB
	.globl _AX5043_0xF18NB
	.globl _AX5043_0xF0CNB
	.globl _AX5043_0xF00NB
	.globl _AX5043_XTALSTATUSNB
	.globl _AX5043_XTALOSCNB
	.globl _AX5043_XTALCAPNB
	.globl _AX5043_XTALAMPLNB
	.globl _AX5043_WAKEUPXOEARLYNB
	.globl _AX5043_WAKEUPTIMER1NB
	.globl _AX5043_WAKEUPTIMER0NB
	.globl _AX5043_WAKEUPFREQ1NB
	.globl _AX5043_WAKEUPFREQ0NB
	.globl _AX5043_WAKEUP1NB
	.globl _AX5043_WAKEUP0NB
	.globl _AX5043_TXRATE2NB
	.globl _AX5043_TXRATE1NB
	.globl _AX5043_TXRATE0NB
	.globl _AX5043_TXPWRCOEFFE1NB
	.globl _AX5043_TXPWRCOEFFE0NB
	.globl _AX5043_TXPWRCOEFFD1NB
	.globl _AX5043_TXPWRCOEFFD0NB
	.globl _AX5043_TXPWRCOEFFC1NB
	.globl _AX5043_TXPWRCOEFFC0NB
	.globl _AX5043_TXPWRCOEFFB1NB
	.globl _AX5043_TXPWRCOEFFB0NB
	.globl _AX5043_TXPWRCOEFFA1NB
	.globl _AX5043_TXPWRCOEFFA0NB
	.globl _AX5043_TRKRFFREQ2NB
	.globl _AX5043_TRKRFFREQ1NB
	.globl _AX5043_TRKRFFREQ0NB
	.globl _AX5043_TRKPHASE1NB
	.globl _AX5043_TRKPHASE0NB
	.globl _AX5043_TRKFSKDEMOD1NB
	.globl _AX5043_TRKFSKDEMOD0NB
	.globl _AX5043_TRKFREQ1NB
	.globl _AX5043_TRKFREQ0NB
	.globl _AX5043_TRKDATARATE2NB
	.globl _AX5043_TRKDATARATE1NB
	.globl _AX5043_TRKDATARATE0NB
	.globl _AX5043_TRKAMPLITUDE1NB
	.globl _AX5043_TRKAMPLITUDE0NB
	.globl _AX5043_TRKAFSKDEMOD1NB
	.globl _AX5043_TRKAFSKDEMOD0NB
	.globl _AX5043_TMGTXSETTLENB
	.globl _AX5043_TMGTXBOOSTNB
	.globl _AX5043_TMGRXSETTLENB
	.globl _AX5043_TMGRXRSSINB
	.globl _AX5043_TMGRXPREAMBLE3NB
	.globl _AX5043_TMGRXPREAMBLE2NB
	.globl _AX5043_TMGRXPREAMBLE1NB
	.globl _AX5043_TMGRXOFFSACQNB
	.globl _AX5043_TMGRXCOARSEAGCNB
	.globl _AX5043_TMGRXBOOSTNB
	.globl _AX5043_TMGRXAGCNB
	.globl _AX5043_TIMER2NB
	.globl _AX5043_TIMER1NB
	.globl _AX5043_TIMER0NB
	.globl _AX5043_SILICONREVISIONNB
	.globl _AX5043_SCRATCHNB
	.globl _AX5043_RXDATARATE2NB
	.globl _AX5043_RXDATARATE1NB
	.globl _AX5043_RXDATARATE0NB
	.globl _AX5043_RSSIREFERENCENB
	.globl _AX5043_RSSIABSTHRNB
	.globl _AX5043_RSSINB
	.globl _AX5043_REFNB
	.globl _AX5043_RADIOSTATENB
	.globl _AX5043_RADIOEVENTREQ1NB
	.globl _AX5043_RADIOEVENTREQ0NB
	.globl _AX5043_RADIOEVENTMASK1NB
	.globl _AX5043_RADIOEVENTMASK0NB
	.globl _AX5043_PWRMODENB
	.globl _AX5043_PWRAMPNB
	.globl _AX5043_POWSTICKYSTATNB
	.globl _AX5043_POWSTATNB
	.globl _AX5043_POWIRQMASKNB
	.globl _AX5043_POWCTRL1NB
	.globl _AX5043_PLLVCOIRNB
	.globl _AX5043_PLLVCOINB
	.globl _AX5043_PLLVCODIVNB
	.globl _AX5043_PLLRNGCLKNB
	.globl _AX5043_PLLRANGINGBNB
	.globl _AX5043_PLLRANGINGANB
	.globl _AX5043_PLLLOOPBOOSTNB
	.globl _AX5043_PLLLOOPNB
	.globl _AX5043_PLLLOCKDETNB
	.globl _AX5043_PLLCPIBOOSTNB
	.globl _AX5043_PLLCPINB
	.globl _AX5043_PKTSTOREFLAGSNB
	.globl _AX5043_PKTMISCFLAGSNB
	.globl _AX5043_PKTCHUNKSIZENB
	.globl _AX5043_PKTACCEPTFLAGSNB
	.globl _AX5043_PINSTATENB
	.globl _AX5043_PINFUNCSYSCLKNB
	.globl _AX5043_PINFUNCPWRAMPNB
	.globl _AX5043_PINFUNCIRQNB
	.globl _AX5043_PINFUNCDCLKNB
	.globl _AX5043_PINFUNCDATANB
	.globl _AX5043_PINFUNCANTSELNB
	.globl _AX5043_MODULATIONNB
	.globl _AX5043_MODCFGPNB
	.globl _AX5043_MODCFGFNB
	.globl _AX5043_MODCFGANB
	.globl _AX5043_MAXRFOFFSET2NB
	.globl _AX5043_MAXRFOFFSET1NB
	.globl _AX5043_MAXRFOFFSET0NB
	.globl _AX5043_MAXDROFFSET2NB
	.globl _AX5043_MAXDROFFSET1NB
	.globl _AX5043_MAXDROFFSET0NB
	.globl _AX5043_MATCH1PAT1NB
	.globl _AX5043_MATCH1PAT0NB
	.globl _AX5043_MATCH1MINNB
	.globl _AX5043_MATCH1MAXNB
	.globl _AX5043_MATCH1LENNB
	.globl _AX5043_MATCH0PAT3NB
	.globl _AX5043_MATCH0PAT2NB
	.globl _AX5043_MATCH0PAT1NB
	.globl _AX5043_MATCH0PAT0NB
	.globl _AX5043_MATCH0MINNB
	.globl _AX5043_MATCH0MAXNB
	.globl _AX5043_MATCH0LENNB
	.globl _AX5043_LPOSCSTATUSNB
	.globl _AX5043_LPOSCREF1NB
	.globl _AX5043_LPOSCREF0NB
	.globl _AX5043_LPOSCPER1NB
	.globl _AX5043_LPOSCPER0NB
	.globl _AX5043_LPOSCKFILT1NB
	.globl _AX5043_LPOSCKFILT0NB
	.globl _AX5043_LPOSCFREQ1NB
	.globl _AX5043_LPOSCFREQ0NB
	.globl _AX5043_LPOSCCONFIGNB
	.globl _AX5043_IRQREQUEST1NB
	.globl _AX5043_IRQREQUEST0NB
	.globl _AX5043_IRQMASK1NB
	.globl _AX5043_IRQMASK0NB
	.globl _AX5043_IRQINVERSION1NB
	.globl _AX5043_IRQINVERSION0NB
	.globl _AX5043_IFFREQ1NB
	.globl _AX5043_IFFREQ0NB
	.globl _AX5043_GPADCPERIODNB
	.globl _AX5043_GPADCCTRLNB
	.globl _AX5043_GPADC13VALUE1NB
	.globl _AX5043_GPADC13VALUE0NB
	.globl _AX5043_FSKDMIN1NB
	.globl _AX5043_FSKDMIN0NB
	.globl _AX5043_FSKDMAX1NB
	.globl _AX5043_FSKDMAX0NB
	.globl _AX5043_FSKDEV2NB
	.globl _AX5043_FSKDEV1NB
	.globl _AX5043_FSKDEV0NB
	.globl _AX5043_FREQB3NB
	.globl _AX5043_FREQB2NB
	.globl _AX5043_FREQB1NB
	.globl _AX5043_FREQB0NB
	.globl _AX5043_FREQA3NB
	.globl _AX5043_FREQA2NB
	.globl _AX5043_FREQA1NB
	.globl _AX5043_FREQA0NB
	.globl _AX5043_FRAMINGNB
	.globl _AX5043_FIFOTHRESH1NB
	.globl _AX5043_FIFOTHRESH0NB
	.globl _AX5043_FIFOSTATNB
	.globl _AX5043_FIFOFREE1NB
	.globl _AX5043_FIFOFREE0NB
	.globl _AX5043_FIFODATANB
	.globl _AX5043_FIFOCOUNT1NB
	.globl _AX5043_FIFOCOUNT0NB
	.globl _AX5043_FECSYNCNB
	.globl _AX5043_FECSTATUSNB
	.globl _AX5043_FECNB
	.globl _AX5043_ENCODINGNB
	.globl _AX5043_DIVERSITYNB
	.globl _AX5043_DECIMATIONNB
	.globl _AX5043_DACVALUE1NB
	.globl _AX5043_DACVALUE0NB
	.globl _AX5043_DACCONFIGNB
	.globl _AX5043_CRCINIT3NB
	.globl _AX5043_CRCINIT2NB
	.globl _AX5043_CRCINIT1NB
	.globl _AX5043_CRCINIT0NB
	.globl _AX5043_BGNDRSSITHRNB
	.globl _AX5043_BGNDRSSIGAINNB
	.globl _AX5043_BGNDRSSINB
	.globl _AX5043_BBTUNENB
	.globl _AX5043_BBOFFSCAPNB
	.globl _AX5043_AMPLFILTERNB
	.globl _AX5043_AGCCOUNTERNB
	.globl _AX5043_AFSKSPACE1NB
	.globl _AX5043_AFSKSPACE0NB
	.globl _AX5043_AFSKMARK1NB
	.globl _AX5043_AFSKMARK0NB
	.globl _AX5043_AFSKCTRLNB
	.globl _AX5043_TIMEGAIN3
	.globl _AX5043_TIMEGAIN2
	.globl _AX5043_TIMEGAIN1
	.globl _AX5043_TIMEGAIN0
	.globl _AX5043_RXPARAMSETS
	.globl _AX5043_RXPARAMCURSET
	.globl _AX5043_PKTMAXLEN
	.globl _AX5043_PKTLENOFFSET
	.globl _AX5043_PKTLENCFG
	.globl _AX5043_PKTADDRMASK3
	.globl _AX5043_PKTADDRMASK2
	.globl _AX5043_PKTADDRMASK1
	.globl _AX5043_PKTADDRMASK0
	.globl _AX5043_PKTADDRCFG
	.globl _AX5043_PKTADDR3
	.globl _AX5043_PKTADDR2
	.globl _AX5043_PKTADDR1
	.globl _AX5043_PKTADDR0
	.globl _AX5043_PHASEGAIN3
	.globl _AX5043_PHASEGAIN2
	.globl _AX5043_PHASEGAIN1
	.globl _AX5043_PHASEGAIN0
	.globl _AX5043_FREQUENCYLEAK
	.globl _AX5043_FREQUENCYGAIND3
	.globl _AX5043_FREQUENCYGAIND2
	.globl _AX5043_FREQUENCYGAIND1
	.globl _AX5043_FREQUENCYGAIND0
	.globl _AX5043_FREQUENCYGAINC3
	.globl _AX5043_FREQUENCYGAINC2
	.globl _AX5043_FREQUENCYGAINC1
	.globl _AX5043_FREQUENCYGAINC0
	.globl _AX5043_FREQUENCYGAINB3
	.globl _AX5043_FREQUENCYGAINB2
	.globl _AX5043_FREQUENCYGAINB1
	.globl _AX5043_FREQUENCYGAINB0
	.globl _AX5043_FREQUENCYGAINA3
	.globl _AX5043_FREQUENCYGAINA2
	.globl _AX5043_FREQUENCYGAINA1
	.globl _AX5043_FREQUENCYGAINA0
	.globl _AX5043_FREQDEV13
	.globl _AX5043_FREQDEV12
	.globl _AX5043_FREQDEV11
	.globl _AX5043_FREQDEV10
	.globl _AX5043_FREQDEV03
	.globl _AX5043_FREQDEV02
	.globl _AX5043_FREQDEV01
	.globl _AX5043_FREQDEV00
	.globl _AX5043_FOURFSK3
	.globl _AX5043_FOURFSK2
	.globl _AX5043_FOURFSK1
	.globl _AX5043_FOURFSK0
	.globl _AX5043_DRGAIN3
	.globl _AX5043_DRGAIN2
	.globl _AX5043_DRGAIN1
	.globl _AX5043_DRGAIN0
	.globl _AX5043_BBOFFSRES3
	.globl _AX5043_BBOFFSRES2
	.globl _AX5043_BBOFFSRES1
	.globl _AX5043_BBOFFSRES0
	.globl _AX5043_AMPLITUDEGAIN3
	.globl _AX5043_AMPLITUDEGAIN2
	.globl _AX5043_AMPLITUDEGAIN1
	.globl _AX5043_AMPLITUDEGAIN0
	.globl _AX5043_AGCTARGET3
	.globl _AX5043_AGCTARGET2
	.globl _AX5043_AGCTARGET1
	.globl _AX5043_AGCTARGET0
	.globl _AX5043_AGCMINMAX3
	.globl _AX5043_AGCMINMAX2
	.globl _AX5043_AGCMINMAX1
	.globl _AX5043_AGCMINMAX0
	.globl _AX5043_AGCGAIN3
	.globl _AX5043_AGCGAIN2
	.globl _AX5043_AGCGAIN1
	.globl _AX5043_AGCGAIN0
	.globl _AX5043_AGCAHYST3
	.globl _AX5043_AGCAHYST2
	.globl _AX5043_AGCAHYST1
	.globl _AX5043_AGCAHYST0
	.globl _AX5043_0xF44
	.globl _AX5043_0xF35
	.globl _AX5043_0xF34
	.globl _AX5043_0xF33
	.globl _AX5043_0xF32
	.globl _AX5043_0xF31
	.globl _AX5043_0xF30
	.globl _AX5043_0xF26
	.globl _AX5043_0xF23
	.globl _AX5043_0xF22
	.globl _AX5043_0xF21
	.globl _AX5043_0xF1C
	.globl _AX5043_0xF18
	.globl _AX5043_0xF0C
	.globl _AX5043_0xF00
	.globl _AX5043_XTALSTATUS
	.globl _AX5043_XTALOSC
	.globl _AX5043_XTALCAP
	.globl _AX5043_XTALAMPL
	.globl _AX5043_WAKEUPXOEARLY
	.globl _AX5043_WAKEUPTIMER1
	.globl _AX5043_WAKEUPTIMER0
	.globl _AX5043_WAKEUPFREQ1
	.globl _AX5043_WAKEUPFREQ0
	.globl _AX5043_WAKEUP1
	.globl _AX5043_WAKEUP0
	.globl _AX5043_TXRATE2
	.globl _AX5043_TXRATE1
	.globl _AX5043_TXRATE0
	.globl _AX5043_TXPWRCOEFFE1
	.globl _AX5043_TXPWRCOEFFE0
	.globl _AX5043_TXPWRCOEFFD1
	.globl _AX5043_TXPWRCOEFFD0
	.globl _AX5043_TXPWRCOEFFC1
	.globl _AX5043_TXPWRCOEFFC0
	.globl _AX5043_TXPWRCOEFFB1
	.globl _AX5043_TXPWRCOEFFB0
	.globl _AX5043_TXPWRCOEFFA1
	.globl _AX5043_TXPWRCOEFFA0
	.globl _AX5043_TRKRFFREQ2
	.globl _AX5043_TRKRFFREQ1
	.globl _AX5043_TRKRFFREQ0
	.globl _AX5043_TRKPHASE1
	.globl _AX5043_TRKPHASE0
	.globl _AX5043_TRKFSKDEMOD1
	.globl _AX5043_TRKFSKDEMOD0
	.globl _AX5043_TRKFREQ1
	.globl _AX5043_TRKFREQ0
	.globl _AX5043_TRKDATARATE2
	.globl _AX5043_TRKDATARATE1
	.globl _AX5043_TRKDATARATE0
	.globl _AX5043_TRKAMPLITUDE1
	.globl _AX5043_TRKAMPLITUDE0
	.globl _AX5043_TRKAFSKDEMOD1
	.globl _AX5043_TRKAFSKDEMOD0
	.globl _AX5043_TMGTXSETTLE
	.globl _AX5043_TMGTXBOOST
	.globl _AX5043_TMGRXSETTLE
	.globl _AX5043_TMGRXRSSI
	.globl _AX5043_TMGRXPREAMBLE3
	.globl _AX5043_TMGRXPREAMBLE2
	.globl _AX5043_TMGRXPREAMBLE1
	.globl _AX5043_TMGRXOFFSACQ
	.globl _AX5043_TMGRXCOARSEAGC
	.globl _AX5043_TMGRXBOOST
	.globl _AX5043_TMGRXAGC
	.globl _AX5043_TIMER2
	.globl _AX5043_TIMER1
	.globl _AX5043_TIMER0
	.globl _AX5043_SILICONREVISION
	.globl _AX5043_SCRATCH
	.globl _AX5043_RXDATARATE2
	.globl _AX5043_RXDATARATE1
	.globl _AX5043_RXDATARATE0
	.globl _AX5043_RSSIREFERENCE
	.globl _AX5043_RSSIABSTHR
	.globl _AX5043_RSSI
	.globl _AX5043_REF
	.globl _AX5043_RADIOSTATE
	.globl _AX5043_RADIOEVENTREQ1
	.globl _AX5043_RADIOEVENTREQ0
	.globl _AX5043_RADIOEVENTMASK1
	.globl _AX5043_RADIOEVENTMASK0
	.globl _AX5043_PWRMODE
	.globl _AX5043_PWRAMP
	.globl _AX5043_POWSTICKYSTAT
	.globl _AX5043_POWSTAT
	.globl _AX5043_POWIRQMASK
	.globl _AX5043_POWCTRL1
	.globl _AX5043_PLLVCOIR
	.globl _AX5043_PLLVCOI
	.globl _AX5043_PLLVCODIV
	.globl _AX5043_PLLRNGCLK
	.globl _AX5043_PLLRANGINGB
	.globl _AX5043_PLLRANGINGA
	.globl _AX5043_PLLLOOPBOOST
	.globl _AX5043_PLLLOOP
	.globl _AX5043_PLLLOCKDET
	.globl _AX5043_PLLCPIBOOST
	.globl _AX5043_PLLCPI
	.globl _AX5043_PKTSTOREFLAGS
	.globl _AX5043_PKTMISCFLAGS
	.globl _AX5043_PKTCHUNKSIZE
	.globl _AX5043_PKTACCEPTFLAGS
	.globl _AX5043_PINSTATE
	.globl _AX5043_PINFUNCSYSCLK
	.globl _AX5043_PINFUNCPWRAMP
	.globl _AX5043_PINFUNCIRQ
	.globl _AX5043_PINFUNCDCLK
	.globl _AX5043_PINFUNCDATA
	.globl _AX5043_PINFUNCANTSEL
	.globl _AX5043_MODULATION
	.globl _AX5043_MODCFGP
	.globl _AX5043_MODCFGF
	.globl _AX5043_MODCFGA
	.globl _AX5043_MAXRFOFFSET2
	.globl _AX5043_MAXRFOFFSET1
	.globl _AX5043_MAXRFOFFSET0
	.globl _AX5043_MAXDROFFSET2
	.globl _AX5043_MAXDROFFSET1
	.globl _AX5043_MAXDROFFSET0
	.globl _AX5043_MATCH1PAT1
	.globl _AX5043_MATCH1PAT0
	.globl _AX5043_MATCH1MIN
	.globl _AX5043_MATCH1MAX
	.globl _AX5043_MATCH1LEN
	.globl _AX5043_MATCH0PAT3
	.globl _AX5043_MATCH0PAT2
	.globl _AX5043_MATCH0PAT1
	.globl _AX5043_MATCH0PAT0
	.globl _AX5043_MATCH0MIN
	.globl _AX5043_MATCH0MAX
	.globl _AX5043_MATCH0LEN
	.globl _AX5043_LPOSCSTATUS
	.globl _AX5043_LPOSCREF1
	.globl _AX5043_LPOSCREF0
	.globl _AX5043_LPOSCPER1
	.globl _AX5043_LPOSCPER0
	.globl _AX5043_LPOSCKFILT1
	.globl _AX5043_LPOSCKFILT0
	.globl _AX5043_LPOSCFREQ1
	.globl _AX5043_LPOSCFREQ0
	.globl _AX5043_LPOSCCONFIG
	.globl _AX5043_IRQREQUEST1
	.globl _AX5043_IRQREQUEST0
	.globl _AX5043_IRQMASK1
	.globl _AX5043_IRQMASK0
	.globl _AX5043_IRQINVERSION1
	.globl _AX5043_IRQINVERSION0
	.globl _AX5043_IFFREQ1
	.globl _AX5043_IFFREQ0
	.globl _AX5043_GPADCPERIOD
	.globl _AX5043_GPADCCTRL
	.globl _AX5043_GPADC13VALUE1
	.globl _AX5043_GPADC13VALUE0
	.globl _AX5043_FSKDMIN1
	.globl _AX5043_FSKDMIN0
	.globl _AX5043_FSKDMAX1
	.globl _AX5043_FSKDMAX0
	.globl _AX5043_FSKDEV2
	.globl _AX5043_FSKDEV1
	.globl _AX5043_FSKDEV0
	.globl _AX5043_FREQB3
	.globl _AX5043_FREQB2
	.globl _AX5043_FREQB1
	.globl _AX5043_FREQB0
	.globl _AX5043_FREQA3
	.globl _AX5043_FREQA2
	.globl _AX5043_FREQA1
	.globl _AX5043_FREQA0
	.globl _AX5043_FRAMING
	.globl _AX5043_FIFOTHRESH1
	.globl _AX5043_FIFOTHRESH0
	.globl _AX5043_FIFOSTAT
	.globl _AX5043_FIFOFREE1
	.globl _AX5043_FIFOFREE0
	.globl _AX5043_FIFODATA
	.globl _AX5043_FIFOCOUNT1
	.globl _AX5043_FIFOCOUNT0
	.globl _AX5043_FECSYNC
	.globl _AX5043_FECSTATUS
	.globl _AX5043_FEC
	.globl _AX5043_ENCODING
	.globl _AX5043_DIVERSITY
	.globl _AX5043_DECIMATION
	.globl _AX5043_DACVALUE1
	.globl _AX5043_DACVALUE0
	.globl _AX5043_DACCONFIG
	.globl _AX5043_CRCINIT3
	.globl _AX5043_CRCINIT2
	.globl _AX5043_CRCINIT1
	.globl _AX5043_CRCINIT0
	.globl _AX5043_BGNDRSSITHR
	.globl _AX5043_BGNDRSSIGAIN
	.globl _AX5043_BGNDRSSI
	.globl _AX5043_BBTUNE
	.globl _AX5043_BBOFFSCAP
	.globl _AX5043_AMPLFILTER
	.globl _AX5043_AGCCOUNTER
	.globl _AX5043_AFSKSPACE1
	.globl _AX5043_AFSKSPACE0
	.globl _AX5043_AFSKMARK1
	.globl _AX5043_AFSKMARK0
	.globl _AX5043_AFSKCTRL
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
	.globl _axradio_transmit_PARM_3
	.globl _axradio_transmit_PARM_2
	.globl _aligned_alloc_PARM_2
	.globl _axradio_trxstate
	.globl _axradio_mode
	.globl _axradio_conv_time_totimer0
	.globl _axradio_isr
	.globl _ax5043_receiver_on_continuous
	.globl _ax5043_receiver_on_wor
	.globl _ax5043_prepare_tx
	.globl _ax5043_off
	.globl _ax5043_off_xtal
	.globl _axradio_wait_for_xtal
	.globl _axradio_init
	.globl _axradio_cansleep
	.globl _axradio_set_mode
	.globl _axradio_get_mode
	.globl _axradio_set_channel
	.globl _axradio_get_channel
	.globl _axradio_get_pllrange
	.globl _axradio_get_pllvcoi
	.globl _axradio_set_freqoffset
	.globl _axradio_get_freqoffset
	.globl _axradio_set_local_address
	.globl _axradio_get_local_address
	.globl _axradio_set_default_remote_address
	.globl _axradio_get_default_remote_address
	.globl _axradio_transmit
	.globl _axradio_agc_freeze
	.globl _axradio_agc_thaw
	.globl _axradio_calibrate_lposc
	.globl _axradio_commsleepexit
	.globl _axradio_check_fourfsk_modulation
	.globl _axradio_get_transmitter_pa_type
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
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
G$axradio_mode$0$0==.
_axradio_mode::
	.ds 1
G$axradio_trxstate$0$0==.
_axradio_trxstate::
	.ds 1
Leasyax5043.aligned_alloc$size$1$210==.
_aligned_alloc_PARM_2:
	.ds 2
Leasyax5043.axradio_init$i$1$657==.
_axradio_init_i_1_657:
	.ds 1
Leasyax5043.axradio_init$vcoisave$3$687==.
_axradio_init_vcoisave_3_687:
	.ds 1
Leasyax5043.axradio_init$j$3$687==.
_axradio_init_j_3_687:
	.ds 1
Leasyax5043.axradio_init$f$5$690==.
_axradio_init_f_5_690:
	.ds 4
Leasyax5043.axradio_init$sloc0$1$0==.
_axradio_init_sloc0_1_0:
	.ds 2
Leasyax5043.axradio_transmit$pkt$1$806==.
_axradio_transmit_PARM_2:
	.ds 3
Leasyax5043.axradio_transmit$pktlen$1$806==.
_axradio_transmit_PARM_3:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
Leasyax5043.axradio_set_channel$rng$1$766==.
_axradio_set_channel_rng_1_766:
	.ds 1
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
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
Leasyax5043.axradio_timer_callback$sloc0$1$0==.
_axradio_timer_callback_sloc0_1_0:
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
G$AX5043_AFSKCTRL$0$0 == 0x4114
_AX5043_AFSKCTRL	=	0x4114
G$AX5043_AFSKMARK0$0$0 == 0x4113
_AX5043_AFSKMARK0	=	0x4113
G$AX5043_AFSKMARK1$0$0 == 0x4112
_AX5043_AFSKMARK1	=	0x4112
G$AX5043_AFSKSPACE0$0$0 == 0x4111
_AX5043_AFSKSPACE0	=	0x4111
G$AX5043_AFSKSPACE1$0$0 == 0x4110
_AX5043_AFSKSPACE1	=	0x4110
G$AX5043_AGCCOUNTER$0$0 == 0x4043
_AX5043_AGCCOUNTER	=	0x4043
G$AX5043_AMPLFILTER$0$0 == 0x4115
_AX5043_AMPLFILTER	=	0x4115
G$AX5043_BBOFFSCAP$0$0 == 0x4189
_AX5043_BBOFFSCAP	=	0x4189
G$AX5043_BBTUNE$0$0 == 0x4188
_AX5043_BBTUNE	=	0x4188
G$AX5043_BGNDRSSI$0$0 == 0x4041
_AX5043_BGNDRSSI	=	0x4041
G$AX5043_BGNDRSSIGAIN$0$0 == 0x422e
_AX5043_BGNDRSSIGAIN	=	0x422e
G$AX5043_BGNDRSSITHR$0$0 == 0x422f
_AX5043_BGNDRSSITHR	=	0x422f
G$AX5043_CRCINIT0$0$0 == 0x4017
_AX5043_CRCINIT0	=	0x4017
G$AX5043_CRCINIT1$0$0 == 0x4016
_AX5043_CRCINIT1	=	0x4016
G$AX5043_CRCINIT2$0$0 == 0x4015
_AX5043_CRCINIT2	=	0x4015
G$AX5043_CRCINIT3$0$0 == 0x4014
_AX5043_CRCINIT3	=	0x4014
G$AX5043_DACCONFIG$0$0 == 0x4332
_AX5043_DACCONFIG	=	0x4332
G$AX5043_DACVALUE0$0$0 == 0x4331
_AX5043_DACVALUE0	=	0x4331
G$AX5043_DACVALUE1$0$0 == 0x4330
_AX5043_DACVALUE1	=	0x4330
G$AX5043_DECIMATION$0$0 == 0x4102
_AX5043_DECIMATION	=	0x4102
G$AX5043_DIVERSITY$0$0 == 0x4042
_AX5043_DIVERSITY	=	0x4042
G$AX5043_ENCODING$0$0 == 0x4011
_AX5043_ENCODING	=	0x4011
G$AX5043_FEC$0$0 == 0x4018
_AX5043_FEC	=	0x4018
G$AX5043_FECSTATUS$0$0 == 0x401a
_AX5043_FECSTATUS	=	0x401a
G$AX5043_FECSYNC$0$0 == 0x4019
_AX5043_FECSYNC	=	0x4019
G$AX5043_FIFOCOUNT0$0$0 == 0x402b
_AX5043_FIFOCOUNT0	=	0x402b
G$AX5043_FIFOCOUNT1$0$0 == 0x402a
_AX5043_FIFOCOUNT1	=	0x402a
G$AX5043_FIFODATA$0$0 == 0x4029
_AX5043_FIFODATA	=	0x4029
G$AX5043_FIFOFREE0$0$0 == 0x402d
_AX5043_FIFOFREE0	=	0x402d
G$AX5043_FIFOFREE1$0$0 == 0x402c
_AX5043_FIFOFREE1	=	0x402c
G$AX5043_FIFOSTAT$0$0 == 0x4028
_AX5043_FIFOSTAT	=	0x4028
G$AX5043_FIFOTHRESH0$0$0 == 0x402f
_AX5043_FIFOTHRESH0	=	0x402f
G$AX5043_FIFOTHRESH1$0$0 == 0x402e
_AX5043_FIFOTHRESH1	=	0x402e
G$AX5043_FRAMING$0$0 == 0x4012
_AX5043_FRAMING	=	0x4012
G$AX5043_FREQA0$0$0 == 0x4037
_AX5043_FREQA0	=	0x4037
G$AX5043_FREQA1$0$0 == 0x4036
_AX5043_FREQA1	=	0x4036
G$AX5043_FREQA2$0$0 == 0x4035
_AX5043_FREQA2	=	0x4035
G$AX5043_FREQA3$0$0 == 0x4034
_AX5043_FREQA3	=	0x4034
G$AX5043_FREQB0$0$0 == 0x403f
_AX5043_FREQB0	=	0x403f
G$AX5043_FREQB1$0$0 == 0x403e
_AX5043_FREQB1	=	0x403e
G$AX5043_FREQB2$0$0 == 0x403d
_AX5043_FREQB2	=	0x403d
G$AX5043_FREQB3$0$0 == 0x403c
_AX5043_FREQB3	=	0x403c
G$AX5043_FSKDEV0$0$0 == 0x4163
_AX5043_FSKDEV0	=	0x4163
G$AX5043_FSKDEV1$0$0 == 0x4162
_AX5043_FSKDEV1	=	0x4162
G$AX5043_FSKDEV2$0$0 == 0x4161
_AX5043_FSKDEV2	=	0x4161
G$AX5043_FSKDMAX0$0$0 == 0x410d
_AX5043_FSKDMAX0	=	0x410d
G$AX5043_FSKDMAX1$0$0 == 0x410c
_AX5043_FSKDMAX1	=	0x410c
G$AX5043_FSKDMIN0$0$0 == 0x410f
_AX5043_FSKDMIN0	=	0x410f
G$AX5043_FSKDMIN1$0$0 == 0x410e
_AX5043_FSKDMIN1	=	0x410e
G$AX5043_GPADC13VALUE0$0$0 == 0x4309
_AX5043_GPADC13VALUE0	=	0x4309
G$AX5043_GPADC13VALUE1$0$0 == 0x4308
_AX5043_GPADC13VALUE1	=	0x4308
G$AX5043_GPADCCTRL$0$0 == 0x4300
_AX5043_GPADCCTRL	=	0x4300
G$AX5043_GPADCPERIOD$0$0 == 0x4301
_AX5043_GPADCPERIOD	=	0x4301
G$AX5043_IFFREQ0$0$0 == 0x4101
_AX5043_IFFREQ0	=	0x4101
G$AX5043_IFFREQ1$0$0 == 0x4100
_AX5043_IFFREQ1	=	0x4100
G$AX5043_IRQINVERSION0$0$0 == 0x400b
_AX5043_IRQINVERSION0	=	0x400b
G$AX5043_IRQINVERSION1$0$0 == 0x400a
_AX5043_IRQINVERSION1	=	0x400a
G$AX5043_IRQMASK0$0$0 == 0x4007
_AX5043_IRQMASK0	=	0x4007
G$AX5043_IRQMASK1$0$0 == 0x4006
_AX5043_IRQMASK1	=	0x4006
G$AX5043_IRQREQUEST0$0$0 == 0x400d
_AX5043_IRQREQUEST0	=	0x400d
G$AX5043_IRQREQUEST1$0$0 == 0x400c
_AX5043_IRQREQUEST1	=	0x400c
G$AX5043_LPOSCCONFIG$0$0 == 0x4310
_AX5043_LPOSCCONFIG	=	0x4310
G$AX5043_LPOSCFREQ0$0$0 == 0x4317
_AX5043_LPOSCFREQ0	=	0x4317
G$AX5043_LPOSCFREQ1$0$0 == 0x4316
_AX5043_LPOSCFREQ1	=	0x4316
G$AX5043_LPOSCKFILT0$0$0 == 0x4313
_AX5043_LPOSCKFILT0	=	0x4313
G$AX5043_LPOSCKFILT1$0$0 == 0x4312
_AX5043_LPOSCKFILT1	=	0x4312
G$AX5043_LPOSCPER0$0$0 == 0x4319
_AX5043_LPOSCPER0	=	0x4319
G$AX5043_LPOSCPER1$0$0 == 0x4318
_AX5043_LPOSCPER1	=	0x4318
G$AX5043_LPOSCREF0$0$0 == 0x4315
_AX5043_LPOSCREF0	=	0x4315
G$AX5043_LPOSCREF1$0$0 == 0x4314
_AX5043_LPOSCREF1	=	0x4314
G$AX5043_LPOSCSTATUS$0$0 == 0x4311
_AX5043_LPOSCSTATUS	=	0x4311
G$AX5043_MATCH0LEN$0$0 == 0x4214
_AX5043_MATCH0LEN	=	0x4214
G$AX5043_MATCH0MAX$0$0 == 0x4216
_AX5043_MATCH0MAX	=	0x4216
G$AX5043_MATCH0MIN$0$0 == 0x4215
_AX5043_MATCH0MIN	=	0x4215
G$AX5043_MATCH0PAT0$0$0 == 0x4213
_AX5043_MATCH0PAT0	=	0x4213
G$AX5043_MATCH0PAT1$0$0 == 0x4212
_AX5043_MATCH0PAT1	=	0x4212
G$AX5043_MATCH0PAT2$0$0 == 0x4211
_AX5043_MATCH0PAT2	=	0x4211
G$AX5043_MATCH0PAT3$0$0 == 0x4210
_AX5043_MATCH0PAT3	=	0x4210
G$AX5043_MATCH1LEN$0$0 == 0x421c
_AX5043_MATCH1LEN	=	0x421c
G$AX5043_MATCH1MAX$0$0 == 0x421e
_AX5043_MATCH1MAX	=	0x421e
G$AX5043_MATCH1MIN$0$0 == 0x421d
_AX5043_MATCH1MIN	=	0x421d
G$AX5043_MATCH1PAT0$0$0 == 0x4219
_AX5043_MATCH1PAT0	=	0x4219
G$AX5043_MATCH1PAT1$0$0 == 0x4218
_AX5043_MATCH1PAT1	=	0x4218
G$AX5043_MAXDROFFSET0$0$0 == 0x4108
_AX5043_MAXDROFFSET0	=	0x4108
G$AX5043_MAXDROFFSET1$0$0 == 0x4107
_AX5043_MAXDROFFSET1	=	0x4107
G$AX5043_MAXDROFFSET2$0$0 == 0x4106
_AX5043_MAXDROFFSET2	=	0x4106
G$AX5043_MAXRFOFFSET0$0$0 == 0x410b
_AX5043_MAXRFOFFSET0	=	0x410b
G$AX5043_MAXRFOFFSET1$0$0 == 0x410a
_AX5043_MAXRFOFFSET1	=	0x410a
G$AX5043_MAXRFOFFSET2$0$0 == 0x4109
_AX5043_MAXRFOFFSET2	=	0x4109
G$AX5043_MODCFGA$0$0 == 0x4164
_AX5043_MODCFGA	=	0x4164
G$AX5043_MODCFGF$0$0 == 0x4160
_AX5043_MODCFGF	=	0x4160
G$AX5043_MODCFGP$0$0 == 0x4f5f
_AX5043_MODCFGP	=	0x4f5f
G$AX5043_MODULATION$0$0 == 0x4010
_AX5043_MODULATION	=	0x4010
G$AX5043_PINFUNCANTSEL$0$0 == 0x4025
_AX5043_PINFUNCANTSEL	=	0x4025
G$AX5043_PINFUNCDATA$0$0 == 0x4023
_AX5043_PINFUNCDATA	=	0x4023
G$AX5043_PINFUNCDCLK$0$0 == 0x4022
_AX5043_PINFUNCDCLK	=	0x4022
G$AX5043_PINFUNCIRQ$0$0 == 0x4024
_AX5043_PINFUNCIRQ	=	0x4024
G$AX5043_PINFUNCPWRAMP$0$0 == 0x4026
_AX5043_PINFUNCPWRAMP	=	0x4026
G$AX5043_PINFUNCSYSCLK$0$0 == 0x4021
_AX5043_PINFUNCSYSCLK	=	0x4021
G$AX5043_PINSTATE$0$0 == 0x4020
_AX5043_PINSTATE	=	0x4020
G$AX5043_PKTACCEPTFLAGS$0$0 == 0x4233
_AX5043_PKTACCEPTFLAGS	=	0x4233
G$AX5043_PKTCHUNKSIZE$0$0 == 0x4230
_AX5043_PKTCHUNKSIZE	=	0x4230
G$AX5043_PKTMISCFLAGS$0$0 == 0x4231
_AX5043_PKTMISCFLAGS	=	0x4231
G$AX5043_PKTSTOREFLAGS$0$0 == 0x4232
_AX5043_PKTSTOREFLAGS	=	0x4232
G$AX5043_PLLCPI$0$0 == 0x4031
_AX5043_PLLCPI	=	0x4031
G$AX5043_PLLCPIBOOST$0$0 == 0x4039
_AX5043_PLLCPIBOOST	=	0x4039
G$AX5043_PLLLOCKDET$0$0 == 0x4182
_AX5043_PLLLOCKDET	=	0x4182
G$AX5043_PLLLOOP$0$0 == 0x4030
_AX5043_PLLLOOP	=	0x4030
G$AX5043_PLLLOOPBOOST$0$0 == 0x4038
_AX5043_PLLLOOPBOOST	=	0x4038
G$AX5043_PLLRANGINGA$0$0 == 0x4033
_AX5043_PLLRANGINGA	=	0x4033
G$AX5043_PLLRANGINGB$0$0 == 0x403b
_AX5043_PLLRANGINGB	=	0x403b
G$AX5043_PLLRNGCLK$0$0 == 0x4183
_AX5043_PLLRNGCLK	=	0x4183
G$AX5043_PLLVCODIV$0$0 == 0x4032
_AX5043_PLLVCODIV	=	0x4032
G$AX5043_PLLVCOI$0$0 == 0x4180
_AX5043_PLLVCOI	=	0x4180
G$AX5043_PLLVCOIR$0$0 == 0x4181
_AX5043_PLLVCOIR	=	0x4181
G$AX5043_POWCTRL1$0$0 == 0x4f08
_AX5043_POWCTRL1	=	0x4f08
G$AX5043_POWIRQMASK$0$0 == 0x4005
_AX5043_POWIRQMASK	=	0x4005
G$AX5043_POWSTAT$0$0 == 0x4003
_AX5043_POWSTAT	=	0x4003
G$AX5043_POWSTICKYSTAT$0$0 == 0x4004
_AX5043_POWSTICKYSTAT	=	0x4004
G$AX5043_PWRAMP$0$0 == 0x4027
_AX5043_PWRAMP	=	0x4027
G$AX5043_PWRMODE$0$0 == 0x4002
_AX5043_PWRMODE	=	0x4002
G$AX5043_RADIOEVENTMASK0$0$0 == 0x4009
_AX5043_RADIOEVENTMASK0	=	0x4009
G$AX5043_RADIOEVENTMASK1$0$0 == 0x4008
_AX5043_RADIOEVENTMASK1	=	0x4008
G$AX5043_RADIOEVENTREQ0$0$0 == 0x400f
_AX5043_RADIOEVENTREQ0	=	0x400f
G$AX5043_RADIOEVENTREQ1$0$0 == 0x400e
_AX5043_RADIOEVENTREQ1	=	0x400e
G$AX5043_RADIOSTATE$0$0 == 0x401c
_AX5043_RADIOSTATE	=	0x401c
G$AX5043_REF$0$0 == 0x4f0d
_AX5043_REF	=	0x4f0d
G$AX5043_RSSI$0$0 == 0x4040
_AX5043_RSSI	=	0x4040
G$AX5043_RSSIABSTHR$0$0 == 0x422d
_AX5043_RSSIABSTHR	=	0x422d
G$AX5043_RSSIREFERENCE$0$0 == 0x422c
_AX5043_RSSIREFERENCE	=	0x422c
G$AX5043_RXDATARATE0$0$0 == 0x4105
_AX5043_RXDATARATE0	=	0x4105
G$AX5043_RXDATARATE1$0$0 == 0x4104
_AX5043_RXDATARATE1	=	0x4104
G$AX5043_RXDATARATE2$0$0 == 0x4103
_AX5043_RXDATARATE2	=	0x4103
G$AX5043_SCRATCH$0$0 == 0x4001
_AX5043_SCRATCH	=	0x4001
G$AX5043_SILICONREVISION$0$0 == 0x4000
_AX5043_SILICONREVISION	=	0x4000
G$AX5043_TIMER0$0$0 == 0x405b
_AX5043_TIMER0	=	0x405b
G$AX5043_TIMER1$0$0 == 0x405a
_AX5043_TIMER1	=	0x405a
G$AX5043_TIMER2$0$0 == 0x4059
_AX5043_TIMER2	=	0x4059
G$AX5043_TMGRXAGC$0$0 == 0x4227
_AX5043_TMGRXAGC	=	0x4227
G$AX5043_TMGRXBOOST$0$0 == 0x4223
_AX5043_TMGRXBOOST	=	0x4223
G$AX5043_TMGRXCOARSEAGC$0$0 == 0x4226
_AX5043_TMGRXCOARSEAGC	=	0x4226
G$AX5043_TMGRXOFFSACQ$0$0 == 0x4225
_AX5043_TMGRXOFFSACQ	=	0x4225
G$AX5043_TMGRXPREAMBLE1$0$0 == 0x4229
_AX5043_TMGRXPREAMBLE1	=	0x4229
G$AX5043_TMGRXPREAMBLE2$0$0 == 0x422a
_AX5043_TMGRXPREAMBLE2	=	0x422a
G$AX5043_TMGRXPREAMBLE3$0$0 == 0x422b
_AX5043_TMGRXPREAMBLE3	=	0x422b
G$AX5043_TMGRXRSSI$0$0 == 0x4228
_AX5043_TMGRXRSSI	=	0x4228
G$AX5043_TMGRXSETTLE$0$0 == 0x4224
_AX5043_TMGRXSETTLE	=	0x4224
G$AX5043_TMGTXBOOST$0$0 == 0x4220
_AX5043_TMGTXBOOST	=	0x4220
G$AX5043_TMGTXSETTLE$0$0 == 0x4221
_AX5043_TMGTXSETTLE	=	0x4221
G$AX5043_TRKAFSKDEMOD0$0$0 == 0x4055
_AX5043_TRKAFSKDEMOD0	=	0x4055
G$AX5043_TRKAFSKDEMOD1$0$0 == 0x4054
_AX5043_TRKAFSKDEMOD1	=	0x4054
G$AX5043_TRKAMPLITUDE0$0$0 == 0x4049
_AX5043_TRKAMPLITUDE0	=	0x4049
G$AX5043_TRKAMPLITUDE1$0$0 == 0x4048
_AX5043_TRKAMPLITUDE1	=	0x4048
G$AX5043_TRKDATARATE0$0$0 == 0x4047
_AX5043_TRKDATARATE0	=	0x4047
G$AX5043_TRKDATARATE1$0$0 == 0x4046
_AX5043_TRKDATARATE1	=	0x4046
G$AX5043_TRKDATARATE2$0$0 == 0x4045
_AX5043_TRKDATARATE2	=	0x4045
G$AX5043_TRKFREQ0$0$0 == 0x4051
_AX5043_TRKFREQ0	=	0x4051
G$AX5043_TRKFREQ1$0$0 == 0x4050
_AX5043_TRKFREQ1	=	0x4050
G$AX5043_TRKFSKDEMOD0$0$0 == 0x4053
_AX5043_TRKFSKDEMOD0	=	0x4053
G$AX5043_TRKFSKDEMOD1$0$0 == 0x4052
_AX5043_TRKFSKDEMOD1	=	0x4052
G$AX5043_TRKPHASE0$0$0 == 0x404b
_AX5043_TRKPHASE0	=	0x404b
G$AX5043_TRKPHASE1$0$0 == 0x404a
_AX5043_TRKPHASE1	=	0x404a
G$AX5043_TRKRFFREQ0$0$0 == 0x404f
_AX5043_TRKRFFREQ0	=	0x404f
G$AX5043_TRKRFFREQ1$0$0 == 0x404e
_AX5043_TRKRFFREQ1	=	0x404e
G$AX5043_TRKRFFREQ2$0$0 == 0x404d
_AX5043_TRKRFFREQ2	=	0x404d
G$AX5043_TXPWRCOEFFA0$0$0 == 0x4169
_AX5043_TXPWRCOEFFA0	=	0x4169
G$AX5043_TXPWRCOEFFA1$0$0 == 0x4168
_AX5043_TXPWRCOEFFA1	=	0x4168
G$AX5043_TXPWRCOEFFB0$0$0 == 0x416b
_AX5043_TXPWRCOEFFB0	=	0x416b
G$AX5043_TXPWRCOEFFB1$0$0 == 0x416a
_AX5043_TXPWRCOEFFB1	=	0x416a
G$AX5043_TXPWRCOEFFC0$0$0 == 0x416d
_AX5043_TXPWRCOEFFC0	=	0x416d
G$AX5043_TXPWRCOEFFC1$0$0 == 0x416c
_AX5043_TXPWRCOEFFC1	=	0x416c
G$AX5043_TXPWRCOEFFD0$0$0 == 0x416f
_AX5043_TXPWRCOEFFD0	=	0x416f
G$AX5043_TXPWRCOEFFD1$0$0 == 0x416e
_AX5043_TXPWRCOEFFD1	=	0x416e
G$AX5043_TXPWRCOEFFE0$0$0 == 0x4171
_AX5043_TXPWRCOEFFE0	=	0x4171
G$AX5043_TXPWRCOEFFE1$0$0 == 0x4170
_AX5043_TXPWRCOEFFE1	=	0x4170
G$AX5043_TXRATE0$0$0 == 0x4167
_AX5043_TXRATE0	=	0x4167
G$AX5043_TXRATE1$0$0 == 0x4166
_AX5043_TXRATE1	=	0x4166
G$AX5043_TXRATE2$0$0 == 0x4165
_AX5043_TXRATE2	=	0x4165
G$AX5043_WAKEUP0$0$0 == 0x406b
_AX5043_WAKEUP0	=	0x406b
G$AX5043_WAKEUP1$0$0 == 0x406a
_AX5043_WAKEUP1	=	0x406a
G$AX5043_WAKEUPFREQ0$0$0 == 0x406d
_AX5043_WAKEUPFREQ0	=	0x406d
G$AX5043_WAKEUPFREQ1$0$0 == 0x406c
_AX5043_WAKEUPFREQ1	=	0x406c
G$AX5043_WAKEUPTIMER0$0$0 == 0x4069
_AX5043_WAKEUPTIMER0	=	0x4069
G$AX5043_WAKEUPTIMER1$0$0 == 0x4068
_AX5043_WAKEUPTIMER1	=	0x4068
G$AX5043_WAKEUPXOEARLY$0$0 == 0x406e
_AX5043_WAKEUPXOEARLY	=	0x406e
G$AX5043_XTALAMPL$0$0 == 0x4f11
_AX5043_XTALAMPL	=	0x4f11
G$AX5043_XTALCAP$0$0 == 0x4184
_AX5043_XTALCAP	=	0x4184
G$AX5043_XTALOSC$0$0 == 0x4f10
_AX5043_XTALOSC	=	0x4f10
G$AX5043_XTALSTATUS$0$0 == 0x401d
_AX5043_XTALSTATUS	=	0x401d
G$AX5043_0xF00$0$0 == 0x4f00
_AX5043_0xF00	=	0x4f00
G$AX5043_0xF0C$0$0 == 0x4f0c
_AX5043_0xF0C	=	0x4f0c
G$AX5043_0xF18$0$0 == 0x4f18
_AX5043_0xF18	=	0x4f18
G$AX5043_0xF1C$0$0 == 0x4f1c
_AX5043_0xF1C	=	0x4f1c
G$AX5043_0xF21$0$0 == 0x4f21
_AX5043_0xF21	=	0x4f21
G$AX5043_0xF22$0$0 == 0x4f22
_AX5043_0xF22	=	0x4f22
G$AX5043_0xF23$0$0 == 0x4f23
_AX5043_0xF23	=	0x4f23
G$AX5043_0xF26$0$0 == 0x4f26
_AX5043_0xF26	=	0x4f26
G$AX5043_0xF30$0$0 == 0x4f30
_AX5043_0xF30	=	0x4f30
G$AX5043_0xF31$0$0 == 0x4f31
_AX5043_0xF31	=	0x4f31
G$AX5043_0xF32$0$0 == 0x4f32
_AX5043_0xF32	=	0x4f32
G$AX5043_0xF33$0$0 == 0x4f33
_AX5043_0xF33	=	0x4f33
G$AX5043_0xF34$0$0 == 0x4f34
_AX5043_0xF34	=	0x4f34
G$AX5043_0xF35$0$0 == 0x4f35
_AX5043_0xF35	=	0x4f35
G$AX5043_0xF44$0$0 == 0x4f44
_AX5043_0xF44	=	0x4f44
G$AX5043_AGCAHYST0$0$0 == 0x4122
_AX5043_AGCAHYST0	=	0x4122
G$AX5043_AGCAHYST1$0$0 == 0x4132
_AX5043_AGCAHYST1	=	0x4132
G$AX5043_AGCAHYST2$0$0 == 0x4142
_AX5043_AGCAHYST2	=	0x4142
G$AX5043_AGCAHYST3$0$0 == 0x4152
_AX5043_AGCAHYST3	=	0x4152
G$AX5043_AGCGAIN0$0$0 == 0x4120
_AX5043_AGCGAIN0	=	0x4120
G$AX5043_AGCGAIN1$0$0 == 0x4130
_AX5043_AGCGAIN1	=	0x4130
G$AX5043_AGCGAIN2$0$0 == 0x4140
_AX5043_AGCGAIN2	=	0x4140
G$AX5043_AGCGAIN3$0$0 == 0x4150
_AX5043_AGCGAIN3	=	0x4150
G$AX5043_AGCMINMAX0$0$0 == 0x4123
_AX5043_AGCMINMAX0	=	0x4123
G$AX5043_AGCMINMAX1$0$0 == 0x4133
_AX5043_AGCMINMAX1	=	0x4133
G$AX5043_AGCMINMAX2$0$0 == 0x4143
_AX5043_AGCMINMAX2	=	0x4143
G$AX5043_AGCMINMAX3$0$0 == 0x4153
_AX5043_AGCMINMAX3	=	0x4153
G$AX5043_AGCTARGET0$0$0 == 0x4121
_AX5043_AGCTARGET0	=	0x4121
G$AX5043_AGCTARGET1$0$0 == 0x4131
_AX5043_AGCTARGET1	=	0x4131
G$AX5043_AGCTARGET2$0$0 == 0x4141
_AX5043_AGCTARGET2	=	0x4141
G$AX5043_AGCTARGET3$0$0 == 0x4151
_AX5043_AGCTARGET3	=	0x4151
G$AX5043_AMPLITUDEGAIN0$0$0 == 0x412b
_AX5043_AMPLITUDEGAIN0	=	0x412b
G$AX5043_AMPLITUDEGAIN1$0$0 == 0x413b
_AX5043_AMPLITUDEGAIN1	=	0x413b
G$AX5043_AMPLITUDEGAIN2$0$0 == 0x414b
_AX5043_AMPLITUDEGAIN2	=	0x414b
G$AX5043_AMPLITUDEGAIN3$0$0 == 0x415b
_AX5043_AMPLITUDEGAIN3	=	0x415b
G$AX5043_BBOFFSRES0$0$0 == 0x412f
_AX5043_BBOFFSRES0	=	0x412f
G$AX5043_BBOFFSRES1$0$0 == 0x413f
_AX5043_BBOFFSRES1	=	0x413f
G$AX5043_BBOFFSRES2$0$0 == 0x414f
_AX5043_BBOFFSRES2	=	0x414f
G$AX5043_BBOFFSRES3$0$0 == 0x415f
_AX5043_BBOFFSRES3	=	0x415f
G$AX5043_DRGAIN0$0$0 == 0x4125
_AX5043_DRGAIN0	=	0x4125
G$AX5043_DRGAIN1$0$0 == 0x4135
_AX5043_DRGAIN1	=	0x4135
G$AX5043_DRGAIN2$0$0 == 0x4145
_AX5043_DRGAIN2	=	0x4145
G$AX5043_DRGAIN3$0$0 == 0x4155
_AX5043_DRGAIN3	=	0x4155
G$AX5043_FOURFSK0$0$0 == 0x412e
_AX5043_FOURFSK0	=	0x412e
G$AX5043_FOURFSK1$0$0 == 0x413e
_AX5043_FOURFSK1	=	0x413e
G$AX5043_FOURFSK2$0$0 == 0x414e
_AX5043_FOURFSK2	=	0x414e
G$AX5043_FOURFSK3$0$0 == 0x415e
_AX5043_FOURFSK3	=	0x415e
G$AX5043_FREQDEV00$0$0 == 0x412d
_AX5043_FREQDEV00	=	0x412d
G$AX5043_FREQDEV01$0$0 == 0x413d
_AX5043_FREQDEV01	=	0x413d
G$AX5043_FREQDEV02$0$0 == 0x414d
_AX5043_FREQDEV02	=	0x414d
G$AX5043_FREQDEV03$0$0 == 0x415d
_AX5043_FREQDEV03	=	0x415d
G$AX5043_FREQDEV10$0$0 == 0x412c
_AX5043_FREQDEV10	=	0x412c
G$AX5043_FREQDEV11$0$0 == 0x413c
_AX5043_FREQDEV11	=	0x413c
G$AX5043_FREQDEV12$0$0 == 0x414c
_AX5043_FREQDEV12	=	0x414c
G$AX5043_FREQDEV13$0$0 == 0x415c
_AX5043_FREQDEV13	=	0x415c
G$AX5043_FREQUENCYGAINA0$0$0 == 0x4127
_AX5043_FREQUENCYGAINA0	=	0x4127
G$AX5043_FREQUENCYGAINA1$0$0 == 0x4137
_AX5043_FREQUENCYGAINA1	=	0x4137
G$AX5043_FREQUENCYGAINA2$0$0 == 0x4147
_AX5043_FREQUENCYGAINA2	=	0x4147
G$AX5043_FREQUENCYGAINA3$0$0 == 0x4157
_AX5043_FREQUENCYGAINA3	=	0x4157
G$AX5043_FREQUENCYGAINB0$0$0 == 0x4128
_AX5043_FREQUENCYGAINB0	=	0x4128
G$AX5043_FREQUENCYGAINB1$0$0 == 0x4138
_AX5043_FREQUENCYGAINB1	=	0x4138
G$AX5043_FREQUENCYGAINB2$0$0 == 0x4148
_AX5043_FREQUENCYGAINB2	=	0x4148
G$AX5043_FREQUENCYGAINB3$0$0 == 0x4158
_AX5043_FREQUENCYGAINB3	=	0x4158
G$AX5043_FREQUENCYGAINC0$0$0 == 0x4129
_AX5043_FREQUENCYGAINC0	=	0x4129
G$AX5043_FREQUENCYGAINC1$0$0 == 0x4139
_AX5043_FREQUENCYGAINC1	=	0x4139
G$AX5043_FREQUENCYGAINC2$0$0 == 0x4149
_AX5043_FREQUENCYGAINC2	=	0x4149
G$AX5043_FREQUENCYGAINC3$0$0 == 0x4159
_AX5043_FREQUENCYGAINC3	=	0x4159
G$AX5043_FREQUENCYGAIND0$0$0 == 0x412a
_AX5043_FREQUENCYGAIND0	=	0x412a
G$AX5043_FREQUENCYGAIND1$0$0 == 0x413a
_AX5043_FREQUENCYGAIND1	=	0x413a
G$AX5043_FREQUENCYGAIND2$0$0 == 0x414a
_AX5043_FREQUENCYGAIND2	=	0x414a
G$AX5043_FREQUENCYGAIND3$0$0 == 0x415a
_AX5043_FREQUENCYGAIND3	=	0x415a
G$AX5043_FREQUENCYLEAK$0$0 == 0x4116
_AX5043_FREQUENCYLEAK	=	0x4116
G$AX5043_PHASEGAIN0$0$0 == 0x4126
_AX5043_PHASEGAIN0	=	0x4126
G$AX5043_PHASEGAIN1$0$0 == 0x4136
_AX5043_PHASEGAIN1	=	0x4136
G$AX5043_PHASEGAIN2$0$0 == 0x4146
_AX5043_PHASEGAIN2	=	0x4146
G$AX5043_PHASEGAIN3$0$0 == 0x4156
_AX5043_PHASEGAIN3	=	0x4156
G$AX5043_PKTADDR0$0$0 == 0x4207
_AX5043_PKTADDR0	=	0x4207
G$AX5043_PKTADDR1$0$0 == 0x4206
_AX5043_PKTADDR1	=	0x4206
G$AX5043_PKTADDR2$0$0 == 0x4205
_AX5043_PKTADDR2	=	0x4205
G$AX5043_PKTADDR3$0$0 == 0x4204
_AX5043_PKTADDR3	=	0x4204
G$AX5043_PKTADDRCFG$0$0 == 0x4200
_AX5043_PKTADDRCFG	=	0x4200
G$AX5043_PKTADDRMASK0$0$0 == 0x420b
_AX5043_PKTADDRMASK0	=	0x420b
G$AX5043_PKTADDRMASK1$0$0 == 0x420a
_AX5043_PKTADDRMASK1	=	0x420a
G$AX5043_PKTADDRMASK2$0$0 == 0x4209
_AX5043_PKTADDRMASK2	=	0x4209
G$AX5043_PKTADDRMASK3$0$0 == 0x4208
_AX5043_PKTADDRMASK3	=	0x4208
G$AX5043_PKTLENCFG$0$0 == 0x4201
_AX5043_PKTLENCFG	=	0x4201
G$AX5043_PKTLENOFFSET$0$0 == 0x4202
_AX5043_PKTLENOFFSET	=	0x4202
G$AX5043_PKTMAXLEN$0$0 == 0x4203
_AX5043_PKTMAXLEN	=	0x4203
G$AX5043_RXPARAMCURSET$0$0 == 0x4118
_AX5043_RXPARAMCURSET	=	0x4118
G$AX5043_RXPARAMSETS$0$0 == 0x4117
_AX5043_RXPARAMSETS	=	0x4117
G$AX5043_TIMEGAIN0$0$0 == 0x4124
_AX5043_TIMEGAIN0	=	0x4124
G$AX5043_TIMEGAIN1$0$0 == 0x4134
_AX5043_TIMEGAIN1	=	0x4134
G$AX5043_TIMEGAIN2$0$0 == 0x4144
_AX5043_TIMEGAIN2	=	0x4144
G$AX5043_TIMEGAIN3$0$0 == 0x4154
_AX5043_TIMEGAIN3	=	0x4154
G$AX5043_AFSKCTRLNB$0$0 == 0x5114
_AX5043_AFSKCTRLNB	=	0x5114
G$AX5043_AFSKMARK0NB$0$0 == 0x5113
_AX5043_AFSKMARK0NB	=	0x5113
G$AX5043_AFSKMARK1NB$0$0 == 0x5112
_AX5043_AFSKMARK1NB	=	0x5112
G$AX5043_AFSKSPACE0NB$0$0 == 0x5111
_AX5043_AFSKSPACE0NB	=	0x5111
G$AX5043_AFSKSPACE1NB$0$0 == 0x5110
_AX5043_AFSKSPACE1NB	=	0x5110
G$AX5043_AGCCOUNTERNB$0$0 == 0x5043
_AX5043_AGCCOUNTERNB	=	0x5043
G$AX5043_AMPLFILTERNB$0$0 == 0x5115
_AX5043_AMPLFILTERNB	=	0x5115
G$AX5043_BBOFFSCAPNB$0$0 == 0x5189
_AX5043_BBOFFSCAPNB	=	0x5189
G$AX5043_BBTUNENB$0$0 == 0x5188
_AX5043_BBTUNENB	=	0x5188
G$AX5043_BGNDRSSINB$0$0 == 0x5041
_AX5043_BGNDRSSINB	=	0x5041
G$AX5043_BGNDRSSIGAINNB$0$0 == 0x522e
_AX5043_BGNDRSSIGAINNB	=	0x522e
G$AX5043_BGNDRSSITHRNB$0$0 == 0x522f
_AX5043_BGNDRSSITHRNB	=	0x522f
G$AX5043_CRCINIT0NB$0$0 == 0x5017
_AX5043_CRCINIT0NB	=	0x5017
G$AX5043_CRCINIT1NB$0$0 == 0x5016
_AX5043_CRCINIT1NB	=	0x5016
G$AX5043_CRCINIT2NB$0$0 == 0x5015
_AX5043_CRCINIT2NB	=	0x5015
G$AX5043_CRCINIT3NB$0$0 == 0x5014
_AX5043_CRCINIT3NB	=	0x5014
G$AX5043_DACCONFIGNB$0$0 == 0x5332
_AX5043_DACCONFIGNB	=	0x5332
G$AX5043_DACVALUE0NB$0$0 == 0x5331
_AX5043_DACVALUE0NB	=	0x5331
G$AX5043_DACVALUE1NB$0$0 == 0x5330
_AX5043_DACVALUE1NB	=	0x5330
G$AX5043_DECIMATIONNB$0$0 == 0x5102
_AX5043_DECIMATIONNB	=	0x5102
G$AX5043_DIVERSITYNB$0$0 == 0x5042
_AX5043_DIVERSITYNB	=	0x5042
G$AX5043_ENCODINGNB$0$0 == 0x5011
_AX5043_ENCODINGNB	=	0x5011
G$AX5043_FECNB$0$0 == 0x5018
_AX5043_FECNB	=	0x5018
G$AX5043_FECSTATUSNB$0$0 == 0x501a
_AX5043_FECSTATUSNB	=	0x501a
G$AX5043_FECSYNCNB$0$0 == 0x5019
_AX5043_FECSYNCNB	=	0x5019
G$AX5043_FIFOCOUNT0NB$0$0 == 0x502b
_AX5043_FIFOCOUNT0NB	=	0x502b
G$AX5043_FIFOCOUNT1NB$0$0 == 0x502a
_AX5043_FIFOCOUNT1NB	=	0x502a
G$AX5043_FIFODATANB$0$0 == 0x5029
_AX5043_FIFODATANB	=	0x5029
G$AX5043_FIFOFREE0NB$0$0 == 0x502d
_AX5043_FIFOFREE0NB	=	0x502d
G$AX5043_FIFOFREE1NB$0$0 == 0x502c
_AX5043_FIFOFREE1NB	=	0x502c
G$AX5043_FIFOSTATNB$0$0 == 0x5028
_AX5043_FIFOSTATNB	=	0x5028
G$AX5043_FIFOTHRESH0NB$0$0 == 0x502f
_AX5043_FIFOTHRESH0NB	=	0x502f
G$AX5043_FIFOTHRESH1NB$0$0 == 0x502e
_AX5043_FIFOTHRESH1NB	=	0x502e
G$AX5043_FRAMINGNB$0$0 == 0x5012
_AX5043_FRAMINGNB	=	0x5012
G$AX5043_FREQA0NB$0$0 == 0x5037
_AX5043_FREQA0NB	=	0x5037
G$AX5043_FREQA1NB$0$0 == 0x5036
_AX5043_FREQA1NB	=	0x5036
G$AX5043_FREQA2NB$0$0 == 0x5035
_AX5043_FREQA2NB	=	0x5035
G$AX5043_FREQA3NB$0$0 == 0x5034
_AX5043_FREQA3NB	=	0x5034
G$AX5043_FREQB0NB$0$0 == 0x503f
_AX5043_FREQB0NB	=	0x503f
G$AX5043_FREQB1NB$0$0 == 0x503e
_AX5043_FREQB1NB	=	0x503e
G$AX5043_FREQB2NB$0$0 == 0x503d
_AX5043_FREQB2NB	=	0x503d
G$AX5043_FREQB3NB$0$0 == 0x503c
_AX5043_FREQB3NB	=	0x503c
G$AX5043_FSKDEV0NB$0$0 == 0x5163
_AX5043_FSKDEV0NB	=	0x5163
G$AX5043_FSKDEV1NB$0$0 == 0x5162
_AX5043_FSKDEV1NB	=	0x5162
G$AX5043_FSKDEV2NB$0$0 == 0x5161
_AX5043_FSKDEV2NB	=	0x5161
G$AX5043_FSKDMAX0NB$0$0 == 0x510d
_AX5043_FSKDMAX0NB	=	0x510d
G$AX5043_FSKDMAX1NB$0$0 == 0x510c
_AX5043_FSKDMAX1NB	=	0x510c
G$AX5043_FSKDMIN0NB$0$0 == 0x510f
_AX5043_FSKDMIN0NB	=	0x510f
G$AX5043_FSKDMIN1NB$0$0 == 0x510e
_AX5043_FSKDMIN1NB	=	0x510e
G$AX5043_GPADC13VALUE0NB$0$0 == 0x5309
_AX5043_GPADC13VALUE0NB	=	0x5309
G$AX5043_GPADC13VALUE1NB$0$0 == 0x5308
_AX5043_GPADC13VALUE1NB	=	0x5308
G$AX5043_GPADCCTRLNB$0$0 == 0x5300
_AX5043_GPADCCTRLNB	=	0x5300
G$AX5043_GPADCPERIODNB$0$0 == 0x5301
_AX5043_GPADCPERIODNB	=	0x5301
G$AX5043_IFFREQ0NB$0$0 == 0x5101
_AX5043_IFFREQ0NB	=	0x5101
G$AX5043_IFFREQ1NB$0$0 == 0x5100
_AX5043_IFFREQ1NB	=	0x5100
G$AX5043_IRQINVERSION0NB$0$0 == 0x500b
_AX5043_IRQINVERSION0NB	=	0x500b
G$AX5043_IRQINVERSION1NB$0$0 == 0x500a
_AX5043_IRQINVERSION1NB	=	0x500a
G$AX5043_IRQMASK0NB$0$0 == 0x5007
_AX5043_IRQMASK0NB	=	0x5007
G$AX5043_IRQMASK1NB$0$0 == 0x5006
_AX5043_IRQMASK1NB	=	0x5006
G$AX5043_IRQREQUEST0NB$0$0 == 0x500d
_AX5043_IRQREQUEST0NB	=	0x500d
G$AX5043_IRQREQUEST1NB$0$0 == 0x500c
_AX5043_IRQREQUEST1NB	=	0x500c
G$AX5043_LPOSCCONFIGNB$0$0 == 0x5310
_AX5043_LPOSCCONFIGNB	=	0x5310
G$AX5043_LPOSCFREQ0NB$0$0 == 0x5317
_AX5043_LPOSCFREQ0NB	=	0x5317
G$AX5043_LPOSCFREQ1NB$0$0 == 0x5316
_AX5043_LPOSCFREQ1NB	=	0x5316
G$AX5043_LPOSCKFILT0NB$0$0 == 0x5313
_AX5043_LPOSCKFILT0NB	=	0x5313
G$AX5043_LPOSCKFILT1NB$0$0 == 0x5312
_AX5043_LPOSCKFILT1NB	=	0x5312
G$AX5043_LPOSCPER0NB$0$0 == 0x5319
_AX5043_LPOSCPER0NB	=	0x5319
G$AX5043_LPOSCPER1NB$0$0 == 0x5318
_AX5043_LPOSCPER1NB	=	0x5318
G$AX5043_LPOSCREF0NB$0$0 == 0x5315
_AX5043_LPOSCREF0NB	=	0x5315
G$AX5043_LPOSCREF1NB$0$0 == 0x5314
_AX5043_LPOSCREF1NB	=	0x5314
G$AX5043_LPOSCSTATUSNB$0$0 == 0x5311
_AX5043_LPOSCSTATUSNB	=	0x5311
G$AX5043_MATCH0LENNB$0$0 == 0x5214
_AX5043_MATCH0LENNB	=	0x5214
G$AX5043_MATCH0MAXNB$0$0 == 0x5216
_AX5043_MATCH0MAXNB	=	0x5216
G$AX5043_MATCH0MINNB$0$0 == 0x5215
_AX5043_MATCH0MINNB	=	0x5215
G$AX5043_MATCH0PAT0NB$0$0 == 0x5213
_AX5043_MATCH0PAT0NB	=	0x5213
G$AX5043_MATCH0PAT1NB$0$0 == 0x5212
_AX5043_MATCH0PAT1NB	=	0x5212
G$AX5043_MATCH0PAT2NB$0$0 == 0x5211
_AX5043_MATCH0PAT2NB	=	0x5211
G$AX5043_MATCH0PAT3NB$0$0 == 0x5210
_AX5043_MATCH0PAT3NB	=	0x5210
G$AX5043_MATCH1LENNB$0$0 == 0x521c
_AX5043_MATCH1LENNB	=	0x521c
G$AX5043_MATCH1MAXNB$0$0 == 0x521e
_AX5043_MATCH1MAXNB	=	0x521e
G$AX5043_MATCH1MINNB$0$0 == 0x521d
_AX5043_MATCH1MINNB	=	0x521d
G$AX5043_MATCH1PAT0NB$0$0 == 0x5219
_AX5043_MATCH1PAT0NB	=	0x5219
G$AX5043_MATCH1PAT1NB$0$0 == 0x5218
_AX5043_MATCH1PAT1NB	=	0x5218
G$AX5043_MAXDROFFSET0NB$0$0 == 0x5108
_AX5043_MAXDROFFSET0NB	=	0x5108
G$AX5043_MAXDROFFSET1NB$0$0 == 0x5107
_AX5043_MAXDROFFSET1NB	=	0x5107
G$AX5043_MAXDROFFSET2NB$0$0 == 0x5106
_AX5043_MAXDROFFSET2NB	=	0x5106
G$AX5043_MAXRFOFFSET0NB$0$0 == 0x510b
_AX5043_MAXRFOFFSET0NB	=	0x510b
G$AX5043_MAXRFOFFSET1NB$0$0 == 0x510a
_AX5043_MAXRFOFFSET1NB	=	0x510a
G$AX5043_MAXRFOFFSET2NB$0$0 == 0x5109
_AX5043_MAXRFOFFSET2NB	=	0x5109
G$AX5043_MODCFGANB$0$0 == 0x5164
_AX5043_MODCFGANB	=	0x5164
G$AX5043_MODCFGFNB$0$0 == 0x5160
_AX5043_MODCFGFNB	=	0x5160
G$AX5043_MODCFGPNB$0$0 == 0x5f5f
_AX5043_MODCFGPNB	=	0x5f5f
G$AX5043_MODULATIONNB$0$0 == 0x5010
_AX5043_MODULATIONNB	=	0x5010
G$AX5043_PINFUNCANTSELNB$0$0 == 0x5025
_AX5043_PINFUNCANTSELNB	=	0x5025
G$AX5043_PINFUNCDATANB$0$0 == 0x5023
_AX5043_PINFUNCDATANB	=	0x5023
G$AX5043_PINFUNCDCLKNB$0$0 == 0x5022
_AX5043_PINFUNCDCLKNB	=	0x5022
G$AX5043_PINFUNCIRQNB$0$0 == 0x5024
_AX5043_PINFUNCIRQNB	=	0x5024
G$AX5043_PINFUNCPWRAMPNB$0$0 == 0x5026
_AX5043_PINFUNCPWRAMPNB	=	0x5026
G$AX5043_PINFUNCSYSCLKNB$0$0 == 0x5021
_AX5043_PINFUNCSYSCLKNB	=	0x5021
G$AX5043_PINSTATENB$0$0 == 0x5020
_AX5043_PINSTATENB	=	0x5020
G$AX5043_PKTACCEPTFLAGSNB$0$0 == 0x5233
_AX5043_PKTACCEPTFLAGSNB	=	0x5233
G$AX5043_PKTCHUNKSIZENB$0$0 == 0x5230
_AX5043_PKTCHUNKSIZENB	=	0x5230
G$AX5043_PKTMISCFLAGSNB$0$0 == 0x5231
_AX5043_PKTMISCFLAGSNB	=	0x5231
G$AX5043_PKTSTOREFLAGSNB$0$0 == 0x5232
_AX5043_PKTSTOREFLAGSNB	=	0x5232
G$AX5043_PLLCPINB$0$0 == 0x5031
_AX5043_PLLCPINB	=	0x5031
G$AX5043_PLLCPIBOOSTNB$0$0 == 0x5039
_AX5043_PLLCPIBOOSTNB	=	0x5039
G$AX5043_PLLLOCKDETNB$0$0 == 0x5182
_AX5043_PLLLOCKDETNB	=	0x5182
G$AX5043_PLLLOOPNB$0$0 == 0x5030
_AX5043_PLLLOOPNB	=	0x5030
G$AX5043_PLLLOOPBOOSTNB$0$0 == 0x5038
_AX5043_PLLLOOPBOOSTNB	=	0x5038
G$AX5043_PLLRANGINGANB$0$0 == 0x5033
_AX5043_PLLRANGINGANB	=	0x5033
G$AX5043_PLLRANGINGBNB$0$0 == 0x503b
_AX5043_PLLRANGINGBNB	=	0x503b
G$AX5043_PLLRNGCLKNB$0$0 == 0x5183
_AX5043_PLLRNGCLKNB	=	0x5183
G$AX5043_PLLVCODIVNB$0$0 == 0x5032
_AX5043_PLLVCODIVNB	=	0x5032
G$AX5043_PLLVCOINB$0$0 == 0x5180
_AX5043_PLLVCOINB	=	0x5180
G$AX5043_PLLVCOIRNB$0$0 == 0x5181
_AX5043_PLLVCOIRNB	=	0x5181
G$AX5043_POWCTRL1NB$0$0 == 0x5f08
_AX5043_POWCTRL1NB	=	0x5f08
G$AX5043_POWIRQMASKNB$0$0 == 0x5005
_AX5043_POWIRQMASKNB	=	0x5005
G$AX5043_POWSTATNB$0$0 == 0x5003
_AX5043_POWSTATNB	=	0x5003
G$AX5043_POWSTICKYSTATNB$0$0 == 0x5004
_AX5043_POWSTICKYSTATNB	=	0x5004
G$AX5043_PWRAMPNB$0$0 == 0x5027
_AX5043_PWRAMPNB	=	0x5027
G$AX5043_PWRMODENB$0$0 == 0x5002
_AX5043_PWRMODENB	=	0x5002
G$AX5043_RADIOEVENTMASK0NB$0$0 == 0x5009
_AX5043_RADIOEVENTMASK0NB	=	0x5009
G$AX5043_RADIOEVENTMASK1NB$0$0 == 0x5008
_AX5043_RADIOEVENTMASK1NB	=	0x5008
G$AX5043_RADIOEVENTREQ0NB$0$0 == 0x500f
_AX5043_RADIOEVENTREQ0NB	=	0x500f
G$AX5043_RADIOEVENTREQ1NB$0$0 == 0x500e
_AX5043_RADIOEVENTREQ1NB	=	0x500e
G$AX5043_RADIOSTATENB$0$0 == 0x501c
_AX5043_RADIOSTATENB	=	0x501c
G$AX5043_REFNB$0$0 == 0x5f0d
_AX5043_REFNB	=	0x5f0d
G$AX5043_RSSINB$0$0 == 0x5040
_AX5043_RSSINB	=	0x5040
G$AX5043_RSSIABSTHRNB$0$0 == 0x522d
_AX5043_RSSIABSTHRNB	=	0x522d
G$AX5043_RSSIREFERENCENB$0$0 == 0x522c
_AX5043_RSSIREFERENCENB	=	0x522c
G$AX5043_RXDATARATE0NB$0$0 == 0x5105
_AX5043_RXDATARATE0NB	=	0x5105
G$AX5043_RXDATARATE1NB$0$0 == 0x5104
_AX5043_RXDATARATE1NB	=	0x5104
G$AX5043_RXDATARATE2NB$0$0 == 0x5103
_AX5043_RXDATARATE2NB	=	0x5103
G$AX5043_SCRATCHNB$0$0 == 0x5001
_AX5043_SCRATCHNB	=	0x5001
G$AX5043_SILICONREVISIONNB$0$0 == 0x5000
_AX5043_SILICONREVISIONNB	=	0x5000
G$AX5043_TIMER0NB$0$0 == 0x505b
_AX5043_TIMER0NB	=	0x505b
G$AX5043_TIMER1NB$0$0 == 0x505a
_AX5043_TIMER1NB	=	0x505a
G$AX5043_TIMER2NB$0$0 == 0x5059
_AX5043_TIMER2NB	=	0x5059
G$AX5043_TMGRXAGCNB$0$0 == 0x5227
_AX5043_TMGRXAGCNB	=	0x5227
G$AX5043_TMGRXBOOSTNB$0$0 == 0x5223
_AX5043_TMGRXBOOSTNB	=	0x5223
G$AX5043_TMGRXCOARSEAGCNB$0$0 == 0x5226
_AX5043_TMGRXCOARSEAGCNB	=	0x5226
G$AX5043_TMGRXOFFSACQNB$0$0 == 0x5225
_AX5043_TMGRXOFFSACQNB	=	0x5225
G$AX5043_TMGRXPREAMBLE1NB$0$0 == 0x5229
_AX5043_TMGRXPREAMBLE1NB	=	0x5229
G$AX5043_TMGRXPREAMBLE2NB$0$0 == 0x522a
_AX5043_TMGRXPREAMBLE2NB	=	0x522a
G$AX5043_TMGRXPREAMBLE3NB$0$0 == 0x522b
_AX5043_TMGRXPREAMBLE3NB	=	0x522b
G$AX5043_TMGRXRSSINB$0$0 == 0x5228
_AX5043_TMGRXRSSINB	=	0x5228
G$AX5043_TMGRXSETTLENB$0$0 == 0x5224
_AX5043_TMGRXSETTLENB	=	0x5224
G$AX5043_TMGTXBOOSTNB$0$0 == 0x5220
_AX5043_TMGTXBOOSTNB	=	0x5220
G$AX5043_TMGTXSETTLENB$0$0 == 0x5221
_AX5043_TMGTXSETTLENB	=	0x5221
G$AX5043_TRKAFSKDEMOD0NB$0$0 == 0x5055
_AX5043_TRKAFSKDEMOD0NB	=	0x5055
G$AX5043_TRKAFSKDEMOD1NB$0$0 == 0x5054
_AX5043_TRKAFSKDEMOD1NB	=	0x5054
G$AX5043_TRKAMPLITUDE0NB$0$0 == 0x5049
_AX5043_TRKAMPLITUDE0NB	=	0x5049
G$AX5043_TRKAMPLITUDE1NB$0$0 == 0x5048
_AX5043_TRKAMPLITUDE1NB	=	0x5048
G$AX5043_TRKDATARATE0NB$0$0 == 0x5047
_AX5043_TRKDATARATE0NB	=	0x5047
G$AX5043_TRKDATARATE1NB$0$0 == 0x5046
_AX5043_TRKDATARATE1NB	=	0x5046
G$AX5043_TRKDATARATE2NB$0$0 == 0x5045
_AX5043_TRKDATARATE2NB	=	0x5045
G$AX5043_TRKFREQ0NB$0$0 == 0x5051
_AX5043_TRKFREQ0NB	=	0x5051
G$AX5043_TRKFREQ1NB$0$0 == 0x5050
_AX5043_TRKFREQ1NB	=	0x5050
G$AX5043_TRKFSKDEMOD0NB$0$0 == 0x5053
_AX5043_TRKFSKDEMOD0NB	=	0x5053
G$AX5043_TRKFSKDEMOD1NB$0$0 == 0x5052
_AX5043_TRKFSKDEMOD1NB	=	0x5052
G$AX5043_TRKPHASE0NB$0$0 == 0x504b
_AX5043_TRKPHASE0NB	=	0x504b
G$AX5043_TRKPHASE1NB$0$0 == 0x504a
_AX5043_TRKPHASE1NB	=	0x504a
G$AX5043_TRKRFFREQ0NB$0$0 == 0x504f
_AX5043_TRKRFFREQ0NB	=	0x504f
G$AX5043_TRKRFFREQ1NB$0$0 == 0x504e
_AX5043_TRKRFFREQ1NB	=	0x504e
G$AX5043_TRKRFFREQ2NB$0$0 == 0x504d
_AX5043_TRKRFFREQ2NB	=	0x504d
G$AX5043_TXPWRCOEFFA0NB$0$0 == 0x5169
_AX5043_TXPWRCOEFFA0NB	=	0x5169
G$AX5043_TXPWRCOEFFA1NB$0$0 == 0x5168
_AX5043_TXPWRCOEFFA1NB	=	0x5168
G$AX5043_TXPWRCOEFFB0NB$0$0 == 0x516b
_AX5043_TXPWRCOEFFB0NB	=	0x516b
G$AX5043_TXPWRCOEFFB1NB$0$0 == 0x516a
_AX5043_TXPWRCOEFFB1NB	=	0x516a
G$AX5043_TXPWRCOEFFC0NB$0$0 == 0x516d
_AX5043_TXPWRCOEFFC0NB	=	0x516d
G$AX5043_TXPWRCOEFFC1NB$0$0 == 0x516c
_AX5043_TXPWRCOEFFC1NB	=	0x516c
G$AX5043_TXPWRCOEFFD0NB$0$0 == 0x516f
_AX5043_TXPWRCOEFFD0NB	=	0x516f
G$AX5043_TXPWRCOEFFD1NB$0$0 == 0x516e
_AX5043_TXPWRCOEFFD1NB	=	0x516e
G$AX5043_TXPWRCOEFFE0NB$0$0 == 0x5171
_AX5043_TXPWRCOEFFE0NB	=	0x5171
G$AX5043_TXPWRCOEFFE1NB$0$0 == 0x5170
_AX5043_TXPWRCOEFFE1NB	=	0x5170
G$AX5043_TXRATE0NB$0$0 == 0x5167
_AX5043_TXRATE0NB	=	0x5167
G$AX5043_TXRATE1NB$0$0 == 0x5166
_AX5043_TXRATE1NB	=	0x5166
G$AX5043_TXRATE2NB$0$0 == 0x5165
_AX5043_TXRATE2NB	=	0x5165
G$AX5043_WAKEUP0NB$0$0 == 0x506b
_AX5043_WAKEUP0NB	=	0x506b
G$AX5043_WAKEUP1NB$0$0 == 0x506a
_AX5043_WAKEUP1NB	=	0x506a
G$AX5043_WAKEUPFREQ0NB$0$0 == 0x506d
_AX5043_WAKEUPFREQ0NB	=	0x506d
G$AX5043_WAKEUPFREQ1NB$0$0 == 0x506c
_AX5043_WAKEUPFREQ1NB	=	0x506c
G$AX5043_WAKEUPTIMER0NB$0$0 == 0x5069
_AX5043_WAKEUPTIMER0NB	=	0x5069
G$AX5043_WAKEUPTIMER1NB$0$0 == 0x5068
_AX5043_WAKEUPTIMER1NB	=	0x5068
G$AX5043_WAKEUPXOEARLYNB$0$0 == 0x506e
_AX5043_WAKEUPXOEARLYNB	=	0x506e
G$AX5043_XTALAMPLNB$0$0 == 0x5f11
_AX5043_XTALAMPLNB	=	0x5f11
G$AX5043_XTALCAPNB$0$0 == 0x5184
_AX5043_XTALCAPNB	=	0x5184
G$AX5043_XTALOSCNB$0$0 == 0x5f10
_AX5043_XTALOSCNB	=	0x5f10
G$AX5043_XTALSTATUSNB$0$0 == 0x501d
_AX5043_XTALSTATUSNB	=	0x501d
G$AX5043_0xF00NB$0$0 == 0x5f00
_AX5043_0xF00NB	=	0x5f00
G$AX5043_0xF0CNB$0$0 == 0x5f0c
_AX5043_0xF0CNB	=	0x5f0c
G$AX5043_0xF18NB$0$0 == 0x5f18
_AX5043_0xF18NB	=	0x5f18
G$AX5043_0xF1CNB$0$0 == 0x5f1c
_AX5043_0xF1CNB	=	0x5f1c
G$AX5043_0xF21NB$0$0 == 0x5f21
_AX5043_0xF21NB	=	0x5f21
G$AX5043_0xF22NB$0$0 == 0x5f22
_AX5043_0xF22NB	=	0x5f22
G$AX5043_0xF23NB$0$0 == 0x5f23
_AX5043_0xF23NB	=	0x5f23
G$AX5043_0xF26NB$0$0 == 0x5f26
_AX5043_0xF26NB	=	0x5f26
G$AX5043_0xF30NB$0$0 == 0x5f30
_AX5043_0xF30NB	=	0x5f30
G$AX5043_0xF31NB$0$0 == 0x5f31
_AX5043_0xF31NB	=	0x5f31
G$AX5043_0xF32NB$0$0 == 0x5f32
_AX5043_0xF32NB	=	0x5f32
G$AX5043_0xF33NB$0$0 == 0x5f33
_AX5043_0xF33NB	=	0x5f33
G$AX5043_0xF34NB$0$0 == 0x5f34
_AX5043_0xF34NB	=	0x5f34
G$AX5043_0xF35NB$0$0 == 0x5f35
_AX5043_0xF35NB	=	0x5f35
G$AX5043_0xF44NB$0$0 == 0x5f44
_AX5043_0xF44NB	=	0x5f44
G$AX5043_AGCAHYST0NB$0$0 == 0x5122
_AX5043_AGCAHYST0NB	=	0x5122
G$AX5043_AGCAHYST1NB$0$0 == 0x5132
_AX5043_AGCAHYST1NB	=	0x5132
G$AX5043_AGCAHYST2NB$0$0 == 0x5142
_AX5043_AGCAHYST2NB	=	0x5142
G$AX5043_AGCAHYST3NB$0$0 == 0x5152
_AX5043_AGCAHYST3NB	=	0x5152
G$AX5043_AGCGAIN0NB$0$0 == 0x5120
_AX5043_AGCGAIN0NB	=	0x5120
G$AX5043_AGCGAIN1NB$0$0 == 0x5130
_AX5043_AGCGAIN1NB	=	0x5130
G$AX5043_AGCGAIN2NB$0$0 == 0x5140
_AX5043_AGCGAIN2NB	=	0x5140
G$AX5043_AGCGAIN3NB$0$0 == 0x5150
_AX5043_AGCGAIN3NB	=	0x5150
G$AX5043_AGCMINMAX0NB$0$0 == 0x5123
_AX5043_AGCMINMAX0NB	=	0x5123
G$AX5043_AGCMINMAX1NB$0$0 == 0x5133
_AX5043_AGCMINMAX1NB	=	0x5133
G$AX5043_AGCMINMAX2NB$0$0 == 0x5143
_AX5043_AGCMINMAX2NB	=	0x5143
G$AX5043_AGCMINMAX3NB$0$0 == 0x5153
_AX5043_AGCMINMAX3NB	=	0x5153
G$AX5043_AGCTARGET0NB$0$0 == 0x5121
_AX5043_AGCTARGET0NB	=	0x5121
G$AX5043_AGCTARGET1NB$0$0 == 0x5131
_AX5043_AGCTARGET1NB	=	0x5131
G$AX5043_AGCTARGET2NB$0$0 == 0x5141
_AX5043_AGCTARGET2NB	=	0x5141
G$AX5043_AGCTARGET3NB$0$0 == 0x5151
_AX5043_AGCTARGET3NB	=	0x5151
G$AX5043_AMPLITUDEGAIN0NB$0$0 == 0x512b
_AX5043_AMPLITUDEGAIN0NB	=	0x512b
G$AX5043_AMPLITUDEGAIN1NB$0$0 == 0x513b
_AX5043_AMPLITUDEGAIN1NB	=	0x513b
G$AX5043_AMPLITUDEGAIN2NB$0$0 == 0x514b
_AX5043_AMPLITUDEGAIN2NB	=	0x514b
G$AX5043_AMPLITUDEGAIN3NB$0$0 == 0x515b
_AX5043_AMPLITUDEGAIN3NB	=	0x515b
G$AX5043_BBOFFSRES0NB$0$0 == 0x512f
_AX5043_BBOFFSRES0NB	=	0x512f
G$AX5043_BBOFFSRES1NB$0$0 == 0x513f
_AX5043_BBOFFSRES1NB	=	0x513f
G$AX5043_BBOFFSRES2NB$0$0 == 0x514f
_AX5043_BBOFFSRES2NB	=	0x514f
G$AX5043_BBOFFSRES3NB$0$0 == 0x515f
_AX5043_BBOFFSRES3NB	=	0x515f
G$AX5043_DRGAIN0NB$0$0 == 0x5125
_AX5043_DRGAIN0NB	=	0x5125
G$AX5043_DRGAIN1NB$0$0 == 0x5135
_AX5043_DRGAIN1NB	=	0x5135
G$AX5043_DRGAIN2NB$0$0 == 0x5145
_AX5043_DRGAIN2NB	=	0x5145
G$AX5043_DRGAIN3NB$0$0 == 0x5155
_AX5043_DRGAIN3NB	=	0x5155
G$AX5043_FOURFSK0NB$0$0 == 0x512e
_AX5043_FOURFSK0NB	=	0x512e
G$AX5043_FOURFSK1NB$0$0 == 0x513e
_AX5043_FOURFSK1NB	=	0x513e
G$AX5043_FOURFSK2NB$0$0 == 0x514e
_AX5043_FOURFSK2NB	=	0x514e
G$AX5043_FOURFSK3NB$0$0 == 0x515e
_AX5043_FOURFSK3NB	=	0x515e
G$AX5043_FREQDEV00NB$0$0 == 0x512d
_AX5043_FREQDEV00NB	=	0x512d
G$AX5043_FREQDEV01NB$0$0 == 0x513d
_AX5043_FREQDEV01NB	=	0x513d
G$AX5043_FREQDEV02NB$0$0 == 0x514d
_AX5043_FREQDEV02NB	=	0x514d
G$AX5043_FREQDEV03NB$0$0 == 0x515d
_AX5043_FREQDEV03NB	=	0x515d
G$AX5043_FREQDEV10NB$0$0 == 0x512c
_AX5043_FREQDEV10NB	=	0x512c
G$AX5043_FREQDEV11NB$0$0 == 0x513c
_AX5043_FREQDEV11NB	=	0x513c
G$AX5043_FREQDEV12NB$0$0 == 0x514c
_AX5043_FREQDEV12NB	=	0x514c
G$AX5043_FREQDEV13NB$0$0 == 0x515c
_AX5043_FREQDEV13NB	=	0x515c
G$AX5043_FREQUENCYGAINA0NB$0$0 == 0x5127
_AX5043_FREQUENCYGAINA0NB	=	0x5127
G$AX5043_FREQUENCYGAINA1NB$0$0 == 0x5137
_AX5043_FREQUENCYGAINA1NB	=	0x5137
G$AX5043_FREQUENCYGAINA2NB$0$0 == 0x5147
_AX5043_FREQUENCYGAINA2NB	=	0x5147
G$AX5043_FREQUENCYGAINA3NB$0$0 == 0x5157
_AX5043_FREQUENCYGAINA3NB	=	0x5157
G$AX5043_FREQUENCYGAINB0NB$0$0 == 0x5128
_AX5043_FREQUENCYGAINB0NB	=	0x5128
G$AX5043_FREQUENCYGAINB1NB$0$0 == 0x5138
_AX5043_FREQUENCYGAINB1NB	=	0x5138
G$AX5043_FREQUENCYGAINB2NB$0$0 == 0x5148
_AX5043_FREQUENCYGAINB2NB	=	0x5148
G$AX5043_FREQUENCYGAINB3NB$0$0 == 0x5158
_AX5043_FREQUENCYGAINB3NB	=	0x5158
G$AX5043_FREQUENCYGAINC0NB$0$0 == 0x5129
_AX5043_FREQUENCYGAINC0NB	=	0x5129
G$AX5043_FREQUENCYGAINC1NB$0$0 == 0x5139
_AX5043_FREQUENCYGAINC1NB	=	0x5139
G$AX5043_FREQUENCYGAINC2NB$0$0 == 0x5149
_AX5043_FREQUENCYGAINC2NB	=	0x5149
G$AX5043_FREQUENCYGAINC3NB$0$0 == 0x5159
_AX5043_FREQUENCYGAINC3NB	=	0x5159
G$AX5043_FREQUENCYGAIND0NB$0$0 == 0x512a
_AX5043_FREQUENCYGAIND0NB	=	0x512a
G$AX5043_FREQUENCYGAIND1NB$0$0 == 0x513a
_AX5043_FREQUENCYGAIND1NB	=	0x513a
G$AX5043_FREQUENCYGAIND2NB$0$0 == 0x514a
_AX5043_FREQUENCYGAIND2NB	=	0x514a
G$AX5043_FREQUENCYGAIND3NB$0$0 == 0x515a
_AX5043_FREQUENCYGAIND3NB	=	0x515a
G$AX5043_FREQUENCYLEAKNB$0$0 == 0x5116
_AX5043_FREQUENCYLEAKNB	=	0x5116
G$AX5043_PHASEGAIN0NB$0$0 == 0x5126
_AX5043_PHASEGAIN0NB	=	0x5126
G$AX5043_PHASEGAIN1NB$0$0 == 0x5136
_AX5043_PHASEGAIN1NB	=	0x5136
G$AX5043_PHASEGAIN2NB$0$0 == 0x5146
_AX5043_PHASEGAIN2NB	=	0x5146
G$AX5043_PHASEGAIN3NB$0$0 == 0x5156
_AX5043_PHASEGAIN3NB	=	0x5156
G$AX5043_PKTADDR0NB$0$0 == 0x5207
_AX5043_PKTADDR0NB	=	0x5207
G$AX5043_PKTADDR1NB$0$0 == 0x5206
_AX5043_PKTADDR1NB	=	0x5206
G$AX5043_PKTADDR2NB$0$0 == 0x5205
_AX5043_PKTADDR2NB	=	0x5205
G$AX5043_PKTADDR3NB$0$0 == 0x5204
_AX5043_PKTADDR3NB	=	0x5204
G$AX5043_PKTADDRCFGNB$0$0 == 0x5200
_AX5043_PKTADDRCFGNB	=	0x5200
G$AX5043_PKTADDRMASK0NB$0$0 == 0x520b
_AX5043_PKTADDRMASK0NB	=	0x520b
G$AX5043_PKTADDRMASK1NB$0$0 == 0x520a
_AX5043_PKTADDRMASK1NB	=	0x520a
G$AX5043_PKTADDRMASK2NB$0$0 == 0x5209
_AX5043_PKTADDRMASK2NB	=	0x5209
G$AX5043_PKTADDRMASK3NB$0$0 == 0x5208
_AX5043_PKTADDRMASK3NB	=	0x5208
G$AX5043_PKTLENCFGNB$0$0 == 0x5201
_AX5043_PKTLENCFGNB	=	0x5201
G$AX5043_PKTLENOFFSETNB$0$0 == 0x5202
_AX5043_PKTLENOFFSETNB	=	0x5202
G$AX5043_PKTMAXLENNB$0$0 == 0x5203
_AX5043_PKTMAXLENNB	=	0x5203
G$AX5043_RXPARAMCURSETNB$0$0 == 0x5118
_AX5043_RXPARAMCURSETNB	=	0x5118
G$AX5043_RXPARAMSETSNB$0$0 == 0x5117
_AX5043_RXPARAMSETSNB	=	0x5117
G$AX5043_TIMEGAIN0NB$0$0 == 0x5124
_AX5043_TIMEGAIN0NB	=	0x5124
G$AX5043_TIMEGAIN1NB$0$0 == 0x5134
_AX5043_TIMEGAIN1NB	=	0x5134
G$AX5043_TIMEGAIN2NB$0$0 == 0x5144
_AX5043_TIMEGAIN2NB	=	0x5144
G$AX5043_TIMEGAIN3NB$0$0 == 0x5154
_AX5043_TIMEGAIN3NB	=	0x5154
G$axradio_syncstate$0$0==.
_axradio_syncstate::
	.ds 1
G$axradio_txbuffer_len$0$0==.
_axradio_txbuffer_len::
	.ds 2
G$axradio_txbuffer_cnt$0$0==.
_axradio_txbuffer_cnt::
	.ds 2
G$axradio_curchannel$0$0==.
_axradio_curchannel::
	.ds 1
G$axradio_curfreqoffset$0$0==.
_axradio_curfreqoffset::
	.ds 4
G$axradio_ack_count$0$0==.
_axradio_ack_count::
	.ds 1
G$axradio_ack_seqnr$0$0==.
_axradio_ack_seqnr::
	.ds 1
G$axradio_sync_time$0$0==.
_axradio_sync_time::
	.ds 4
G$axradio_sync_periodcorr$0$0==.
_axradio_sync_periodcorr::
	.ds 2
G$axradio_timeanchor$0$0==.
_axradio_timeanchor::
	.ds 8
G$axradio_localaddr$0$0==.
_axradio_localaddr::
	.ds 10
G$axradio_default_remoteaddr$0$0==.
_axradio_default_remoteaddr::
	.ds 5
G$axradio_txbuffer$0$0==.
_axradio_txbuffer::
	.ds 260
G$axradio_rxbuffer$0$0==.
_axradio_rxbuffer::
	.ds 260
G$axradio_cb_receive$0$0==.
_axradio_cb_receive::
	.ds 36
G$axradio_cb_receivesfd$0$0==.
_axradio_cb_receivesfd::
	.ds 10
G$axradio_cb_channelstate$0$0==.
_axradio_cb_channelstate::
	.ds 13
G$axradio_cb_transmitstart$0$0==.
_axradio_cb_transmitstart::
	.ds 10
G$axradio_cb_transmitend$0$0==.
_axradio_cb_transmitend::
	.ds 10
G$axradio_cb_transmitdata$0$0==.
_axradio_cb_transmitdata::
	.ds 10
G$axradio_timer$0$0==.
_axradio_timer::
	.ds 8
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
G$f30_saved$0$0==.
_f30_saved::
	.ds 1
G$f31_saved$0$0==.
_f31_saved::
	.ds 1
G$f32_saved$0$0==.
_f32_saved::
	.ds 1
G$f33_saved$0$0==.
_f33_saved::
	.ds 1
G$radio_lcd_display$0$0==.
_radio_lcd_display::
	.ds 14
G$radio_not_found_lcd_display$0$0==.
_radio_not_found_lcd_display::
	.ds 20
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
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	C$easyax5043.c$74$1$876 ==.
;	..\COMMON\easyax5043.c:74: volatile uint8_t __data axradio_mode = AXRADIO_MODE_UNINIT;
	mov	_axradio_mode,#0x00
	C$easyax5043.c$75$1$876 ==.
;	..\COMMON\easyax5043.c:75: volatile axradio_trxstate_t __data axradio_trxstate = trxstate_off;
	mov	_axradio_trxstate,#0x00
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'update_timeanchor'
;------------------------------------------------------------
;__00010012                Allocated to registers 
;crit                      Allocated to registers 
;crit                      Allocated to registers r7 
;__00020014                Allocated to registers 
;crit                      Allocated to registers 
;------------------------------------------------------------
	Feasyax5043$update_timeanchor$0$0 ==.
	C$easyax5043.c$276$0$0 ==.
;	..\COMMON\easyax5043.c:276: static __reentrantb void update_timeanchor(void) __reentrant
;	-----------------------------------------
;	 function update_timeanchor
;	-----------------------------------------
_update_timeanchor:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	C$libmftypes.h$351$4$342 ==.
;	C:/Program Files (x86)/ON Semiconductor/AXSDB/libmf/include/libmftypes.h:351: criticalsection_t crit = IE & 0x80;
	mov	a,#0x80
	anl	a,_IE
	mov	r7,a
	C$libmftypes.h$352$4$342 ==.
;	C:/Program Files (x86)/ON Semiconductor/AXSDB/libmf/include/libmftypes.h:352: EA = 0;
	clr	_EA
	C$easyax5043.c$280$1$339 ==.
;	..\COMMON\easyax5043.c:280: axradio_timeanchor.timer0 = wtimer0_curtime();
	push	ar7
	lcall	_wtimer0_curtime
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	r6,a
	pop	ar7
	mov	dptr,#_axradio_timeanchor
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
	C$easyax5043.c$281$1$339 ==.
;	..\COMMON\easyax5043.c:281: axradio_timeanchor.radiotimer = radio_read24(AX5043_REG_TIMER2);
	mov	dptr,#0x0059
	lcall	_radio_read24
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	r6,a
	mov	dptr,#(_axradio_timeanchor + 0x0004)
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
	C$libmftypes.h$358$4$345 ==.
;	C:/Program Files (x86)/ON Semiconductor/AXSDB/libmf/include/libmftypes.h:358: IE |= crit;
	mov	a,r7
	orl	_IE,a
	C$easyax5043.c$282$3$344 ==.
;	..\COMMON\easyax5043.c:282: exit_critical(crit);
	C$easyax5043.c$283$3$344 ==.
	XFeasyax5043$update_timeanchor$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_conv_time_totimer0'
;------------------------------------------------------------
;dt                        Allocated to registers r4 r5 r6 r7 
;------------------------------------------------------------
	G$axradio_conv_time_totimer0$0$0 ==.
	C$easyax5043.c$285$3$344 ==.
;	..\COMMON\easyax5043.c:285: __reentrantb uint32_t axradio_conv_time_totimer0(uint32_t dt) __reentrant
;	-----------------------------------------
;	 function axradio_conv_time_totimer0
;	-----------------------------------------
_axradio_conv_time_totimer0:
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	C$easyax5043.c$287$1$347 ==.
;	..\COMMON\easyax5043.c:287: dt -= axradio_timeanchor.radiotimer;
	mov	dptr,#(_axradio_timeanchor + 0x0004)
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r4
	clr	c
	subb	a,r0
	mov	r4,a
	mov	a,r5
	subb	a,r1
	mov	r5,a
	mov	a,r6
	subb	a,r2
	mov	r6,a
	mov	a,r7
	subb	a,r3
	C$easyax5043.c$288$1$347 ==.
;	..\COMMON\easyax5043.c:288: dt = axradio_conv_timeinterval_totimer0(signextend24(dt));
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_signextend24
	lcall	_axradio_conv_timeinterval_totimer0
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	C$easyax5043.c$289$1$347 ==.
;	..\COMMON\easyax5043.c:289: dt += axradio_timeanchor.timer0;
	mov	dptr,#_axradio_timeanchor
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
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
	C$easyax5043.c$290$1$347 ==.
;	..\COMMON\easyax5043.c:290: return dt;
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	C$easyax5043.c$291$1$347 ==.
	XG$axradio_conv_time_totimer0$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ax5043_init_registers_common'
;------------------------------------------------------------
;rng                       Allocated to registers r6 
;------------------------------------------------------------
	Feasyax5043$ax5043_init_registers_common$0$0 ==.
	C$easyax5043.c$293$1$347 ==.
;	..\COMMON\easyax5043.c:293: static __reentrantb uint8_t ax5043_init_registers_common(void) __reentrant
;	-----------------------------------------
;	 function ax5043_init_registers_common
;	-----------------------------------------
_ax5043_init_registers_common:
	C$easyax5043.c$295$1$349 ==.
;	..\COMMON\easyax5043.c:295: uint8_t rng = axradio_phy_chanpllrng[axradio_curchannel];
	mov	dptr,#_axradio_curchannel
	movx	a,@dptr
	mov	b,#0x02
	mul	ab
	add	a,#_axradio_phy_chanpllrng
	mov	dpl,a
	mov	a,#(_axradio_phy_chanpllrng >> 8)
	addc	a,b
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	C$easyax5043.c$296$1$349 ==.
;	..\COMMON\easyax5043.c:296: if (rng & 0x20)
	mov	a,r6
	jnb	acc.5,00102$
	C$easyax5043.c$297$1$349 ==.
;	..\COMMON\easyax5043.c:297: return AXRADIO_ERR_RANGING;
	mov	dpl,#0x06
	sjmp	00117$
00102$:
	C$easyax5043.c$298$1$349 ==.
;	..\COMMON\easyax5043.c:298: if (radio_read8(AX5043_REG_PLLLOOP) & 0x80)
	mov	dptr,#0x4030
	movx	a,@dptr
	mov	r7,a
	jnb	acc.7,00106$
	C$easyax5043.c$299$2$350 ==.
;	..\COMMON\easyax5043.c:299: radio_write8(AX5043_REG_PLLRANGINGB, (rng & 0x0F));
	mov	a,#0x0f
	anl	a,r6
	mov	r7,a
	mov	dptr,#0x403b
	movx	@dptr,a
	C$easyax5043.c$301$1$349 ==.
;	..\COMMON\easyax5043.c:301: radio_write8(AX5043_REG_PLLRANGINGA, (rng & 0x0F));
	sjmp	00111$
00106$:
	mov	a,#0x0f
	anl	a,r6
	mov	r7,a
	mov	dptr,#0x4033
	movx	@dptr,a
00111$:
	C$easyax5043.c$302$1$349 ==.
;	..\COMMON\easyax5043.c:302: rng = axradio_get_pllvcoi();
	lcall	_axradio_get_pllvcoi
	mov	r7,dpl
	mov	ar6,r7
	C$easyax5043.c$303$1$349 ==.
;	..\COMMON\easyax5043.c:303: if (rng & 0x80)
	mov	a,r6
	jnb	acc.7,00116$
	C$easyax5043.c$304$2$352 ==.
;	..\COMMON\easyax5043.c:304: radio_write8(AX5043_REG_PLLVCOI, rng);
	mov	dptr,#0x4180
	mov	a,r6
	movx	@dptr,a
00116$:
	C$easyax5043.c$305$1$349 ==.
;	..\COMMON\easyax5043.c:305: return AXRADIO_ERR_NOERROR;
	mov	dpl,#0x00
00117$:
	C$easyax5043.c$306$1$349 ==.
	XFeasyax5043$ax5043_init_registers_common$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ax5043_init_registers_tx'
;------------------------------------------------------------
	G$ax5043_init_registers_tx$0$0 ==.
	C$easyax5043.c$308$1$349 ==.
;	..\COMMON\easyax5043.c:308: __reentrantb uint8_t ax5043_init_registers_tx(void) __reentrant
;	-----------------------------------------
;	 function ax5043_init_registers_tx
;	-----------------------------------------
_ax5043_init_registers_tx:
	C$easyax5043.c$310$1$354 ==.
;	..\COMMON\easyax5043.c:310: ax5043_set_registers_tx();
	lcall	_ax5043_set_registers_tx
	C$easyax5043.c$311$1$354 ==.
;	..\COMMON\easyax5043.c:311: return ax5043_init_registers_common();
	lcall	_ax5043_init_registers_common
	C$easyax5043.c$312$1$354 ==.
	XG$ax5043_init_registers_tx$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ax5043_init_registers_rx'
;------------------------------------------------------------
	G$ax5043_init_registers_rx$0$0 ==.
	C$easyax5043.c$314$1$354 ==.
;	..\COMMON\easyax5043.c:314: __reentrantb uint8_t ax5043_init_registers_rx(void) __reentrant
;	-----------------------------------------
;	 function ax5043_init_registers_rx
;	-----------------------------------------
_ax5043_init_registers_rx:
	C$easyax5043.c$316$1$356 ==.
;	..\COMMON\easyax5043.c:316: ax5043_set_registers_rx();
	lcall	_ax5043_set_registers_rx
	C$easyax5043.c$317$1$356 ==.
;	..\COMMON\easyax5043.c:317: return ax5043_init_registers_common();
	lcall	_ax5043_init_registers_common
	C$easyax5043.c$318$1$356 ==.
	XG$ax5043_init_registers_rx$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'receive_isr'
;------------------------------------------------------------
;fifo_cmd                  Allocated to registers r6 
;flags                     Allocated to registers 
;i                         Allocated to registers r6 
;len                       Allocated to registers r7 
;radioStateTemp            Allocated to registers r6 
;r                         Allocated to registers r6 
;r                         Allocated to registers r6 
;r                         Allocated to registers r6 
;------------------------------------------------------------
	Feasyax5043$receive_isr$0$0 ==.
	C$easyax5043.c$320$1$356 ==.
;	..\COMMON\easyax5043.c:320: static __reentrantb void receive_isr(void) __reentrant
;	-----------------------------------------
;	 function receive_isr
;	-----------------------------------------
_receive_isr:
	C$easyax5043.c$324$1$358 ==.
;	..\COMMON\easyax5043.c:324: uint8_t len = radio_read8(AX5043_REG_RADIOEVENTREQ0); // clear request so interrupt does not fire again. sync_rx enables interrupt on radio state changed in order to wake up on SDF detected
	mov	dptr,#0x400f
	movx	a,@dptr
	mov	r7,a
	C$easyax5043.c$326$1$358 ==.
;	..\COMMON\easyax5043.c:326: uint8_t radioStateTemp = radio_read8(AX5043_REG_RADIOSTATE);
	mov	dptr,#0x401c
	movx	a,@dptr
	mov	r6,a
	C$easyax5043.c$327$1$358 ==.
;	..\COMMON\easyax5043.c:327: if ((len & 0x04) && radioStateTemp == 0x0F) {
	mov	a,r7
	jnb	acc.2,00175$
	cjne	r6,#0x0f,00175$
	C$easyax5043.c$329$2$359 ==.
;	..\COMMON\easyax5043.c:329: update_timeanchor();
	lcall	_update_timeanchor
	C$easyax5043.c$330$2$359 ==.
;	..\COMMON\easyax5043.c:330: if(axradio_framing_enable_sfdcallback) {
	mov	dptr,#_axradio_framing_enable_sfdcallback
	clr	a
	movc	a,@a+dptr
	jz	00175$
	C$easyax5043.c$331$3$360 ==.
;	..\COMMON\easyax5043.c:331: wtimer_remove_callback(&axradio_cb_receivesfd.cb);
	mov	dptr,#_axradio_cb_receivesfd
	lcall	_wtimer_remove_callback
	C$easyax5043.c$332$3$360 ==.
;	..\COMMON\easyax5043.c:332: axradio_cb_receivesfd.st.error = AXRADIO_ERR_NOERROR;
	mov	dptr,#(_axradio_cb_receivesfd + 0x0005)
	clr	a
	movx	@dptr,a
	C$easyax5043.c$333$3$360 ==.
;	..\COMMON\easyax5043.c:333: axradio_cb_receivesfd.st.time.t = axradio_timeanchor.radiotimer;
	mov	dptr,#(_axradio_timeanchor + 0x0004)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#(_axradio_cb_receivesfd + 0x0006)
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
	C$easyax5043.c$334$3$360 ==.
;	..\COMMON\easyax5043.c:334: wtimer_add_callback(&axradio_cb_receivesfd.cb);
	mov	dptr,#_axradio_cb_receivesfd
	lcall	_wtimer_add_callback
	C$easyax5043.c$346$1$358 ==.
;	..\COMMON\easyax5043.c:346: while (radio_read8(AX5043_REG_IRQREQUEST0) & 0x01) {    // while fifo not empty
00175$:
00159$:
	mov	dptr,#0x400d
	movx	a,@dptr
	mov	r6,a
	jb	acc.0,00256$
	ljmp	00162$
00256$:
	C$easyax5043.c$347$2$361 ==.
;	..\COMMON\easyax5043.c:347: fifo_cmd = radio_read8(AX5043_REG_FIFODATA); // read command
	mov	dptr,#0x4029
	movx	a,@dptr
	mov	r6,a
	C$easyax5043.c$348$2$361 ==.
;	..\COMMON\easyax5043.c:348: len = (fifo_cmd & 0xE0) >> 5; // top 3 bits encode payload len
	mov	a,#0xe0
	anl	a,r6
	mov	r5,a
	swap	a
	rr	a
	anl	a,#0x07
	mov	r7,a
	C$easyax5043.c$349$2$361 ==.
;	..\COMMON\easyax5043.c:349: if (len == 7)
	cjne	r7,#0x07,00107$
	C$easyax5043.c$350$2$361 ==.
;	..\COMMON\easyax5043.c:350: len = radio_read8(AX5043_REG_FIFODATA); // 7 means variable length, -> get length byte
	mov	dptr,#0x4029
	movx	a,@dptr
	mov	r7,a
00107$:
	C$easyax5043.c$351$2$361 ==.
;	..\COMMON\easyax5043.c:351: fifo_cmd &= 0x1F;
	anl	ar6,#0x1f
	C$easyax5043.c$352$2$361 ==.
;	..\COMMON\easyax5043.c:352: switch (fifo_cmd) {
	cjne	r6,#0x01,00259$
	sjmp	00108$
00259$:
	cjne	r6,#0x10,00260$
	ljmp	00145$
00260$:
	cjne	r6,#0x11,00261$
	ljmp	00142$
00261$:
	cjne	r6,#0x12,00262$
	ljmp	00138$
00262$:
	cjne	r6,#0x13,00263$
	ljmp	00134$
00263$:
	cjne	r6,#0x15,00264$
	ljmp	00148$
00264$:
	ljmp	00152$
	C$easyax5043.c$353$3$362 ==.
;	..\COMMON\easyax5043.c:353: case AX5043_FIFOCMD_DATA:
00108$:
	C$easyax5043.c$354$3$362 ==.
;	..\COMMON\easyax5043.c:354: if (!len)
	mov	a,r7
	jz	00159$
	C$easyax5043.c$357$3$362 ==.
;	..\COMMON\easyax5043.c:357: flags = radio_read8(AX5043_REG_FIFODATA);
	mov	dptr,#0x4029
	movx	a,@dptr
	C$easyax5043.c$358$3$362 ==.
;	..\COMMON\easyax5043.c:358: --len;
	dec	r7
	C$easyax5043.c$359$3$362 ==.
;	..\COMMON\easyax5043.c:359: ax5043_readfifo(axradio_rxbuffer, len);
	push	ar7
	push	ar7
	mov	dptr,#_axradio_rxbuffer
	mov	b,#0x00
	lcall	_ax5043_readfifo
	dec	sp
	pop	ar7
	C$easyax5043.c$360$3$362 ==.
;	..\COMMON\easyax5043.c:360: if(axradio_mode == AXRADIO_MODE_WOR_RECEIVE || axradio_mode == AXRADIO_MODE_WOR_ACK_RECEIVE) {
	mov	a,#0x21
	cjne	a,_axradio_mode,00266$
	sjmp	00111$
00266$:
	mov	a,#0x23
	cjne	a,_axradio_mode,00112$
00111$:
	C$easyax5043.c$361$4$363 ==.
;	..\COMMON\easyax5043.c:361: f30_saved = radio_read8(AX5043_REG_0xF30);
	mov	dptr,#0x4f30
	movx	a,@dptr
	mov	dptr,#_f30_saved
	movx	@dptr,a
	C$easyax5043.c$362$4$363 ==.
;	..\COMMON\easyax5043.c:362: f31_saved = radio_read8(AX5043_REG_0xF31);
	mov	dptr,#0x4f31
	movx	a,@dptr
	mov	dptr,#_f31_saved
	movx	@dptr,a
	C$easyax5043.c$363$4$363 ==.
;	..\COMMON\easyax5043.c:363: f32_saved = radio_read8(AX5043_REG_0xF32);
	mov	dptr,#0x4f32
	movx	a,@dptr
	mov	dptr,#_f32_saved
	movx	@dptr,a
	C$easyax5043.c$364$4$363 ==.
;	..\COMMON\easyax5043.c:364: f33_saved = radio_read8(AX5043_REG_0xF33);
	mov	dptr,#0x4f33
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_f33_saved
	movx	@dptr,a
00112$:
	C$easyax5043.c$366$3$362 ==.
;	..\COMMON\easyax5043.c:366: if (axradio_mode == AXRADIO_MODE_WOR_RECEIVE ||
	mov	a,#0x21
	cjne	a,_axradio_mode,00269$
	sjmp	00114$
00269$:
	C$easyax5043.c$367$3$362 ==.
;	..\COMMON\easyax5043.c:367: axradio_mode == AXRADIO_MODE_SYNC_SLAVE)
	mov	a,#0x32
	cjne	a,_axradio_mode,00120$
	C$easyax5043.c$368$3$362 ==.
;	..\COMMON\easyax5043.c:368: radio_write8(AX5043_REG_PWRMODE, AX5043_PWRSTATE_POWERDOWN);
00114$:
	mov	dptr,#0x4002
	clr	a
	movx	@dptr,a
	C$easyax5043.c$369$3$362 ==.
;	..\COMMON\easyax5043.c:369: radio_write8(AX5043_REG_IRQMASK0, (radio_read8(AX5043_REG_IRQMASK0) & (uint8_t)~0x01)); // disable FIFO not empty irq
00120$:
	mov	dptr,#0x4007
	movx	a,@dptr
	anl	a,#0xfe
	movx	@dptr,a
	C$easyax5043.c$370$3$362 ==.
;	..\COMMON\easyax5043.c:370: wtimer_remove_callback(&axradio_cb_receive.cb);
	mov	dptr,#_axradio_cb_receive
	push	ar7
	lcall	_wtimer_remove_callback
	pop	ar7
	C$easyax5043.c$371$3$362 ==.
;	..\COMMON\easyax5043.c:371: axradio_cb_receive.st.error = AXRADIO_ERR_NOERROR;
	mov	dptr,#(_axradio_cb_receive + 0x0005)
	clr	a
	movx	@dptr,a
	C$easyax5043.c$372$3$362 ==.
;	..\COMMON\easyax5043.c:372: axradio_cb_receive.st.rx.mac.raw = axradio_rxbuffer;
	mov	dptr,#(_axradio_cb_receive + 0x001e)
	mov	a,#_axradio_rxbuffer
	movx	@dptr,a
	mov	a,#(_axradio_rxbuffer >> 8)
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$373$3$362 ==.
;	..\COMMON\easyax5043.c:373: if (AXRADIO_MODE_IS_STREAM_RECEIVE(axradio_mode)) {
	mov	a,#0xf8
	anl	a,_axradio_mode
	mov	r6,a
	cjne	r6,#0x28,00272$
	sjmp	00273$
00272$:
	ljmp	00127$
00273$:
	C$easyax5043.c$374$4$366 ==.
;	..\COMMON\easyax5043.c:374: axradio_cb_receive.st.rx.pktdata = axradio_rxbuffer;
	mov	dptr,#(_axradio_cb_receive + 0x0020)
	mov	a,#_axradio_rxbuffer
	movx	@dptr,a
	mov	a,#(_axradio_rxbuffer >> 8)
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$375$4$366 ==.
;	..\COMMON\easyax5043.c:375: axradio_cb_receive.st.rx.pktlen = len;
	mov	ar5,r7
	mov	r6,#0x00
	mov	dptr,#(_axradio_cb_receive + 0x0022)
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$377$5$367 ==.
;	..\COMMON\easyax5043.c:377: int8_t r = radio_read8(AX5043_REG_RSSI);
	mov	dptr,#0x4040
	movx	a,@dptr
	C$easyax5043.c$378$5$367 ==.
;	..\COMMON\easyax5043.c:378: axradio_cb_receive.st.rx.phy.rssi = r - (int16_t)axradio_phy_rssioffset;
	mov	r6,a
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	dptr,#_axradio_phy_rssioffset
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	a,r6
	clr	c
	subb	a,r4
	mov	r6,a
	mov	a,r5
	subb	a,r3
	mov	r5,a
	mov	dptr,#(_axradio_cb_receive + 0x000a)
	mov	a,r6
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$380$4$366 ==.
;	..\COMMON\easyax5043.c:380: if (axradio_phy_innerfreqloop) {
	mov	dptr,#_axradio_phy_innerfreqloop
	clr	a
	movc	a,@a+dptr
	jz	00124$
	C$easyax5043.c$381$5$368 ==.
;	..\COMMON\easyax5043.c:381: axradio_cb_receive.st.rx.phy.offset.o = axradio_conv_freq_fromreg(signextend16(radio_read16(AX5043_REG_TRKFREQ1)));
	mov	dptr,#0x0050
	lcall	_radio_read16
	lcall	_signextend16
	lcall	_axradio_conv_freq_fromreg
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	r6,a
	mov	dptr,#(_axradio_cb_receive + 0x000c)
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
	sjmp	00125$
00124$:
	C$easyax5043.c$383$5$369 ==.
;	..\COMMON\easyax5043.c:383: axradio_cb_receive.st.rx.phy.offset.o = signextend20(radio_read24(AX5043_REG_TRKRFFREQ2));
	mov	dptr,#0x004d
	lcall	_radio_read24
	lcall	_signextend20
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	r6,a
	mov	dptr,#(_axradio_cb_receive + 0x000c)
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
00125$:
	C$easyax5043.c$385$4$366 ==.
;	..\COMMON\easyax5043.c:385: wtimer_add_callback(&axradio_cb_receive.cb);
	mov	dptr,#_axradio_cb_receive
	lcall	_wtimer_add_callback
	C$easyax5043.c$386$4$366 ==.
;	..\COMMON\easyax5043.c:386: break;
	ljmp	00159$
00127$:
	C$easyax5043.c$388$3$362 ==.
;	..\COMMON\easyax5043.c:388: axradio_cb_receive.st.rx.pktdata = &axradio_rxbuffer[axradio_framing_maclen];
	mov	dptr,#_axradio_framing_maclen
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	add	a,#_axradio_rxbuffer
	mov	r4,a
	clr	a
	addc	a,#(_axradio_rxbuffer >> 8)
	mov	r5,a
	mov	dptr,#(_axradio_cb_receive + 0x0020)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$389$3$362 ==.
;	..\COMMON\easyax5043.c:389: if (len < axradio_framing_maclen) {
	clr	c
	mov	a,r7
	subb	a,r6
	jnc	00132$
	C$easyax5043.c$391$4$370 ==.
;	..\COMMON\easyax5043.c:391: axradio_cb_receive.st.rx.pktlen = 0;
	mov	dptr,#(_axradio_cb_receive + 0x0022)
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	ljmp	00159$
00132$:
	C$easyax5043.c$393$4$371 ==.
;	..\COMMON\easyax5043.c:393: len -= axradio_framing_maclen;
	mov	a,r7
	clr	c
	subb	a,r6
	C$easyax5043.c$394$4$371 ==.
;	..\COMMON\easyax5043.c:394: axradio_cb_receive.st.rx.pktlen = len;
	mov	r5,a
	mov	r6,#0x00
	mov	dptr,#(_axradio_cb_receive + 0x0022)
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$395$4$371 ==.
;	..\COMMON\easyax5043.c:395: wtimer_add_callback(&axradio_cb_receive.cb);
	mov	dptr,#_axradio_cb_receive
	lcall	_wtimer_add_callback
	C$easyax5043.c$396$4$371 ==.
;	..\COMMON\easyax5043.c:396: if (axradio_mode == AXRADIO_MODE_SYNC_SLAVE ||
	mov	a,#0x32
	cjne	a,_axradio_mode,00276$
	sjmp	00128$
00276$:
	C$easyax5043.c$397$4$371 ==.
;	..\COMMON\easyax5043.c:397: axradio_mode == AXRADIO_MODE_SYNC_ACK_SLAVE)
	mov	a,#0x33
	cjne	a,_axradio_mode,00277$
	sjmp	00278$
00277$:
	ljmp	00159$
00278$:
00128$:
	C$easyax5043.c$398$4$371 ==.
;	..\COMMON\easyax5043.c:398: wtimer_remove(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer_remove
	C$easyax5043.c$400$3$362 ==.
;	..\COMMON\easyax5043.c:400: break;
	ljmp	00159$
	C$easyax5043.c$402$3$362 ==.
;	..\COMMON\easyax5043.c:402: case AX5043_FIFOCMD_RFFREQOFFS:
00134$:
	C$easyax5043.c$403$3$362 ==.
;	..\COMMON\easyax5043.c:403: if (axradio_phy_innerfreqloop || len != 3)
	mov	dptr,#_axradio_phy_innerfreqloop
	clr	a
	movc	a,@a+dptr
	jz	00279$
	ljmp	00152$
00279$:
	cjne	r7,#0x03,00280$
	sjmp	00281$
00280$:
	ljmp	00152$
00281$:
	C$easyax5043.c$405$3$362 ==.
;	..\COMMON\easyax5043.c:405: i = radio_read8(AX5043_REG_FIFODATA);
	mov	dptr,#0x4029
	movx	a,@dptr
	mov	r6,a
	C$easyax5043.c$406$3$362 ==.
;	..\COMMON\easyax5043.c:406: i &= 0x0F;
	anl	ar6,#0x0f
	C$easyax5043.c$407$3$362 ==.
;	..\COMMON\easyax5043.c:407: i |= 1 + (uint8_t)~(i & 0x08);
	mov	a,#0x08
	anl	a,r6
	cpl	a
	mov	r5,a
	inc	r5
	mov	a,r5
	orl	ar6,a
	C$easyax5043.c$408$3$362 ==.
;	..\COMMON\easyax5043.c:408: axradio_cb_receive.st.rx.phy.offset.b.b3 = ((int8_t)i) >> 8;
	mov	ar5,r6
	mov	a,r5
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	dptr,#(_axradio_cb_receive + 0x000f)
	movx	@dptr,a
	C$easyax5043.c$409$3$362 ==.
;	..\COMMON\easyax5043.c:409: axradio_cb_receive.st.rx.phy.offset.b.b2 = i;
	mov	dptr,#(_axradio_cb_receive + 0x000e)
	mov	a,r6
	movx	@dptr,a
	C$easyax5043.c$410$3$362 ==.
;	..\COMMON\easyax5043.c:410: axradio_cb_receive.st.rx.phy.offset.b.b1 = radio_read8(AX5043_REG_FIFODATA);
	mov	dptr,#0x4029
	movx	a,@dptr
	mov	dptr,#(_axradio_cb_receive + 0x000d)
	movx	@dptr,a
	C$easyax5043.c$411$3$362 ==.
;	..\COMMON\easyax5043.c:411: axradio_cb_receive.st.rx.phy.offset.b.b0 = radio_read8(AX5043_REG_FIFODATA);
	mov	dptr,#0x4029
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#(_axradio_cb_receive + 0x000c)
	movx	@dptr,a
	C$easyax5043.c$412$3$362 ==.
;	..\COMMON\easyax5043.c:412: break;
	ljmp	00159$
	C$easyax5043.c$414$3$362 ==.
;	..\COMMON\easyax5043.c:414: case AX5043_FIFOCMD_FREQOFFS:
00138$:
	C$easyax5043.c$415$3$362 ==.
;	..\COMMON\easyax5043.c:415: if (!axradio_phy_innerfreqloop || len != 2)
	mov	dptr,#_axradio_phy_innerfreqloop
	clr	a
	movc	a,@a+dptr
	jnz	00282$
	ljmp	00152$
00282$:
	cjne	r7,#0x02,00283$
	sjmp	00284$
00283$:
	ljmp	00152$
00284$:
	C$easyax5043.c$417$3$362 ==.
;	..\COMMON\easyax5043.c:417: axradio_cb_receive.st.rx.phy.offset.b.b1 = radio_read8(AX5043_REG_FIFODATA);
	mov	dptr,#0x4029
	movx	a,@dptr
	mov	dptr,#(_axradio_cb_receive + 0x000d)
	movx	@dptr,a
	C$easyax5043.c$418$3$362 ==.
;	..\COMMON\easyax5043.c:418: axradio_cb_receive.st.rx.phy.offset.b.b0 = radio_read8(AX5043_REG_FIFODATA);
	mov	dptr,#0x4029
	movx	a,@dptr
	mov	dptr,#(_axradio_cb_receive + 0x000c)
	movx	@dptr,a
	C$easyax5043.c$419$3$362 ==.
;	..\COMMON\easyax5043.c:419: axradio_cb_receive.st.rx.phy.offset.o = axradio_conv_freq_fromreg(signextend16(axradio_cb_receive.st.rx.phy.offset.o));
	mov	dptr,#(_axradio_cb_receive + 0x000c)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r3
	mov	dph,r4
	lcall	_signextend16
	lcall	_axradio_conv_freq_fromreg
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	r6,a
	mov	dptr,#(_axradio_cb_receive + 0x000c)
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
	C$easyax5043.c$420$3$362 ==.
;	..\COMMON\easyax5043.c:420: break;
	ljmp	00159$
	C$easyax5043.c$422$3$362 ==.
;	..\COMMON\easyax5043.c:422: case AX5043_FIFOCMD_RSSI:
00142$:
	C$easyax5043.c$423$3$362 ==.
;	..\COMMON\easyax5043.c:423: if (len != 1)
	cjne	r7,#0x01,00285$
	sjmp	00286$
00285$:
	ljmp	00152$
00286$:
	C$easyax5043.c$426$4$372 ==.
;	..\COMMON\easyax5043.c:426: int8_t r = radio_read8(AX5043_REG_FIFODATA);
	mov	dptr,#0x4029
	movx	a,@dptr
	C$easyax5043.c$427$4$372 ==.
;	..\COMMON\easyax5043.c:427: axradio_cb_receive.st.rx.phy.rssi = r - (int16_t)axradio_phy_rssioffset;
	mov	r6,a
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	dptr,#_axradio_phy_rssioffset
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	a,r6
	clr	c
	subb	a,r4
	mov	r6,a
	mov	a,r5
	subb	a,r3
	mov	r5,a
	mov	dptr,#(_axradio_cb_receive + 0x000a)
	mov	a,r6
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$429$3$362 ==.
;	..\COMMON\easyax5043.c:429: break;
	ljmp	00159$
	C$easyax5043.c$431$3$362 ==.
;	..\COMMON\easyax5043.c:431: case AX5043_FIFOCMD_TIMER:
00145$:
	C$easyax5043.c$432$3$362 ==.
;	..\COMMON\easyax5043.c:432: if (len != 3)
	cjne	r7,#0x03,00287$
	sjmp	00288$
00287$:
	ljmp	00152$
00288$:
	C$easyax5043.c$436$3$362 ==.
;	..\COMMON\easyax5043.c:436: axradio_cb_receive.st.time.b.b3 = 0;
	mov	dptr,#(_axradio_cb_receive + 0x0009)
	clr	a
	movx	@dptr,a
	C$easyax5043.c$437$3$362 ==.
;	..\COMMON\easyax5043.c:437: axradio_cb_receive.st.time.b.b2 = radio_read8(AX5043_REG_FIFODATA);
	mov	dptr,#0x4029
	movx	a,@dptr
	mov	dptr,#(_axradio_cb_receive + 0x0008)
	movx	@dptr,a
	C$easyax5043.c$438$3$362 ==.
;	..\COMMON\easyax5043.c:438: axradio_cb_receive.st.time.b.b1 = radio_read8(AX5043_REG_FIFODATA);
	mov	dptr,#0x4029
	movx	a,@dptr
	mov	dptr,#(_axradio_cb_receive + 0x0007)
	movx	@dptr,a
	C$easyax5043.c$439$3$362 ==.
;	..\COMMON\easyax5043.c:439: axradio_cb_receive.st.time.b.b0 = radio_read8(AX5043_REG_FIFODATA);
	mov	dptr,#0x4029
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#(_axradio_cb_receive + 0x0006)
	movx	@dptr,a
	C$easyax5043.c$440$3$362 ==.
;	..\COMMON\easyax5043.c:440: break;
	ljmp	00159$
	C$easyax5043.c$442$3$362 ==.
;	..\COMMON\easyax5043.c:442: case AX5043_FIFOCMD_ANTRSSI:
00148$:
	C$easyax5043.c$443$3$362 ==.
;	..\COMMON\easyax5043.c:443: if (!len)
	mov	a,r7
	jnz	00289$
	ljmp	00159$
00289$:
	C$easyax5043.c$445$3$362 ==.
;	..\COMMON\easyax5043.c:445: update_timeanchor();
	push	ar7
	lcall	_update_timeanchor
	C$easyax5043.c$446$3$362 ==.
;	..\COMMON\easyax5043.c:446: wtimer_remove_callback(&axradio_cb_channelstate.cb);
	mov	dptr,#_axradio_cb_channelstate
	lcall	_wtimer_remove_callback
	C$easyax5043.c$447$3$362 ==.
;	..\COMMON\easyax5043.c:447: axradio_cb_channelstate.st.error = AXRADIO_ERR_NOERROR;
	mov	dptr,#(_axradio_cb_channelstate + 0x0005)
	clr	a
	movx	@dptr,a
	C$easyax5043.c$449$4$373 ==.
;	..\COMMON\easyax5043.c:449: int8_t r = radio_read8(AX5043_REG_FIFODATA);
	mov	dptr,#0x4029
	movx	a,@dptr
	C$easyax5043.c$450$4$373 ==.
;	..\COMMON\easyax5043.c:450: axradio_cb_channelstate.st.cs.rssi = r - (int16_t)axradio_phy_rssioffset;
	mov	r6,a
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	dptr,#_axradio_phy_rssioffset
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	r2,a
	mov	a,r4
	clr	c
	subb	a,r3
	mov	r4,a
	mov	a,r5
	subb	a,r2
	mov	r5,a
	mov	dptr,#(_axradio_cb_channelstate + 0x000a)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$451$4$373 ==.
;	..\COMMON\easyax5043.c:451: axradio_cb_channelstate.st.cs.busy = r >= axradio_phy_channelbusy;
	mov	dptr,#_axradio_phy_channelbusy
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	clr	c
	mov	a,r6
	xrl	a,#0x80
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	cpl	c
	mov	b0,c
	clr	a
	rlc	a
	mov	dptr,#(_axradio_cb_channelstate + 0x000c)
	movx	@dptr,a
	C$easyax5043.c$453$3$362 ==.
;	..\COMMON\easyax5043.c:453: axradio_cb_channelstate.st.time.t = axradio_timeanchor.radiotimer;
	mov	dptr,#(_axradio_timeanchor + 0x0004)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#(_axradio_cb_channelstate + 0x0006)
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
	C$easyax5043.c$454$3$362 ==.
;	..\COMMON\easyax5043.c:454: wtimer_add_callback(&axradio_cb_channelstate.cb);
	mov	dptr,#_axradio_cb_channelstate
	lcall	_wtimer_add_callback
	pop	ar7
	C$easyax5043.c$455$3$362 ==.
;	..\COMMON\easyax5043.c:455: --len;
	dec	r7
	C$easyax5043.c$460$3$362 ==.
;	..\COMMON\easyax5043.c:460: dropchunk:
00152$:
	C$easyax5043.c$461$3$362 ==.
;	..\COMMON\easyax5043.c:461: if (!len)
	mov	a,r7
	jnz	00290$
	ljmp	00159$
00290$:
	C$easyax5043.c$464$1$358 ==.
;	..\COMMON\easyax5043.c:464: do {
00155$:
	C$easyax5043.c$465$4$374 ==.
;	..\COMMON\easyax5043.c:465: radio_read8(AX5043_REG_FIFODATA);	// purge FIFO
	mov	dptr,#0x4029
	movx	a,@dptr
	C$easyax5043.c$467$3$362 ==.
;	..\COMMON\easyax5043.c:467: while (--i);
	djnz	r7,00155$
	C$easyax5043.c$469$1$358 ==.
;	..\COMMON\easyax5043.c:469: } // end switch(fifo_cmd)
	ljmp	00159$
00162$:
	C$easyax5043.c$471$1$358 ==.
	XFeasyax5043$receive_isr$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'transmit_isr'
;------------------------------------------------------------
;cnt                       Allocated to registers r7 
;byte                      Allocated to registers r7 
;len_byte                  Allocated to registers r4 
;i                         Allocated to registers r3 
;byte                      Allocated to registers r6 
;flags                     Allocated to registers r6 
;len                       Allocated to registers r4 r5 
;------------------------------------------------------------
	Feasyax5043$transmit_isr$0$0 ==.
	C$easyax5043.c$473$1$358 ==.
;	..\COMMON\easyax5043.c:473: static __reentrantb void transmit_isr(void) __reentrant
;	-----------------------------------------
;	 function transmit_isr
;	-----------------------------------------
_transmit_isr:
	C$easyax5043.c$612$7$395 ==.
;	..\COMMON\easyax5043.c:612: axradio_trxstate = trxstate_tx_waitdone;
00226$:
	C$easyax5043.c$476$2$377 ==.
;	..\COMMON\easyax5043.c:476: uint8_t cnt = radio_read8(AX5043_REG_FIFOFREE0);
	mov	dptr,#0x402d
	movx	a,@dptr
	mov	r7,a
	C$easyax5043.c$477$2$377 ==.
;	..\COMMON\easyax5043.c:477: if (radio_read8(AX5043_REG_FIFOFREE1))
	mov	dptr,#0x402c
	movx	a,@dptr
	jz	00102$
	C$easyax5043.c$478$2$377 ==.
;	..\COMMON\easyax5043.c:478: cnt = 0xff;
	mov	r7,#0xff
00102$:
	C$easyax5043.c$479$2$377 ==.
;	..\COMMON\easyax5043.c:479: switch (axradio_trxstate) {
	mov	r6,_axradio_trxstate
	cjne	r6,#0x0a,00315$
	sjmp	00103$
00315$:
	cjne	r6,#0x0b,00316$
	ljmp	00127$
00316$:
	cjne	r6,#0x0c,00317$
	ljmp	00189$
00317$:
	ljmp	00228$
	C$easyax5043.c$480$3$378 ==.
;	..\COMMON\easyax5043.c:480: case trxstate_tx_longpreamble:
00103$:
	C$easyax5043.c$481$3$378 ==.
;	..\COMMON\easyax5043.c:481: if (!axradio_txbuffer_cnt) {
	mov	dptr,#_axradio_txbuffer_cnt
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	orl	a,r5
	jnz	00109$
	C$easyax5043.c$482$4$379 ==.
;	..\COMMON\easyax5043.c:482: axradio_trxstate = trxstate_tx_shortpreamble;
	mov	_axradio_trxstate,#0x0b
	C$easyax5043.c$483$4$379 ==.
;	..\COMMON\easyax5043.c:483: if( axradio_mode == AXRADIO_MODE_WOR_TRANSMIT || axradio_mode == AXRADIO_MODE_WOR_ACK_TRANSMIT )
	mov	a,#0x11
	cjne	a,_axradio_mode,00319$
	sjmp	00104$
00319$:
	mov	a,#0x13
	cjne	a,_axradio_mode,00105$
00104$:
	C$easyax5043.c$484$4$379 ==.
;	..\COMMON\easyax5043.c:484: axradio_txbuffer_cnt = axradio_phy_preamble_wor_len;
	mov	dptr,#_axradio_phy_preamble_wor_len
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r4,a
	mov	dptr,#_axradio_txbuffer_cnt
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	sjmp	00127$
00105$:
	C$easyax5043.c$486$4$379 ==.
;	..\COMMON\easyax5043.c:486: axradio_txbuffer_cnt = axradio_phy_preamble_len;
	mov	dptr,#_axradio_phy_preamble_len
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r4,a
	mov	dptr,#_axradio_txbuffer_cnt
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$487$4$379 ==.
;	..\COMMON\easyax5043.c:487: goto shortpreamble;
	sjmp	00127$
00109$:
	C$easyax5043.c$489$3$378 ==.
;	..\COMMON\easyax5043.c:489: if (cnt < 4)
	cjne	r7,#0x04,00322$
00322$:
	jnc	00323$
	ljmp	00220$
00323$:
	C$easyax5043.c$491$3$378 ==.
;	..\COMMON\easyax5043.c:491: cnt = 7;
	mov	r7,#0x07
	C$easyax5043.c$492$3$378 ==.
;	..\COMMON\easyax5043.c:492: if (axradio_txbuffer_cnt < 7)
	clr	c
	mov	a,r5
	subb	a,#0x07
	mov	a,r6
	subb	a,#0x00
	jnc	00113$
	C$easyax5043.c$493$3$378 ==.
;	..\COMMON\easyax5043.c:493: cnt = axradio_txbuffer_cnt;
	mov	ar7,r5
00113$:
	C$easyax5043.c$494$3$378 ==.
;	..\COMMON\easyax5043.c:494: axradio_txbuffer_cnt -= cnt;
	mov	ar5,r7
	mov	r6,#0x00
	mov	dptr,#_axradio_txbuffer_cnt
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_axradio_txbuffer_cnt
	mov	a,r3
	clr	c
	subb	a,r5
	movx	@dptr,a
	mov	a,r4
	subb	a,r6
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$495$3$378 ==.
;	..\COMMON\easyax5043.c:495: cnt <<= 5;
	mov	a,r7
	swap	a
	rl	a
	anl	a,#0xe0
	mov	r7,a
	C$easyax5043.c$496$4$380 ==.
;	..\COMMON\easyax5043.c:496: radio_write8(AX5043_REG_FIFODATA, (AX5043_FIFOCMD_REPEATDATA | (3 << 5)));
	mov	dptr,#0x4029
	mov	a,#0x62
	movx	@dptr,a
	C$easyax5043.c$497$4$381 ==.
;	..\COMMON\easyax5043.c:497: radio_write8(AX5043_REG_FIFODATA, axradio_phy_preamble_flags);
	mov	dptr,#_axradio_phy_preamble_flags
	clr	a
	movc	a,@a+dptr
	mov	dptr,#0x4029
	movx	@dptr,a
	C$easyax5043.c$498$4$382 ==.
;	..\COMMON\easyax5043.c:498: radio_write8(AX5043_REG_FIFODATA, cnt);
	mov	dptr,#0x4029
	mov	a,r7
	movx	@dptr,a
	C$easyax5043.c$499$4$383 ==.
;	..\COMMON\easyax5043.c:499: radio_write8(AX5043_REG_FIFODATA, axradio_phy_preamble_byte);
	mov	dptr,#_axradio_phy_preamble_byte
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	dptr,#0x4029
	movx	@dptr,a
	C$easyax5043.c$500$3$378 ==.
;	..\COMMON\easyax5043.c:500: break;
	ljmp	00226$
	C$easyax5043.c$503$3$378 ==.
;	..\COMMON\easyax5043.c:503: shortpreamble:
00127$:
	C$easyax5043.c$504$3$378 ==.
;	..\COMMON\easyax5043.c:504: if (!axradio_txbuffer_cnt) {
	mov	dptr,#_axradio_txbuffer_cnt
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	orl	a,r5
	jz	00325$
	ljmp	00158$
00325$:
	C$easyax5043.c$505$4$384 ==.
;	..\COMMON\easyax5043.c:505: if (cnt < 15)
	cjne	r7,#0x0f,00326$
00326$:
	jnc	00327$
	ljmp	00220$
00327$:
	C$easyax5043.c$507$4$384 ==.
;	..\COMMON\easyax5043.c:507: if (axradio_phy_preamble_appendbits) {
	mov	dptr,#_axradio_phy_preamble_appendbits
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	jz	00143$
	C$easyax5043.c$509$6$386 ==.
;	..\COMMON\easyax5043.c:509: radio_write8(AX5043_REG_FIFODATA, (AX5043_FIFOCMD_DATA | (2 << 5)));
	C$easyax5043.c$510$6$387 ==.
;	..\COMMON\easyax5043.c:510: radio_write8(AX5043_REG_FIFODATA, 0x1C);
	mov	dptr,#0x4029
	mov	a,#0x41
	movx	@dptr,a
	mov	a,#0x1c
	movx	@dptr,a
	C$easyax5043.c$511$5$385 ==.
;	..\COMMON\easyax5043.c:511: byte = axradio_phy_preamble_appendpattern;
	mov	dptr,#_axradio_phy_preamble_appendpattern
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	mov	r7,a
	C$easyax5043.c$512$5$385 ==.
;	..\COMMON\easyax5043.c:512: if (radio_read8(AX5043_REG_PKTADDRCFG) & 0x80) {
	mov	dptr,#0x4200
	movx	a,@dptr
	mov	r2,a
	jnb	acc.7,00137$
	C$easyax5043.c$514$6$388 ==.
;	..\COMMON\easyax5043.c:514: byte &= 0xFF << (8-axradio_phy_preamble_appendbits);
	mov	a,#0x08
	clr	c
	subb	a,r4
	mov	b,a
	inc	b
	mov	a,#0xff
	sjmp	00332$
00330$:
	add	a,acc
00332$:
	djnz	b,00330$
	mov	r2,a
	anl	ar7,a
	C$easyax5043.c$515$6$388 ==.
;	..\COMMON\easyax5043.c:515: byte |= 0x80 >> axradio_phy_preamble_appendbits;
	mov	b,r4
	inc	b
	mov	a,#0x80
	sjmp	00334$
00333$:
	clr	c
	rrc	a
00334$:
	djnz	b,00333$
	mov	r2,a
	orl	ar7,a
	sjmp	00139$
00137$:
	C$easyax5043.c$518$6$389 ==.
;	..\COMMON\easyax5043.c:518: byte &= 0xFF >> (8-axradio_phy_preamble_appendbits);
	mov	ar2,r4
	mov	r3,#0x00
	mov	a,#0x08
	clr	c
	subb	a,r2
	mov	r2,a
	clr	a
	subb	a,r3
	mov	r3,a
	mov	b,r2
	inc	b
	mov	a,#0xff
	sjmp	00336$
00335$:
	clr	c
	rrc	a
00336$:
	djnz	b,00335$
	mov	r2,a
	anl	ar7,a
	C$easyax5043.c$519$6$389 ==.
;	..\COMMON\easyax5043.c:519: byte |= 0x01 << axradio_phy_preamble_appendbits;
	mov	b,r4
	inc	b
	mov	a,#0x01
	sjmp	00339$
00337$:
	add	a,acc
00339$:
	djnz	b,00337$
	mov	r4,a
	orl	ar7,a
	C$easyax5043.c$521$5$385 ==.
;	..\COMMON\easyax5043.c:521: radio_write8(AX5043_REG_FIFODATA, byte);
00139$:
	mov	dptr,#0x4029
	mov	a,r7
	movx	@dptr,a
00143$:
	C$easyax5043.c$527$4$384 ==.
;	..\COMMON\easyax5043.c:527: if ((radio_read8(AX5043_REG_FRAMING) & 0x0E) == 0x06 && axradio_framing_synclen) {
	mov	dptr,#0x4012
	movx	a,@dptr
	mov	r4,a
	anl	ar4,#0x0e
	cjne	r4,#0x06,00155$
	mov	dptr,#_axradio_framing_synclen
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	clr	a
	movc	a,@a+dptr
	jz	00155$
	C$easyax5043.c$529$5$384 ==.
;	..\COMMON\easyax5043.c:529: uint8_t len_byte = axradio_framing_synclen;
	C$easyax5043.c$530$5$391 ==.
;	..\COMMON\easyax5043.c:530: uint8_t i = (len_byte & 0x07) ? 0x04 : 0;
	mov	a,r4
	anl	a,#0x07
	jz	00230$
	mov	a,#0x04
00230$:
	mov	r3,a
	C$easyax5043.c$532$5$391 ==.
;	..\COMMON\easyax5043.c:532: len_byte += 7;
	mov	a,#0x07
	add	a,r4
	C$easyax5043.c$533$5$391 ==.
;	..\COMMON\easyax5043.c:533: len_byte >>= 3;
	swap	a
	rl	a
	anl	a,#0x1f
	C$easyax5043.c$534$6$392 ==.
;	..\COMMON\easyax5043.c:534: radio_write8(AX5043_REG_FIFODATA, (AX5043_FIFOCMD_DATA | ((len_byte + 1) << 5)));
	mov	r4,a
	inc	a
	swap	a
	rl	a
	anl	a,#0xe0
	mov	r2,a
	orl	ar2,#0x01
	mov	dptr,#0x4029
	mov	a,r2
	movx	@dptr,a
	C$easyax5043.c$535$6$393 ==.
;	..\COMMON\easyax5043.c:535: radio_write8(AX5043_REG_FIFODATA, axradio_framing_syncflags | i);
	mov	dptr,#_axradio_framing_syncflags
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	orl	ar3,a
	mov	dptr,#0x4029
	mov	a,r3
	movx	@dptr,a
	C$easyax5043.c$536$1$376 ==.
;	..\COMMON\easyax5043.c:536: for (i = 0; i < len_byte; ++i) {
	mov	r3,#0x00
00224$:
	clr	c
	mov	a,r3
	subb	a,r4
	jnc	00155$
	C$easyax5043.c$538$7$395 ==.
;	..\COMMON\easyax5043.c:538: radio_write8(AX5043_REG_FIFODATA, axradio_framing_syncword[i]);
	mov	a,r3
	mov	dptr,#_axradio_framing_syncword
	movc	a,@a+dptr
	mov	r2,a
	mov	dptr,#0x4029
	movx	@dptr,a
	C$easyax5043.c$536$5$391 ==.
;	..\COMMON\easyax5043.c:536: for (i = 0; i < len_byte; ++i) {
	inc	r3
	sjmp	00224$
00155$:
	C$easyax5043.c$545$4$384 ==.
;	..\COMMON\easyax5043.c:545: axradio_trxstate = trxstate_tx_packet;
	mov	_axradio_trxstate,#0x0c
	C$easyax5043.c$546$4$384 ==.
;	..\COMMON\easyax5043.c:546: break;
	ljmp	00226$
00158$:
	C$easyax5043.c$548$3$378 ==.
;	..\COMMON\easyax5043.c:548: if (cnt < 4)
	cjne	r7,#0x04,00345$
00345$:
	jnc	00346$
	ljmp	00220$
00346$:
	C$easyax5043.c$550$3$378 ==.
;	..\COMMON\easyax5043.c:550: cnt = 255;
	mov	r7,#0xff
	C$easyax5043.c$551$3$378 ==.
;	..\COMMON\easyax5043.c:551: if (axradio_txbuffer_cnt < 255*8)
	clr	c
	mov	a,r5
	subb	a,#0xf8
	mov	a,r6
	subb	a,#0x07
	jnc	00162$
	C$easyax5043.c$552$3$378 ==.
;	..\COMMON\easyax5043.c:552: cnt = axradio_txbuffer_cnt >> 3;
	mov	a,r6
	swap	a
	rl	a
	xch	a,r5
	swap	a
	rl	a
	anl	a,#0x1f
	xrl	a,r5
	xch	a,r5
	anl	a,#0x1f
	xch	a,r5
	xrl	a,r5
	xch	a,r5
	mov	r6,a
	mov	ar7,r5
00162$:
	C$easyax5043.c$553$3$378 ==.
;	..\COMMON\easyax5043.c:553: if (cnt) {
	mov	a,r7
	jz	00176$
	C$easyax5043.c$554$4$396 ==.
;	..\COMMON\easyax5043.c:554: axradio_txbuffer_cnt -= ((uint16_t)cnt) << 3;
	mov	ar5,r7
	clr	a
	rr	a
	anl	a,#0xf8
	xch	a,r5
	swap	a
	rr	a
	xch	a,r5
	xrl	a,r5
	xch	a,r5
	anl	a,#0xf8
	xch	a,r5
	xrl	a,r5
	mov	r6,a
	mov	dptr,#_axradio_txbuffer_cnt
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_axradio_txbuffer_cnt
	mov	a,r3
	clr	c
	subb	a,r5
	movx	@dptr,a
	mov	a,r4
	subb	a,r6
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$555$5$397 ==.
;	..\COMMON\easyax5043.c:555: radio_write8(AX5043_REG_FIFODATA, (AX5043_FIFOCMD_REPEATDATA | (3 << 5)));
	mov	dptr,#0x4029
	mov	a,#0x62
	movx	@dptr,a
	C$easyax5043.c$556$5$398 ==.
;	..\COMMON\easyax5043.c:556: radio_write8(AX5043_REG_FIFODATA, axradio_phy_preamble_flags);
	mov	dptr,#_axradio_phy_preamble_flags
	clr	a
	movc	a,@a+dptr
	mov	dptr,#0x4029
	movx	@dptr,a
	C$easyax5043.c$557$5$399 ==.
;	..\COMMON\easyax5043.c:557: radio_write8(AX5043_REG_FIFODATA, cnt);
	mov	dptr,#0x4029
	mov	a,r7
	movx	@dptr,a
	C$easyax5043.c$558$5$400 ==.
;	..\COMMON\easyax5043.c:558: radio_write8(AX5043_REG_FIFODATA, axradio_phy_preamble_byte);
	mov	dptr,#_axradio_phy_preamble_byte
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	dptr,#0x4029
	movx	@dptr,a
	C$easyax5043.c$559$4$396 ==.
;	..\COMMON\easyax5043.c:559: break;
	ljmp	00226$
00176$:
	C$easyax5043.c$562$4$378 ==.
;	..\COMMON\easyax5043.c:562: uint8_t byte = axradio_phy_preamble_byte;
	mov	dptr,#_axradio_phy_preamble_byte
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	C$easyax5043.c$563$4$401 ==.
;	..\COMMON\easyax5043.c:563: cnt = axradio_txbuffer_cnt;
	mov	dptr,#_axradio_txbuffer_cnt
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	ar7,r4
	C$easyax5043.c$564$4$401 ==.
;	..\COMMON\easyax5043.c:564: axradio_txbuffer_cnt = 0;
	mov	dptr,#_axradio_txbuffer_cnt
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$565$5$402 ==.
;	..\COMMON\easyax5043.c:565: radio_write8(AX5043_REG_FIFODATA, (AX5043_FIFOCMD_DATA | (2 << 5)));
	C$easyax5043.c$566$5$403 ==.
;	..\COMMON\easyax5043.c:566: radio_write8(AX5043_REG_FIFODATA, 0x1C);
	mov	dptr,#0x4029
	mov	a,#0x41
	movx	@dptr,a
	mov	a,#0x1c
	movx	@dptr,a
	C$easyax5043.c$567$4$401 ==.
;	..\COMMON\easyax5043.c:567: if (radio_read8(AX5043_REG_PKTADDRCFG) & 0x80) {
	mov	dptr,#0x4200
	movx	a,@dptr
	mov	r5,a
	jnb	acc.7,00184$
	C$easyax5043.c$569$5$404 ==.
;	..\COMMON\easyax5043.c:569: byte &= 0xFF << (8-cnt);
	mov	a,#0x08
	clr	c
	subb	a,r7
	mov	r5,a
	mov	b,r5
	inc	b
	mov	a,#0xff
	sjmp	00352$
00350$:
	add	a,acc
00352$:
	djnz	b,00350$
	mov	r5,a
	anl	ar6,a
	C$easyax5043.c$570$5$404 ==.
;	..\COMMON\easyax5043.c:570: byte |= 0x80 >> cnt;
	mov	b,r7
	inc	b
	mov	a,#0x80
	sjmp	00354$
00353$:
	clr	c
	rrc	a
00354$:
	djnz	b,00353$
	mov	r5,a
	orl	ar6,a
	sjmp	00186$
00184$:
	C$easyax5043.c$573$5$405 ==.
;	..\COMMON\easyax5043.c:573: byte &= 0xFF >> (8-cnt);
	mov	ar4,r7
	mov	r5,#0x00
	mov	a,#0x08
	clr	c
	subb	a,r4
	mov	r4,a
	clr	a
	subb	a,r5
	mov	r5,a
	mov	b,r4
	inc	b
	mov	a,#0xff
	sjmp	00356$
00355$:
	clr	c
	rrc	a
00356$:
	djnz	b,00355$
	mov	r4,a
	anl	ar6,a
	C$easyax5043.c$574$5$405 ==.
;	..\COMMON\easyax5043.c:574: byte |= 0x01 << cnt;
	mov	b,r7
	inc	b
	mov	a,#0x01
	sjmp	00359$
00357$:
	add	a,acc
00359$:
	djnz	b,00357$
	mov	r5,a
	orl	ar6,a
	C$easyax5043.c$576$4$401 ==.
;	..\COMMON\easyax5043.c:576: radio_write8(AX5043_REG_FIFODATA, byte);
00186$:
	mov	dptr,#0x4029
	mov	a,r6
	movx	@dptr,a
	C$easyax5043.c$578$3$378 ==.
;	..\COMMON\easyax5043.c:578: break;
	ljmp	00226$
	C$easyax5043.c$580$3$378 ==.
;	..\COMMON\easyax5043.c:580: case trxstate_tx_packet:
00189$:
	C$easyax5043.c$581$3$378 ==.
;	..\COMMON\easyax5043.c:581: if (cnt < 11)
	cjne	r7,#0x0b,00360$
00360$:
	jnc	00361$
	ljmp	00220$
00361$:
	C$easyax5043.c$584$4$378 ==.
;	..\COMMON\easyax5043.c:584: uint8_t flags = 0;
	mov	r6,#0x00
	C$easyax5043.c$585$4$407 ==.
;	..\COMMON\easyax5043.c:585: if (!axradio_txbuffer_cnt)
	mov	dptr,#_axradio_txbuffer_cnt
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00193$
	C$easyax5043.c$586$4$407 ==.
;	..\COMMON\easyax5043.c:586: flags |= 0x01; // flag byte: pkt_start
	mov	r6,#0x01
00193$:
	C$easyax5043.c$588$5$408 ==.
;	..\COMMON\easyax5043.c:588: uint16_t len = axradio_txbuffer_len - axradio_txbuffer_cnt;
	mov	dptr,#_axradio_txbuffer_cnt
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_axradio_txbuffer_len
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r2
	clr	c
	subb	a,r4
	mov	r4,a
	mov	a,r3
	subb	a,r5
	mov	r5,a
	C$easyax5043.c$589$5$408 ==.
;	..\COMMON\easyax5043.c:589: cnt -= 3;
	dec	r7
	dec	r7
	dec	r7
	C$easyax5043.c$590$5$408 ==.
;	..\COMMON\easyax5043.c:590: if (cnt >= len) {
	mov	ar2,r7
	mov	r3,#0x00
	clr	c
	mov	a,r2
	subb	a,r4
	mov	a,r3
	subb	a,r5
	jc	00195$
	C$easyax5043.c$591$6$409 ==.
;	..\COMMON\easyax5043.c:591: cnt = len;
	mov	ar7,r4
	C$easyax5043.c$592$6$409 ==.
;	..\COMMON\easyax5043.c:592: flags |= 0x02; // flag byte: pkt_end
	orl	ar6,#0x02
00195$:
	C$easyax5043.c$595$4$407 ==.
;	..\COMMON\easyax5043.c:595: if (!cnt)
	mov	a,r7
	jz	00212$
	C$easyax5043.c$597$5$410 ==.
;	..\COMMON\easyax5043.c:597: radio_write8(AX5043_REG_FIFODATA, AX5043_FIFOCMD_DATA | (7 << 5));
	mov	dptr,#0x4029
	mov	a,#0xe1
	movx	@dptr,a
	C$easyax5043.c$598$5$411 ==.
;	..\COMMON\easyax5043.c:598: radio_write8(AX5043_REG_FIFODATA, (cnt + 1)); // write FIFO chunk length byte (length includes the flag byte, thus the +1)
	mov	a,r7
	inc	a
	mov	dptr,#0x4029
	movx	@dptr,a
	C$easyax5043.c$599$5$412 ==.
;	..\COMMON\easyax5043.c:599: radio_write8(AX5043_REG_FIFODATA, flags);
	mov	dptr,#0x4029
	mov	a,r6
	movx	@dptr,a
	C$easyax5043.c$600$4$407 ==.
;	..\COMMON\easyax5043.c:600: ax5043_writefifo(&axradio_txbuffer[axradio_txbuffer_cnt], cnt);
	mov	dptr,#_axradio_txbuffer_cnt
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r4
	add	a,#_axradio_txbuffer
	mov	r4,a
	mov	a,r5
	addc	a,#(_axradio_txbuffer >> 8)
	mov	r5,a
	mov	r3,#0x00
	push	ar7
	push	ar6
	push	ar7
	mov	dpl,r4
	mov	dph,r5
	mov	b,r3
	lcall	_ax5043_writefifo
	dec	sp
	pop	ar6
	pop	ar7
	C$easyax5043.c$601$4$407 ==.
;	..\COMMON\easyax5043.c:601: axradio_txbuffer_cnt += cnt;
	mov	r5,#0x00
	mov	dptr,#_axradio_txbuffer_cnt
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_axradio_txbuffer_cnt
	mov	a,r7
	add	a,r3
	movx	@dptr,a
	mov	a,r5
	addc	a,r4
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$602$4$407 ==.
;	..\COMMON\easyax5043.c:602: if (flags & 0x02)
	mov	a,r6
	jb	acc.1,00212$
	C$easyax5043.c$603$4$407 ==.
;	..\COMMON\easyax5043.c:603: goto pktend;
	C$easyax5043.c$607$3$378 ==.
;	..\COMMON\easyax5043.c:607: default:
	C$easyax5043.c$608$3$378 ==.
;	..\COMMON\easyax5043.c:608: return;
	C$easyax5043.c$611$1$376 ==.
;	..\COMMON\easyax5043.c:611: pktend:
	ljmp	00226$
00212$:
	C$easyax5043.c$612$1$376 ==.
;	..\COMMON\easyax5043.c:612: axradio_trxstate = trxstate_tx_waitdone;
	mov	_axradio_trxstate,#0x0d
	C$easyax5043.c$613$2$413 ==.
;	..\COMMON\easyax5043.c:613: radio_write8(AX5043_REG_RADIOEVENTMASK0, 0x01); // enable REVRDONE event
	mov	dptr,#0x4009
	mov	a,#0x01
	movx	@dptr,a
	C$easyax5043.c$614$2$414 ==.
;	..\COMMON\easyax5043.c:614: radio_write8(AX5043_REG_IRQMASK0, 0x40); // enable radio controller irq
	mov	dptr,#0x4007
	mov	a,#0x40
	movx	@dptr,a
	C$easyax5043.c$616$1$376 ==.
;	..\COMMON\easyax5043.c:616: radio_write8(AX5043_REG_FIFOSTAT, 4); // commit
00220$:
	mov	dptr,#0x4028
	mov	a,#0x04
	movx	@dptr,a
00228$:
	C$easyax5043.c$617$1$376 ==.
	XFeasyax5043$transmit_isr$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_isr'
;------------------------------------------------------------
;radioStateTemp            Allocated to registers 
;evt                       Allocated to registers r7 
;------------------------------------------------------------
	G$axradio_isr$0$0 ==.
	C$easyax5043.c$620$1$376 ==.
;	..\COMMON\easyax5043.c:620: void axradio_isr(void) __interrupt INT_RADIO
;	-----------------------------------------
;	 function axradio_isr
;	-----------------------------------------
_axradio_isr:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
	C$easyax5043.c$633$1$417 ==.
;	..\COMMON\easyax5043.c:633: switch (axradio_trxstate) {
	mov	a,_axradio_trxstate
	mov	r7,a
	add	a,#0xff - 0x10
	jnc	00349$
	ljmp	00102$
00349$:
	mov	a,r7
	mov	b,a
	add	a,#(00350$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,b
	add	a,#(00351$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00350$:
	.db	00101$
	.db	00258$
	.db	00227$
	.db	00108$
	.db	00101$
	.db	00112$
	.db	00101$
	.db	00116$
	.db	00101$
	.db	00120$
	.db	00153$
	.db	00154$
	.db	00155$
	.db	00156$
	.db	00186$
	.db	00196$
	.db	00211$
00351$:
	.db	00101$>>8
	.db	00258$>>8
	.db	00227$>>8
	.db	00108$>>8
	.db	00101$>>8
	.db	00112$>>8
	.db	00101$>>8
	.db	00116$>>8
	.db	00101$>>8
	.db	00120$>>8
	.db	00153$>>8
	.db	00154$>>8
	.db	00155$>>8
	.db	00156$>>8
	.db	00186$>>8
	.db	00196$>>8
	.db	00211$>>8
	C$easyax5043.c$634$2$418 ==.
;	..\COMMON\easyax5043.c:634: default:
00101$:
	C$easyax5043.c$635$2$418 ==.
;	..\COMMON\easyax5043.c:635: radio_write8(AX5043_REG_IRQMASK1, 0x00);
00102$:
	mov	dptr,#0x4006
	clr	a
	movx	@dptr,a
	C$easyax5043.c$636$3$420 ==.
;	..\COMMON\easyax5043.c:636: radio_write8(AX5043_REG_IRQMASK0, 0x00);
	mov	dptr,#0x4007
	movx	@dptr,a
	C$easyax5043.c$637$2$418 ==.
;	..\COMMON\easyax5043.c:637: break;
	ljmp	00260$
	C$easyax5043.c$639$2$418 ==.
;	..\COMMON\easyax5043.c:639: case trxstate_wait_xtal:
00108$:
	C$easyax5043.c$640$3$421 ==.
;	..\COMMON\easyax5043.c:640: radio_write8(AX5043_REG_IRQMASK1, 0x00); // otherwise crystal ready will fire all over again
	mov	dptr,#0x4006
	clr	a
	movx	@dptr,a
	C$easyax5043.c$641$2$418 ==.
;	..\COMMON\easyax5043.c:641: axradio_trxstate = trxstate_xtal_ready;
	mov	_axradio_trxstate,#0x04
	C$easyax5043.c$642$2$418 ==.
;	..\COMMON\easyax5043.c:642: break;
	ljmp	00260$
	C$easyax5043.c$644$2$418 ==.
;	..\COMMON\easyax5043.c:644: case trxstate_pll_ranging:
00112$:
	C$easyax5043.c$645$3$422 ==.
;	..\COMMON\easyax5043.c:645: radio_write8(AX5043_REG_IRQMASK1, 0x00); // otherwise autoranging done will fire all over again
	mov	dptr,#0x4006
	clr	a
	movx	@dptr,a
	C$easyax5043.c$646$2$418 ==.
;	..\COMMON\easyax5043.c:646: axradio_trxstate = trxstate_pll_ranging_done;
	mov	_axradio_trxstate,#0x06
	C$easyax5043.c$647$2$418 ==.
;	..\COMMON\easyax5043.c:647: break;
	ljmp	00260$
	C$easyax5043.c$649$2$418 ==.
;	..\COMMON\easyax5043.c:649: case trxstate_pll_settling:
00116$:
	C$easyax5043.c$650$3$423 ==.
;	..\COMMON\easyax5043.c:650: radio_write8(AX5043_REG_RADIOEVENTMASK0, 0x00);
	mov	dptr,#0x4009
	clr	a
	movx	@dptr,a
	C$easyax5043.c$651$2$418 ==.
;	..\COMMON\easyax5043.c:651: axradio_trxstate = trxstate_pll_settled;
	mov	_axradio_trxstate,#0x08
	C$easyax5043.c$652$2$418 ==.
;	..\COMMON\easyax5043.c:652: break;
	ljmp	00260$
	C$easyax5043.c$654$2$418 ==.
;	..\COMMON\easyax5043.c:654: case trxstate_tx_xtalwait:
00120$:
	C$easyax5043.c$655$2$418 ==.
;	..\COMMON\easyax5043.c:655: radio_read8(AX5043_REG_RADIOEVENTREQ0); // make sure REVRDONE bit is cleared, so it is a reliable indicator that the packet is out
	mov	dptr,#0x400f
	movx	a,@dptr
	C$easyax5043.c$656$3$424 ==.
;	..\COMMON\easyax5043.c:656: radio_write8(AX5043_REG_FIFOSTAT, 3); // clear FIFO data & flags (prevent transmitting anything left over in the FIFO, this has no effect if the FIFO is not powerered, in this case it is reset any way)
	mov	dptr,#0x4028
	mov	a,#0x03
	movx	@dptr,a
	C$easyax5043.c$657$3$425 ==.
;	..\COMMON\easyax5043.c:657: radio_write8(AX5043_REG_IRQMASK1, 0x00);
	mov	dptr,#0x4006
	clr	a
	movx	@dptr,a
	C$easyax5043.c$658$3$426 ==.
;	..\COMMON\easyax5043.c:658: radio_write8(AX5043_REG_IRQMASK0, 0x08); // enable fifo free threshold
	mov	dptr,#0x4007
	mov	a,#0x08
	movx	@dptr,a
	C$easyax5043.c$659$2$418 ==.
;	..\COMMON\easyax5043.c:659: axradio_trxstate = trxstate_tx_longpreamble;
	mov	_axradio_trxstate,#0x0a
	C$easyax5043.c$661$2$418 ==.
;	..\COMMON\easyax5043.c:661: if ((radio_read8(AX5043_REG_MODULATION) & 0x0F) == 9) { // 4-FSK
	mov	dptr,#0x4010
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0x0f
	cjne	r7,#0x09,00143$
	C$easyax5043.c$662$4$428 ==.
;	..\COMMON\easyax5043.c:662: radio_write8(AX5043_REG_FIFODATA, (AX5043_FIFOCMD_DATA | (7 << 5)));
	C$easyax5043.c$663$4$429 ==.
;	..\COMMON\easyax5043.c:663: radio_write8(AX5043_REG_FIFODATA, 2);  // length (including flags)
	C$easyax5043.c$664$4$430 ==.
;	..\COMMON\easyax5043.c:664: radio_write8(AX5043_REG_FIFODATA, 0x01);  // flag PKTSTART -> dibit sync
	mov	dptr,#0x4029
	mov	a,#0xe1
	movx	@dptr,a
	mov	a,#0x02
	movx	@dptr,a
	dec	a
	movx	@dptr,a
	C$easyax5043.c$665$4$431 ==.
;	..\COMMON\easyax5043.c:665: radio_write8(AX5043_REG_FIFODATA, 0x11); // dummy byte for forcing dibit sync
	mov	dptr,#0x4029
	mov	a,#0x11
	movx	@dptr,a
00143$:
	C$easyax5043.c$672$2$418 ==.
;	..\COMMON\easyax5043.c:672: transmit_isr();
	lcall	_transmit_isr
	C$easyax5043.c$673$3$432 ==.
;	..\COMMON\easyax5043.c:673: radio_write8(AX5043_REG_PWRMODE, AX5043_PWRSTATE_FULL_TX);
	mov	dptr,#0x4002
	mov	a,#0x0d
	movx	@dptr,a
	C$easyax5043.c$674$2$418 ==.
;	..\COMMON\easyax5043.c:674: update_timeanchor();
	lcall	_update_timeanchor
	C$easyax5043.c$675$2$418 ==.
;	..\COMMON\easyax5043.c:675: wtimer_remove_callback(&axradio_cb_transmitstart.cb);
	mov	dptr,#_axradio_cb_transmitstart
	lcall	_wtimer_remove_callback
	C$easyax5043.c$676$2$418 ==.
;	..\COMMON\easyax5043.c:676: switch (axradio_mode) {
	mov	r7,_axradio_mode
	cjne	r7,#0x12,00354$
	sjmp	00148$
00354$:
	cjne	r7,#0x13,00151$
	C$easyax5043.c$678$3$433 ==.
;	..\COMMON\easyax5043.c:678: case AXRADIO_MODE_WOR_ACK_TRANSMIT:
00148$:
	C$easyax5043.c$679$3$433 ==.
;	..\COMMON\easyax5043.c:679: if (axradio_ack_count != axradio_framing_ack_retransmissions) {
	mov	dptr,#_axradio_ack_count
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_axradio_framing_ack_retransmissions
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	a,r7
	cjne	a,ar6,00357$
	sjmp	00151$
00357$:
	C$easyax5043.c$680$4$434 ==.
;	..\COMMON\easyax5043.c:680: axradio_cb_transmitstart.st.error = AXRADIO_ERR_RETRANSMISSION;
	mov	dptr,#(_axradio_cb_transmitstart + 0x0005)
	mov	a,#0x08
	movx	@dptr,a
	C$easyax5043.c$681$4$434 ==.
;	..\COMMON\easyax5043.c:681: break;
	C$easyax5043.c$684$3$433 ==.
;	..\COMMON\easyax5043.c:684: default:
	sjmp	00152$
00151$:
	C$easyax5043.c$685$3$433 ==.
;	..\COMMON\easyax5043.c:685: axradio_cb_transmitstart.st.error = AXRADIO_ERR_NOERROR;
	mov	dptr,#(_axradio_cb_transmitstart + 0x0005)
	clr	a
	movx	@dptr,a
	C$easyax5043.c$687$2$418 ==.
;	..\COMMON\easyax5043.c:687: }
00152$:
	C$easyax5043.c$688$2$418 ==.
;	..\COMMON\easyax5043.c:688: axradio_cb_transmitstart.st.time.t = axradio_timeanchor.radiotimer;
	mov	dptr,#(_axradio_timeanchor + 0x0004)
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
	mov	dptr,#(_axradio_cb_transmitstart + 0x0006)
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
	C$easyax5043.c$689$2$418 ==.
;	..\COMMON\easyax5043.c:689: wtimer_add_callback(&axradio_cb_transmitstart.cb);
	mov	dptr,#_axradio_cb_transmitstart
	lcall	_wtimer_add_callback
	C$easyax5043.c$690$2$418 ==.
;	..\COMMON\easyax5043.c:690: break;
	ljmp	00260$
	C$easyax5043.c$692$2$418 ==.
;	..\COMMON\easyax5043.c:692: case trxstate_tx_longpreamble:
00153$:
	C$easyax5043.c$693$2$418 ==.
;	..\COMMON\easyax5043.c:693: case trxstate_tx_shortpreamble:
00154$:
	C$easyax5043.c$694$2$418 ==.
;	..\COMMON\easyax5043.c:694: case trxstate_tx_packet:
00155$:
	C$easyax5043.c$695$2$418 ==.
;	..\COMMON\easyax5043.c:695: transmit_isr();
	lcall	_transmit_isr
	C$easyax5043.c$696$2$418 ==.
;	..\COMMON\easyax5043.c:696: break;
	ljmp	00260$
	C$easyax5043.c$698$2$418 ==.
;	..\COMMON\easyax5043.c:698: case trxstate_tx_waitdone:
00156$:
	C$easyax5043.c$699$2$418 ==.
;	..\COMMON\easyax5043.c:699: radio_read8(AX5043_REG_RADIOEVENTREQ0);
	mov	dptr,#0x400f
	movx	a,@dptr
	C$easyax5043.c$700$2$418 ==.
;	..\COMMON\easyax5043.c:700: radioStateTemp = radio_read8(AX5043_REG_RADIOSTATE);
	mov	dptr,#0x401c
	movx	a,@dptr
	jz	00358$
	ljmp	00260$
00358$:
	C$easyax5043.c$701$2$418 ==.
;	..\COMMON\easyax5043.c:701: if (radioStateTemp != 0)
	C$easyax5043.c$703$3$435 ==.
;	..\COMMON\easyax5043.c:703: radio_write8(AX5043_REG_RADIOEVENTMASK0, 0x00);
	mov	dptr,#0x4009
	clr	a
	movx	@dptr,a
	C$easyax5043.c$704$2$418 ==.
;	..\COMMON\easyax5043.c:704: switch (axradio_mode) {
	mov	r7,_axradio_mode
	cjne	r7,#0x12,00359$
	sjmp	00173$
00359$:
	cjne	r7,#0x13,00360$
	sjmp	00173$
00360$:
	cjne	r7,#0x20,00361$
	sjmp	00162$
00361$:
	cjne	r7,#0x21,00362$
	sjmp	00167$
00362$:
	cjne	r7,#0x22,00363$
	sjmp	00163$
00363$:
	cjne	r7,#0x23,00364$
	sjmp	00170$
00364$:
	cjne	r7,#0x30,00365$
	ljmp	00174$
00365$:
	cjne	r7,#0x31,00366$
	sjmp	00171$
00366$:
	ljmp	00175$
	C$easyax5043.c$705$3$436 ==.
;	..\COMMON\easyax5043.c:705: case AXRADIO_MODE_ASYNC_RECEIVE:
00162$:
	C$easyax5043.c$706$3$436 ==.
;	..\COMMON\easyax5043.c:706: ax5043_init_registers_rx();
	lcall	_ax5043_init_registers_rx
	C$easyax5043.c$707$3$436 ==.
;	..\COMMON\easyax5043.c:707: ax5043_receiver_on_continuous();
	lcall	_ax5043_receiver_on_continuous
	C$easyax5043.c$708$3$436 ==.
;	..\COMMON\easyax5043.c:708: break;
	ljmp	00176$
	C$easyax5043.c$710$3$436 ==.
;	..\COMMON\easyax5043.c:710: case AXRADIO_MODE_ACK_RECEIVE:
00163$:
	C$easyax5043.c$711$3$436 ==.
;	..\COMMON\easyax5043.c:711: if (axradio_cb_receive.st.error == AXRADIO_ERR_PACKETDONE) {
	mov	dptr,#(_axradio_cb_receive + 0x0005)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0xf0,00166$
	C$easyax5043.c$712$4$437 ==.
;	..\COMMON\easyax5043.c:712: ax5043_init_registers_rx();
	lcall	_ax5043_init_registers_rx
	C$easyax5043.c$713$4$437 ==.
;	..\COMMON\easyax5043.c:713: ax5043_receiver_on_continuous();
	lcall	_ax5043_receiver_on_continuous
	C$easyax5043.c$714$4$437 ==.
;	..\COMMON\easyax5043.c:714: break;
	C$easyax5043.c$716$3$436 ==.
;	..\COMMON\easyax5043.c:716: offxtal:
	sjmp	00176$
00166$:
	C$easyax5043.c$717$3$436 ==.
;	..\COMMON\easyax5043.c:717: ax5043_off_xtal();
	lcall	_ax5043_off_xtal
	C$easyax5043.c$718$3$436 ==.
;	..\COMMON\easyax5043.c:718: break;
	C$easyax5043.c$720$3$436 ==.
;	..\COMMON\easyax5043.c:720: case AXRADIO_MODE_WOR_RECEIVE:
	sjmp	00176$
00167$:
	C$easyax5043.c$721$3$436 ==.
;	..\COMMON\easyax5043.c:721: if (axradio_cb_receive.st.error == AXRADIO_ERR_PACKETDONE) {
	mov	dptr,#(_axradio_cb_receive + 0x0005)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0xf0,00166$
	C$easyax5043.c$722$4$438 ==.
;	..\COMMON\easyax5043.c:722: ax5043_init_registers_rx();
	lcall	_ax5043_init_registers_rx
	C$easyax5043.c$723$4$438 ==.
;	..\COMMON\easyax5043.c:723: ax5043_receiver_on_wor();
	lcall	_ax5043_receiver_on_wor
	C$easyax5043.c$724$4$438 ==.
;	..\COMMON\easyax5043.c:724: break;
	C$easyax5043.c$728$3$436 ==.
;	..\COMMON\easyax5043.c:728: case AXRADIO_MODE_WOR_ACK_RECEIVE:
	sjmp	00176$
00170$:
	C$easyax5043.c$729$3$436 ==.
;	..\COMMON\easyax5043.c:729: ax5043_init_registers_rx();
	lcall	_ax5043_init_registers_rx
	C$easyax5043.c$730$3$436 ==.
;	..\COMMON\easyax5043.c:730: ax5043_receiver_on_wor();
	lcall	_ax5043_receiver_on_wor
	C$easyax5043.c$731$3$436 ==.
;	..\COMMON\easyax5043.c:731: break;
	C$easyax5043.c$733$3$436 ==.
;	..\COMMON\easyax5043.c:733: case AXRADIO_MODE_SYNC_ACK_MASTER:
	sjmp	00176$
00171$:
	C$easyax5043.c$734$3$436 ==.
;	..\COMMON\easyax5043.c:734: axradio_txbuffer_len = axradio_framing_minpayloadlen;
	mov	dptr,#_axradio_framing_minpayloadlen
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	dptr,#_axradio_txbuffer_len
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$738$3$436 ==.
;	..\COMMON\easyax5043.c:738: case AXRADIO_MODE_WOR_ACK_TRANSMIT:
00173$:
	C$easyax5043.c$739$3$436 ==.
;	..\COMMON\easyax5043.c:739: ax5043_init_registers_rx();
	lcall	_ax5043_init_registers_rx
	C$easyax5043.c$740$3$436 ==.
;	..\COMMON\easyax5043.c:740: ax5043_receiver_on_continuous();
	lcall	_ax5043_receiver_on_continuous
	C$easyax5043.c$741$3$436 ==.
;	..\COMMON\easyax5043.c:741: wtimer_remove(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer_remove
	C$easyax5043.c$742$3$436 ==.
;	..\COMMON\easyax5043.c:742: axradio_timer.time = axradio_framing_ack_timeout;
	mov	dptr,#_axradio_framing_ack_timeout
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r5,a
	mov	a,#0x02
	movc	a,@a+dptr
	mov	r6,a
	mov	a,#0x03
	movc	a,@a+dptr
	mov	r7,a
	mov	dptr,#(_axradio_timer + 0x0004)
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
	C$easyax5043.c$743$3$436 ==.
;	..\COMMON\easyax5043.c:743: wtimer0_addrelative(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer0_addrelative
	C$easyax5043.c$744$3$436 ==.
;	..\COMMON\easyax5043.c:744: break;
	C$easyax5043.c$746$3$436 ==.
;	..\COMMON\easyax5043.c:746: case AXRADIO_MODE_SYNC_MASTER:
	sjmp	00176$
00174$:
	C$easyax5043.c$747$3$436 ==.
;	..\COMMON\easyax5043.c:747: axradio_txbuffer_len = axradio_framing_minpayloadlen;
	mov	dptr,#_axradio_framing_minpayloadlen
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	dptr,#_axradio_txbuffer_len
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$750$3$436 ==.
;	..\COMMON\easyax5043.c:750: default:
00175$:
	C$easyax5043.c$751$3$436 ==.
;	..\COMMON\easyax5043.c:751: ax5043_off();
	lcall	_ax5043_off
	C$easyax5043.c$753$2$418 ==.
;	..\COMMON\easyax5043.c:753: }
00176$:
	C$easyax5043.c$754$2$418 ==.
;	..\COMMON\easyax5043.c:754: if (axradio_mode != AXRADIO_MODE_SYNC_MASTER &&
	mov	a,#0x30
	cjne	a,_axradio_mode,00371$
	sjmp	00178$
00371$:
	C$easyax5043.c$755$2$418 ==.
;	..\COMMON\easyax5043.c:755: axradio_mode != AXRADIO_MODE_SYNC_ACK_MASTER &&
	mov	a,#0x31
	cjne	a,_axradio_mode,00372$
	sjmp	00178$
00372$:
	C$easyax5043.c$756$2$418 ==.
;	..\COMMON\easyax5043.c:756: axradio_mode != AXRADIO_MODE_SYNC_SLAVE &&
	mov	a,#0x32
	cjne	a,_axradio_mode,00373$
	sjmp	00178$
00373$:
	C$easyax5043.c$757$2$418 ==.
;	..\COMMON\easyax5043.c:757: axradio_mode != AXRADIO_MODE_SYNC_ACK_SLAVE)
	mov	a,#0x33
	cjne	a,_axradio_mode,00374$
	sjmp	00178$
00374$:
	C$easyax5043.c$758$2$418 ==.
;	..\COMMON\easyax5043.c:758: axradio_syncstate = syncstate_off;
	mov	dptr,#_axradio_syncstate
	clr	a
	movx	@dptr,a
00178$:
	C$easyax5043.c$759$2$418 ==.
;	..\COMMON\easyax5043.c:759: update_timeanchor();
	lcall	_update_timeanchor
	C$easyax5043.c$760$2$418 ==.
;	..\COMMON\easyax5043.c:760: wtimer_remove_callback(&axradio_cb_transmitend.cb);
	mov	dptr,#_axradio_cb_transmitend
	lcall	_wtimer_remove_callback
	C$easyax5043.c$761$2$418 ==.
;	..\COMMON\easyax5043.c:761: axradio_cb_transmitend.st.error = AXRADIO_ERR_NOERROR;
	mov	dptr,#(_axradio_cb_transmitend + 0x0005)
	clr	a
	movx	@dptr,a
	C$easyax5043.c$762$2$418 ==.
;	..\COMMON\easyax5043.c:762: if (axradio_mode == AXRADIO_MODE_ACK_TRANSMIT ||
	mov	a,#0x12
	cjne	a,_axradio_mode,00375$
	sjmp	00182$
00375$:
	C$easyax5043.c$763$2$418 ==.
;	..\COMMON\easyax5043.c:763: axradio_mode == AXRADIO_MODE_WOR_ACK_TRANSMIT ||
	mov	a,#0x13
	cjne	a,_axradio_mode,00376$
	sjmp	00182$
00376$:
	C$easyax5043.c$764$2$418 ==.
;	..\COMMON\easyax5043.c:764: axradio_mode == AXRADIO_MODE_SYNC_ACK_MASTER)
	mov	a,#0x31
	cjne	a,_axradio_mode,00183$
00182$:
	C$easyax5043.c$765$2$418 ==.
;	..\COMMON\easyax5043.c:765: axradio_cb_transmitend.st.error = AXRADIO_ERR_BUSY;
	mov	dptr,#(_axradio_cb_transmitend + 0x0005)
	mov	a,#0x02
	movx	@dptr,a
00183$:
	C$easyax5043.c$766$2$418 ==.
;	..\COMMON\easyax5043.c:766: axradio_cb_transmitend.st.time.t = axradio_timeanchor.radiotimer;
	mov	dptr,#(_axradio_timeanchor + 0x0004)
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
	mov	dptr,#(_axradio_cb_transmitend + 0x0006)
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
	C$easyax5043.c$767$2$418 ==.
;	..\COMMON\easyax5043.c:767: wtimer_add_callback(&axradio_cb_transmitend.cb);
	mov	dptr,#_axradio_cb_transmitend
	lcall	_wtimer_add_callback
	C$easyax5043.c$768$2$418 ==.
;	..\COMMON\easyax5043.c:768: break;
	ljmp	00260$
	C$easyax5043.c$771$2$418 ==.
;	..\COMMON\easyax5043.c:771: case trxstate_txcw_xtalwait:
00186$:
	C$easyax5043.c$772$3$439 ==.
;	..\COMMON\easyax5043.c:772: radio_write8(AX5043_REG_IRQMASK1, 0x00);
	mov	dptr,#0x4006
	clr	a
	movx	@dptr,a
	C$easyax5043.c$773$3$440 ==.
;	..\COMMON\easyax5043.c:773: radio_write8(AX5043_REG_IRQMASK0, 0x00);
	mov	dptr,#0x4007
	movx	@dptr,a
	C$easyax5043.c$774$3$441 ==.
;	..\COMMON\easyax5043.c:774: radio_write8(AX5043_REG_PWRMODE, AX5043_PWRSTATE_FULL_TX);
	mov	dptr,#0x4002
	mov	a,#0x0d
	movx	@dptr,a
	C$easyax5043.c$775$2$418 ==.
;	..\COMMON\easyax5043.c:775: axradio_trxstate = trxstate_off;
	mov	_axradio_trxstate,#0x00
	C$easyax5043.c$776$2$418 ==.
;	..\COMMON\easyax5043.c:776: update_timeanchor();
	lcall	_update_timeanchor
	C$easyax5043.c$777$2$418 ==.
;	..\COMMON\easyax5043.c:777: wtimer_remove_callback(&axradio_cb_transmitstart.cb);
	mov	dptr,#_axradio_cb_transmitstart
	lcall	_wtimer_remove_callback
	C$easyax5043.c$778$2$418 ==.
;	..\COMMON\easyax5043.c:778: axradio_cb_transmitstart.st.error = AXRADIO_ERR_NOERROR;
	mov	dptr,#(_axradio_cb_transmitstart + 0x0005)
	clr	a
	movx	@dptr,a
	C$easyax5043.c$779$2$418 ==.
;	..\COMMON\easyax5043.c:779: axradio_cb_transmitstart.st.time.t = axradio_timeanchor.radiotimer;
	mov	dptr,#(_axradio_timeanchor + 0x0004)
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
	mov	dptr,#(_axradio_cb_transmitstart + 0x0006)
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
	C$easyax5043.c$780$2$418 ==.
;	..\COMMON\easyax5043.c:780: wtimer_add_callback(&axradio_cb_transmitstart.cb);
	mov	dptr,#_axradio_cb_transmitstart
	lcall	_wtimer_add_callback
	C$easyax5043.c$781$2$418 ==.
;	..\COMMON\easyax5043.c:781: break;
	ljmp	00260$
	C$easyax5043.c$783$2$418 ==.
;	..\COMMON\easyax5043.c:783: case trxstate_txstream_xtalwait:
00196$:
	C$easyax5043.c$784$2$418 ==.
;	..\COMMON\easyax5043.c:784: if (radio_read8(AX5043_REG_IRQREQUEST1) & 0x01) {
	mov	dptr,#0x400c
	movx	a,@dptr
	mov	r7,a
	jb	acc.0,00379$
	ljmp	00221$
00379$:
	C$easyax5043.c$785$4$443 ==.
;	..\COMMON\easyax5043.c:785: radio_write8(AX5043_REG_RADIOEVENTMASK0, 0x03); // enable PLL settled and done event
	mov	dptr,#0x4009
	mov	a,#0x03
	movx	@dptr,a
	C$easyax5043.c$786$4$444 ==.
;	..\COMMON\easyax5043.c:786: radio_write8(AX5043_REG_IRQMASK1, 0x00);
	mov	dptr,#0x4006
	clr	a
	movx	@dptr,a
	C$easyax5043.c$787$4$445 ==.
;	..\COMMON\easyax5043.c:787: radio_write8(AX5043_REG_IRQMASK0, 0x40); // enable radio controller irq
	mov	dptr,#0x4007
	mov	a,#0x40
	movx	@dptr,a
	C$easyax5043.c$788$4$446 ==.
;	..\COMMON\easyax5043.c:788: radio_write8(AX5043_REG_PWRMODE, AX5043_PWRSTATE_FULL_TX);
	mov	dptr,#0x4002
	mov	a,#0x0d
	movx	@dptr,a
	C$easyax5043.c$789$3$442 ==.
;	..\COMMON\easyax5043.c:789: axradio_trxstate = trxstate_txstream;
	mov	_axradio_trxstate,#0x10
	C$easyax5043.c$791$2$418 ==.
;	..\COMMON\easyax5043.c:791: goto txstreamdatacb;
	ljmp	00221$
	C$easyax5043.c$793$2$418 ==.
;	..\COMMON\easyax5043.c:793: case trxstate_txstream:
00211$:
	C$easyax5043.c$795$3$447 ==.
;	..\COMMON\easyax5043.c:795: uint8_t __autodata evt = radio_read8(AX5043_REG_RADIOEVENTREQ0);
	mov	dptr,#0x400f
	movx	a,@dptr
	mov	r7,a
	C$easyax5043.c$796$4$448 ==.
;	..\COMMON\easyax5043.c:796: radio_write8(AX5043_REG_RADIOEVENTMASK0, 0x00);
	mov	dptr,#0x4009
	clr	a
	movx	@dptr,a
	C$easyax5043.c$797$3$447 ==.
;	..\COMMON\easyax5043.c:797: if (evt & 0x03)
	mov	a,r7
	anl	a,#0x03
	jz	00216$
	C$easyax5043.c$798$3$447 ==.
;	..\COMMON\easyax5043.c:798: update_timeanchor();
	push	ar7
	lcall	_update_timeanchor
	pop	ar7
00216$:
	C$easyax5043.c$799$3$447 ==.
;	..\COMMON\easyax5043.c:799: if (evt & 0x01) {
	mov	a,r7
	jnb	acc.0,00218$
	C$easyax5043.c$800$4$449 ==.
;	..\COMMON\easyax5043.c:800: update_timeanchor();
	push	ar7
	lcall	_update_timeanchor
	C$easyax5043.c$801$4$449 ==.
;	..\COMMON\easyax5043.c:801: wtimer_remove_callback(&axradio_cb_transmitend.cb);
	mov	dptr,#_axradio_cb_transmitend
	lcall	_wtimer_remove_callback
	C$easyax5043.c$802$4$449 ==.
;	..\COMMON\easyax5043.c:802: axradio_cb_transmitend.st.error = AXRADIO_ERR_NOERROR;
	mov	dptr,#(_axradio_cb_transmitend + 0x0005)
	clr	a
	movx	@dptr,a
	C$easyax5043.c$803$4$449 ==.
;	..\COMMON\easyax5043.c:803: axradio_cb_transmitend.st.time.t = axradio_timeanchor.radiotimer;
	mov	dptr,#(_axradio_timeanchor + 0x0004)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#(_axradio_cb_transmitend + 0x0006)
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
	C$easyax5043.c$804$4$449 ==.
;	..\COMMON\easyax5043.c:804: wtimer_add_callback(&axradio_cb_transmitend.cb);
	mov	dptr,#_axradio_cb_transmitend
	lcall	_wtimer_add_callback
	pop	ar7
00218$:
	C$easyax5043.c$806$3$447 ==.
;	..\COMMON\easyax5043.c:806: if (evt & 0x02) {
	mov	a,r7
	jnb	acc.1,00221$
	C$easyax5043.c$807$4$450 ==.
;	..\COMMON\easyax5043.c:807: update_timeanchor();
	lcall	_update_timeanchor
	C$easyax5043.c$808$4$450 ==.
;	..\COMMON\easyax5043.c:808: wtimer_remove_callback(&axradio_cb_transmitstart.cb);
	mov	dptr,#_axradio_cb_transmitstart
	lcall	_wtimer_remove_callback
	C$easyax5043.c$809$4$450 ==.
;	..\COMMON\easyax5043.c:809: axradio_cb_transmitstart.st.error = AXRADIO_ERR_NOERROR;
	mov	dptr,#(_axradio_cb_transmitstart + 0x0005)
	clr	a
	movx	@dptr,a
	C$easyax5043.c$810$4$450 ==.
;	..\COMMON\easyax5043.c:810: axradio_cb_transmitstart.st.time.t = axradio_timeanchor.radiotimer;
	mov	dptr,#(_axradio_timeanchor + 0x0004)
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
	mov	dptr,#(_axradio_cb_transmitstart + 0x0006)
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
	C$easyax5043.c$811$4$450 ==.
;	..\COMMON\easyax5043.c:811: wtimer_add_callback(&axradio_cb_transmitstart.cb);
	mov	dptr,#_axradio_cb_transmitstart
	lcall	_wtimer_add_callback
	C$easyax5043.c$813$4$450 ==.
;	..\COMMON\easyax5043.c:813: update_timeanchor();
	lcall	_update_timeanchor
	C$easyax5043.c$814$4$450 ==.
;	..\COMMON\easyax5043.c:814: wtimer_remove_callback(&axradio_cb_transmitdata.cb);
	mov	dptr,#_axradio_cb_transmitdata
	lcall	_wtimer_remove_callback
	C$easyax5043.c$815$4$450 ==.
;	..\COMMON\easyax5043.c:815: axradio_cb_transmitdata.st.error = AXRADIO_ERR_NOERROR;
	mov	dptr,#(_axradio_cb_transmitdata + 0x0005)
	clr	a
	movx	@dptr,a
	C$easyax5043.c$816$4$450 ==.
;	..\COMMON\easyax5043.c:816: axradio_cb_transmitdata.st.time.t = axradio_timeanchor.radiotimer;
	mov	dptr,#(_axradio_timeanchor + 0x0004)
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
	mov	dptr,#(_axradio_cb_transmitdata + 0x0006)
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
	C$easyax5043.c$817$4$450 ==.
;	..\COMMON\easyax5043.c:817: wtimer_add_callback(&axradio_cb_transmitdata.cb);
	mov	dptr,#_axradio_cb_transmitdata
	lcall	_wtimer_add_callback
	C$easyax5043.c$820$2$418 ==.
;	..\COMMON\easyax5043.c:820: txstreamdatacb:
00221$:
	C$easyax5043.c$821$2$418 ==.
;	..\COMMON\easyax5043.c:821: if (radio_read8(AX5043_REG_IRQREQUEST0) & radio_read8(AX5043_REG_IRQMASK0) & 0x08) {
	mov	dptr,#0x400d
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#0x4007
	movx	a,@dptr
	mov	r6,a
	anl	a,r7
	jb	acc.3,00383$
	ljmp	00260$
00383$:
	C$easyax5043.c$822$4$452 ==.
;	..\COMMON\easyax5043.c:822: radio_write8(AX5043_REG_IRQMASK0, (radio_read8(AX5043_REG_IRQMASK0) & (uint8_t)~0x08));
	mov	dptr,#0x4007
	movx	a,@dptr
	anl	a,#0xf7
	movx	@dptr,a
	C$easyax5043.c$823$3$451 ==.
;	..\COMMON\easyax5043.c:823: update_timeanchor();
	lcall	_update_timeanchor
	C$easyax5043.c$824$3$451 ==.
;	..\COMMON\easyax5043.c:824: wtimer_remove_callback(&axradio_cb_transmitdata.cb);
	mov	dptr,#_axradio_cb_transmitdata
	lcall	_wtimer_remove_callback
	C$easyax5043.c$825$3$451 ==.
;	..\COMMON\easyax5043.c:825: axradio_cb_transmitdata.st.error = AXRADIO_ERR_NOERROR;
	mov	dptr,#(_axradio_cb_transmitdata + 0x0005)
	clr	a
	movx	@dptr,a
	C$easyax5043.c$826$3$451 ==.
;	..\COMMON\easyax5043.c:826: axradio_cb_transmitdata.st.time.t = axradio_timeanchor.radiotimer;
	mov	dptr,#(_axradio_timeanchor + 0x0004)
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
	mov	dptr,#(_axradio_cb_transmitdata + 0x0006)
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
	C$easyax5043.c$827$3$451 ==.
;	..\COMMON\easyax5043.c:827: wtimer_add_callback(&axradio_cb_transmitdata.cb);
	mov	dptr,#_axradio_cb_transmitdata
	lcall	_wtimer_add_callback
	C$easyax5043.c$829$2$418 ==.
;	..\COMMON\easyax5043.c:829: break;
	C$easyax5043.c$831$2$418 ==.
;	..\COMMON\easyax5043.c:831: case trxstate_rxwor:
	sjmp	00260$
00227$:
	C$easyax5043.c$837$2$418 ==.
;	..\COMMON\easyax5043.c:837: if (radio_read8(AX5043_REG_IRQREQUEST0) & 0x80) { // vdda ready (note irqinversion does not act upon AX5043_REG_IRQREQUEST0)
	mov	dptr,#0x400d
	movx	a,@dptr
	mov	r7,a
	jnb	acc.7,00231$
	C$easyax5043.c$838$4$454 ==.
;	..\COMMON\easyax5043.c:838: radio_write8(AX5043_REG_IRQINVERSION0, (radio_read8(AX5043_REG_IRQINVERSION0) | 0x80)); // invert pwr irq, so it does not fire continuously
	mov	dptr,#0x400b
	movx	a,@dptr
	orl	a,#0x80
	mov	r7,a
	movx	@dptr,a
	C$easyax5043.c$840$3$455 ==.
;	..\COMMON\easyax5043.c:840: radio_write8(AX5043_REG_IRQINVERSION0, (radio_read8(AX5043_REG_IRQINVERSION0) & (uint8_t)~0x80)); // drop pwr irq inversion --> armed again
	sjmp	00236$
00231$:
	mov	dptr,#0x400b
	movx	a,@dptr
	anl	a,#0x7f
	mov	r7,a
	movx	@dptr,a
00236$:
	C$easyax5043.c$843$2$418 ==.
;	..\COMMON\easyax5043.c:843: if (radio_read8(AX5043_REG_IRQREQUEST1) & 0x01) { // XTAL ready
	mov	dptr,#0x400c
	movx	a,@dptr
	mov	r7,a
	jnb	acc.0,00240$
	C$easyax5043.c$844$4$458 ==.
;	..\COMMON\easyax5043.c:844: radio_write8(AX5043_REG_IRQINVERSION1, (radio_read8(AX5043_REG_IRQINVERSION1) | 0x01)); // invert the xtal ready irq so it does not fire continuously
	mov	dptr,#0x400a
	movx	a,@dptr
	orl	a,#0x01
	mov	r7,a
	movx	@dptr,a
	C$easyax5043.c$847$3$459 ==.
;	..\COMMON\easyax5043.c:847: radio_write8(AX5043_REG_IRQINVERSION1, (radio_read8(AX5043_REG_IRQINVERSION1) & (uint8_t)~0x01)); // drop xtal ready irq inversion --> armed again for next wake-up
	sjmp	00258$
00240$:
	mov	dptr,#0x400a
	movx	a,@dptr
	anl	a,#0xfe
	movx	@dptr,a
	C$easyax5043.c$848$4$461 ==.
;	..\COMMON\easyax5043.c:848: radio_write8(AX5043_REG_0xF30, f30_saved);
	mov	dptr,#_f30_saved
	movx	a,@dptr
	mov	dptr,#0x4f30
	movx	@dptr,a
	C$easyax5043.c$849$4$462 ==.
;	..\COMMON\easyax5043.c:849: radio_write8(AX5043_REG_0xF31, f31_saved);
	mov	dptr,#_f31_saved
	movx	a,@dptr
	mov	dptr,#0x4f31
	movx	@dptr,a
	C$easyax5043.c$850$4$463 ==.
;	..\COMMON\easyax5043.c:850: radio_write8(AX5043_REG_0xF32, f32_saved);
	mov	dptr,#_f32_saved
	movx	a,@dptr
	mov	dptr,#0x4f32
	movx	@dptr,a
	C$easyax5043.c$851$4$464 ==.
;	..\COMMON\easyax5043.c:851: radio_write8(AX5043_REG_0xF33, f33_saved);
	mov	dptr,#_f33_saved
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#0x4f33
	movx	@dptr,a
	C$easyax5043.c$855$2$418 ==.
;	..\COMMON\easyax5043.c:855: case trxstate_rx:
00258$:
	C$easyax5043.c$856$2$418 ==.
;	..\COMMON\easyax5043.c:856: receive_isr();
	lcall	_receive_isr
	C$easyax5043.c$859$1$417 ==.
;	..\COMMON\easyax5043.c:859: } // end switch(axradio_trxstate)
00260$:
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	C$easyax5043.c$860$1$417 ==.
	XG$axradio_isr$0$0 ==.
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'ax5043_receiver_on_continuous'
;------------------------------------------------------------
;rschanged_int             Allocated to registers r6 
;------------------------------------------------------------
	G$ax5043_receiver_on_continuous$0$0 ==.
	C$easyax5043.c$863$1$417 ==.
;	..\COMMON\easyax5043.c:863: __reentrantb void ax5043_receiver_on_continuous(void) __reentrant
;	-----------------------------------------
;	 function ax5043_receiver_on_continuous
;	-----------------------------------------
_ax5043_receiver_on_continuous:
	C$easyax5043.c$865$1$466 ==.
;	..\COMMON\easyax5043.c:865: uint8_t rschanged_int = (axradio_framing_enable_sfdcallback | (axradio_mode == AXRADIO_MODE_SYNC_ACK_SLAVE) | (axradio_mode == AXRADIO_MODE_SYNC_SLAVE) );
	mov	a,#0x33
	cjne	a,_axradio_mode,00138$
	mov	a,#0x01
	sjmp	00139$
00138$:
	clr	a
00139$:
	mov	r7,a
	mov	dptr,#_axradio_framing_enable_sfdcallback
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	orl	ar7,a
	mov	a,#0x32
	cjne	a,_axradio_mode,00140$
	mov	a,#0x01
	sjmp	00141$
00140$:
	clr	a
00141$:
	orl	ar7,a
	C$easyax5043.c$866$1$466 ==.
;	..\COMMON\easyax5043.c:866: if (rschanged_int)
	mov	a,r7
	mov	r6,a
	jz	00106$
	C$easyax5043.c$867$2$467 ==.
;	..\COMMON\easyax5043.c:867: radio_write8(AX5043_REG_RADIOEVENTMASK0, 0x04);
	mov	dptr,#0x4009
	mov	a,#0x04
	movx	@dptr,a
	C$easyax5043.c$868$1$466 ==.
;	..\COMMON\easyax5043.c:868: radio_write8(AX5043_REG_RSSIREFERENCE, axradio_phy_rssireference);
00106$:
	mov	dptr,#_axradio_phy_rssireference
	clr	a
	movc	a,@a+dptr
	mov	dptr,#0x422c
	movx	@dptr,a
	C$easyax5043.c$869$1$466 ==.
;	..\COMMON\easyax5043.c:869: ax5043_set_registers_rxcont();
	push	ar6
	lcall	_ax5043_set_registers_rxcont
	pop	ar6
	C$easyax5043.c$882$2$469 ==.
;	..\COMMON\easyax5043.c:882: radio_write8(AX5043_REG_PKTSTOREFLAGS, radio_read8(AX5043_REG_PKTSTOREFLAGS) & (uint8_t)~0x40);
	mov	dptr,#0x4232
	movx	a,@dptr
	anl	a,#0xbf
	mov	r7,a
	movx	@dptr,a
	C$easyax5043.c$885$2$470 ==.
;	..\COMMON\easyax5043.c:885: radio_write8(AX5043_REG_FIFOSTAT, 3); // clear FIFO data & flags
	mov	dptr,#0x4028
	mov	a,#0x03
	movx	@dptr,a
	C$easyax5043.c$886$2$471 ==.
;	..\COMMON\easyax5043.c:886: radio_write8(AX5043_REG_PWRMODE, AX5043_PWRSTATE_FULL_RX);
	mov	dptr,#0x4002
	mov	a,#0x09
	movx	@dptr,a
	C$easyax5043.c$887$1$466 ==.
;	..\COMMON\easyax5043.c:887: axradio_trxstate = trxstate_rx;
	mov	_axradio_trxstate,#0x01
	C$easyax5043.c$888$1$466 ==.
;	..\COMMON\easyax5043.c:888: if (rschanged_int)
	mov	a,r6
	jz	00121$
	C$easyax5043.c$889$2$472 ==.
;	..\COMMON\easyax5043.c:889: radio_write8(AX5043_REG_IRQMASK0, 0x41); //  enable FIFO not empty / radio controller irq
	mov	dptr,#0x4007
	mov	a,#0x41
	movx	@dptr,a
	C$easyax5043.c$891$1$466 ==.
;	..\COMMON\easyax5043.c:891: radio_write8(AX5043_REG_IRQMASK0, 0x01); //  enable FIFO not empty
	sjmp	00127$
00121$:
	mov	dptr,#0x4007
	mov	a,#0x01
	movx	@dptr,a
	C$easyax5043.c$892$1$466 ==.
;	..\COMMON\easyax5043.c:892: radio_write8(AX5043_REG_IRQMASK1, 0x00);
00127$:
	mov	dptr,#0x4006
	clr	a
	movx	@dptr,a
	C$easyax5043.c$893$1$466 ==.
	XG$ax5043_receiver_on_continuous$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ax5043_receiver_on_wor'
;------------------------------------------------------------
;wp                        Allocated to registers r6 r7 
;------------------------------------------------------------
	G$ax5043_receiver_on_wor$0$0 ==.
	C$easyax5043.c$895$1$466 ==.
;	..\COMMON\easyax5043.c:895: __reentrantb void ax5043_receiver_on_wor(void) __reentrant
;	-----------------------------------------
;	 function ax5043_receiver_on_wor
;	-----------------------------------------
_ax5043_receiver_on_wor:
	C$easyax5043.c$897$2$477 ==.
;	..\COMMON\easyax5043.c:897: radio_write8(AX5043_REG_BGNDRSSIGAIN, 0x02);
	mov	dptr,#0x422e
	mov	a,#0x02
	movx	@dptr,a
	C$easyax5043.c$898$1$476 ==.
;	..\COMMON\easyax5043.c:898: if(axradio_framing_enable_sfdcallback)
	mov	dptr,#_axradio_framing_enable_sfdcallback
	clr	a
	movc	a,@a+dptr
	jz	00109$
	C$easyax5043.c$899$2$478 ==.
;	..\COMMON\easyax5043.c:899: radio_write8(AX5043_REG_RADIOEVENTMASK0, 0x04);
	mov	dptr,#0x4009
	mov	a,#0x04
	movx	@dptr,a
	C$easyax5043.c$900$1$476 ==.
;	..\COMMON\easyax5043.c:900: radio_write8(AX5043_REG_FIFOSTAT, 3); // clear FIFO data & flags
00109$:
	mov	dptr,#0x4028
	mov	a,#0x03
	movx	@dptr,a
	C$easyax5043.c$901$2$480 ==.
;	..\COMMON\easyax5043.c:901: radio_write8(AX5043_REG_LPOSCCONFIG, 0x01); // start LPOSC, slow mode
	mov	dptr,#0x4310
	mov	a,#0x01
	movx	@dptr,a
	C$easyax5043.c$902$2$481 ==.
;	..\COMMON\easyax5043.c:902: radio_write8(AX5043_REG_RSSIREFERENCE, axradio_phy_rssireference);
	mov	dptr,#_axradio_phy_rssireference
	clr	a
	movc	a,@a+dptr
	mov	dptr,#0x422c
	movx	@dptr,a
	C$easyax5043.c$903$1$476 ==.
;	..\COMMON\easyax5043.c:903: ax5043_set_registers_rxwor();
	lcall	_ax5043_set_registers_rxwor
	C$easyax5043.c$904$2$482 ==.
;	..\COMMON\easyax5043.c:904: radio_write8(AX5043_REG_PKTSTOREFLAGS, (radio_read8(AX5043_REG_PKTSTOREFLAGS) & (uint8_t)~0x40));
	mov	dptr,#0x4232
	movx	a,@dptr
	anl	a,#0xbf
	mov	r7,a
	movx	@dptr,a
	C$easyax5043.c$906$2$483 ==.
;	..\COMMON\easyax5043.c:906: radio_write8(AX5043_REG_PWRMODE, AX5043_PWRSTATE_WOR_RX);
	mov	dptr,#0x4002
	mov	a,#0x0b
	movx	@dptr,a
	C$easyax5043.c$907$1$476 ==.
;	..\COMMON\easyax5043.c:907: axradio_trxstate = trxstate_rxwor;
	mov	_axradio_trxstate,#0x02
	C$easyax5043.c$908$1$476 ==.
;	..\COMMON\easyax5043.c:908: if(axradio_framing_enable_sfdcallback)
	mov	dptr,#_axradio_framing_enable_sfdcallback
	clr	a
	movc	a,@a+dptr
	jz	00127$
	C$easyax5043.c$909$2$484 ==.
;	..\COMMON\easyax5043.c:909: radio_write8(AX5043_REG_IRQMASK0, 0x41); //  enable FIFO not empty / radio controller irq
	mov	dptr,#0x4007
	mov	a,#0x41
	movx	@dptr,a
	C$easyax5043.c$911$1$476 ==.
;	..\COMMON\easyax5043.c:911: radio_write8(AX5043_REG_IRQMASK0, 0x01); //  enable FIFO not empty
	sjmp	00132$
00127$:
	mov	dptr,#0x4007
	mov	a,#0x01
	movx	@dptr,a
00132$:
	C$easyax5043.c$915$1$476 ==.
;	..\COMMON\easyax5043.c:915: if (((PALTRADIO & 0x40) && ((radio_read8(AX5043_REG_PINFUNCPWRAMP) & 0x0F) == 0x07)) || ((PALTRADIO & 0x80) && ((radio_read8(AX5043_REG_PINFUNCANTSEL) & 0x07) == 0x04))) // pass through of TCXO_EN
	mov	dptr,#_PALTRADIO
	movx	a,@dptr
	mov	r7,a
	jnb	acc.6,00143$
	mov	dptr,#0x4026
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0x0f
	cjne	r7,#0x07,00176$
	sjmp	00133$
00176$:
00143$:
	mov	dptr,#_PALTRADIO
	movx	a,@dptr
	mov	r7,a
	jnb	acc.7,00144$
	mov	dptr,#0x4025
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0x07
	cjne	r7,#0x04,00144$
	C$easyax5043.c$918$2$486 ==.
;	..\COMMON\easyax5043.c:918: radio_write8(AX5043_REG_IRQMASK0, radio_read8(AX5043_REG_IRQMASK0) | 0x80); // power irq (AX8052F143 WOR with TCXO)
00133$:
	mov	dptr,#0x4007
	movx	a,@dptr
	orl	a,#0x80
	mov	r7,a
	movx	@dptr,a
	C$easyax5043.c$919$3$488 ==.
;	..\COMMON\easyax5043.c:919: radio_write8(AX5043_REG_POWIRQMASK, 0x90); // interrupt when vddana ready (AX8052F143 WOR with TCXO)
	mov	dptr,#0x4005
	mov	a,#0x90
	movx	@dptr,a
	C$easyax5043.c$922$1$476 ==.
;	..\COMMON\easyax5043.c:922: radio_write8(AX5043_REG_IRQMASK1, 0x01); // xtal ready
00144$:
	mov	dptr,#0x4006
	mov	a,#0x01
	movx	@dptr,a
	C$easyax5043.c$924$2$476 ==.
;	..\COMMON\easyax5043.c:924: uint16_t wp = axradio_wor_period;
	mov	dptr,#_axradio_wor_period
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	a,#0x01
	movc	a,@a+dptr
	C$easyax5043.c$925$3$491 ==.
;	..\COMMON\easyax5043.c:925: radio_write8(AX5043_REG_WAKEUPFREQ1, ((wp >> 8) & 0xFF));
	mov	r7,a
	mov	r5,a
	mov	dptr,#0x406c
	mov	a,r5
	movx	@dptr,a
	C$easyax5043.c$926$3$492 ==.
;	..\COMMON\easyax5043.c:926: radio_write8(AX5043_REG_WAKEUPFREQ0, ((wp >> 0) & 0xFF)); // actually wakeup period measured in LP OSC cycles
	mov	ar5,r6
	mov	dptr,#0x406d
	mov	a,r5
	movx	@dptr,a
	C$easyax5043.c$927$2$490 ==.
;	..\COMMON\easyax5043.c:927: wp += radio_read16(AX5043_REG_WAKEUPTIMER1);
	mov	dptr,#0x0068
	lcall	_radio_read16
	mov	r4,dpl
	mov	r5,dph
	mov	a,r4
	add	a,r6
	mov	r6,a
	mov	a,r5
	addc	a,r7
	C$easyax5043.c$928$3$493 ==.
;	..\COMMON\easyax5043.c:928: radio_write8(AX5043_REG_WAKEUP1, ((wp >> 8) & 0xFF));
	mov	r5,a
	mov	dptr,#0x406a
	mov	a,r5
	movx	@dptr,a
	C$easyax5043.c$929$3$494 ==.
;	..\COMMON\easyax5043.c:929: radio_write8(AX5043_REG_WAKEUP0, ((wp >> 0) & 0xFF));
	mov	dptr,#0x406b
	mov	a,r6
	movx	@dptr,a
	C$easyax5043.c$931$2$490 ==.
	XG$ax5043_receiver_on_wor$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ax5043_prepare_tx'
;------------------------------------------------------------
	G$ax5043_prepare_tx$0$0 ==.
	C$easyax5043.c$933$2$490 ==.
;	..\COMMON\easyax5043.c:933: __reentrantb void ax5043_prepare_tx(void) __reentrant
;	-----------------------------------------
;	 function ax5043_prepare_tx
;	-----------------------------------------
_ax5043_prepare_tx:
	C$easyax5043.c$935$2$497 ==.
;	..\COMMON\easyax5043.c:935: radio_write8(AX5043_REG_PWRMODE, AX5043_PWRSTATE_XTAL_ON);
	C$easyax5043.c$936$2$498 ==.
;	..\COMMON\easyax5043.c:936: radio_write8(AX5043_REG_PWRMODE, AX5043_PWRSTATE_FIFO_ON);
	mov	dptr,#0x4002
	mov	a,#0x05
	movx	@dptr,a
	mov	a,#0x07
	movx	@dptr,a
	C$easyax5043.c$937$1$496 ==.
;	..\COMMON\easyax5043.c:937: ax5043_init_registers_tx();
	lcall	_ax5043_init_registers_tx
	C$easyax5043.c$938$2$499 ==.
;	..\COMMON\easyax5043.c:938: radio_write8(AX5043_REG_FIFOTHRESH1, 0);
	mov	dptr,#0x402e
	clr	a
	movx	@dptr,a
	C$easyax5043.c$939$2$500 ==.
;	..\COMMON\easyax5043.c:939: radio_write8(AX5043_REG_FIFOTHRESH0, 0x80);
	mov	dptr,#0x402f
	mov	a,#0x80
	movx	@dptr,a
	C$easyax5043.c$940$1$496 ==.
;	..\COMMON\easyax5043.c:940: axradio_trxstate = trxstate_tx_xtalwait;
	mov	_axradio_trxstate,#0x09
	C$easyax5043.c$941$2$501 ==.
;	..\COMMON\easyax5043.c:941: radio_write8(AX5043_REG_IRQMASK0, 0x00);
	mov	dptr,#0x4007
	clr	a
	movx	@dptr,a
	C$easyax5043.c$942$2$502 ==.
;	..\COMMON\easyax5043.c:942: radio_write8(AX5043_REG_IRQMASK1, 0x01); // enable xtal ready interrupt
	mov	dptr,#0x4006
	inc	a
	movx	@dptr,a
	C$easyax5043.c$943$1$496 ==.
;	..\COMMON\easyax5043.c:943: radio_read8(AX5043_REG_POWSTICKYSTAT); // clear pwr management sticky status --> brownout gate works
	mov	dptr,#0x4004
	movx	a,@dptr
	C$easyax5043.c$944$1$496 ==.
	XG$ax5043_prepare_tx$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ax5043_off'
;------------------------------------------------------------
	G$ax5043_off$0$0 ==.
	C$easyax5043.c$946$1$496 ==.
;	..\COMMON\easyax5043.c:946: __reentrantb void ax5043_off(void) __reentrant
;	-----------------------------------------
;	 function ax5043_off
;	-----------------------------------------
_ax5043_off:
	C$easyax5043.c$948$1$504 ==.
;	..\COMMON\easyax5043.c:948: ax5043_off_xtal();
	lcall	_ax5043_off_xtal
	C$easyax5043.c$949$2$505 ==.
;	..\COMMON\easyax5043.c:949: radio_write8(AX5043_REG_PWRMODE, AX5043_PWRSTATE_POWERDOWN);
	mov	dptr,#0x4002
	clr	a
	movx	@dptr,a
	C$easyax5043.c$950$1$504 ==.
	XG$ax5043_off$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ax5043_off_xtal'
;------------------------------------------------------------
	G$ax5043_off_xtal$0$0 ==.
	C$easyax5043.c$952$1$504 ==.
;	..\COMMON\easyax5043.c:952: __reentrantb void ax5043_off_xtal(void) __reentrant
;	-----------------------------------------
;	 function ax5043_off_xtal
;	-----------------------------------------
_ax5043_off_xtal:
	C$easyax5043.c$954$2$508 ==.
;	..\COMMON\easyax5043.c:954: radio_write8(AX5043_REG_IRQMASK0, 0x00); // IRQ off
	mov	dptr,#0x4007
	clr	a
	movx	@dptr,a
	C$easyax5043.c$955$2$509 ==.
;	..\COMMON\easyax5043.c:955: radio_write8(AX5043_REG_IRQMASK1, 0x00);
	mov	dptr,#0x4006
	movx	@dptr,a
	C$easyax5043.c$956$2$510 ==.
;	..\COMMON\easyax5043.c:956: radio_write8(AX5043_REG_PWRMODE, AX5043_PWRSTATE_XTAL_ON);
	mov	dptr,#0x4002
	mov	a,#0x05
	movx	@dptr,a
	C$easyax5043.c$957$2$511 ==.
;	..\COMMON\easyax5043.c:957: radio_write8(AX5043_REG_LPOSCCONFIG, 0x00); // LPOSC off
	mov	dptr,#0x4310
	clr	a
	movx	@dptr,a
	C$easyax5043.c$958$1$507 ==.
;	..\COMMON\easyax5043.c:958: axradio_trxstate = trxstate_off;
;	1-genFromRTrack replaced	mov	_axradio_trxstate,#0x00
	mov	_axradio_trxstate,a
	C$easyax5043.c$959$1$507 ==.
	XG$ax5043_off_xtal$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_wait_for_xtal'
;------------------------------------------------------------
;__00010016                Allocated to registers 
;crit                      Allocated to registers r7 
;crit                      Allocated to registers r7 
;__00030019                Allocated to registers 
;crit                      Allocated to registers 
;__00020021                Allocated to registers 
;crit                      Allocated to registers 
;------------------------------------------------------------
	G$axradio_wait_for_xtal$0$0 ==.
	C$easyax5043.c$961$1$507 ==.
;	..\COMMON\easyax5043.c:961: void axradio_wait_for_xtal(void)
;	-----------------------------------------
;	 function axradio_wait_for_xtal
;	-----------------------------------------
_axradio_wait_for_xtal:
	C$libmftypes.h$351$4$518 ==.
;	C:/Program Files (x86)/ON Semiconductor/AXSDB/libmf/include/libmftypes.h:351: criticalsection_t crit = IE & 0x80;
	mov	a,#0x80
	anl	a,_IE
	mov	r7,a
	C$easyax5043.c$963$4$518 ==.
;	..\COMMON\easyax5043.c:963: criticalsection_t crit = enter_critical();
	clr	_EA
	C$easyax5043.c$964$1$513 ==.
;	..\COMMON\easyax5043.c:964: axradio_trxstate = trxstate_wait_xtal;
	mov	_axradio_trxstate,#0x03
	C$easyax5043.c$965$2$514 ==.
;	..\COMMON\easyax5043.c:965: radio_write8(AX5043_REG_IRQMASK1, (radio_read8(AX5043_REG_IRQMASK1) | 0x01)); // enable xtal ready interrupt
	mov	dptr,#0x4006
	movx	a,@dptr
	orl	a,#0x01
	mov	r6,a
	movx	@dptr,a
00111$:
	C$libmftypes.h$373$5$521 ==.
;	C:/Program Files (x86)/ON Semiconductor/AXSDB/libmf/include/libmftypes.h:373: EA = 0;
	clr	_EA
	C$easyax5043.c$968$2$515 ==.
;	..\COMMON\easyax5043.c:968: if (axradio_trxstate == trxstate_xtal_ready)
	mov	a,#0x04
	cjne	a,_axradio_trxstate,00121$
	sjmp	00106$
00121$:
	C$easyax5043.c$970$2$515 ==.
;	..\COMMON\easyax5043.c:970: wtimer_idle(WTFLAG_CANSTANDBY);
	mov	dpl,#0x02
	push	ar7
	lcall	_wtimer_idle
	pop	ar7
	C$libmftypes.h$358$5$524 ==.
;	C:/Program Files (x86)/ON Semiconductor/AXSDB/libmf/include/libmftypes.h:358: IE |= crit;
	mov	a,r7
	orl	_IE,a
	C$easyax5043.c$972$2$515 ==.
;	..\COMMON\easyax5043.c:972: wtimer_runcallbacks();
	push	ar7
	lcall	_wtimer_runcallbacks
	pop	ar7
	sjmp	00111$
00106$:
	C$libmftypes.h$358$4$527 ==.
;	C:/Program Files (x86)/ON Semiconductor/AXSDB/libmf/include/libmftypes.h:358: IE |= crit;
	mov	a,r7
	orl	_IE,a
	C$easyax5043.c$974$3$526 ==.
;	..\COMMON\easyax5043.c:974: exit_critical(crit);     //  Restore all Interrupts
	C$easyax5043.c$975$3$526 ==.
	XG$axradio_wait_for_xtal$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_setaddrregs'
;------------------------------------------------------------
;pn                        Allocated to registers r6 r7 
;inv                       Allocated to registers r5 
;------------------------------------------------------------
	Feasyax5043$axradio_setaddrregs$0$0 ==.
	C$easyax5043.c$977$3$526 ==.
;	..\COMMON\easyax5043.c:977: static void axradio_setaddrregs(void)
;	-----------------------------------------
;	 function axradio_setaddrregs
;	-----------------------------------------
_axradio_setaddrregs:
	C$easyax5043.c$979$2$530 ==.
;	..\COMMON\easyax5043.c:979: radio_write8(AX5043_REG_PKTADDR0, axradio_localaddr.addr[0]);
	mov	dptr,#_axradio_localaddr
	movx	a,@dptr
	mov	dptr,#0x4207
	movx	@dptr,a
	C$easyax5043.c$980$2$531 ==.
;	..\COMMON\easyax5043.c:980: radio_write8(AX5043_REG_PKTADDR1, axradio_localaddr.addr[1]);
	mov	dptr,#(_axradio_localaddr + 0x0001)
	movx	a,@dptr
	mov	dptr,#0x4206
	movx	@dptr,a
	C$easyax5043.c$981$2$532 ==.
;	..\COMMON\easyax5043.c:981: radio_write8(AX5043_REG_PKTADDR2, axradio_localaddr.addr[2]);
	mov	dptr,#(_axradio_localaddr + 0x0002)
	movx	a,@dptr
	mov	dptr,#0x4205
	movx	@dptr,a
	C$easyax5043.c$982$2$533 ==.
;	..\COMMON\easyax5043.c:982: radio_write8(AX5043_REG_PKTADDR3, axradio_localaddr.addr[3]);
	mov	dptr,#(_axradio_localaddr + 0x0003)
	movx	a,@dptr
	mov	dptr,#0x4204
	movx	@dptr,a
	C$easyax5043.c$984$2$534 ==.
;	..\COMMON\easyax5043.c:984: radio_write8(AX5043_REG_PKTADDRMASK0, axradio_localaddr.mask[0]);
	mov	dptr,#(_axradio_localaddr + 0x0005)
	movx	a,@dptr
	mov	dptr,#0x420b
	movx	@dptr,a
	C$easyax5043.c$985$2$535 ==.
;	..\COMMON\easyax5043.c:985: radio_write8(AX5043_REG_PKTADDRMASK1, axradio_localaddr.mask[1]);
	mov	dptr,#(_axradio_localaddr + 0x0006)
	movx	a,@dptr
	mov	dptr,#0x420a
	movx	@dptr,a
	C$easyax5043.c$986$2$536 ==.
;	..\COMMON\easyax5043.c:986: radio_write8(AX5043_REG_PKTADDRMASK2, axradio_localaddr.mask[2]);
	mov	dptr,#(_axradio_localaddr + 0x0007)
	movx	a,@dptr
	mov	dptr,#0x4209
	movx	@dptr,a
	C$easyax5043.c$987$2$537 ==.
;	..\COMMON\easyax5043.c:987: radio_write8(AX5043_REG_PKTADDRMASK3, axradio_localaddr.mask[3]);
	mov	dptr,#(_axradio_localaddr + 0x0008)
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#0x4208
	movx	@dptr,a
	C$easyax5043.c$989$1$529 ==.
;	..\COMMON\easyax5043.c:989: if (axradio_phy_pn9 && axradio_framing_addrlen) {
	mov	dptr,#_axradio_phy_pn9
	clr	a
	movc	a,@a+dptr
	jnz	00153$
	ljmp	00142$
00153$:
	mov	dptr,#_axradio_framing_addrlen
	clr	a
	movc	a,@a+dptr
	jnz	00154$
	ljmp	00142$
00154$:
	C$easyax5043.c$990$2$529 ==.
;	..\COMMON\easyax5043.c:990: uint16_t __autodata pn = 0x1ff;
	mov	r6,#0xff
	mov	r7,#0x01
	C$easyax5043.c$991$2$538 ==.
;	..\COMMON\easyax5043.c:991: uint8_t __autodata inv = -(radio_read8(AX5043_REG_ENCODING) & 0x01);
	mov	dptr,#0x4011
	movx	a,@dptr
	mov	r5,a
	anl	ar5,#0x01
	clr	c
	clr	a
	subb	a,r5
	mov	r5,a
	C$easyax5043.c$992$2$538 ==.
;	..\COMMON\easyax5043.c:992: if (axradio_framing_destaddrpos != 0xff)
	mov	dptr,#_axradio_framing_destaddrpos
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	cjne	r4,#0xff,00155$
	sjmp	00127$
00155$:
	C$easyax5043.c$993$2$538 ==.
;	..\COMMON\easyax5043.c:993: pn = pn9_advance_bits(pn, axradio_framing_destaddrpos << 3);
	clr	a
	swap	a
	rr	a
	anl	a,#0xf8
	xch	a,r4
	swap	a
	rr	a
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	anl	a,#0xf8
	xch	a,r4
	xrl	a,r4
	mov	r3,a
	push	ar5
	push	ar4
	push	ar3
	mov	dptr,#0x01ff
	lcall	_pn9_advance_bits
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	pop	ar5
	C$easyax5043.c$994$2$538 ==.
;	..\COMMON\easyax5043.c:994: radio_write8(AX5043_REG_PKTADDR0, (radio_read8(AX5043_REG_PKTADDR0) ^ (pn ^ inv)));
00127$:
	mov	dptr,#0x4207
	movx	a,@dptr
	mov	r4,a
	mov	r3,#0x00
	mov	a,r5
	xrl	a,r6
	mov	r1,a
	mov	a,r3
	xrl	a,r7
	mov	r2,a
	mov	ar0,r4
	mov	r4,#0x00
	mov	a,r0
	xrl	ar1,a
	mov	a,r4
	xrl	ar2,a
	mov	dptr,#0x4207
	mov	a,r1
	movx	@dptr,a
	C$easyax5043.c$995$2$538 ==.
;	..\COMMON\easyax5043.c:995: pn = pn9_advance_byte(pn);
	mov	dpl,r6
	mov	dph,r7
	push	ar5
	push	ar3
	lcall	_pn9_advance_byte
	mov	r6,dpl
	mov	r7,dph
	pop	ar3
	pop	ar5
	C$easyax5043.c$996$3$540 ==.
;	..\COMMON\easyax5043.c:996: radio_write8(AX5043_REG_PKTADDR1, (radio_read8(AX5043_REG_PKTADDR1) ^ (pn ^ inv)));
	mov	dptr,#0x4206
	movx	a,@dptr
	mov	r4,a
	mov	a,r5
	xrl	a,r6
	mov	r1,a
	mov	a,r3
	xrl	a,r7
	mov	r2,a
	mov	ar0,r4
	mov	r4,#0x00
	mov	a,r0
	xrl	ar1,a
	mov	a,r4
	xrl	ar2,a
	mov	dptr,#0x4206
	mov	a,r1
	movx	@dptr,a
	C$easyax5043.c$997$2$538 ==.
;	..\COMMON\easyax5043.c:997: pn = pn9_advance_byte(pn);
	mov	dpl,r6
	mov	dph,r7
	push	ar5
	push	ar3
	lcall	_pn9_advance_byte
	mov	r6,dpl
	mov	r7,dph
	pop	ar3
	pop	ar5
	C$easyax5043.c$998$3$541 ==.
;	..\COMMON\easyax5043.c:998: radio_write8(AX5043_REG_PKTADDR2, (radio_read8(AX5043_REG_PKTADDR2) ^ (pn ^ inv)));
	mov	dptr,#0x4205
	movx	a,@dptr
	mov	r4,a
	mov	a,r5
	xrl	a,r6
	mov	r1,a
	mov	a,r3
	xrl	a,r7
	mov	r2,a
	mov	ar0,r4
	mov	r4,#0x00
	mov	a,r0
	xrl	ar1,a
	mov	a,r4
	xrl	ar2,a
	mov	dptr,#0x4205
	mov	a,r1
	movx	@dptr,a
	C$easyax5043.c$999$2$538 ==.
;	..\COMMON\easyax5043.c:999: pn = pn9_advance_byte(pn);
	mov	dpl,r6
	mov	dph,r7
	push	ar5
	push	ar3
	lcall	_pn9_advance_byte
	mov	r6,dpl
	mov	r7,dph
	pop	ar3
	pop	ar5
	C$easyax5043.c$1000$3$542 ==.
;	..\COMMON\easyax5043.c:1000: radio_write8(AX5043_REG_PKTADDR3, (radio_read8(AX5043_REG_PKTADDR3) ^ (pn ^ inv)));
	mov	dptr,#0x4204
	movx	a,@dptr
	mov	r4,a
	mov	a,r5
	xrl	ar6,a
	mov	a,r3
	xrl	ar7,a
	mov	r5,#0x00
	mov	a,r4
	xrl	ar6,a
	mov	a,r5
	xrl	ar7,a
	mov	dptr,#0x4204
	mov	a,r6
	movx	@dptr,a
00142$:
	C$easyax5043.c$1002$1$529 ==.
	XFeasyax5043$axradio_setaddrregs$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ax5043_init_registers'
;------------------------------------------------------------
	Feasyax5043$ax5043_init_registers$0$0 ==.
	C$easyax5043.c$1004$1$529 ==.
;	..\COMMON\easyax5043.c:1004: static void ax5043_init_registers(void)
;	-----------------------------------------
;	 function ax5043_init_registers
;	-----------------------------------------
_ax5043_init_registers:
	C$easyax5043.c$1006$1$544 ==.
;	..\COMMON\easyax5043.c:1006: ax5043_set_registers();
	lcall	_ax5043_set_registers
	C$easyax5043.c$1011$2$545 ==.
;	..\COMMON\easyax5043.c:1011: radio_write8(AX5043_REG_PKTLENOFFSET, (radio_read8(AX5043_REG_PKTLENOFFSET) + axradio_framing_swcrclen)); // add len offs for software CRC16 (used for both, fixed and variable length packets
	mov	dptr,#0x4202
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_axradio_framing_swcrclen
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	add	a,r7
	mov	dptr,#0x4202
	movx	@dptr,a
	C$easyax5043.c$1012$2$546 ==.
;	..\COMMON\easyax5043.c:1012: radio_write8(AX5043_REG_PINFUNCIRQ, 0x03); // use as IRQ pin
	mov	dptr,#0x4024
	mov	a,#0x03
	movx	@dptr,a
	C$easyax5043.c$1013$2$547 ==.
;	..\COMMON\easyax5043.c:1013: radio_write8(AX5043_REG_PKTSTOREFLAGS, (axradio_phy_innerfreqloop ? 0x13 : 0x15)); // store RF offset, RSSI and delimiter timing
	mov	dptr,#_axradio_phy_innerfreqloop
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	jz	00112$
	mov	r7,#0x13
	sjmp	00113$
00112$:
	mov	r7,#0x15
00113$:
	mov	dptr,#0x4232
	mov	a,r7
	movx	@dptr,a
	C$easyax5043.c$1014$1$544 ==.
;	..\COMMON\easyax5043.c:1014: axradio_setaddrregs();
	lcall	_axradio_setaddrregs
	C$easyax5043.c$1015$1$544 ==.
	XFeasyax5043$ax5043_init_registers$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_sync_addtime'
;------------------------------------------------------------
;dt                        Allocated to registers r4 r5 r6 r7 
;------------------------------------------------------------
	Feasyax5043$axradio_sync_addtime$0$0 ==.
	C$easyax5043.c$1021$1$544 ==.
;	..\COMMON\easyax5043.c:1021: static __reentrantb void axradio_sync_addtime(uint32_t dt) __reentrant
;	-----------------------------------------
;	 function axradio_sync_addtime
;	-----------------------------------------
_axradio_sync_addtime:
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	C$easyax5043.c$1023$1$549 ==.
;	..\COMMON\easyax5043.c:1023: axradio_sync_time += dt;
	mov	dptr,#_axradio_sync_time
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_axradio_sync_time
	mov	a,r4
	add	a,r0
	movx	@dptr,a
	mov	a,r5
	addc	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	addc	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	addc	a,r3
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1024$1$549 ==.
	XFeasyax5043$axradio_sync_addtime$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_sync_subtime'
;------------------------------------------------------------
;dt                        Allocated to registers r4 r5 r6 r7 
;------------------------------------------------------------
	Feasyax5043$axradio_sync_subtime$0$0 ==.
	C$easyax5043.c$1026$1$549 ==.
;	..\COMMON\easyax5043.c:1026: static __reentrantb void axradio_sync_subtime(uint32_t dt) __reentrant
;	-----------------------------------------
;	 function axradio_sync_subtime
;	-----------------------------------------
_axradio_sync_subtime:
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	C$easyax5043.c$1028$1$551 ==.
;	..\COMMON\easyax5043.c:1028: axradio_sync_time -= dt;
	mov	dptr,#_axradio_sync_time
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_axradio_sync_time
	mov	a,r0
	clr	c
	subb	a,r4
	movx	@dptr,a
	mov	a,r1
	subb	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	subb	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	subb	a,r7
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1029$1$551 ==.
	XFeasyax5043$axradio_sync_subtime$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_sync_settimeradv'
;------------------------------------------------------------
;dt                        Allocated to registers r4 r5 r6 r7 
;------------------------------------------------------------
	Feasyax5043$axradio_sync_settimeradv$0$0 ==.
	C$easyax5043.c$1031$1$551 ==.
;	..\COMMON\easyax5043.c:1031: static __reentrantb void axradio_sync_settimeradv(uint32_t dt) __reentrant
;	-----------------------------------------
;	 function axradio_sync_settimeradv
;	-----------------------------------------
_axradio_sync_settimeradv:
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	C$easyax5043.c$1033$1$553 ==.
;	..\COMMON\easyax5043.c:1033: axradio_timer.time = axradio_sync_time;
	mov	dptr,#_axradio_sync_time
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#(_axradio_timer + 0x0004)
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1034$1$553 ==.
;	..\COMMON\easyax5043.c:1034: axradio_timer.time -= dt;
	mov	a,r0
	clr	c
	subb	a,r4
	mov	r4,a
	mov	a,r1
	subb	a,r5
	mov	r5,a
	mov	a,r2
	subb	a,r6
	mov	r6,a
	mov	a,r3
	subb	a,r7
	mov	r7,a
	mov	dptr,#(_axradio_timer + 0x0004)
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
	C$easyax5043.c$1035$1$553 ==.
	XFeasyax5043$axradio_sync_settimeradv$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_sync_adjustperiodcorr'
;------------------------------------------------------------
;dt                        Allocated to registers r4 r5 r6 r7 
;------------------------------------------------------------
	Feasyax5043$axradio_sync_adjustperiodcorr$0$0 ==.
	C$easyax5043.c$1037$1$553 ==.
;	..\COMMON\easyax5043.c:1037: static void axradio_sync_adjustperiodcorr(void)
;	-----------------------------------------
;	 function axradio_sync_adjustperiodcorr
;	-----------------------------------------
_axradio_sync_adjustperiodcorr:
	C$easyax5043.c$1039$1$555 ==.
;	..\COMMON\easyax5043.c:1039: int32_t __autodata dt = axradio_conv_time_totimer0(axradio_cb_receive.st.time.t) - axradio_sync_time;
	mov	dptr,#(_axradio_cb_receive + 0x0006)
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
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_axradio_conv_time_totimer0
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	dptr,#_axradio_sync_time
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r4
	clr	c
	subb	a,r0
	mov	r4,a
	mov	a,r5
	subb	a,r1
	mov	r5,a
	mov	a,r6
	subb	a,r2
	mov	r6,a
	mov	a,r7
	subb	a,r3
	mov	r7,a
	C$easyax5043.c$1040$1$555 ==.
;	..\COMMON\easyax5043.c:1040: axradio_cb_receive.st.rx.phy.timeoffset = dt;
	mov	ar2,r4
	mov	ar3,r5
	mov	dptr,#(_axradio_cb_receive + 0x0010)
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1041$1$555 ==.
;	..\COMMON\easyax5043.c:1041: if (!checksignedlimit16(axradio_sync_periodcorr, axradio_sync_slave_maxperiod)) {
	mov	dptr,#_axradio_sync_periodcorr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_axradio_sync_slave_maxperiod
	clr	a
	movc	a,@a+dptr
	push	acc
	mov	a,#0x01
	movc	a,@a+dptr
	push	acc
	mov	dpl,r2
	mov	dph,r3
	lcall	_checksignedlimit16
	mov	r3,dpl
	dec	sp
	dec	sp
	mov	a,r3
	jnz	00102$
	C$easyax5043.c$1042$2$556 ==.
;	..\COMMON\easyax5043.c:1042: axradio_sync_addtime(dt);
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_axradio_sync_addtime
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	C$easyax5043.c$1043$2$556 ==.
;	..\COMMON\easyax5043.c:1043: dt <<= SYNC_K1;
	mov	a,r7
	swap	a
	rl	a
	anl	a,#0xe0
	xch	a,r6
	swap	a
	rl	a
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	anl	a,#0xe0
	xch	a,r6
	xrl	a,r6
	mov	r7,a
	mov	a,r5
	swap	a
	rl	a
	anl	a,#0x1f
	orl	a,r6
	mov	r6,a
	mov	a,r5
	swap	a
	rl	a
	anl	a,#0xe0
	xch	a,r4
	swap	a
	rl	a
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	anl	a,#0xe0
	xch	a,r4
	xrl	a,r4
	mov	r5,a
	C$easyax5043.c$1044$2$556 ==.
;	..\COMMON\easyax5043.c:1044: axradio_sync_periodcorr = dt;
	mov	dptr,#_axradio_sync_periodcorr
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	sjmp	00103$
00102$:
	C$easyax5043.c$1046$2$557 ==.
;	..\COMMON\easyax5043.c:1046: axradio_sync_periodcorr += dt;
	mov	dptr,#_axradio_sync_periodcorr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	ar0,r2
	mov	a,r3
	mov	r1,a
	rlc	a
	subb	a,acc
	mov	r2,a
	mov	r3,a
	mov	a,r4
	add	a,r0
	mov	r0,a
	mov	a,r5
	addc	a,r1
	mov	r1,a
	mov	a,r6
	addc	a,r2
	mov	a,r7
	addc	a,r3
	mov	dptr,#_axradio_sync_periodcorr
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1047$2$557 ==.
;	..\COMMON\easyax5043.c:1047: dt >>= SYNC_K0;
	mov	a,r7
	mov	c,acc.7
	rrc	a
	mov	r7,a
	mov	a,r6
	rrc	a
	mov	r6,a
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r4
	rrc	a
	mov	r4,a
	mov	a,r7
	mov	c,acc.7
	rrc	a
	mov	r7,a
	mov	a,r6
	rrc	a
	mov	r6,a
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r4
	rrc	a
	C$easyax5043.c$1048$2$557 ==.
;	..\COMMON\easyax5043.c:1048: axradio_sync_addtime(dt);
	mov	dpl,a
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	_axradio_sync_addtime
00103$:
	C$easyax5043.c$1050$1$555 ==.
;	..\COMMON\easyax5043.c:1050: axradio_sync_periodcorr = signedlimit16(axradio_sync_periodcorr, axradio_sync_slave_maxperiod);
	mov	dptr,#_axradio_sync_periodcorr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_axradio_sync_slave_maxperiod
	clr	a
	movc	a,@a+dptr
	push	acc
	mov	a,#0x01
	movc	a,@a+dptr
	push	acc
	mov	dpl,r6
	mov	dph,r7
	lcall	_signedlimit16
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	mov	dptr,#_axradio_sync_periodcorr
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1051$1$555 ==.
	XFeasyax5043$axradio_sync_adjustperiodcorr$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_sync_slave_nextperiod'
;------------------------------------------------------------
;c                         Allocated to registers r6 r7 
;------------------------------------------------------------
	Feasyax5043$axradio_sync_slave_nextperiod$0$0 ==.
	C$easyax5043.c$1053$1$555 ==.
;	..\COMMON\easyax5043.c:1053: static void axradio_sync_slave_nextperiod()
;	-----------------------------------------
;	 function axradio_sync_slave_nextperiod
;	-----------------------------------------
_axradio_sync_slave_nextperiod:
	C$easyax5043.c$1055$1$558 ==.
;	..\COMMON\easyax5043.c:1055: axradio_sync_addtime(axradio_sync_period);
	mov	dptr,#_axradio_sync_period
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r5,a
	mov	a,#0x02
	movc	a,@a+dptr
	mov	r6,a
	mov	a,#0x03
	movc	a,@a+dptr
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_axradio_sync_addtime
	C$easyax5043.c$1056$1$558 ==.
;	..\COMMON\easyax5043.c:1056: if (!checksignedlimit16(axradio_sync_periodcorr, axradio_sync_slave_maxperiod))
	mov	dptr,#_axradio_sync_periodcorr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_axradio_sync_slave_maxperiod
	clr	a
	movc	a,@a+dptr
	push	acc
	mov	a,#0x01
	movc	a,@a+dptr
	push	acc
	mov	dpl,r6
	mov	dph,r7
	lcall	_checksignedlimit16
	mov	r7,dpl
	dec	sp
	dec	sp
	mov	a,r7
	jnz	00102$
	C$easyax5043.c$1057$1$558 ==.
;	..\COMMON\easyax5043.c:1057: return;
	sjmp	00103$
00102$:
	C$easyax5043.c$1059$2$558 ==.
;	..\COMMON\easyax5043.c:1059: int16_t __autodata c = axradio_sync_periodcorr;
	mov	dptr,#_axradio_sync_periodcorr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	C$easyax5043.c$1060$2$559 ==.
;	..\COMMON\easyax5043.c:1060: axradio_sync_addtime(c >> SYNC_K1);
	mov	r7,a
	swap	a
	rr	a
	xch	a,r6
	swap	a
	rr	a
	anl	a,#0x07
	xrl	a,r6
	xch	a,r6
	anl	a,#0x07
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	jnb	acc.2,00109$
	orl	a,#0xf8
00109$:
	mov	r7,a
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	_axradio_sync_addtime
00103$:
	C$easyax5043.c$1062$2$559 ==.
	XFeasyax5043$axradio_sync_slave_nextperiod$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_timer_callback'
;------------------------------------------------------------
;desc                      Allocated to registers 
;r                         Allocated to registers r7 
;idx                       Allocated to registers r7 
;rs                        Allocated to registers r6 
;idx                       Allocated to registers r7 
;------------------------------------------------------------
	Feasyax5043$axradio_timer_callback$0$0 ==.
	C$easyax5043.c$1066$2$559 ==.
;	..\COMMON\easyax5043.c:1066: static void axradio_timer_callback(struct wtimer_desc __xdata *desc)
;	-----------------------------------------
;	 function axradio_timer_callback
;	-----------------------------------------
_axradio_timer_callback:
	C$easyax5043.c$1069$1$561 ==.
;	..\COMMON\easyax5043.c:1069: switch (axradio_mode) {
	mov	r7,_axradio_mode
	cjne	r7,#0x10,00326$
00326$:
	jnc	00327$
	ljmp	00237$
00327$:
	mov	a,r7
	add	a,#0xff - 0x33
	jnc	00328$
	ljmp	00237$
00328$:
	mov	a,r7
	add	a,#0xf0
	mov	r7,a
	add	a,#(00329$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,r7
	add	a,#(00330$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00329$:
	.db	00112$
	.db	00113$
	.db	00123$
	.db	00124$
	.db	00235$
	.db	00235$
	.db	00235$
	.db	00235$
	.db	00235$
	.db	00235$
	.db	00235$
	.db	00235$
	.db	00235$
	.db	00235$
	.db	00235$
	.db	00235$
	.db	00106$
	.db	00107$
	.db	00129$
	.db	00130$
	.db	00235$
	.db	00235$
	.db	00235$
	.db	00235$
	.db	00102$
	.db	00103$
	.db	00104$
	.db	00105$
	.db	00101$
	.db	00235$
	.db	00235$
	.db	00235$
	.db	00166$
	.db	00167$
	.db	00209$
	.db	00210$
00330$:
	.db	00112$>>8
	.db	00113$>>8
	.db	00123$>>8
	.db	00124$>>8
	.db	00235$>>8
	.db	00235$>>8
	.db	00235$>>8
	.db	00235$>>8
	.db	00235$>>8
	.db	00235$>>8
	.db	00235$>>8
	.db	00235$>>8
	.db	00235$>>8
	.db	00235$>>8
	.db	00235$>>8
	.db	00235$>>8
	.db	00106$>>8
	.db	00107$>>8
	.db	00129$>>8
	.db	00130$>>8
	.db	00235$>>8
	.db	00235$>>8
	.db	00235$>>8
	.db	00235$>>8
	.db	00102$>>8
	.db	00103$>>8
	.db	00104$>>8
	.db	00105$>>8
	.db	00101$>>8
	.db	00235$>>8
	.db	00235$>>8
	.db	00235$>>8
	.db	00166$>>8
	.db	00167$>>8
	.db	00209$>>8
	.db	00210$>>8
	C$easyax5043.c$1070$2$562 ==.
;	..\COMMON\easyax5043.c:1070: case AXRADIO_MODE_STREAM_RECEIVE:
00101$:
	C$easyax5043.c$1071$2$562 ==.
;	..\COMMON\easyax5043.c:1071: case AXRADIO_MODE_STREAM_RECEIVE_UNENC:
00102$:
	C$easyax5043.c$1072$2$562 ==.
;	..\COMMON\easyax5043.c:1072: case AXRADIO_MODE_STREAM_RECEIVE_SCRAM:
00103$:
	C$easyax5043.c$1073$2$562 ==.
;	..\COMMON\easyax5043.c:1073: case AXRADIO_MODE_STREAM_RECEIVE_UNENC_LSB:
00104$:
	C$easyax5043.c$1074$2$562 ==.
;	..\COMMON\easyax5043.c:1074: case AXRADIO_MODE_STREAM_RECEIVE_SCRAM_LSB:
00105$:
	C$easyax5043.c$1075$2$562 ==.
;	..\COMMON\easyax5043.c:1075: case AXRADIO_MODE_ASYNC_RECEIVE:
00106$:
	C$easyax5043.c$1076$2$562 ==.
;	..\COMMON\easyax5043.c:1076: case AXRADIO_MODE_WOR_RECEIVE:
00107$:
	C$easyax5043.c$1077$2$562 ==.
;	..\COMMON\easyax5043.c:1077: if (axradio_syncstate == syncstate_asynctx)
	mov	dptr,#_axradio_syncstate
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x02,00331$
	ljmp	00114$
00331$:
	C$easyax5043.c$1079$2$562 ==.
;	..\COMMON\easyax5043.c:1079: wtimer_remove(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer_remove
	C$easyax5043.c$1080$2$562 ==.
;	..\COMMON\easyax5043.c:1080: rearmcstimer:
00110$:
	C$easyax5043.c$1081$2$562 ==.
;	..\COMMON\easyax5043.c:1081: axradio_timer.time = axradio_phy_cs_period;
	mov	dptr,#_axradio_phy_cs_period
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r7,a
	mov	r5,#0x00
	mov	r4,#0x00
	mov	dptr,#(_axradio_timer + 0x0004)
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1082$2$562 ==.
;	..\COMMON\easyax5043.c:1082: wtimer0_addrelative(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer0_addrelative
	C$easyax5043.c$1083$2$562 ==.
;	..\COMMON\easyax5043.c:1083: chanstatecb:
00111$:
	C$easyax5043.c$1084$2$562 ==.
;	..\COMMON\easyax5043.c:1084: update_timeanchor();
	lcall	_update_timeanchor
	C$easyax5043.c$1085$2$562 ==.
;	..\COMMON\easyax5043.c:1085: wtimer_remove_callback(&axradio_cb_channelstate.cb);
	mov	dptr,#_axradio_cb_channelstate
	lcall	_wtimer_remove_callback
	C$easyax5043.c$1086$2$562 ==.
;	..\COMMON\easyax5043.c:1086: axradio_cb_channelstate.st.error = AXRADIO_ERR_NOERROR;
	mov	dptr,#(_axradio_cb_channelstate + 0x0005)
	clr	a
	movx	@dptr,a
	C$easyax5043.c$1088$3$563 ==.
;	..\COMMON\easyax5043.c:1088: int8_t __autodata r = radio_read8(AX5043_REG_RSSI);
	mov	dptr,#0x4040
	movx	a,@dptr
	C$easyax5043.c$1089$3$563 ==.
;	..\COMMON\easyax5043.c:1089: axradio_cb_channelstate.st.cs.rssi = r - (int16_t)axradio_phy_rssioffset;
	mov	r7,a
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	dptr,#_axradio_phy_rssioffset
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	a,r5
	clr	c
	subb	a,r4
	mov	r5,a
	mov	a,r6
	subb	a,r3
	mov	r6,a
	mov	dptr,#(_axradio_cb_channelstate + 0x000a)
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1090$3$563 ==.
;	..\COMMON\easyax5043.c:1090: axradio_cb_channelstate.st.cs.busy = r >= axradio_phy_channelbusy;
	mov	dptr,#_axradio_phy_channelbusy
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	clr	c
	mov	a,r7
	xrl	a,#0x80
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	cpl	c
	mov	_axradio_timer_callback_sloc0_1_0,c
	clr	a
	rlc	a
	mov	dptr,#(_axradio_cb_channelstate + 0x000c)
	movx	@dptr,a
	C$easyax5043.c$1092$2$562 ==.
;	..\COMMON\easyax5043.c:1092: axradio_cb_channelstate.st.time.t = axradio_timeanchor.radiotimer;
	mov	dptr,#(_axradio_timeanchor + 0x0004)
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
	mov	dptr,#(_axradio_cb_channelstate + 0x0006)
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
	C$easyax5043.c$1093$2$562 ==.
;	..\COMMON\easyax5043.c:1093: wtimer_add_callback(&axradio_cb_channelstate.cb);
	mov	dptr,#_axradio_cb_channelstate
	lcall	_wtimer_add_callback
	C$easyax5043.c$1094$2$562 ==.
;	..\COMMON\easyax5043.c:1094: break;
	ljmp	00237$
	C$easyax5043.c$1096$2$562 ==.
;	..\COMMON\easyax5043.c:1096: case AXRADIO_MODE_ASYNC_TRANSMIT:
00112$:
	C$easyax5043.c$1097$2$562 ==.
;	..\COMMON\easyax5043.c:1097: case AXRADIO_MODE_WOR_TRANSMIT:
00113$:
	C$easyax5043.c$1098$2$562 ==.
;	..\COMMON\easyax5043.c:1098: transmitcs:
00114$:
	C$easyax5043.c$1099$2$562 ==.
;	..\COMMON\easyax5043.c:1099: if (axradio_ack_count)
	mov	dptr,#_axradio_ack_count
	movx	a,@dptr
	mov	r7,a
	movx	a,@dptr
	jz	00116$
	C$easyax5043.c$1100$2$562 ==.
;	..\COMMON\easyax5043.c:1100: --axradio_ack_count;
	mov	a,r7
	dec	a
	mov	dptr,#_axradio_ack_count
	movx	@dptr,a
00116$:
	C$easyax5043.c$1101$2$562 ==.
;	..\COMMON\easyax5043.c:1101: wtimer_remove(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer_remove
	C$easyax5043.c$1102$2$562 ==.
;	..\COMMON\easyax5043.c:1102: if ((int8_t)radio_read8(AX5043_REG_RSSI) < axradio_phy_channelbusy ||
	mov	dptr,#0x4040
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_axradio_phy_channelbusy
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	clr	c
	mov	a,r7
	xrl	a,#0x80
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	jc	00117$
	C$easyax5043.c$1103$2$562 ==.
;	..\COMMON\easyax5043.c:1103: (!axradio_ack_count && axradio_phy_lbt_forcetx)) {
	mov	dptr,#_axradio_ack_count
	movx	a,@dptr
	mov	r7,a
	movx	a,@dptr
	jnz	00118$
	mov	dptr,#_axradio_phy_lbt_forcetx
	clr	a
	movc	a,@a+dptr
	jz	00118$
00117$:
	C$easyax5043.c$1104$3$564 ==.
;	..\COMMON\easyax5043.c:1104: axradio_syncstate = syncstate_off;
	mov	dptr,#_axradio_syncstate
	clr	a
	movx	@dptr,a
	C$easyax5043.c$1105$3$564 ==.
;	..\COMMON\easyax5043.c:1105: axradio_txbuffer_cnt = axradio_phy_preamble_longlen;
	mov	dptr,#_axradio_phy_preamble_longlen
;	genFromRTrack removed	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r6,a
	mov	dptr,#_axradio_txbuffer_cnt
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1106$3$564 ==.
;	..\COMMON\easyax5043.c:1106: ax5043_prepare_tx();
	lcall	_ax5043_prepare_tx
	C$easyax5043.c$1107$3$564 ==.
;	..\COMMON\easyax5043.c:1107: goto chanstatecb;
	ljmp	00111$
00118$:
	C$easyax5043.c$1109$2$562 ==.
;	..\COMMON\easyax5043.c:1109: if (axradio_ack_count)
	mov	a,r7
	jz	00336$
	ljmp	00110$
00336$:
	C$easyax5043.c$1111$2$562 ==.
;	..\COMMON\easyax5043.c:1111: update_timeanchor();
	lcall	_update_timeanchor
	C$easyax5043.c$1112$2$562 ==.
;	..\COMMON\easyax5043.c:1112: axradio_syncstate = syncstate_off;
	mov	dptr,#_axradio_syncstate
	clr	a
	movx	@dptr,a
	C$easyax5043.c$1113$2$562 ==.
;	..\COMMON\easyax5043.c:1113: ax5043_off();
	lcall	_ax5043_off
	C$easyax5043.c$1114$2$562 ==.
;	..\COMMON\easyax5043.c:1114: wtimer_remove_callback(&axradio_cb_transmitstart.cb);
	mov	dptr,#_axradio_cb_transmitstart
	lcall	_wtimer_remove_callback
	C$easyax5043.c$1115$2$562 ==.
;	..\COMMON\easyax5043.c:1115: axradio_cb_transmitstart.st.error = AXRADIO_ERR_TIMEOUT;
	mov	dptr,#(_axradio_cb_transmitstart + 0x0005)
	mov	a,#0x03
	movx	@dptr,a
	C$easyax5043.c$1116$2$562 ==.
;	..\COMMON\easyax5043.c:1116: axradio_cb_transmitstart.st.time.t = axradio_timeanchor.radiotimer;
	mov	dptr,#(_axradio_timeanchor + 0x0004)
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
	mov	dptr,#(_axradio_cb_transmitstart + 0x0006)
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
	C$easyax5043.c$1117$2$562 ==.
;	..\COMMON\easyax5043.c:1117: wtimer_add_callback(&axradio_cb_transmitstart.cb);
	mov	dptr,#_axradio_cb_transmitstart
	lcall	_wtimer_add_callback
	C$easyax5043.c$1118$2$562 ==.
;	..\COMMON\easyax5043.c:1118: break;
	ljmp	00237$
	C$easyax5043.c$1120$2$562 ==.
;	..\COMMON\easyax5043.c:1120: case AXRADIO_MODE_ACK_TRANSMIT:
00123$:
	C$easyax5043.c$1121$2$562 ==.
;	..\COMMON\easyax5043.c:1121: case AXRADIO_MODE_WOR_ACK_TRANSMIT:
00124$:
	C$easyax5043.c$1122$2$562 ==.
;	..\COMMON\easyax5043.c:1122: if (axradio_syncstate == syncstate_lbt)
	mov	dptr,#_axradio_syncstate
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00337$
	ljmp	00114$
00337$:
	C$easyax5043.c$1124$2$562 ==.
;	..\COMMON\easyax5043.c:1124: ax5043_off();
	lcall	_ax5043_off
	C$easyax5043.c$1125$2$562 ==.
;	..\COMMON\easyax5043.c:1125: if (!axradio_ack_count) {
	mov	dptr,#_axradio_ack_count
	movx	a,@dptr
	mov	r7,a
	movx	a,@dptr
	jnz	00128$
	C$easyax5043.c$1126$3$565 ==.
;	..\COMMON\easyax5043.c:1126: update_timeanchor();
	lcall	_update_timeanchor
	C$easyax5043.c$1127$3$565 ==.
;	..\COMMON\easyax5043.c:1127: wtimer_remove_callback(&axradio_cb_transmitend.cb);
	mov	dptr,#_axradio_cb_transmitend
	lcall	_wtimer_remove_callback
	C$easyax5043.c$1128$3$565 ==.
;	..\COMMON\easyax5043.c:1128: axradio_cb_transmitend.st.error = AXRADIO_ERR_TIMEOUT;
	mov	dptr,#(_axradio_cb_transmitend + 0x0005)
	mov	a,#0x03
	movx	@dptr,a
	C$easyax5043.c$1129$3$565 ==.
;	..\COMMON\easyax5043.c:1129: axradio_cb_transmitend.st.time.t = axradio_timeanchor.radiotimer;
	mov	dptr,#(_axradio_timeanchor + 0x0004)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#(_axradio_cb_transmitend + 0x0006)
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
	C$easyax5043.c$1130$3$565 ==.
;	..\COMMON\easyax5043.c:1130: wtimer_add_callback(&axradio_cb_transmitend.cb);
	mov	dptr,#_axradio_cb_transmitend
	lcall	_wtimer_add_callback
	C$easyax5043.c$1131$3$565 ==.
;	..\COMMON\easyax5043.c:1131: break;
	ljmp	00237$
00128$:
	C$easyax5043.c$1133$2$562 ==.
;	..\COMMON\easyax5043.c:1133: --axradio_ack_count;
	mov	a,r7
	dec	a
	mov	dptr,#_axradio_ack_count
	movx	@dptr,a
	C$easyax5043.c$1134$2$562 ==.
;	..\COMMON\easyax5043.c:1134: axradio_txbuffer_cnt = axradio_phy_preamble_longlen;
	mov	dptr,#_axradio_phy_preamble_longlen
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r7,a
	mov	dptr,#_axradio_txbuffer_cnt
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1135$2$562 ==.
;	..\COMMON\easyax5043.c:1135: ax5043_prepare_tx();
	lcall	_ax5043_prepare_tx
	C$easyax5043.c$1136$2$562 ==.
;	..\COMMON\easyax5043.c:1136: break;
	ljmp	00237$
	C$easyax5043.c$1138$2$562 ==.
;	..\COMMON\easyax5043.c:1138: case AXRADIO_MODE_ACK_RECEIVE:
00129$:
	C$easyax5043.c$1139$2$562 ==.
;	..\COMMON\easyax5043.c:1139: case AXRADIO_MODE_WOR_ACK_RECEIVE:
00130$:
	C$easyax5043.c$1140$2$562 ==.
;	..\COMMON\easyax5043.c:1140: if (axradio_syncstate == syncstate_lbt)
	mov	dptr,#_axradio_syncstate
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00339$
	ljmp	00114$
00339$:
	C$easyax5043.c$1143$2$562 ==.
;	..\COMMON\easyax5043.c:1143: radio_write8(AX5043_REG_FIFOSTAT, 3);
00134$:
	mov	dptr,#0x4028
	mov	a,#0x03
	movx	@dptr,a
	C$easyax5043.c$1144$3$567 ==.
;	..\COMMON\easyax5043.c:1144: radio_write8(AX5043_REG_PWRMODE, AX5043_PWRSTATE_FULL_TX);
	mov	dptr,#0x4002
	mov	a,#0x0d
	movx	@dptr,a
	C$easyax5043.c$1145$2$562 ==.
;	..\COMMON\easyax5043.c:1145: while (!(radio_read8(AX5043_REG_POWSTAT) & 0x08)); // wait for modem vdd so writing the FIFO is safe
00140$:
	mov	dptr,#0x4003
	movx	a,@dptr
	mov	r7,a
	jnb	acc.3,00140$
	C$easyax5043.c$1146$2$562 ==.
;	..\COMMON\easyax5043.c:1146: ax5043_init_registers_tx();
	lcall	_ax5043_init_registers_tx
	C$easyax5043.c$1147$2$562 ==.
;	..\COMMON\easyax5043.c:1147: radio_read8(AX5043_REG_RADIOEVENTREQ0); // make sure REVRDONE bit is cleared, so it is a reliable indicator that the packet is out
	mov	dptr,#0x400f
	movx	a,@dptr
	C$easyax5043.c$1148$3$568 ==.
;	..\COMMON\easyax5043.c:1148: radio_write8(AX5043_REG_FIFOTHRESH1, 0);
	mov	dptr,#0x402e
	clr	a
	movx	@dptr,a
	C$easyax5043.c$1149$3$569 ==.
;	..\COMMON\easyax5043.c:1149: radio_write8(AX5043_REG_FIFOTHRESH0, 0x80);
	mov	dptr,#0x402f
	mov	a,#0x80
	movx	@dptr,a
	C$easyax5043.c$1150$2$562 ==.
;	..\COMMON\easyax5043.c:1150: axradio_trxstate = trxstate_tx_longpreamble;
	mov	_axradio_trxstate,#0x0a
	C$easyax5043.c$1151$2$562 ==.
;	..\COMMON\easyax5043.c:1151: axradio_txbuffer_cnt = axradio_phy_preamble_longlen;
	mov	dptr,#_axradio_phy_preamble_longlen
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r7,a
	mov	dptr,#_axradio_txbuffer_cnt
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1153$2$562 ==.
;	..\COMMON\easyax5043.c:1153: if ((radio_read8(AX5043_REG_MODULATION) & 0x0F) == 9) { // 4-FSK
	mov	dptr,#0x4010
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0x0f
	cjne	r7,#0x09,00163$
	C$easyax5043.c$1154$4$571 ==.
;	..\COMMON\easyax5043.c:1154: radio_write8(AX5043_REG_FIFODATA, AX5043_FIFOCMD_DATA | (7 << 5));
	C$easyax5043.c$1155$4$572 ==.
;	..\COMMON\easyax5043.c:1155: radio_write8(AX5043_REG_FIFODATA, 2);  // length (including flags)
	C$easyax5043.c$1156$4$573 ==.
;	..\COMMON\easyax5043.c:1156: radio_write8(AX5043_REG_FIFODATA, 0x01);  // flag PKTSTART -> dibit sync
	mov	dptr,#0x4029
	mov	a,#0xe1
	movx	@dptr,a
	mov	a,#0x02
	movx	@dptr,a
	dec	a
	movx	@dptr,a
	C$easyax5043.c$1157$4$574 ==.
;	..\COMMON\easyax5043.c:1157: radio_write8(AX5043_REG_FIFODATA, 0x11); // dummy byte for forcing dibit sync
	mov	dptr,#0x4029
	mov	a,#0x11
	movx	@dptr,a
	C$easyax5043.c$1164$2$562 ==.
;	..\COMMON\easyax5043.c:1164: radio_write8(AX5043_REG_IRQMASK0, 0x08); // enable fifo free threshold
00163$:
	mov	dptr,#0x4007
	mov	a,#0x08
	movx	@dptr,a
	C$easyax5043.c$1165$2$562 ==.
;	..\COMMON\easyax5043.c:1165: update_timeanchor();
	lcall	_update_timeanchor
	C$easyax5043.c$1166$2$562 ==.
;	..\COMMON\easyax5043.c:1166: wtimer_remove_callback(&axradio_cb_transmitstart.cb);
	mov	dptr,#_axradio_cb_transmitstart
	lcall	_wtimer_remove_callback
	C$easyax5043.c$1167$2$562 ==.
;	..\COMMON\easyax5043.c:1167: axradio_cb_transmitstart.st.error = AXRADIO_ERR_NOERROR;
	mov	dptr,#(_axradio_cb_transmitstart + 0x0005)
	clr	a
	movx	@dptr,a
	C$easyax5043.c$1168$2$562 ==.
;	..\COMMON\easyax5043.c:1168: axradio_cb_transmitstart.st.time.t = axradio_timeanchor.radiotimer;
	mov	dptr,#(_axradio_timeanchor + 0x0004)
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
	mov	dptr,#(_axradio_cb_transmitstart + 0x0006)
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
	C$easyax5043.c$1169$2$562 ==.
;	..\COMMON\easyax5043.c:1169: wtimer_add_callback(&axradio_cb_transmitstart.cb);
	mov	dptr,#_axradio_cb_transmitstart
	lcall	_wtimer_add_callback
	C$easyax5043.c$1170$2$562 ==.
;	..\COMMON\easyax5043.c:1170: break;
	ljmp	00237$
	C$easyax5043.c$1172$2$562 ==.
;	..\COMMON\easyax5043.c:1172: case AXRADIO_MODE_SYNC_MASTER:
00166$:
	C$easyax5043.c$1173$2$562 ==.
;	..\COMMON\easyax5043.c:1173: case AXRADIO_MODE_SYNC_ACK_MASTER:
00167$:
	C$easyax5043.c$1174$2$562 ==.
;	..\COMMON\easyax5043.c:1174: switch (axradio_syncstate) {
	mov	dptr,#_axradio_syncstate
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x04,00343$
	sjmp	00173$
00343$:
	cjne	r7,#0x05,00344$
	ljmp	00207$
00344$:
	C$easyax5043.c$1176$4$577 ==.
;	..\COMMON\easyax5043.c:1176: radio_write8(AX5043_REG_PWRMODE, AX5043_PWRSTATE_XTAL_ON);
	mov	dptr,#0x4002
	mov	a,#0x05
	movx	@dptr,a
	C$easyax5043.c$1177$3$576 ==.
;	..\COMMON\easyax5043.c:1177: ax5043_init_registers_tx();
	lcall	_ax5043_init_registers_tx
	C$easyax5043.c$1178$3$576 ==.
;	..\COMMON\easyax5043.c:1178: axradio_syncstate = syncstate_master_xostartup;
	mov	dptr,#_axradio_syncstate
	mov	a,#0x04
	movx	@dptr,a
	C$easyax5043.c$1179$3$576 ==.
;	..\COMMON\easyax5043.c:1179: wtimer_remove_callback(&axradio_cb_transmitdata.cb);
	mov	dptr,#_axradio_cb_transmitdata
	lcall	_wtimer_remove_callback
	C$easyax5043.c$1180$3$576 ==.
;	..\COMMON\easyax5043.c:1180: axradio_cb_transmitdata.st.error = AXRADIO_ERR_NOERROR;
	mov	dptr,#(_axradio_cb_transmitdata + 0x0005)
	clr	a
	movx	@dptr,a
	C$easyax5043.c$1181$3$576 ==.
;	..\COMMON\easyax5043.c:1181: axradio_cb_transmitdata.st.time.t = 0;
	mov	dptr,#(_axradio_cb_transmitdata + 0x0006)
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1182$3$576 ==.
;	..\COMMON\easyax5043.c:1182: wtimer_add_callback(&axradio_cb_transmitdata.cb);
	mov	dptr,#_axradio_cb_transmitdata
	lcall	_wtimer_add_callback
	C$easyax5043.c$1183$3$576 ==.
;	..\COMMON\easyax5043.c:1183: wtimer_remove(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer_remove
	C$easyax5043.c$1184$3$576 ==.
;	..\COMMON\easyax5043.c:1184: axradio_timer.time = axradio_sync_time;
	mov	dptr,#_axradio_sync_time
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
	mov	dptr,#(_axradio_timer + 0x0004)
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
	C$easyax5043.c$1185$3$576 ==.
;	..\COMMON\easyax5043.c:1185: wtimer0_addabsolute(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer0_addabsolute
	C$easyax5043.c$1186$3$576 ==.
;	..\COMMON\easyax5043.c:1186: break;
	ljmp	00237$
	C$easyax5043.c$1189$3$576 ==.
;	..\COMMON\easyax5043.c:1189: radio_write8(AX5043_REG_FIFOSTAT, 3);
00173$:
	mov	dptr,#0x4028
	mov	a,#0x03
	movx	@dptr,a
	C$easyax5043.c$1190$4$579 ==.
;	..\COMMON\easyax5043.c:1190: radio_write8(AX5043_REG_PWRMODE, AX5043_PWRSTATE_FULL_TX);
	mov	dptr,#0x4002
	mov	a,#0x0d
	movx	@dptr,a
	C$easyax5043.c$1191$3$576 ==.
;	..\COMMON\easyax5043.c:1191: while (!(radio_read8(AX5043_REG_POWSTAT) & 0x08)); // wait for modem vdd so writing the FIFO is safe
00179$:
	mov	dptr,#0x4003
	movx	a,@dptr
	mov	r7,a
	jnb	acc.3,00179$
	C$easyax5043.c$1192$3$576 ==.
;	..\COMMON\easyax5043.c:1192: radio_read8(AX5043_REG_RADIOEVENTREQ0); // make sure REVRDONE bit is cleared, so it is a reliable indicator that the packet is out
	mov	dptr,#0x400f
	movx	a,@dptr
	C$easyax5043.c$1193$4$580 ==.
;	..\COMMON\easyax5043.c:1193: radio_write8(AX5043_REG_FIFOTHRESH1, 0);
	mov	dptr,#0x402e
	clr	a
	movx	@dptr,a
	C$easyax5043.c$1194$4$581 ==.
;	..\COMMON\easyax5043.c:1194: radio_write8(AX5043_REG_FIFOTHRESH0, 0x80);
	mov	dptr,#0x402f
	mov	a,#0x80
	movx	@dptr,a
	C$easyax5043.c$1195$3$576 ==.
;	..\COMMON\easyax5043.c:1195: axradio_trxstate = trxstate_tx_longpreamble;
	mov	_axradio_trxstate,#0x0a
	C$easyax5043.c$1196$3$576 ==.
;	..\COMMON\easyax5043.c:1196: axradio_txbuffer_cnt = axradio_phy_preamble_longlen;
	mov	dptr,#_axradio_phy_preamble_longlen
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r7,a
	mov	dptr,#_axradio_txbuffer_cnt
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1198$3$576 ==.
;	..\COMMON\easyax5043.c:1198: if ((radio_read8(AX5043_REG_MODULATION) & 0x0F) == 9) { // 4-FSK
	mov	dptr,#0x4010
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0x0f
	cjne	r7,#0x09,00201$
	C$easyax5043.c$1199$5$583 ==.
;	..\COMMON\easyax5043.c:1199: radio_write8(AX5043_REG_FIFODATA, (AX5043_FIFOCMD_DATA | (7 << 5)));
	C$easyax5043.c$1200$5$584 ==.
;	..\COMMON\easyax5043.c:1200: radio_write8(AX5043_REG_FIFODATA, 2);  // length (including flags)
	C$easyax5043.c$1201$5$585 ==.
;	..\COMMON\easyax5043.c:1201: radio_write8(AX5043_REG_FIFODATA, 0x01);  // flag PKTSTART -> dibit sync
	mov	dptr,#0x4029
	mov	a,#0xe1
	movx	@dptr,a
	mov	a,#0x02
	movx	@dptr,a
	dec	a
	movx	@dptr,a
	C$easyax5043.c$1202$5$586 ==.
;	..\COMMON\easyax5043.c:1202: radio_write8(AX5043_REG_FIFODATA, 0x11); // dummy byte for forcing dibit sync
	mov	dptr,#0x4029
	mov	a,#0x11
	movx	@dptr,a
00201$:
	C$easyax5043.c$1209$3$576 ==.
;	..\COMMON\easyax5043.c:1209: wtimer_remove(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer_remove
	C$easyax5043.c$1210$3$576 ==.
;	..\COMMON\easyax5043.c:1210: update_timeanchor();
	lcall	_update_timeanchor
	C$easyax5043.c$1211$4$587 ==.
;	..\COMMON\easyax5043.c:1211: radio_write8(AX5043_REG_IRQMASK0, 0x08); // enable fifo free threshold
	mov	dptr,#0x4007
	mov	a,#0x08
	movx	@dptr,a
	C$easyax5043.c$1212$3$576 ==.
;	..\COMMON\easyax5043.c:1212: axradio_sync_addtime(axradio_sync_period);
	mov	dptr,#_axradio_sync_period
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r5,a
	mov	a,#0x02
	movc	a,@a+dptr
	mov	r6,a
	mov	a,#0x03
	movc	a,@a+dptr
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_axradio_sync_addtime
	C$easyax5043.c$1213$3$576 ==.
;	..\COMMON\easyax5043.c:1213: axradio_syncstate = syncstate_master_waitack;
	mov	dptr,#_axradio_syncstate
	mov	a,#0x05
	movx	@dptr,a
	C$easyax5043.c$1214$3$576 ==.
;	..\COMMON\easyax5043.c:1214: if (axradio_mode != AXRADIO_MODE_SYNC_ACK_MASTER) {
	mov	a,#0x31
	cjne	a,_axradio_mode,00348$
	sjmp	00206$
00348$:
	C$easyax5043.c$1215$4$588 ==.
;	..\COMMON\easyax5043.c:1215: axradio_syncstate = syncstate_master_normal;
	mov	dptr,#_axradio_syncstate
	mov	a,#0x03
	movx	@dptr,a
	C$easyax5043.c$1216$4$588 ==.
;	..\COMMON\easyax5043.c:1216: axradio_sync_settimeradv(axradio_sync_xoscstartup);
	mov	dptr,#_axradio_sync_xoscstartup
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r5,a
	mov	a,#0x02
	movc	a,@a+dptr
	mov	r6,a
	mov	a,#0x03
	movc	a,@a+dptr
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_axradio_sync_settimeradv
	C$easyax5043.c$1217$4$588 ==.
;	..\COMMON\easyax5043.c:1217: wtimer0_addabsolute(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer0_addabsolute
00206$:
	C$easyax5043.c$1219$3$576 ==.
;	..\COMMON\easyax5043.c:1219: wtimer_remove_callback(&axradio_cb_transmitstart.cb);
	mov	dptr,#_axradio_cb_transmitstart
	lcall	_wtimer_remove_callback
	C$easyax5043.c$1220$3$576 ==.
;	..\COMMON\easyax5043.c:1220: axradio_cb_transmitstart.st.error = AXRADIO_ERR_NOERROR;
	mov	dptr,#(_axradio_cb_transmitstart + 0x0005)
	clr	a
	movx	@dptr,a
	C$easyax5043.c$1221$3$576 ==.
;	..\COMMON\easyax5043.c:1221: axradio_cb_transmitstart.st.time.t = axradio_timeanchor.radiotimer;
	mov	dptr,#(_axradio_timeanchor + 0x0004)
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
	mov	dptr,#(_axradio_cb_transmitstart + 0x0006)
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
	C$easyax5043.c$1222$3$576 ==.
;	..\COMMON\easyax5043.c:1222: wtimer_add_callback(&axradio_cb_transmitstart.cb);
	mov	dptr,#_axradio_cb_transmitstart
	lcall	_wtimer_add_callback
	C$easyax5043.c$1223$3$576 ==.
;	..\COMMON\easyax5043.c:1223: break;
	ljmp	00237$
	C$easyax5043.c$1225$3$576 ==.
;	..\COMMON\easyax5043.c:1225: case syncstate_master_waitack:
00207$:
	C$easyax5043.c$1226$3$576 ==.
;	..\COMMON\easyax5043.c:1226: ax5043_off();
	lcall	_ax5043_off
	C$easyax5043.c$1227$3$576 ==.
;	..\COMMON\easyax5043.c:1227: axradio_syncstate = syncstate_master_normal;
	mov	dptr,#_axradio_syncstate
	mov	a,#0x03
	movx	@dptr,a
	C$easyax5043.c$1228$3$576 ==.
;	..\COMMON\easyax5043.c:1228: wtimer_remove(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer_remove
	C$easyax5043.c$1229$3$576 ==.
;	..\COMMON\easyax5043.c:1229: axradio_sync_settimeradv(axradio_sync_xoscstartup);
	mov	dptr,#_axradio_sync_xoscstartup
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r5,a
	mov	a,#0x02
	movc	a,@a+dptr
	mov	r6,a
	mov	a,#0x03
	movc	a,@a+dptr
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_axradio_sync_settimeradv
	C$easyax5043.c$1230$3$576 ==.
;	..\COMMON\easyax5043.c:1230: wtimer0_addabsolute(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer0_addabsolute
	C$easyax5043.c$1231$3$576 ==.
;	..\COMMON\easyax5043.c:1231: update_timeanchor();
	lcall	_update_timeanchor
	C$easyax5043.c$1232$3$576 ==.
;	..\COMMON\easyax5043.c:1232: wtimer_remove_callback(&axradio_cb_transmitend.cb);
	mov	dptr,#_axradio_cb_transmitend
	lcall	_wtimer_remove_callback
	C$easyax5043.c$1233$3$576 ==.
;	..\COMMON\easyax5043.c:1233: axradio_cb_transmitend.st.error = AXRADIO_ERR_TIMEOUT;
	mov	dptr,#(_axradio_cb_transmitend + 0x0005)
	mov	a,#0x03
	movx	@dptr,a
	C$easyax5043.c$1234$3$576 ==.
;	..\COMMON\easyax5043.c:1234: axradio_cb_transmitend.st.time.t = axradio_timeanchor.radiotimer;
	mov	dptr,#(_axradio_timeanchor + 0x0004)
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
	mov	dptr,#(_axradio_cb_transmitend + 0x0006)
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
	C$easyax5043.c$1235$3$576 ==.
;	..\COMMON\easyax5043.c:1235: wtimer_add_callback(&axradio_cb_transmitend.cb);
	mov	dptr,#_axradio_cb_transmitend
	lcall	_wtimer_add_callback
	C$easyax5043.c$1238$2$562 ==.
;	..\COMMON\easyax5043.c:1238: break;
	ljmp	00237$
	C$easyax5043.c$1240$2$562 ==.
;	..\COMMON\easyax5043.c:1240: case AXRADIO_MODE_SYNC_SLAVE:
00209$:
	C$easyax5043.c$1241$2$562 ==.
;	..\COMMON\easyax5043.c:1241: case AXRADIO_MODE_SYNC_ACK_SLAVE:
00210$:
	C$easyax5043.c$1242$2$562 ==.
;	..\COMMON\easyax5043.c:1242: switch (axradio_syncstate) {
	mov	dptr,#_axradio_syncstate
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x0c
	jnc	00349$
	ljmp	00212$
00349$:
	mov	a,r7
	mov	b,a
	add	a,#(00350$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,b
	add	a,#(00351$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00350$:
	.db	00211$
	.db	00211$
	.db	00211$
	.db	00211$
	.db	00211$
	.db	00211$
	.db	00212$
	.db	00213$
	.db	00214$
	.db	00218$
	.db	00221$
	.db	00226$
	.db	00233$
00351$:
	.db	00211$>>8
	.db	00211$>>8
	.db	00211$>>8
	.db	00211$>>8
	.db	00211$>>8
	.db	00211$>>8
	.db	00212$>>8
	.db	00213$>>8
	.db	00214$>>8
	.db	00218$>>8
	.db	00221$>>8
	.db	00226$>>8
	.db	00233$>>8
	C$easyax5043.c$1243$3$589 ==.
;	..\COMMON\easyax5043.c:1243: default:
00211$:
	C$easyax5043.c$1244$3$589 ==.
;	..\COMMON\easyax5043.c:1244: case syncstate_slave_synchunt:
00212$:
	C$easyax5043.c$1245$3$589 ==.
;	..\COMMON\easyax5043.c:1245: ax5043_off();
	lcall	_ax5043_off
	C$easyax5043.c$1246$3$589 ==.
;	..\COMMON\easyax5043.c:1246: axradio_syncstate = syncstate_slave_syncpause;
	mov	dptr,#_axradio_syncstate
	mov	a,#0x07
	movx	@dptr,a
	C$easyax5043.c$1247$3$589 ==.
;	..\COMMON\easyax5043.c:1247: axradio_sync_addtime(axradio_sync_slave_syncpause);
	mov	dptr,#_axradio_sync_slave_syncpause
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r5,a
	mov	a,#0x02
	movc	a,@a+dptr
	mov	r6,a
	mov	a,#0x03
	movc	a,@a+dptr
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_axradio_sync_addtime
	C$easyax5043.c$1248$3$589 ==.
;	..\COMMON\easyax5043.c:1248: wtimer_remove(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer_remove
	C$easyax5043.c$1249$3$589 ==.
;	..\COMMON\easyax5043.c:1249: axradio_timer.time = axradio_sync_time;
	mov	dptr,#_axradio_sync_time
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
	mov	dptr,#(_axradio_timer + 0x0004)
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
	C$easyax5043.c$1250$3$589 ==.
;	..\COMMON\easyax5043.c:1250: wtimer0_addabsolute(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer0_addabsolute
	C$easyax5043.c$1251$3$589 ==.
;	..\COMMON\easyax5043.c:1251: wtimer_remove_callback(&axradio_cb_receive.cb);
	mov	dptr,#_axradio_cb_receive
	lcall	_wtimer_remove_callback
	C$easyax5043.c$1252$3$589 ==.
;	..\COMMON\easyax5043.c:1252: memset_xdata(&axradio_cb_receive.st, 0, sizeof(axradio_cb_receive.st));
	mov	_memset_PARM_2,#0x00
	mov	_memset_PARM_3,#0x20
	mov	(_memset_PARM_3 + 1),#0x00
	mov	dptr,#(_axradio_cb_receive + 0x0004)
	mov	b,#0x00
	lcall	_memset
	C$easyax5043.c$1253$3$589 ==.
;	..\COMMON\easyax5043.c:1253: axradio_cb_receive.st.time.t = axradio_timeanchor.radiotimer;
	mov	dptr,#(_axradio_timeanchor + 0x0004)
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
	mov	dptr,#(_axradio_cb_receive + 0x0006)
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
	C$easyax5043.c$1254$3$589 ==.
;	..\COMMON\easyax5043.c:1254: axradio_cb_receive.st.error = AXRADIO_ERR_RESYNCTIMEOUT;
	mov	dptr,#(_axradio_cb_receive + 0x0005)
	mov	a,#0x0a
	movx	@dptr,a
	C$easyax5043.c$1255$3$589 ==.
;	..\COMMON\easyax5043.c:1255: wtimer_add_callback(&axradio_cb_receive.cb);
	mov	dptr,#_axradio_cb_receive
	lcall	_wtimer_add_callback
	C$easyax5043.c$1256$3$589 ==.
;	..\COMMON\easyax5043.c:1256: break;
	ljmp	00237$
	C$easyax5043.c$1258$3$589 ==.
;	..\COMMON\easyax5043.c:1258: case syncstate_slave_syncpause:
00213$:
	C$easyax5043.c$1259$3$589 ==.
;	..\COMMON\easyax5043.c:1259: ax5043_receiver_on_continuous();
	lcall	_ax5043_receiver_on_continuous
	C$easyax5043.c$1260$3$589 ==.
;	..\COMMON\easyax5043.c:1260: axradio_syncstate = syncstate_slave_synchunt;
	mov	dptr,#_axradio_syncstate
	mov	a,#0x06
	movx	@dptr,a
	C$easyax5043.c$1261$3$589 ==.
;	..\COMMON\easyax5043.c:1261: axradio_sync_addtime(axradio_sync_slave_syncwindow);
	mov	dptr,#_axradio_sync_slave_syncwindow
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r5,a
	mov	a,#0x02
	movc	a,@a+dptr
	mov	r6,a
	mov	a,#0x03
	movc	a,@a+dptr
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_axradio_sync_addtime
	C$easyax5043.c$1262$3$589 ==.
;	..\COMMON\easyax5043.c:1262: wtimer_remove(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer_remove
	C$easyax5043.c$1263$3$589 ==.
;	..\COMMON\easyax5043.c:1263: axradio_timer.time = axradio_sync_time;
	mov	dptr,#_axradio_sync_time
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
	mov	dptr,#(_axradio_timer + 0x0004)
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
	C$easyax5043.c$1264$3$589 ==.
;	..\COMMON\easyax5043.c:1264: wtimer0_addabsolute(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer0_addabsolute
	C$easyax5043.c$1265$3$589 ==.
;	..\COMMON\easyax5043.c:1265: update_timeanchor();
	lcall	_update_timeanchor
	C$easyax5043.c$1266$3$589 ==.
;	..\COMMON\easyax5043.c:1266: wtimer_remove_callback(&axradio_cb_receive.cb);
	mov	dptr,#_axradio_cb_receive
	lcall	_wtimer_remove_callback
	C$easyax5043.c$1267$3$589 ==.
;	..\COMMON\easyax5043.c:1267: memset_xdata(&axradio_cb_receive.st, 0, sizeof(axradio_cb_receive.st));
	mov	_memset_PARM_2,#0x00
	mov	_memset_PARM_3,#0x20
	mov	(_memset_PARM_3 + 1),#0x00
	mov	dptr,#(_axradio_cb_receive + 0x0004)
	mov	b,#0x00
	lcall	_memset
	C$easyax5043.c$1268$3$589 ==.
;	..\COMMON\easyax5043.c:1268: axradio_cb_receive.st.time.t = axradio_timeanchor.radiotimer;
	mov	dptr,#(_axradio_timeanchor + 0x0004)
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
	mov	dptr,#(_axradio_cb_receive + 0x0006)
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
	C$easyax5043.c$1269$3$589 ==.
;	..\COMMON\easyax5043.c:1269: axradio_cb_receive.st.error = AXRADIO_ERR_RESYNC;
	mov	dptr,#(_axradio_cb_receive + 0x0005)
	mov	a,#0x09
	movx	@dptr,a
	C$easyax5043.c$1270$3$589 ==.
;	..\COMMON\easyax5043.c:1270: wtimer_add_callback(&axradio_cb_receive.cb);
	mov	dptr,#_axradio_cb_receive
	lcall	_wtimer_add_callback
	C$easyax5043.c$1271$3$589 ==.
;	..\COMMON\easyax5043.c:1271: break;
	ljmp	00237$
	C$easyax5043.c$1273$3$589 ==.
;	..\COMMON\easyax5043.c:1273: case syncstate_slave_rxidle:
00214$:
	C$easyax5043.c$1274$4$590 ==.
;	..\COMMON\easyax5043.c:1274: radio_write8(AX5043_REG_PWRMODE, AX5043_PWRSTATE_XTAL_ON);
	mov	dptr,#0x4002
	mov	a,#0x05
	movx	@dptr,a
	C$easyax5043.c$1275$3$589 ==.
;	..\COMMON\easyax5043.c:1275: axradio_syncstate = syncstate_slave_rxxosc;
	mov	dptr,#_axradio_syncstate
	mov	a,#0x09
	movx	@dptr,a
	C$easyax5043.c$1276$3$589 ==.
;	..\COMMON\easyax5043.c:1276: wtimer_remove(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer_remove
	C$easyax5043.c$1277$3$589 ==.
;	..\COMMON\easyax5043.c:1277: axradio_timer.time += axradio_sync_xoscstartup;
	mov	dptr,#(_axradio_timer + 0x0004)
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
	mov	dptr,#_axradio_sync_xoscstartup
	clr	a
	movc	a,@a+dptr
	mov	r0,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r1,a
	mov	a,#0x02
	movc	a,@a+dptr
	mov	r2,a
	mov	a,#0x03
	movc	a,@a+dptr
	mov	r3,a
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
	mov	dptr,#(_axradio_timer + 0x0004)
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
	C$easyax5043.c$1278$3$589 ==.
;	..\COMMON\easyax5043.c:1278: wtimer0_addabsolute(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer0_addabsolute
	C$easyax5043.c$1279$3$589 ==.
;	..\COMMON\easyax5043.c:1279: break;
	ljmp	00237$
	C$easyax5043.c$1281$3$589 ==.
;	..\COMMON\easyax5043.c:1281: case syncstate_slave_rxxosc:
00218$:
	C$easyax5043.c$1282$3$589 ==.
;	..\COMMON\easyax5043.c:1282: ax5043_receiver_on_continuous();
	lcall	_ax5043_receiver_on_continuous
	C$easyax5043.c$1283$3$589 ==.
;	..\COMMON\easyax5043.c:1283: axradio_syncstate = syncstate_slave_rxsfdwindow;
	mov	dptr,#_axradio_syncstate
	mov	a,#0x0a
	movx	@dptr,a
	C$easyax5043.c$1284$3$589 ==.
;	..\COMMON\easyax5043.c:1284: update_timeanchor();
	lcall	_update_timeanchor
	C$easyax5043.c$1285$3$589 ==.
;	..\COMMON\easyax5043.c:1285: wtimer_remove_callback(&axradio_cb_receive.cb);
	mov	dptr,#_axradio_cb_receive
	lcall	_wtimer_remove_callback
	C$easyax5043.c$1286$3$589 ==.
;	..\COMMON\easyax5043.c:1286: memset_xdata(&axradio_cb_receive.st, 0, sizeof(axradio_cb_receive.st));
	mov	_memset_PARM_2,#0x00
	mov	_memset_PARM_3,#0x20
	mov	(_memset_PARM_3 + 1),#0x00
	mov	dptr,#(_axradio_cb_receive + 0x0004)
	mov	b,#0x00
	lcall	_memset
	C$easyax5043.c$1287$3$589 ==.
;	..\COMMON\easyax5043.c:1287: axradio_cb_receive.st.time.t = axradio_timeanchor.radiotimer;
	mov	dptr,#(_axradio_timeanchor + 0x0004)
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
	mov	dptr,#(_axradio_cb_receive + 0x0006)
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
	C$easyax5043.c$1288$3$589 ==.
;	..\COMMON\easyax5043.c:1288: axradio_cb_receive.st.error = AXRADIO_ERR_RECEIVESTART;
	mov	dptr,#(_axradio_cb_receive + 0x0005)
	mov	a,#0x0b
	movx	@dptr,a
	C$easyax5043.c$1289$3$589 ==.
;	..\COMMON\easyax5043.c:1289: wtimer_add_callback(&axradio_cb_receive.cb);
	mov	dptr,#_axradio_cb_receive
	lcall	_wtimer_add_callback
	C$easyax5043.c$1290$3$589 ==.
;	..\COMMON\easyax5043.c:1290: wtimer_remove(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer_remove
	C$easyax5043.c$1292$4$589 ==.
;	..\COMMON\easyax5043.c:1292: uint8_t __autodata idx = axradio_sync_seqnr;
	mov	dptr,#_axradio_ack_seqnr
	movx	a,@dptr
	mov	r7,a
	C$easyax5043.c$1293$4$591 ==.
;	..\COMMON\easyax5043.c:1293: if (idx >= axradio_sync_slave_nrrx)
	mov	dptr,#_axradio_sync_slave_nrrx
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	clr	c
	mov	a,r7
	subb	a,r6
	jc	00220$
	C$easyax5043.c$1294$4$591 ==.
;	..\COMMON\easyax5043.c:1294: idx = axradio_sync_slave_nrrx - 1;
	mov	a,r6
	dec	a
	mov	r7,a
00220$:
	C$easyax5043.c$1295$4$591 ==.
;	..\COMMON\easyax5043.c:1295: axradio_timer.time += axradio_sync_slave_rxwindow[idx];
	mov	dptr,#(_axradio_timer + 0x0004)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,r7
	mov	b,#0x04
	mul	ab
	add	a,#_axradio_sync_slave_rxwindow
	mov	dpl,a
	mov	a,#(_axradio_sync_slave_rxwindow >> 8)
	addc	a,b
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r0,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r1,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	a,r0
	add	a,r3
	mov	r3,a
	mov	a,r1
	addc	a,r4
	mov	r4,a
	mov	a,r2
	addc	a,r5
	mov	r5,a
	mov	a,r7
	addc	a,r6
	mov	r6,a
	mov	dptr,#(_axradio_timer + 0x0004)
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
	C$easyax5043.c$1297$3$589 ==.
;	..\COMMON\easyax5043.c:1297: wtimer0_addabsolute(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer0_addabsolute
	C$easyax5043.c$1298$3$589 ==.
;	..\COMMON\easyax5043.c:1298: break;
	ljmp	00237$
	C$easyax5043.c$1300$3$589 ==.
;	..\COMMON\easyax5043.c:1300: case syncstate_slave_rxsfdwindow:
00221$:
	C$easyax5043.c$1302$4$592 ==.
;	..\COMMON\easyax5043.c:1302: uint8_t __autodata rs = radio_read8(AX5043_REG_RADIOSTATE);
	mov	dptr,#0x401c
	movx	a,@dptr
	C$easyax5043.c$1303$4$592 ==.
;	..\COMMON\easyax5043.c:1303: if (!rs)
	mov	r7,a
	mov	r6,a
	jnz	00353$
	ljmp	00237$
00353$:
	C$easyax5043.c$1306$4$592 ==.
;	..\COMMON\easyax5043.c:1306: if (!(0x0F & (uint8_t)~rs)) {
	mov	a,r6
	cpl	a
	mov	r6,a
	anl	a,#0x0f
	jz	00355$
	sjmp	00226$
00355$:
	C$easyax5043.c$1307$5$593 ==.
;	..\COMMON\easyax5043.c:1307: axradio_syncstate = syncstate_slave_rxpacket;
	mov	dptr,#_axradio_syncstate
	mov	a,#0x0b
	movx	@dptr,a
	C$easyax5043.c$1308$5$593 ==.
;	..\COMMON\easyax5043.c:1308: wtimer_remove(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer_remove
	C$easyax5043.c$1309$5$593 ==.
;	..\COMMON\easyax5043.c:1309: axradio_timer.time += axradio_sync_slave_rxtimeout;
	mov	dptr,#(_axradio_timer + 0x0004)
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
	mov	dptr,#_axradio_sync_slave_rxtimeout
	clr	a
	movc	a,@a+dptr
	mov	r0,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r1,a
	mov	a,#0x02
	movc	a,@a+dptr
	mov	r2,a
	mov	a,#0x03
	movc	a,@a+dptr
	mov	r3,a
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
	mov	dptr,#(_axradio_timer + 0x0004)
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
	C$easyax5043.c$1310$5$593 ==.
;	..\COMMON\easyax5043.c:1310: wtimer0_addabsolute(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer0_addabsolute
	C$easyax5043.c$1311$5$593 ==.
;	..\COMMON\easyax5043.c:1311: break;
	ljmp	00237$
	C$easyax5043.c$1316$3$589 ==.
;	..\COMMON\easyax5043.c:1316: case syncstate_slave_rxpacket:
00226$:
	C$easyax5043.c$1317$3$589 ==.
;	..\COMMON\easyax5043.c:1317: ax5043_off();
	lcall	_ax5043_off
	C$easyax5043.c$1318$3$589 ==.
;	..\COMMON\easyax5043.c:1318: if (!axradio_sync_seqnr)
	mov	dptr,#_axradio_ack_seqnr
	movx	a,@dptr
	jnz	00228$
	C$easyax5043.c$1319$3$589 ==.
;	..\COMMON\easyax5043.c:1319: axradio_sync_seqnr = 1;
	mov	dptr,#_axradio_ack_seqnr
	mov	a,#0x01
	movx	@dptr,a
00228$:
	C$easyax5043.c$1320$3$589 ==.
;	..\COMMON\easyax5043.c:1320: ++axradio_sync_seqnr;
	mov	dptr,#_axradio_ack_seqnr
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	C$easyax5043.c$1321$3$589 ==.
;	..\COMMON\easyax5043.c:1321: update_timeanchor();
	lcall	_update_timeanchor
	C$easyax5043.c$1322$3$589 ==.
;	..\COMMON\easyax5043.c:1322: wtimer_remove_callback(&axradio_cb_receive.cb);
	mov	dptr,#_axradio_cb_receive
	lcall	_wtimer_remove_callback
	C$easyax5043.c$1323$3$589 ==.
;	..\COMMON\easyax5043.c:1323: memset_xdata(&axradio_cb_receive.st, 0, sizeof(axradio_cb_receive.st));
	mov	_memset_PARM_2,#0x00
	mov	_memset_PARM_3,#0x20
	mov	(_memset_PARM_3 + 1),#0x00
	mov	dptr,#(_axradio_cb_receive + 0x0004)
	mov	b,#0x00
	lcall	_memset
	C$easyax5043.c$1324$3$589 ==.
;	..\COMMON\easyax5043.c:1324: axradio_cb_receive.st.time.t = axradio_timeanchor.radiotimer;
	mov	dptr,#(_axradio_timeanchor + 0x0004)
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
	mov	dptr,#(_axradio_cb_receive + 0x0006)
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
	C$easyax5043.c$1325$3$589 ==.
;	..\COMMON\easyax5043.c:1325: axradio_cb_receive.st.error = AXRADIO_ERR_TIMEOUT;
	mov	dptr,#(_axradio_cb_receive + 0x0005)
	mov	a,#0x03
	movx	@dptr,a
	C$easyax5043.c$1326$3$589 ==.
;	..\COMMON\easyax5043.c:1326: if (axradio_sync_seqnr <= axradio_sync_slave_resyncloss) {
	mov	dptr,#_axradio_ack_seqnr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_axradio_sync_slave_resyncloss
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	clr	c
	subb	a,r7
	jc	00232$
	C$easyax5043.c$1327$4$594 ==.
;	..\COMMON\easyax5043.c:1327: wtimer_add_callback(&axradio_cb_receive.cb);
	mov	dptr,#_axradio_cb_receive
	lcall	_wtimer_add_callback
	C$easyax5043.c$1328$4$594 ==.
;	..\COMMON\easyax5043.c:1328: axradio_sync_slave_nextperiod();
	lcall	_axradio_sync_slave_nextperiod
	C$easyax5043.c$1329$4$594 ==.
;	..\COMMON\easyax5043.c:1329: axradio_syncstate = syncstate_slave_rxidle;
	mov	dptr,#_axradio_syncstate
	mov	a,#0x08
	movx	@dptr,a
	C$easyax5043.c$1330$4$594 ==.
;	..\COMMON\easyax5043.c:1330: wtimer_remove(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer_remove
	C$easyax5043.c$1332$5$594 ==.
;	..\COMMON\easyax5043.c:1332: uint8_t __autodata idx = axradio_sync_seqnr;
	mov	dptr,#_axradio_ack_seqnr
	movx	a,@dptr
	mov	r7,a
	C$easyax5043.c$1333$5$595 ==.
;	..\COMMON\easyax5043.c:1333: if (idx >= axradio_sync_slave_nrrx)
	mov	dptr,#_axradio_sync_slave_nrrx
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	clr	c
	mov	a,r7
	subb	a,r6
	jc	00230$
	C$easyax5043.c$1334$5$595 ==.
;	..\COMMON\easyax5043.c:1334: idx = axradio_sync_slave_nrrx - 1;
	mov	a,r6
	dec	a
	mov	r7,a
00230$:
	C$easyax5043.c$1335$5$595 ==.
;	..\COMMON\easyax5043.c:1335: axradio_sync_settimeradv(axradio_sync_slave_rxadvance[idx]);
	mov	a,r7
	mov	b,#0x04
	mul	ab
	add	a,#_axradio_sync_slave_rxadvance
	mov	dpl,a
	mov	a,#(_axradio_sync_slave_rxadvance >> 8)
	addc	a,b
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_axradio_sync_settimeradv
	C$easyax5043.c$1337$4$594 ==.
;	..\COMMON\easyax5043.c:1337: wtimer0_addabsolute(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer0_addabsolute
	C$easyax5043.c$1338$4$594 ==.
;	..\COMMON\easyax5043.c:1338: break;
	ljmp	00237$
00232$:
	C$easyax5043.c$1340$3$589 ==.
;	..\COMMON\easyax5043.c:1340: axradio_cb_receive.st.error = AXRADIO_ERR_RESYNC;
	mov	dptr,#(_axradio_cb_receive + 0x0005)
	mov	a,#0x09
	movx	@dptr,a
	C$easyax5043.c$1341$3$589 ==.
;	..\COMMON\easyax5043.c:1341: wtimer_add_callback(&axradio_cb_receive.cb);
	mov	dptr,#_axradio_cb_receive
	lcall	_wtimer_add_callback
	C$easyax5043.c$1342$3$589 ==.
;	..\COMMON\easyax5043.c:1342: ax5043_receiver_on_continuous();
	lcall	_ax5043_receiver_on_continuous
	C$easyax5043.c$1343$3$589 ==.
;	..\COMMON\easyax5043.c:1343: axradio_syncstate = syncstate_slave_synchunt;
	mov	dptr,#_axradio_syncstate
	mov	a,#0x06
	movx	@dptr,a
	C$easyax5043.c$1344$3$589 ==.
;	..\COMMON\easyax5043.c:1344: wtimer_remove(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer_remove
	C$easyax5043.c$1345$3$589 ==.
;	..\COMMON\easyax5043.c:1345: axradio_timer.time = axradio_sync_slave_syncwindow;
	mov	dptr,#_axradio_sync_slave_syncwindow
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r5,a
	mov	a,#0x02
	movc	a,@a+dptr
	mov	r6,a
	mov	a,#0x03
	movc	a,@a+dptr
	mov	r7,a
	mov	dptr,#(_axradio_timer + 0x0004)
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
	C$easyax5043.c$1346$3$589 ==.
;	..\COMMON\easyax5043.c:1346: wtimer0_addrelative(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer0_addrelative
	C$easyax5043.c$1347$3$589 ==.
;	..\COMMON\easyax5043.c:1347: axradio_sync_time = axradio_timer.time;
	mov	dptr,#(_axradio_timer + 0x0004)
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
	mov	dptr,#_axradio_sync_time
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
	C$easyax5043.c$1348$3$589 ==.
;	..\COMMON\easyax5043.c:1348: break;
	C$easyax5043.c$1350$3$589 ==.
;	..\COMMON\easyax5043.c:1350: case syncstate_slave_rxack:
	sjmp	00237$
00233$:
	C$easyax5043.c$1351$3$589 ==.
;	..\COMMON\easyax5043.c:1351: axradio_syncstate = syncstate_slave_rxidle;
	mov	dptr,#_axradio_syncstate
	mov	a,#0x08
	movx	@dptr,a
	C$easyax5043.c$1352$3$589 ==.
;	..\COMMON\easyax5043.c:1352: wtimer_remove(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer_remove
	C$easyax5043.c$1353$3$589 ==.
;	..\COMMON\easyax5043.c:1353: axradio_sync_settimeradv(axradio_sync_slave_rxadvance[1]);
	mov	dptr,#(_axradio_sync_slave_rxadvance + 0x0004)
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_axradio_sync_settimeradv
	C$easyax5043.c$1354$3$589 ==.
;	..\COMMON\easyax5043.c:1354: wtimer0_addabsolute(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer0_addabsolute
	C$easyax5043.c$1355$3$589 ==.
;	..\COMMON\easyax5043.c:1355: goto transmitack;
	ljmp	00134$
	C$easyax5043.c$1359$2$562 ==.
;	..\COMMON\easyax5043.c:1359: default:
00235$:
	C$easyax5043.c$1361$1$561 ==.
;	..\COMMON\easyax5043.c:1361: }
00237$:
	C$easyax5043.c$1362$1$561 ==.
	XFeasyax5043$axradio_timer_callback$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_callback_fwd'
;------------------------------------------------------------
;desc                      Allocated to registers r6 r7 
;------------------------------------------------------------
	Feasyax5043$axradio_callback_fwd$0$0 ==.
	C$easyax5043.c$1364$1$561 ==.
;	..\COMMON\easyax5043.c:1364: static __reentrantb void axradio_callback_fwd(struct wtimer_callback __xdata *desc) __reentrant
;	-----------------------------------------
;	 function axradio_callback_fwd
;	-----------------------------------------
_axradio_callback_fwd:
	mov	r6,dpl
	mov	r7,dph
	C$easyax5043.c$1366$1$597 ==.
;	..\COMMON\easyax5043.c:1366: axradio_statuschange((struct axradio_status __xdata *)(desc + 1));
	mov	a,#0x04
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	lcall	_axradio_statuschange
	C$easyax5043.c$1367$1$597 ==.
	XFeasyax5043$axradio_callback_fwd$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_receive_callback_fwd'
;------------------------------------------------------------
;desc                      Allocated to registers 
;len                       Allocated to registers r6 r7 
;len                       Allocated to registers r6 r7 
;seqnr                     Allocated to registers r6 
;len_byte                  Allocated to registers r6 
;trxst                     Allocated to registers r6 
;__00030023                Allocated to registers 
;crit                      Allocated to registers 
;crit                      Allocated to registers r7 
;__00040025                Allocated to registers 
;crit                      Allocated to registers 
;------------------------------------------------------------
	Feasyax5043$axradio_receive_callback_fwd$0$0 ==.
	C$easyax5043.c$1369$1$597 ==.
;	..\COMMON\easyax5043.c:1369: static void axradio_receive_callback_fwd(struct wtimer_callback __xdata *desc)
;	-----------------------------------------
;	 function axradio_receive_callback_fwd
;	-----------------------------------------
_axradio_receive_callback_fwd:
	C$easyax5043.c$1373$1$599 ==.
;	..\COMMON\easyax5043.c:1373: if (axradio_cb_receive.st.error != AXRADIO_ERR_NOERROR) {
	mov	dptr,#(_axradio_cb_receive + 0x0005)
	movx	a,@dptr
	jz	00102$
	C$easyax5043.c$1374$2$600 ==.
;	..\COMMON\easyax5043.c:1374: axradio_statuschange((struct axradio_status __xdata *)&axradio_cb_receive.st);
	mov	dptr,#(_axradio_cb_receive + 0x0004)
	lcall	_axradio_statuschange
	C$easyax5043.c$1375$2$600 ==.
;	..\COMMON\easyax5043.c:1375: return;
	ljmp	00193$
00102$:
	C$easyax5043.c$1377$1$599 ==.
;	..\COMMON\easyax5043.c:1377: if (axradio_phy_pn9 && !AXRADIO_MODE_IS_STREAM_RECEIVE(axradio_mode)) {
	mov	dptr,#_axradio_phy_pn9
	clr	a
	movc	a,@a+dptr
	jz	00104$
	mov	a,#0xf8
	anl	a,_axradio_mode
	mov	r7,a
	cjne	r7,#0x28,00299$
	sjmp	00104$
00299$:
	C$easyax5043.c$1378$2$601 ==.
;	..\COMMON\easyax5043.c:1378: uint16_t __autodata len = axradio_cb_receive.st.rx.pktlen;
	mov	dptr,#(_axradio_cb_receive + 0x0022)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	C$easyax5043.c$1379$2$601 ==.
;	..\COMMON\easyax5043.c:1379: len += axradio_framing_maclen;
	mov	dptr,#_axradio_framing_maclen
	clr	a
	movc	a,@a+dptr
	mov	r4,#0x00
	add	a,r6
	mov	r6,a
	mov	a,r4
	addc	a,r7
	mov	r7,a
	C$easyax5043.c$1380$2$601 ==.
;	..\COMMON\easyax5043.c:1380: pn9_buffer((__xdata uint8_t *)axradio_cb_receive.st.rx.mac.raw, len, 0x1ff, -(radio_read8(AX5043_REG_ENCODING) & 0x01));
	mov	dptr,#0x4011
	movx	a,@dptr
	mov	r5,a
	anl	ar5,#0x01
	clr	c
	clr	a
	subb	a,r5
	mov	r5,a
	mov	dptr,#(_axradio_cb_receive + 0x001e)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	r2,#0x00
	push	ar5
	mov	a,#0xff
	push	acc
	mov	a,#0x01
	push	acc
	push	ar6
	push	ar7
	mov	dpl,r3
	mov	dph,r4
	mov	b,r2
	lcall	_pn9_buffer
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
00104$:
	C$easyax5043.c$1382$1$599 ==.
;	..\COMMON\easyax5043.c:1382: if (axradio_framing_swcrclen && !AXRADIO_MODE_IS_STREAM_RECEIVE(axradio_mode)) {
	mov	dptr,#_axradio_framing_swcrclen
	clr	a
	movc	a,@a+dptr
	jz	00109$
	mov	a,#0xf8
	anl	a,_axradio_mode
	mov	r7,a
	cjne	r7,#0x28,00301$
	sjmp	00109$
00301$:
	C$easyax5043.c$1383$2$602 ==.
;	..\COMMON\easyax5043.c:1383: uint16_t __autodata len = axradio_cb_receive.st.rx.pktlen;
	mov	dptr,#(_axradio_cb_receive + 0x0022)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	C$easyax5043.c$1384$2$602 ==.
;	..\COMMON\easyax5043.c:1384: len += axradio_framing_maclen;
	mov	dptr,#_axradio_framing_maclen
	clr	a
	movc	a,@a+dptr
	mov	r4,#0x00
	add	a,r6
	mov	r6,a
	mov	a,r4
	addc	a,r7
	mov	r7,a
	C$easyax5043.c$1385$2$602 ==.
;	..\COMMON\easyax5043.c:1385: len = axradio_framing_check_crc((uint8_t __xdata *)axradio_cb_receive.st.rx.mac.raw, len);
	mov	dptr,#(_axradio_cb_receive + 0x001e)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	push	ar6
	push	ar7
	mov	dpl,r4
	mov	dph,r5
	lcall	_axradio_framing_check_crc
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	C$easyax5043.c$1386$2$602 ==.
;	..\COMMON\easyax5043.c:1386: if (!len)
	mov	a,r6
	orl	a,r7
	jnz	00302$
	ljmp	00171$
00302$:
	C$easyax5043.c$1389$2$602 ==.
;	..\COMMON\easyax5043.c:1389: len -= axradio_framing_maclen;
	mov	dptr,#_axradio_framing_maclen
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	r4,#0x00
	mov	a,r6
	clr	c
	subb	a,r5
	mov	r6,a
	mov	a,r7
	subb	a,r4
	mov	r7,a
	C$easyax5043.c$1390$2$602 ==.
;	..\COMMON\easyax5043.c:1390: len -= axradio_framing_swcrclen; // drop crc
	mov	dptr,#_axradio_framing_swcrclen
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	r4,#0x00
	mov	a,r6
	clr	c
	subb	a,r5
	mov	r6,a
	mov	a,r7
	subb	a,r4
	mov	r7,a
	C$easyax5043.c$1391$2$602 ==.
;	..\COMMON\easyax5043.c:1391: axradio_cb_receive.st.rx.pktlen = len;
	mov	dptr,#(_axradio_cb_receive + 0x0022)
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00109$:
	C$easyax5043.c$1395$1$599 ==.
;	..\COMMON\easyax5043.c:1395: axradio_cb_receive.st.rx.phy.timeoffset = 0;
	mov	dptr,#(_axradio_cb_receive + 0x0010)
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1396$1$599 ==.
;	..\COMMON\easyax5043.c:1396: axradio_cb_receive.st.rx.phy.period = 0;
	mov	dptr,#(_axradio_cb_receive + 0x0012)
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1397$1$599 ==.
;	..\COMMON\easyax5043.c:1397: if (axradio_mode == AXRADIO_MODE_ACK_TRANSMIT ||
	mov	a,#0x12
	cjne	a,_axradio_mode,00303$
	sjmp	00113$
00303$:
	C$easyax5043.c$1398$1$599 ==.
;	..\COMMON\easyax5043.c:1398: axradio_mode == AXRADIO_MODE_WOR_ACK_TRANSMIT ||
	mov	a,#0x13
	cjne	a,_axradio_mode,00304$
	sjmp	00113$
00304$:
	C$easyax5043.c$1399$1$599 ==.
;	..\COMMON\easyax5043.c:1399: axradio_mode == AXRADIO_MODE_SYNC_ACK_MASTER) {
	mov	a,#0x31
	cjne	a,_axradio_mode,00114$
00113$:
	C$easyax5043.c$1400$2$603 ==.
;	..\COMMON\easyax5043.c:1400: ax5043_off();
	lcall	_ax5043_off
	C$easyax5043.c$1401$2$603 ==.
;	..\COMMON\easyax5043.c:1401: wtimer_remove(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer_remove
	C$easyax5043.c$1402$2$603 ==.
;	..\COMMON\easyax5043.c:1402: if (axradio_mode == AXRADIO_MODE_SYNC_ACK_MASTER) {
	mov	a,#0x31
	cjne	a,_axradio_mode,00112$
	C$easyax5043.c$1403$3$604 ==.
;	..\COMMON\easyax5043.c:1403: axradio_syncstate = syncstate_master_normal;
	mov	dptr,#_axradio_syncstate
	mov	a,#0x03
	movx	@dptr,a
	C$easyax5043.c$1404$3$604 ==.
;	..\COMMON\easyax5043.c:1404: axradio_sync_settimeradv(axradio_sync_xoscstartup);
	mov	dptr,#_axradio_sync_xoscstartup
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r5,a
	mov	a,#0x02
	movc	a,@a+dptr
	mov	r6,a
	mov	a,#0x03
	movc	a,@a+dptr
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_axradio_sync_settimeradv
	C$easyax5043.c$1405$3$604 ==.
;	..\COMMON\easyax5043.c:1405: wtimer0_addabsolute(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer0_addabsolute
00112$:
	C$easyax5043.c$1407$2$603 ==.
;	..\COMMON\easyax5043.c:1407: wtimer_remove_callback(&axradio_cb_transmitend.cb);
	mov	dptr,#_axradio_cb_transmitend
	lcall	_wtimer_remove_callback
	C$easyax5043.c$1408$2$603 ==.
;	..\COMMON\easyax5043.c:1408: axradio_cb_transmitend.st.error = AXRADIO_ERR_NOERROR;
	mov	dptr,#(_axradio_cb_transmitend + 0x0005)
	clr	a
	movx	@dptr,a
	C$easyax5043.c$1409$2$603 ==.
;	..\COMMON\easyax5043.c:1409: axradio_cb_transmitend.st.time.t = radio_read24(AX5043_REG_TIMER2);
	mov	dptr,#0x0059
	lcall	_radio_read24
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	dptr,#(_axradio_cb_transmitend + 0x0006)
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
	C$easyax5043.c$1410$2$603 ==.
;	..\COMMON\easyax5043.c:1410: wtimer_add_callback(&axradio_cb_transmitend.cb);
	mov	dptr,#_axradio_cb_transmitend
	lcall	_wtimer_add_callback
00114$:
	C$easyax5043.c$1412$1$599 ==.
;	..\COMMON\easyax5043.c:1412: if (axradio_framing_destaddrpos != 0xff)
	mov	dptr,#_axradio_framing_destaddrpos
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	cjne	r7,#0xff,00309$
	sjmp	00118$
00309$:
	C$easyax5043.c$1413$1$599 ==.
;	..\COMMON\easyax5043.c:1413: memcpy_xdata(&axradio_cb_receive.st.rx.mac.localaddr, &axradio_cb_receive.st.rx.mac.raw[axradio_framing_destaddrpos], axradio_framing_addrlen);
	mov	dptr,#(_axradio_cb_receive + 0x001e)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,r7
	add	a,r5
	mov	r7,a
	clr	a
	addc	a,r6
	mov	r4,a
	mov	_memcpy_PARM_2,r7
	mov	(_memcpy_PARM_2 + 1),r4
	mov	(_memcpy_PARM_2 + 2),#0x00
	mov	dptr,#_axradio_framing_addrlen
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	_memcpy_PARM_3,r7
	mov	(_memcpy_PARM_3 + 1),#0x00
	mov	dptr,#(_axradio_cb_receive + 0x0019)
	mov	b,#0x00
	lcall	_memcpy
00118$:
	C$easyax5043.c$1414$1$599 ==.
;	..\COMMON\easyax5043.c:1414: if (axradio_framing_sourceaddrpos != 0xff)
	mov	dptr,#_axradio_framing_sourceaddrpos
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	cjne	r7,#0xff,00310$
	sjmp	00120$
00310$:
	C$easyax5043.c$1415$1$599 ==.
;	..\COMMON\easyax5043.c:1415: memcpy_xdata(&axradio_cb_receive.st.rx.mac.remoteaddr, &axradio_cb_receive.st.rx.mac.raw[axradio_framing_sourceaddrpos], axradio_framing_addrlen);
	mov	dptr,#(_axradio_cb_receive + 0x001e)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,r7
	add	a,r5
	mov	r7,a
	clr	a
	addc	a,r6
	mov	r4,a
	mov	_memcpy_PARM_2,r7
	mov	(_memcpy_PARM_2 + 1),r4
	mov	(_memcpy_PARM_2 + 2),#0x00
	mov	dptr,#_axradio_framing_addrlen
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	_memcpy_PARM_3,r7
	mov	(_memcpy_PARM_3 + 1),#0x00
	mov	dptr,#(_axradio_cb_receive + 0x0014)
	mov	b,#0x00
	lcall	_memcpy
00120$:
	C$easyax5043.c$1416$1$599 ==.
;	..\COMMON\easyax5043.c:1416: if (axradio_mode == AXRADIO_MODE_ACK_RECEIVE ||
	mov	a,#0x22
	cjne	a,_axradio_mode,00311$
	sjmp	00154$
00311$:
	C$easyax5043.c$1417$1$599 ==.
;	..\COMMON\easyax5043.c:1417: axradio_mode == AXRADIO_MODE_WOR_ACK_RECEIVE ||
	mov	a,#0x23
	cjne	a,_axradio_mode,00312$
	sjmp	00154$
00312$:
	C$easyax5043.c$1418$1$599 ==.
;	..\COMMON\easyax5043.c:1418: axradio_mode == AXRADIO_MODE_SYNC_ACK_SLAVE) {
	mov	a,#0x33
	cjne	a,_axradio_mode,00313$
	sjmp	00314$
00313$:
	ljmp	00155$
00314$:
00154$:
	C$easyax5043.c$1419$2$605 ==.
;	..\COMMON\easyax5043.c:1419: axradio_ack_count = 0;
	mov	dptr,#_axradio_ack_count
	clr	a
	movx	@dptr,a
	C$easyax5043.c$1420$2$605 ==.
;	..\COMMON\easyax5043.c:1420: axradio_txbuffer_len = axradio_framing_maclen + axradio_framing_minpayloadlen;
	mov	dptr,#_axradio_framing_maclen
;	genFromRTrack removed	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	r5,a
	mov	r6,#0x00
	mov	dptr,#_axradio_framing_minpayloadlen
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	r3,#0x00
	mov	dptr,#_axradio_txbuffer_len
	mov	a,r4
	add	a,r5
	movx	@dptr,a
	mov	a,r3
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1421$2$605 ==.
;	..\COMMON\easyax5043.c:1421: memset_xdata(axradio_txbuffer, 0, axradio_framing_maclen);
	mov	_memset_PARM_3,r7
;	1-genFromRTrack replaced	mov	(_memset_PARM_3 + 1),#0x00
	mov	(_memset_PARM_3 + 1),r6
;	1-genFromRTrack replaced	mov	_memset_PARM_2,#0x00
	mov	_memset_PARM_2,r6
	mov	dptr,#_axradio_txbuffer
	mov	b,#0x00
	lcall	_memset
	C$easyax5043.c$1422$2$605 ==.
;	..\COMMON\easyax5043.c:1422: if (axradio_framing_ack_seqnrpos != 0xff) {
	mov	dptr,#_axradio_framing_ack_seqnrpos
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	cjne	r7,#0xff,00315$
	sjmp	00125$
00315$:
	C$easyax5043.c$1423$3$606 ==.
;	..\COMMON\easyax5043.c:1423: uint8_t seqnr = axradio_cb_receive.st.rx.mac.raw[axradio_framing_ack_seqnrpos];
	mov	dptr,#(_axradio_cb_receive + 0x001e)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,r7
	add	a,r5
	mov	dpl,a
	clr	a
	addc	a,r6
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	C$easyax5043.c$1424$3$606 ==.
;	..\COMMON\easyax5043.c:1424: axradio_txbuffer[axradio_framing_ack_seqnrpos] = seqnr;
	mov	a,r7
	add	a,#_axradio_txbuffer
	mov	dpl,a
	clr	a
	addc	a,#(_axradio_txbuffer >> 8)
	mov	dph,a
	mov	a,r6
	movx	@dptr,a
	C$easyax5043.c$1425$3$606 ==.
;	..\COMMON\easyax5043.c:1425: if (axradio_ack_seqnr != seqnr)
	mov	dptr,#_axradio_ack_seqnr
	movx	a,@dptr
	mov	r7,a
	cjne	a,ar6,00316$
	sjmp	00122$
00316$:
	C$easyax5043.c$1426$3$606 ==.
;	..\COMMON\easyax5043.c:1426: axradio_ack_seqnr = seqnr;
	mov	dptr,#_axradio_ack_seqnr
	mov	a,r6
	movx	@dptr,a
	sjmp	00125$
00122$:
	C$easyax5043.c$1428$3$606 ==.
;	..\COMMON\easyax5043.c:1428: axradio_cb_receive.st.error = AXRADIO_ERR_RETRANSMISSION;
	mov	dptr,#(_axradio_cb_receive + 0x0005)
	mov	a,#0x08
	movx	@dptr,a
00125$:
	C$easyax5043.c$1430$2$605 ==.
;	..\COMMON\easyax5043.c:1430: if (axradio_framing_destaddrpos != 0xff) {
	mov	dptr,#_axradio_framing_destaddrpos
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	cjne	r7,#0xff,00317$
	sjmp	00130$
00317$:
	C$easyax5043.c$1431$3$607 ==.
;	..\COMMON\easyax5043.c:1431: if (axradio_framing_sourceaddrpos != 0xff)
	mov	dptr,#_axradio_framing_sourceaddrpos
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	cjne	r6,#0xff,00318$
	sjmp	00127$
00318$:
	C$easyax5043.c$1432$3$607 ==.
;	..\COMMON\easyax5043.c:1432: memcpy_xdata(&axradio_txbuffer[axradio_framing_destaddrpos], &axradio_cb_receive.st.rx.mac.remoteaddr, axradio_framing_addrlen);
	mov	a,r7
	add	a,#_axradio_txbuffer
	mov	r5,a
	clr	a
	addc	a,#(_axradio_txbuffer >> 8)
	mov	r6,a
	mov	r4,#0x00
	mov	_memcpy_PARM_2,#(_axradio_cb_receive + 0x0014)
	mov	(_memcpy_PARM_2 + 1),#((_axradio_cb_receive + 0x0014) >> 8)
;	1-genFromRTrack replaced	mov	(_memcpy_PARM_2 + 2),#0x00
	mov	(_memcpy_PARM_2 + 2),r4
	mov	dptr,#_axradio_framing_addrlen
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	mov	_memcpy_PARM_3,r3
;	1-genFromRTrack replaced	mov	(_memcpy_PARM_3 + 1),#0x00
	mov	(_memcpy_PARM_3 + 1),r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r4
	lcall	_memcpy
	sjmp	00130$
00127$:
	C$easyax5043.c$1434$3$607 ==.
;	..\COMMON\easyax5043.c:1434: memcpy_xdata(&axradio_txbuffer[axradio_framing_destaddrpos], &axradio_default_remoteaddr, axradio_framing_addrlen);
	mov	a,r7
	add	a,#_axradio_txbuffer
	mov	r7,a
	clr	a
	addc	a,#(_axradio_txbuffer >> 8)
	mov	r6,a
	mov	r5,#0x00
	mov	_memcpy_PARM_2,#_axradio_default_remoteaddr
	mov	(_memcpy_PARM_2 + 1),#(_axradio_default_remoteaddr >> 8)
;	1-genFromRTrack replaced	mov	(_memcpy_PARM_2 + 2),#0x00
	mov	(_memcpy_PARM_2 + 2),r5
	mov	dptr,#_axradio_framing_addrlen
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	_memcpy_PARM_3,r4
;	1-genFromRTrack replaced	mov	(_memcpy_PARM_3 + 1),#0x00
	mov	(_memcpy_PARM_3 + 1),r5
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	_memcpy
00130$:
	C$easyax5043.c$1436$2$605 ==.
;	..\COMMON\easyax5043.c:1436: if (axradio_framing_sourceaddrpos != 0xff)
	mov	dptr,#_axradio_framing_sourceaddrpos
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	cjne	r7,#0xff,00319$
	sjmp	00132$
00319$:
	C$easyax5043.c$1437$2$605 ==.
;	..\COMMON\easyax5043.c:1437: memcpy_xdata(&axradio_txbuffer[axradio_framing_sourceaddrpos], &axradio_localaddr.addr, axradio_framing_addrlen);
	mov	a,r7
	add	a,#_axradio_txbuffer
	mov	r7,a
	clr	a
	addc	a,#(_axradio_txbuffer >> 8)
	mov	r6,a
	mov	r5,#0x00
	mov	_memcpy_PARM_2,#_axradio_localaddr
	mov	(_memcpy_PARM_2 + 1),#(_axradio_localaddr >> 8)
;	1-genFromRTrack replaced	mov	(_memcpy_PARM_2 + 2),#0x00
	mov	(_memcpy_PARM_2 + 2),r5
	mov	dptr,#_axradio_framing_addrlen
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	_memcpy_PARM_3,r4
;	1-genFromRTrack replaced	mov	(_memcpy_PARM_3 + 1),#0x00
	mov	(_memcpy_PARM_3 + 1),r5
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	_memcpy
00132$:
	C$easyax5043.c$1438$2$605 ==.
;	..\COMMON\easyax5043.c:1438: if (axradio_framing_lenmask) {
	mov	dptr,#_axradio_framing_lenmask
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	jz	00134$
	C$easyax5043.c$1439$3$608 ==.
;	..\COMMON\easyax5043.c:1439: uint8_t len_byte = (uint8_t)(axradio_txbuffer_len - axradio_framing_lenoffs) & axradio_framing_lenmask; // if you prefer not counting the len byte itself, set LENOFFS = 1
	mov	dptr,#_axradio_txbuffer_len
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	dptr,#_axradio_framing_lenoffs
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	a,r5
	clr	c
	subb	a,r6
	anl	a,r7
	mov	r6,a
	C$easyax5043.c$1440$3$608 ==.
;	..\COMMON\easyax5043.c:1440: axradio_txbuffer[axradio_framing_lenpos] = (axradio_txbuffer[axradio_framing_lenpos] & (uint8_t)~axradio_framing_lenmask) | len_byte;
	mov	dptr,#_axradio_framing_lenpos
	clr	a
	movc	a,@a+dptr
	add	a,#_axradio_txbuffer
	mov	r5,a
	clr	a
	addc	a,#(_axradio_txbuffer >> 8)
	mov	r4,a
	mov	dpl,r5
	mov	dph,r4
	movx	a,@dptr
	mov	r3,a
	mov	a,r7
	cpl	a
	mov	r7,a
	anl	a,r3
	orl	ar6,a
	mov	dpl,r5
	mov	dph,r4
	mov	a,r6
	movx	@dptr,a
00134$:
	C$easyax5043.c$1442$2$605 ==.
;	..\COMMON\easyax5043.c:1442: if (axradio_framing_swcrclen)
	mov	dptr,#_axradio_framing_swcrclen
	clr	a
	movc	a,@a+dptr
	jz	00136$
	C$easyax5043.c$1443$2$605 ==.
;	..\COMMON\easyax5043.c:1443: axradio_txbuffer_len = axradio_framing_append_crc(axradio_txbuffer, axradio_txbuffer_len);
	mov	dptr,#_axradio_txbuffer_len
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dptr,#_axradio_txbuffer
	lcall	_axradio_framing_append_crc
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	mov	dptr,#_axradio_txbuffer_len
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00136$:
	C$easyax5043.c$1444$2$605 ==.
;	..\COMMON\easyax5043.c:1444: if (axradio_phy_pn9) {
	mov	dptr,#_axradio_phy_pn9
	clr	a
	movc	a,@a+dptr
	jz	00139$
	C$easyax5043.c$1445$3$609 ==.
;	..\COMMON\easyax5043.c:1445: pn9_buffer(axradio_txbuffer, axradio_txbuffer_len, 0x1ff, -(radio_read8(AX5043_REG_ENCODING) & 0x01));
	mov	dptr,#0x4011
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0x01
	clr	c
	clr	a
	subb	a,r7
	mov	r7,a
	push	ar7
	mov	a,#0xff
	push	acc
	mov	a,#0x01
	push	acc
	mov	dptr,#_axradio_txbuffer_len
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dptr,#_axradio_txbuffer
	mov	b,#0x00
	lcall	_pn9_buffer
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	C$easyax5043.c$1447$2$605 ==.
;	..\COMMON\easyax5043.c:1447: radio_write8(AX5043_REG_IRQMASK1, 0x00);
00139$:
	mov	dptr,#0x4006
	clr	a
	movx	@dptr,a
	C$easyax5043.c$1448$3$611 ==.
;	..\COMMON\easyax5043.c:1448: radio_write8(AX5043_REG_IRQMASK0, 0x00);
	mov	dptr,#0x4007
	movx	@dptr,a
	C$easyax5043.c$1449$3$612 ==.
;	..\COMMON\easyax5043.c:1449: radio_write8(AX5043_REG_PWRMODE, AX5043_PWRSTATE_XTAL_ON);
	mov	dptr,#0x4002
	mov	a,#0x05
	movx	@dptr,a
	C$easyax5043.c$1450$3$613 ==.
;	..\COMMON\easyax5043.c:1450: radio_write8(AX5043_REG_FIFOSTAT, 3);
	mov	dptr,#0x4028
	mov	a,#0x03
	movx	@dptr,a
	C$easyax5043.c$1451$2$605 ==.
;	..\COMMON\easyax5043.c:1451: axradio_trxstate = trxstate_tx_longpreamble; // ensure that trxstate != off, otherwise we would prematurely enable the receiver, see below
	mov	_axradio_trxstate,#0x0a
	C$easyax5043.c$1452$2$605 ==.
;	..\COMMON\easyax5043.c:1452: while (radio_read8(AX5043_REG_POWSTAT) & 0x08);
00151$:
	mov	dptr,#0x4003
	movx	a,@dptr
	mov	r7,a
	jb	acc.3,00151$
	C$easyax5043.c$1453$2$605 ==.
;	..\COMMON\easyax5043.c:1453: wtimer_remove(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer_remove
	C$easyax5043.c$1454$2$605 ==.
;	..\COMMON\easyax5043.c:1454: axradio_timer.time = axradio_framing_ack_delay;
	mov	dptr,#_axradio_framing_ack_delay
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r5,a
	mov	a,#0x02
	movc	a,@a+dptr
	mov	r6,a
	mov	a,#0x03
	movc	a,@a+dptr
	mov	r7,a
	mov	dptr,#(_axradio_timer + 0x0004)
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
	C$easyax5043.c$1455$2$605 ==.
;	..\COMMON\easyax5043.c:1455: wtimer1_addrelative(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer1_addrelative
00155$:
	C$easyax5043.c$1457$1$599 ==.
;	..\COMMON\easyax5043.c:1457: if (axradio_mode == AXRADIO_MODE_SYNC_SLAVE ||
	mov	a,#0x32
	cjne	a,_axradio_mode,00324$
	sjmp	00168$
00324$:
	C$easyax5043.c$1458$1$599 ==.
;	..\COMMON\easyax5043.c:1458: axradio_mode == AXRADIO_MODE_SYNC_ACK_SLAVE) {
	mov	a,#0x33
	cjne	a,_axradio_mode,00325$
	sjmp	00326$
00325$:
	ljmp	00169$
00326$:
00168$:
	C$easyax5043.c$1459$2$614 ==.
;	..\COMMON\easyax5043.c:1459: if (axradio_mode != AXRADIO_MODE_SYNC_ACK_SLAVE)
	mov	a,#0x33
	cjne	a,_axradio_mode,00327$
	sjmp	00159$
00327$:
	C$easyax5043.c$1460$2$614 ==.
;	..\COMMON\easyax5043.c:1460: ax5043_off();
	lcall	_ax5043_off
00159$:
	C$easyax5043.c$1461$2$614 ==.
;	..\COMMON\easyax5043.c:1461: switch (axradio_syncstate) {
	mov	dptr,#_axradio_syncstate
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x08,00328$
	sjmp	00163$
00328$:
	cjne	r7,#0x0a,00329$
	sjmp	00163$
00329$:
	cjne	r7,#0x0b,00330$
	sjmp	00163$
00330$:
	C$easyax5043.c$1465$3$615 ==.
;	..\COMMON\easyax5043.c:1465: axradio_sync_time = axradio_conv_time_totimer0(axradio_cb_receive.st.time.t);
	mov	dptr,#(_axradio_cb_receive + 0x0006)
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
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_axradio_conv_time_totimer0
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	dptr,#_axradio_sync_time
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
	C$easyax5043.c$1466$3$615 ==.
;	..\COMMON\easyax5043.c:1466: axradio_sync_periodcorr = -32768;
	mov	dptr,#_axradio_sync_periodcorr
	clr	a
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1467$3$615 ==.
;	..\COMMON\easyax5043.c:1467: axradio_sync_seqnr = 0;
	mov	dptr,#_axradio_ack_seqnr
	clr	a
	movx	@dptr,a
	C$easyax5043.c$1468$3$615 ==.
;	..\COMMON\easyax5043.c:1468: break;
	C$easyax5043.c$1472$3$615 ==.
;	..\COMMON\easyax5043.c:1472: case syncstate_slave_rxpacket:
	sjmp	00164$
00163$:
	C$easyax5043.c$1473$3$615 ==.
;	..\COMMON\easyax5043.c:1473: axradio_sync_adjustperiodcorr();
	lcall	_axradio_sync_adjustperiodcorr
	C$easyax5043.c$1474$3$615 ==.
;	..\COMMON\easyax5043.c:1474: axradio_cb_receive.st.rx.phy.period = axradio_sync_periodcorr >> SYNC_K1;
	mov	dptr,#_axradio_sync_periodcorr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	swap	a
	rr	a
	xch	a,r6
	swap	a
	rr	a
	anl	a,#0x07
	xrl	a,r6
	xch	a,r6
	anl	a,#0x07
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	jnb	acc.2,00331$
	orl	a,#0xf8
00331$:
	mov	r7,a
	mov	dptr,#(_axradio_cb_receive + 0x0012)
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1475$3$615 ==.
;	..\COMMON\easyax5043.c:1475: axradio_sync_seqnr = 1;
	mov	dptr,#_axradio_ack_seqnr
	mov	a,#0x01
	movx	@dptr,a
	C$easyax5043.c$1477$2$614 ==.
;	..\COMMON\easyax5043.c:1477: };
00164$:
	C$easyax5043.c$1478$2$614 ==.
;	..\COMMON\easyax5043.c:1478: axradio_sync_slave_nextperiod();
	lcall	_axradio_sync_slave_nextperiod
	C$easyax5043.c$1479$2$614 ==.
;	..\COMMON\easyax5043.c:1479: if (axradio_mode != AXRADIO_MODE_SYNC_ACK_SLAVE) {
	mov	a,#0x33
	cjne	a,_axradio_mode,00332$
	sjmp	00166$
00332$:
	C$easyax5043.c$1480$3$616 ==.
;	..\COMMON\easyax5043.c:1480: axradio_syncstate = syncstate_slave_rxidle;
	mov	dptr,#_axradio_syncstate
	mov	a,#0x08
	movx	@dptr,a
	C$easyax5043.c$1481$3$616 ==.
;	..\COMMON\easyax5043.c:1481: wtimer_remove(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer_remove
	C$easyax5043.c$1482$3$616 ==.
;	..\COMMON\easyax5043.c:1482: axradio_sync_settimeradv(axradio_sync_slave_rxadvance[axradio_sync_seqnr]);
	mov	dptr,#_axradio_ack_seqnr
	movx	a,@dptr
	mov	b,#0x04
	mul	ab
	add	a,#_axradio_sync_slave_rxadvance
	mov	dpl,a
	mov	a,#(_axradio_sync_slave_rxadvance >> 8)
	addc	a,b
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_axradio_sync_settimeradv
	C$easyax5043.c$1483$3$616 ==.
;	..\COMMON\easyax5043.c:1483: wtimer0_addabsolute(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer0_addabsolute
	sjmp	00169$
00166$:
	C$easyax5043.c$1485$3$617 ==.
;	..\COMMON\easyax5043.c:1485: axradio_syncstate = syncstate_slave_rxack;
	mov	dptr,#_axradio_syncstate
	mov	a,#0x0c
	movx	@dptr,a
00169$:
	C$easyax5043.c$1488$1$599 ==.
;	..\COMMON\easyax5043.c:1488: axradio_statuschange((struct axradio_status __xdata *)&axradio_cb_receive.st);
	mov	dptr,#(_axradio_cb_receive + 0x0004)
	lcall	_axradio_statuschange
	C$easyax5043.c$1489$1$599 ==.
;	..\COMMON\easyax5043.c:1489: endcb:
00171$:
	C$easyax5043.c$1490$1$599 ==.
;	..\COMMON\easyax5043.c:1490: if (axradio_mode == AXRADIO_MODE_WOR_RECEIVE) {
	mov	a,#0x21
	cjne	a,_axradio_mode,00189$
	C$easyax5043.c$1491$2$618 ==.
;	..\COMMON\easyax5043.c:1491: ax5043_receiver_on_wor();
	lcall	_ax5043_receiver_on_wor
	sjmp	00193$
00189$:
	C$easyax5043.c$1492$1$599 ==.
;	..\COMMON\easyax5043.c:1492: } else if (axradio_mode == AXRADIO_MODE_ACK_RECEIVE ||
	mov	a,#0x22
	cjne	a,_axradio_mode,00335$
	sjmp	00184$
00335$:
	C$easyax5043.c$1493$1$599 ==.
;	..\COMMON\easyax5043.c:1493: axradio_mode == AXRADIO_MODE_WOR_ACK_RECEIVE) {
	mov	a,#0x23
	cjne	a,_axradio_mode,00185$
00184$:
	C$libmftypes.h$351$6$627 ==.
;	C:/Program Files (x86)/ON Semiconductor/AXSDB/libmf/include/libmftypes.h:351: criticalsection_t crit = IE & 0x80;
	mov	a,#0x80
	anl	a,_IE
	mov	r7,a
	C$easyax5043.c$1496$6$627 ==.
;	..\COMMON\easyax5043.c:1496: criticalsection_t crit = enter_critical();
	clr	_EA
	C$easyax5043.c$1497$3$620 ==.
;	..\COMMON\easyax5043.c:1497: trxst = axradio_trxstate;
	mov	r6,_axradio_trxstate
	C$easyax5043.c$1498$3$620 ==.
;	..\COMMON\easyax5043.c:1498: axradio_cb_receive.st.error = AXRADIO_ERR_PACKETDONE;
	mov	dptr,#(_axradio_cb_receive + 0x0005)
	mov	a,#0xf0
	movx	@dptr,a
	C$libmftypes.h$358$6$630 ==.
;	C:/Program Files (x86)/ON Semiconductor/AXSDB/libmf/include/libmftypes.h:358: IE |= crit;
	mov	a,r7
	orl	_IE,a
	C$easyax5043.c$1501$2$619 ==.
;	..\COMMON\easyax5043.c:1501: if (trxst == trxstate_off) {
	mov	a,r6
	jnz	00193$
	C$easyax5043.c$1502$3$621 ==.
;	..\COMMON\easyax5043.c:1502: if (axradio_mode == AXRADIO_MODE_WOR_ACK_RECEIVE)
	mov	a,#0x23
	cjne	a,_axradio_mode,00173$
	C$easyax5043.c$1503$3$621 ==.
;	..\COMMON\easyax5043.c:1503: ax5043_receiver_on_wor();
	lcall	_ax5043_receiver_on_wor
	sjmp	00193$
00173$:
	C$easyax5043.c$1505$3$621 ==.
;	..\COMMON\easyax5043.c:1505: ax5043_receiver_on_continuous();
	lcall	_ax5043_receiver_on_continuous
	sjmp	00193$
00185$:
	C$easyax5043.c$1508$2$622 ==.
;	..\COMMON\easyax5043.c:1508: switch (axradio_trxstate) {
	mov	r7,_axradio_trxstate
	cjne	r7,#0x01,00341$
	sjmp	00179$
00341$:
	cjne	r7,#0x02,00193$
	C$easyax5043.c$1511$3$623 ==.
;	..\COMMON\easyax5043.c:1511: radio_write8(AX5043_REG_IRQMASK0, (radio_read8(AX5043_REG_IRQMASK0) | 0x01)); // re-enable FIFO not empty irq
00179$:
	mov	dptr,#0x4007
	movx	a,@dptr
	orl	a,#0x01
	mov	r7,a
	movx	@dptr,a
	C$easyax5043.c$1516$1$599 ==.
;	..\COMMON\easyax5043.c:1516: }
00193$:
	C$easyax5043.c$1518$1$599 ==.
	XFeasyax5043$axradio_receive_callback_fwd$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_killallcb'
;------------------------------------------------------------
	Feasyax5043$axradio_killallcb$0$0 ==.
	C$easyax5043.c$1520$1$599 ==.
;	..\COMMON\easyax5043.c:1520: static void axradio_killallcb(void)
;	-----------------------------------------
;	 function axradio_killallcb
;	-----------------------------------------
_axradio_killallcb:
	C$easyax5043.c$1522$1$632 ==.
;	..\COMMON\easyax5043.c:1522: wtimer_remove_callback(&axradio_cb_receive.cb);
	mov	dptr,#_axradio_cb_receive
	lcall	_wtimer_remove_callback
	C$easyax5043.c$1523$1$632 ==.
;	..\COMMON\easyax5043.c:1523: wtimer_remove_callback(&axradio_cb_receivesfd.cb);
	mov	dptr,#_axradio_cb_receivesfd
	lcall	_wtimer_remove_callback
	C$easyax5043.c$1524$1$632 ==.
;	..\COMMON\easyax5043.c:1524: wtimer_remove_callback(&axradio_cb_channelstate.cb);
	mov	dptr,#_axradio_cb_channelstate
	lcall	_wtimer_remove_callback
	C$easyax5043.c$1525$1$632 ==.
;	..\COMMON\easyax5043.c:1525: wtimer_remove_callback(&axradio_cb_transmitstart.cb);
	mov	dptr,#_axradio_cb_transmitstart
	lcall	_wtimer_remove_callback
	C$easyax5043.c$1526$1$632 ==.
;	..\COMMON\easyax5043.c:1526: wtimer_remove_callback(&axradio_cb_transmitend.cb);
	mov	dptr,#_axradio_cb_transmitend
	lcall	_wtimer_remove_callback
	C$easyax5043.c$1527$1$632 ==.
;	..\COMMON\easyax5043.c:1527: wtimer_remove_callback(&axradio_cb_transmitdata.cb);
	mov	dptr,#_axradio_cb_transmitdata
	lcall	_wtimer_remove_callback
	C$easyax5043.c$1528$1$632 ==.
;	..\COMMON\easyax5043.c:1528: wtimer_remove(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer_remove
	C$easyax5043.c$1529$1$632 ==.
	XFeasyax5043$axradio_killallcb$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_tunevoltage'
;------------------------------------------------------------
;r                         Allocated to registers r6 r7 
;cnt                       Allocated to registers r5 
;x                         Allocated to registers r4 r3 
;------------------------------------------------------------
	Feasyax5043$axradio_tunevoltage$0$0 ==.
	C$easyax5043.c$1555$1$632 ==.
;	..\COMMON\easyax5043.c:1555: static int16_t axradio_tunevoltage(void)
;	-----------------------------------------
;	 function axradio_tunevoltage
;	-----------------------------------------
_axradio_tunevoltage:
	C$easyax5043.c$1557$1$632 ==.
;	..\COMMON\easyax5043.c:1557: int16_t __autodata r = 0;
	mov	r6,#0x00
	mov	r7,#0x00
	C$easyax5043.c$1560$1$634 ==.
;	..\COMMON\easyax5043.c:1560: radio_write8(AX5043_REG_GPADCCTRL, 0x84);
	mov	r5,#0x40
00101$:
	mov	dptr,#0x4300
	mov	a,#0x84
	movx	@dptr,a
	C$easyax5043.c$1561$2$635 ==.
;	..\COMMON\easyax5043.c:1561: do {} while (radio_read8(AX5043_REG_GPADCCTRL) & 0x80);
00104$:
	mov	dptr,#0x4300
	movx	a,@dptr
	mov	r4,a
	jb	acc.7,00104$
	C$easyax5043.c$1562$1$634 ==.
;	..\COMMON\easyax5043.c:1562: } while (--cnt);
	djnz	r5,00101$
	C$easyax5043.c$1565$1$634 ==.
;	..\COMMON\easyax5043.c:1565: radio_write8(AX5043_REG_GPADCCTRL, 0x84);
	mov	r5,#0x20
00109$:
	mov	dptr,#0x4300
	mov	a,#0x84
	movx	@dptr,a
	C$easyax5043.c$1566$2$638 ==.
;	..\COMMON\easyax5043.c:1566: do {} while (radio_read8(AX5043_REG_GPADCCTRL) & 0x80);
00112$:
	mov	dptr,#0x4300
	movx	a,@dptr
	mov	r4,a
	jb	acc.7,00112$
	C$easyax5043.c$1568$3$641 ==.
;	..\COMMON\easyax5043.c:1568: int16_t x = radio_read8(AX5043_REG_GPADC13VALUE1) & 0x03;
	mov	dptr,#0x4308
	movx	a,@dptr
	mov	r4,a
	anl	ar4,#0x03
	C$easyax5043.c$1569$3$641 ==.
;	..\COMMON\easyax5043.c:1569: x <<= 8;
	mov	ar3,r4
	mov	r4,#0x00
	C$easyax5043.c$1570$3$641 ==.
;	..\COMMON\easyax5043.c:1570: x |= radio_read8(AX5043_REG_GPADC13VALUE0);
	mov	dptr,#0x4309
	movx	a,@dptr
	mov	r1,a
	mov	r2,#0x00
	mov	a,r1
	orl	ar4,a
	mov	a,r2
	orl	ar3,a
	C$easyax5043.c$1571$3$641 ==.
;	..\COMMON\easyax5043.c:1571: r += x;
	mov	a,r4
	add	a,r6
	mov	r6,a
	mov	a,r3
	addc	a,r7
	mov	r7,a
	C$easyax5043.c$1573$1$634 ==.
;	..\COMMON\easyax5043.c:1573: } while (--cnt);
	djnz	r5,00109$
	C$easyax5043.c$1574$1$634 ==.
;	..\COMMON\easyax5043.c:1574: return r;
	mov	dpl,r6
	mov	dph,r7
	C$easyax5043.c$1575$1$634 ==.
	XFeasyax5043$axradio_tunevoltage$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_adjustvcoi'
;------------------------------------------------------------
;rng                       Allocated to registers r7 
;offs                      Allocated to registers r3 
;bestrng                   Allocated to registers r4 
;bestval                   Allocated to registers r5 r6 
;val                       Allocated to stack - _bp +1
;------------------------------------------------------------
	Feasyax5043$axradio_adjustvcoi$0$0 ==.
	C$easyax5043.c$1579$1$634 ==.
;	..\COMMON\easyax5043.c:1579: static __reentrantb uint8_t axradio_adjustvcoi(uint8_t rng) __reentrant
;	-----------------------------------------
;	 function axradio_adjustvcoi
;	-----------------------------------------
_axradio_adjustvcoi:
	push	_bp
	mov	_bp,sp
	inc	sp
	inc	sp
	mov	r7,dpl
	C$easyax5043.c$1583$1$634 ==.
;	..\COMMON\easyax5043.c:1583: uint16_t bestval = (uint16_t)~0;
	mov	r5,#0xff
	mov	r6,#0xff
	C$easyax5043.c$1584$1$643 ==.
;	..\COMMON\easyax5043.c:1584: rng &= 0x7F;
	anl	ar7,#0x7f
	C$easyax5043.c$1585$1$643 ==.
;	..\COMMON\easyax5043.c:1585: bestrng = rng;
	mov	ar4,r7
	C$easyax5043.c$1586$1$643 ==.
;	..\COMMON\easyax5043.c:1586: for (offs = 0; offs != 16; ++offs) {
	mov	r3,#0x00
00121$:
	C$easyax5043.c$1588$2$644 ==.
;	..\COMMON\easyax5043.c:1588: if (!((uint8_t)(rng + offs) & 0xC0)) {
	mov	a,r3
	add	a,r7
	anl	a,#0xc0
	jz	00150$
	sjmp	00107$
00150$:
	C$easyax5043.c$1589$1$643 ==.
;	..\COMMON\easyax5043.c:1589: radio_write8(AX5043_REG_PLLVCOI, (0x80 | (rng + offs)));
	push	ar4
	mov	a,r3
	add	a,r7
	orl	a,#0x80
	mov	dptr,#0x4180
	movx	@dptr,a
	C$easyax5043.c$1590$3$645 ==.
;	..\COMMON\easyax5043.c:1590: val = axradio_tunevoltage();
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	lcall	_axradio_tunevoltage
	mov	r2,dpl
	mov	r4,dph
	pop	ar3
	pop	ar5
	pop	ar6
	pop	ar7
	mov	r0,_bp
	inc	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar4
	C$easyax5043.c$1591$3$645 ==.
;	..\COMMON\easyax5043.c:1591: if (val < bestval) {
	mov	r0,_bp
	inc	r0
	clr	c
	mov	a,@r0
	subb	a,r5
	inc	r0
	mov	a,@r0
	subb	a,r6
	pop	ar4
	jnc	00107$
	C$easyax5043.c$1592$4$647 ==.
;	..\COMMON\easyax5043.c:1592: bestval = val;
	mov	r0,_bp
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	C$easyax5043.c$1593$4$647 ==.
;	..\COMMON\easyax5043.c:1593: bestrng = rng + offs;
	mov	a,r3
	add	a,r7
	mov	r2,a
	mov	r4,a
00107$:
	C$easyax5043.c$1596$2$644 ==.
;	..\COMMON\easyax5043.c:1596: if (!offs)
	mov	a,r3
	jz	00117$
	C$easyax5043.c$1598$2$644 ==.
;	..\COMMON\easyax5043.c:1598: if (!((uint8_t)(rng - offs) & 0xC0)) {
	mov	a,r7
	clr	c
	subb	a,r3
	anl	a,#0xc0
	jz	00154$
	sjmp	00117$
00154$:
	C$easyax5043.c$1599$1$643 ==.
;	..\COMMON\easyax5043.c:1599: radio_write8(AX5043_REG_PLLVCOI, (0x80 | (rng - offs)));
	push	ar4
	mov	a,r7
	clr	c
	subb	a,r3
	orl	a,#0x80
	mov	dptr,#0x4180
	movx	@dptr,a
	C$easyax5043.c$1600$3$648 ==.
;	..\COMMON\easyax5043.c:1600: val = axradio_tunevoltage();
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	lcall	_axradio_tunevoltage
	mov	r2,dpl
	mov	r4,dph
	pop	ar3
	pop	ar5
	pop	ar6
	pop	ar7
	mov	r0,_bp
	inc	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar4
	C$easyax5043.c$1601$3$648 ==.
;	..\COMMON\easyax5043.c:1601: if (val < bestval) {
	mov	r0,_bp
	inc	r0
	clr	c
	mov	a,@r0
	subb	a,r5
	inc	r0
	mov	a,@r0
	subb	a,r6
	pop	ar4
	jnc	00117$
	C$easyax5043.c$1602$4$650 ==.
;	..\COMMON\easyax5043.c:1602: bestval = val;
	mov	r0,_bp
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	C$easyax5043.c$1603$4$650 ==.
;	..\COMMON\easyax5043.c:1603: bestrng = rng - offs;
	mov	a,r7
	clr	c
	subb	a,r3
	mov	r2,a
	mov	r4,a
00117$:
	C$easyax5043.c$1586$1$643 ==.
;	..\COMMON\easyax5043.c:1586: for (offs = 0; offs != 16; ++offs) {
	inc	r3
	cjne	r3,#0x10,00156$
	sjmp	00157$
00156$:
	ljmp	00121$
00157$:
	C$easyax5043.c$1608$1$643 ==.
;	..\COMMON\easyax5043.c:1608: if (bestval <= 0x0010)
	clr	c
	mov	a,#0x10
	subb	a,r5
	clr	a
	subb	a,r6
	jc	00120$
	C$easyax5043.c$1609$1$643 ==.
;	..\COMMON\easyax5043.c:1609: return rng | 0x80;
	mov	a,#0x80
	orl	a,r7
	mov	dpl,a
	sjmp	00122$
00120$:
	C$easyax5043.c$1610$1$643 ==.
;	..\COMMON\easyax5043.c:1610: return bestrng | 0x80;
	mov	a,#0x80
	orl	a,r4
	mov	dpl,a
00122$:
	mov	sp,_bp
	pop	_bp
	C$easyax5043.c$1611$1$643 ==.
	XFeasyax5043$axradio_adjustvcoi$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_calvcoi'
;------------------------------------------------------------
;i                         Allocated to registers r2 
;r                         Allocated to registers r7 
;vmin                      Allocated to registers r5 r6 
;vmax                      Allocated to registers r3 r4 
;curtune                   Allocated to stack - _bp +1
;------------------------------------------------------------
	Feasyax5043$axradio_calvcoi$0$0 ==.
	C$easyax5043.c$1613$1$643 ==.
;	..\COMMON\easyax5043.c:1613: static __reentrantb uint8_t axradio_calvcoi(void) __reentrant
;	-----------------------------------------
;	 function axradio_calvcoi
;	-----------------------------------------
_axradio_calvcoi:
	push	_bp
	mov	_bp,sp
	inc	sp
	inc	sp
	C$easyax5043.c$1616$1$643 ==.
;	..\COMMON\easyax5043.c:1616: uint8_t r = 0;
	mov	r7,#0x00
	C$easyax5043.c$1617$1$643 ==.
;	..\COMMON\easyax5043.c:1617: uint16_t vmin = 0xffff;
	mov	r5,#0xff
	mov	r6,#0xff
	C$easyax5043.c$1618$1$643 ==.
;	..\COMMON\easyax5043.c:1618: uint16_t vmax = 0x0000;
	mov	r3,#0x00
	mov	r4,#0x00
	C$easyax5043.c$1619$2$653 ==.
;	..\COMMON\easyax5043.c:1619: for (i = 0x40; i != 0;) {
	mov	r2,#0x40
00116$:
	C$easyax5043.c$1621$1$652 ==.
;	..\COMMON\easyax5043.c:1621: --i;
	push	ar7
	dec	r2
	C$easyax5043.c$1622$3$654 ==.
;	..\COMMON\easyax5043.c:1622: radio_write8(AX5043_REG_PLLVCOI, (0x80 | i));
	mov	a,#0x80
	orl	a,r2
	mov	r7,a
	mov	dptr,#0x4180
	movx	@dptr,a
	C$easyax5043.c$1623$2$653 ==.
;	..\COMMON\easyax5043.c:1623: radio_read8(AX5043_REG_PLLRANGINGA); // clear PLL lock loss
	mov	dptr,#0x4033
	movx	a,@dptr
	C$easyax5043.c$1624$2$653 ==.
;	..\COMMON\easyax5043.c:1624: curtune = axradio_tunevoltage();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_axradio_tunevoltage
	mov	r0,_bp
	inc	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	r0,_bp
	inc	r0
	C$easyax5043.c$1625$2$653 ==.
;	..\COMMON\easyax5043.c:1625: radio_read8(AX5043_REG_PLLRANGINGA); // clear PLL lock loss
	mov	dptr,#0x4033
	movx	a,@dptr
	C$easyax5043.c$1626$2$653 ==.
;	..\COMMON\easyax5043.c:1626: ((uint16_t __xdata *)axradio_rxbuffer)[i] = curtune;
	mov	a,r2
	mov	b,#0x02
	mul	ab
	add	a,#_axradio_rxbuffer
	mov	dpl,a
	mov	a,#(_axradio_rxbuffer >> 8)
	addc	a,b
	mov	dph,a
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1627$2$653 ==.
;	..\COMMON\easyax5043.c:1627: if (curtune > vmax)
	mov	r0,_bp
	inc	r0
	clr	c
	mov	a,r3
	subb	a,@r0
	mov	a,r4
	inc	r0
	subb	a,@r0
	pop	ar7
	jnc	00105$
	C$easyax5043.c$1628$2$653 ==.
;	..\COMMON\easyax5043.c:1628: vmax = curtune;
	mov	r0,_bp
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
00105$:
	C$easyax5043.c$1629$2$653 ==.
;	..\COMMON\easyax5043.c:1629: if (curtune < vmin) {
	mov	r0,_bp
	inc	r0
	clr	c
	mov	a,@r0
	subb	a,r5
	inc	r0
	mov	a,@r0
	subb	a,r6
	jnc	00117$
	C$easyax5043.c$1630$1$652 ==.
;	..\COMMON\easyax5043.c:1630: vmin = curtune;
	push	ar7
	mov	r0,_bp
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	C$easyax5043.c$1632$3$655 ==.
;	..\COMMON\easyax5043.c:1632: if (!(0xC0 & (uint8_t)~(radio_read8(AX5043_REG_PLLRANGINGA))))
	mov	dptr,#0x4033
	movx	a,@dptr
	cpl	a
	mov	r7,a
	anl	a,#0xc0
	jz	00150$
	pop	ar7
	sjmp	00117$
00150$:
	pop	ar7
	C$easyax5043.c$1633$3$655 ==.
;	..\COMMON\easyax5043.c:1633: r = i | 0x80;
	mov	a,#0x80
	orl	a,r2
	mov	r7,a
00117$:
	C$easyax5043.c$1619$1$652 ==.
;	..\COMMON\easyax5043.c:1619: for (i = 0x40; i != 0;) {
	mov	a,r2
	jz	00151$
	ljmp	00116$
00151$:
	C$easyax5043.c$1636$1$652 ==.
;	..\COMMON\easyax5043.c:1636: if (!(r & 0x80) || vmax >= 0xFF00 || vmin < 0x0100 || vmax - vmin < 0x4000)
	mov	a,r7
	jnb	acc.7,00111$
	mov	a,#0x100 - 0xff
	add	a,r4
	jc	00111$
	mov	a,#0x100 - 0x01
	add	a,r6
	jnc	00111$
	mov	a,r3
	clr	c
	subb	a,r5
	mov	r5,a
	mov	a,r4
	subb	a,r6
	mov	r6,a
	clr	c
	subb	a,#0x40
	jnc	00112$
00111$:
	C$easyax5043.c$1637$1$652 ==.
;	..\COMMON\easyax5043.c:1637: return 0;
	mov	dpl,#0x00
	sjmp	00118$
00112$:
	C$easyax5043.c$1638$1$652 ==.
;	..\COMMON\easyax5043.c:1638: return r;
	mov	dpl,r7
00118$:
	mov	sp,_bp
	pop	_bp
	C$easyax5043.c$1639$1$652 ==.
	XFeasyax5043$axradio_calvcoi$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_init'
;------------------------------------------------------------
;i                         Allocated with name '_axradio_init_i_1_657'
;crit                      Allocated to registers r6 
;__00020027                Allocated to registers 
;f                         Allocated to registers r3 r4 r5 r6 
;crit                      Allocated to registers r6 
;r                         Allocated to registers r4 
;__00040030                Allocated to registers 
;crit                      Allocated to registers 
;__00030032                Allocated to registers 
;crit                      Allocated to registers 
;x                         Allocated to registers r7 
;vcoisave                  Allocated with name '_axradio_init_vcoisave_3_687'
;j                         Allocated with name '_axradio_init_j_3_687'
;f                         Allocated with name '_axradio_init_f_5_690'
;x                         Allocated to registers r7 
;f                         Allocated to registers r4 r5 r6 r7 
;sloc0                     Allocated with name '_axradio_init_sloc0_1_0'
;------------------------------------------------------------
	G$axradio_init$0$0 ==.
	C$easyax5043.c$1645$1$652 ==.
;	..\COMMON\easyax5043.c:1645: uint8_t axradio_init(void)
;	-----------------------------------------
;	 function axradio_init
;	-----------------------------------------
_axradio_init:
	C$easyax5043.c$1649$1$657 ==.
;	..\COMMON\easyax5043.c:1649: axradio_mode = AXRADIO_MODE_UNINIT;
	mov	_axradio_mode,#0x00
	C$easyax5043.c$1650$1$657 ==.
;	..\COMMON\easyax5043.c:1650: axradio_killallcb();
	lcall	_axradio_killallcb
	C$easyax5043.c$1651$1$657 ==.
;	..\COMMON\easyax5043.c:1651: axradio_cb_receive.cb.handler = axradio_receive_callback_fwd;
	mov	dptr,#(_axradio_cb_receive + 0x0002)
	mov	a,#_axradio_receive_callback_fwd
	movx	@dptr,a
	mov	a,#(_axradio_receive_callback_fwd >> 8)
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1652$1$657 ==.
;	..\COMMON\easyax5043.c:1652: axradio_cb_receive.st.status = AXRADIO_STAT_RECEIVE;
	mov	dptr,#(_axradio_cb_receive + 0x0004)
	clr	a
	movx	@dptr,a
	C$easyax5043.c$1653$1$657 ==.
;	..\COMMON\easyax5043.c:1653: memset_xdata(axradio_cb_receive.st.rx.mac.remoteaddr, 0, sizeof(axradio_cb_receive.st.rx.mac.remoteaddr));
;	1-genFromRTrack replaced	mov	_memset_PARM_2,#0x00
	mov	_memset_PARM_2,a
	mov	_memset_PARM_3,#0x05
;	1-genFromRTrack replaced	mov	(_memset_PARM_3 + 1),#0x00
	mov	(_memset_PARM_3 + 1),a
	mov	dptr,#(_axradio_cb_receive + 0x0014)
	mov	b,#0x00
	lcall	_memset
	C$easyax5043.c$1654$1$657 ==.
;	..\COMMON\easyax5043.c:1654: memset_xdata(axradio_cb_receive.st.rx.mac.localaddr, 0, sizeof(axradio_cb_receive.st.rx.mac.localaddr));
	mov	_memset_PARM_2,#0x00
	mov	_memset_PARM_3,#0x05
	mov	(_memset_PARM_3 + 1),#0x00
	mov	dptr,#(_axradio_cb_receive + 0x0019)
	mov	b,#0x00
	lcall	_memset
	C$easyax5043.c$1655$1$657 ==.
;	..\COMMON\easyax5043.c:1655: axradio_cb_receivesfd.cb.handler = axradio_callback_fwd;
	mov	dptr,#(_axradio_cb_receivesfd + 0x0002)
	mov	a,#_axradio_callback_fwd
	movx	@dptr,a
	mov	a,#(_axradio_callback_fwd >> 8)
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1656$1$657 ==.
;	..\COMMON\easyax5043.c:1656: axradio_cb_receivesfd.st.status = AXRADIO_STAT_RECEIVESFD;
	mov	dptr,#(_axradio_cb_receivesfd + 0x0004)
	mov	a,#0x01
	movx	@dptr,a
	C$easyax5043.c$1657$1$657 ==.
;	..\COMMON\easyax5043.c:1657: axradio_cb_channelstate.cb.handler = axradio_callback_fwd;
	mov	dptr,#(_axradio_cb_channelstate + 0x0002)
	mov	a,#_axradio_callback_fwd
	movx	@dptr,a
	mov	a,#(_axradio_callback_fwd >> 8)
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1658$1$657 ==.
;	..\COMMON\easyax5043.c:1658: axradio_cb_channelstate.st.status = AXRADIO_STAT_CHANNELSTATE;
	mov	dptr,#(_axradio_cb_channelstate + 0x0004)
	mov	a,#0x02
	movx	@dptr,a
	C$easyax5043.c$1659$1$657 ==.
;	..\COMMON\easyax5043.c:1659: axradio_cb_transmitstart.cb.handler = axradio_callback_fwd;
	mov	dptr,#(_axradio_cb_transmitstart + 0x0002)
	mov	a,#_axradio_callback_fwd
	movx	@dptr,a
	mov	a,#(_axradio_callback_fwd >> 8)
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1660$1$657 ==.
;	..\COMMON\easyax5043.c:1660: axradio_cb_transmitstart.st.status = AXRADIO_STAT_TRANSMITSTART;
	mov	dptr,#(_axradio_cb_transmitstart + 0x0004)
	mov	a,#0x03
	movx	@dptr,a
	C$easyax5043.c$1661$1$657 ==.
;	..\COMMON\easyax5043.c:1661: axradio_cb_transmitend.cb.handler = axradio_callback_fwd;
	mov	dptr,#(_axradio_cb_transmitend + 0x0002)
	mov	a,#_axradio_callback_fwd
	movx	@dptr,a
	mov	a,#(_axradio_callback_fwd >> 8)
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1662$1$657 ==.
;	..\COMMON\easyax5043.c:1662: axradio_cb_transmitend.st.status = AXRADIO_STAT_TRANSMITEND;
	mov	dptr,#(_axradio_cb_transmitend + 0x0004)
	mov	a,#0x04
	movx	@dptr,a
	C$easyax5043.c$1663$1$657 ==.
;	..\COMMON\easyax5043.c:1663: axradio_cb_transmitdata.cb.handler = axradio_callback_fwd;
	mov	dptr,#(_axradio_cb_transmitdata + 0x0002)
	mov	a,#_axradio_callback_fwd
	movx	@dptr,a
	mov	a,#(_axradio_callback_fwd >> 8)
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1664$1$657 ==.
;	..\COMMON\easyax5043.c:1664: axradio_cb_transmitdata.st.status = AXRADIO_STAT_TRANSMITDATA;
	mov	dptr,#(_axradio_cb_transmitdata + 0x0004)
	mov	a,#0x05
	movx	@dptr,a
	C$easyax5043.c$1665$1$657 ==.
;	..\COMMON\easyax5043.c:1665: axradio_timer.handler = axradio_timer_callback;
	mov	dptr,#(_axradio_timer + 0x0002)
	mov	a,#_axradio_timer_callback
	movx	@dptr,a
	mov	a,#(_axradio_timer_callback >> 8)
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1666$1$657 ==.
;	..\COMMON\easyax5043.c:1666: axradio_curchannel = 0;
	mov	dptr,#_axradio_curchannel
	clr	a
	movx	@dptr,a
	C$easyax5043.c$1667$1$657 ==.
;	..\COMMON\easyax5043.c:1667: axradio_curfreqoffset = 0;
	mov	dptr,#_axradio_curfreqoffset
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1668$1$657 ==.
;	..\COMMON\easyax5043.c:1668: disable_radio_interrupt_in_mcu_pin();
	lcall	_disable_radio_interrupt_in_mcu_pin
	C$easyax5043.c$1669$1$657 ==.
;	..\COMMON\easyax5043.c:1669: axradio_trxstate = trxstate_off;
	mov	_axradio_trxstate,#0x00
	C$easyax5043.c$1670$1$657 ==.
;	..\COMMON\easyax5043.c:1670: if (ax5043_reset())
	lcall	_ax5043_reset
	mov	a,dpl
	jz	00102$
	C$easyax5043.c$1671$1$657 ==.
;	..\COMMON\easyax5043.c:1671: return AXRADIO_ERR_NOCHIP;
	mov	dpl,#0x05
	ljmp	00246$
00102$:
	C$easyax5043.c$1672$1$657 ==.
;	..\COMMON\easyax5043.c:1672: ax5043_init_registers();
	lcall	_ax5043_init_registers
	C$easyax5043.c$1673$1$657 ==.
;	..\COMMON\easyax5043.c:1673: ax5043_set_registers_tx();
	lcall	_ax5043_set_registers_tx
	C$easyax5043.c$1674$2$658 ==.
;	..\COMMON\easyax5043.c:1674: radio_write8(AX5043_REG_PLLLOOP, 0x09); // default 100kHz loop BW for ranging
	mov	dptr,#0x4030
	mov	a,#0x09
	movx	@dptr,a
	C$easyax5043.c$1675$2$659 ==.
;	..\COMMON\easyax5043.c:1675: radio_write8(AX5043_REG_PLLCPI, 0x08);
	mov	dptr,#0x4031
	dec	a
	movx	@dptr,a
	C$easyax5043.c$1676$1$657 ==.
;	..\COMMON\easyax5043.c:1676: enable_radio_interrupt_in_mcu_pin();
	lcall	_enable_radio_interrupt_in_mcu_pin
	C$easyax5043.c$1678$2$660 ==.
;	..\COMMON\easyax5043.c:1678: radio_write8(AX5043_REG_PWRMODE, AX5043_PWRSTATE_XTAL_ON);
	mov	dptr,#0x4002
	mov	a,#0x05
	movx	@dptr,a
	C$easyax5043.c$1679$2$661 ==.
;	..\COMMON\easyax5043.c:1679: radio_write8(AX5043_REG_MODULATION, 0x08);
	mov	dptr,#0x4010
	mov	a,#0x08
	movx	@dptr,a
	C$easyax5043.c$1680$2$662 ==.
;	..\COMMON\easyax5043.c:1680: radio_write8(AX5043_REG_FSKDEV2, 0x00);
	mov	dptr,#0x4161
	clr	a
	movx	@dptr,a
	C$easyax5043.c$1681$2$663 ==.
;	..\COMMON\easyax5043.c:1681: radio_write8(AX5043_REG_FSKDEV1, 0x00);
	mov	dptr,#0x4162
	movx	@dptr,a
	C$easyax5043.c$1682$2$664 ==.
;	..\COMMON\easyax5043.c:1682: radio_write8(AX5043_REG_FSKDEV0, 0x00);
	mov	dptr,#0x4163
	movx	@dptr,a
	C$easyax5043.c$1683$1$657 ==.
;	..\COMMON\easyax5043.c:1683: axradio_wait_for_xtal();
	lcall	_axradio_wait_for_xtal
	C$easyax5043.c$1684$2$665 ==.
;	..\COMMON\easyax5043.c:1684: for (i = 0; i < axradio_phy_nrchannels; ++i) {
	mov	r7,#0x00
00239$:
	mov	dptr,#_axradio_phy_nrchannels
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	clr	c
	mov	a,r7
	subb	a,r6
	jc	00311$
	ljmp	00155$
00311$:
	C$easyax5043.c$1685$2$665 ==.
;	..\COMMON\easyax5043.c:1685: uint32_t __autodata f = axradio_phy_chanfreq[i];
	mov	a,r7
	mov	b,#0x04
	mul	ab
	add	a,#_axradio_phy_chanfreq
	mov	dpl,a
	mov	a,#(_axradio_phy_chanfreq >> 8)
	addc	a,b
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	C$easyax5043.c$1686$3$666 ==.
;	..\COMMON\easyax5043.c:1686: radio_write8(AX5043_REG_FREQA0, f);
	mov	ar2,r3
	mov	dptr,#0x4037
	mov	a,r2
	movx	@dptr,a
	C$easyax5043.c$1687$3$667 ==.
;	..\COMMON\easyax5043.c:1687: radio_write8(AX5043_REG_FREQA1, (f >> 8));
	mov	ar2,r4
	mov	dptr,#0x4036
	mov	a,r2
	movx	@dptr,a
	C$easyax5043.c$1688$3$668 ==.
;	..\COMMON\easyax5043.c:1688: radio_write8(AX5043_REG_FREQA2, (f >> 16));
	mov	ar2,r5
	mov	dptr,#0x4035
	mov	a,r2
	movx	@dptr,a
	C$easyax5043.c$1689$3$669 ==.
;	..\COMMON\easyax5043.c:1689: radio_write8(AX5043_REG_FREQA3, (f >> 24));
	mov	ar3,r6
	mov	dptr,#0x4034
	mov	a,r3
	movx	@dptr,a
	C$libmftypes.h$351$5$708 ==.
;	C:/Program Files (x86)/ON Semiconductor/AXSDB/libmf/include/libmftypes.h:351: criticalsection_t crit = IE & 0x80;
	mov	a,#0x80
	anl	a,_IE
	mov	r6,a
	C$libmftypes.h$352$5$708 ==.
;	C:/Program Files (x86)/ON Semiconductor/AXSDB/libmf/include/libmftypes.h:352: EA = 0;
	clr	_EA
	C$easyax5043.c$1690$4$707 ==.
;	..\COMMON\easyax5043.c:1690: crit = enter_critical();
	C$easyax5043.c$1691$2$665 ==.
;	..\COMMON\easyax5043.c:1691: axradio_trxstate = trxstate_pll_ranging;
	mov	_axradio_trxstate,#0x05
	C$easyax5043.c$1692$3$670 ==.
;	..\COMMON\easyax5043.c:1692: radio_write8(AX5043_REG_IRQMASK1, 0x10); // enable pll autoranging done interrupt
	mov	dptr,#0x4006
	mov	a,#0x10
	movx	@dptr,a
	C$easyax5043.c$1695$3$671 ==.
;	..\COMMON\easyax5043.c:1695: if (!(axradio_phy_chanpllrnginit[0] & 0xF0)) {
	mov	dptr,#_axradio_phy_chanpllrnginit
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	a,r4
	anl	a,#0xf0
	jnz	00144$
	C$easyax5043.c$1697$4$672 ==.
;	..\COMMON\easyax5043.c:1697: r = axradio_phy_chanpllrnginit[i] | 0x10;
	mov	a,r7
	mov	b,#0x02
	mul	ab
	add	a,#_axradio_phy_chanpllrnginit
	mov	dpl,a
	mov	a,#(_axradio_phy_chanpllrnginit >> 8)
	addc	a,b
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	orl	ar4,#0x10
	sjmp	00146$
00144$:
	C$easyax5043.c$1699$4$673 ==.
;	..\COMMON\easyax5043.c:1699: r = 0x18;
	mov	r4,#0x18
	C$easyax5043.c$1700$4$673 ==.
;	..\COMMON\easyax5043.c:1700: if (i) {
	mov	a,r7
	jz	00146$
	C$easyax5043.c$1701$5$674 ==.
;	..\COMMON\easyax5043.c:1701: r = axradio_phy_chanpllrng[i - 1];
	mov	ar3,r7
	mov	r5,#0x00
	dec	r3
	cjne	r3,#0xff,00315$
	dec	r5
00315$:
	mov	a,r5
	xch	a,r3
	add	a,acc
	xch	a,r3
	rlc	a
	mov	r5,a
	mov	a,r3
	add	a,#_axradio_phy_chanpllrng
	mov	dpl,a
	mov	a,r5
	addc	a,#(_axradio_phy_chanpllrng >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	ar4,r3
	C$easyax5043.c$1702$5$674 ==.
;	..\COMMON\easyax5043.c:1702: if (r & 0x20)
	mov	a,r4
	jnb	acc.5,00140$
	C$easyax5043.c$1703$5$674 ==.
;	..\COMMON\easyax5043.c:1703: r = 0x08;
	mov	r4,#0x08
00140$:
	C$easyax5043.c$1704$5$674 ==.
;	..\COMMON\easyax5043.c:1704: r &= 0x0F;
	anl	ar4,#0x0f
	C$easyax5043.c$1705$5$674 ==.
;	..\COMMON\easyax5043.c:1705: r |= 0x10;
	orl	ar4,#0x10
	C$easyax5043.c$1708$3$671 ==.
;	..\COMMON\easyax5043.c:1708: radio_write8(AX5043_REG_PLLRANGINGA, r); // init ranging process starting from "range"
00146$:
	mov	dptr,#0x4033
	mov	a,r4
	movx	@dptr,a
00236$:
	C$libmftypes.h$363$6$711 ==.
;	C:/Program Files (x86)/ON Semiconductor/AXSDB/libmf/include/libmftypes.h:363: EA = 0;
	clr	_EA
	C$easyax5043.c$1712$3$676 ==.
;	..\COMMON\easyax5043.c:1712: if (axradio_trxstate == trxstate_pll_ranging_done)
	mov	a,#0x06
	cjne	a,_axradio_trxstate,00317$
	sjmp	00151$
00317$:
	C$easyax5043.c$1714$3$676 ==.
;	..\COMMON\easyax5043.c:1714: wtimer_idle(WTFLAG_CANSTANDBY);
	mov	dpl,#0x02
	push	ar7
	push	ar6
	lcall	_wtimer_idle
	pop	ar6
	C$libmftypes.h$358$6$714 ==.
;	C:/Program Files (x86)/ON Semiconductor/AXSDB/libmf/include/libmftypes.h:358: IE |= crit;
	mov	a,r6
	orl	_IE,a
	C$easyax5043.c$1716$3$676 ==.
;	..\COMMON\easyax5043.c:1716: wtimer_runcallbacks();
	push	ar6
	lcall	_wtimer_runcallbacks
	pop	ar6
	pop	ar7
	sjmp	00236$
00151$:
	C$easyax5043.c$1718$2$665 ==.
;	..\COMMON\easyax5043.c:1718: axradio_trxstate = trxstate_off;
	mov	_axradio_trxstate,#0x00
	C$easyax5043.c$1719$3$677 ==.
;	..\COMMON\easyax5043.c:1719: radio_write8(AX5043_REG_IRQMASK1, 0x00);
	mov	dptr,#0x4006
	clr	a
	movx	@dptr,a
	C$easyax5043.c$1720$2$665 ==.
;	..\COMMON\easyax5043.c:1720: axradio_phy_chanpllrng[i] = (uint8_t)radio_read8(AX5043_REG_PLLRANGINGA);
	mov	a,r7
	mov	b,#0x02
	mul	ab
	add	a,#_axradio_phy_chanpllrng
	mov	r4,a
	mov	a,#(_axradio_phy_chanpllrng >> 8)
	addc	a,b
	mov	r5,a
	mov	dptr,#0x4033
	movx	a,@dptr
	mov	r3,a
	mov	r2,#0x00
	mov	dpl,r4
	mov	dph,r5
	mov	a,r3
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	C$libmftypes.h$358$5$717 ==.
;	C:/Program Files (x86)/ON Semiconductor/AXSDB/libmf/include/libmftypes.h:358: IE |= crit;
	mov	a,r6
	orl	_IE,a
	C$easyax5043.c$1684$1$657 ==.
;	..\COMMON\easyax5043.c:1684: for (i = 0; i < axradio_phy_nrchannels; ++i) {
	inc	r7
	ljmp	00239$
00155$:
	C$easyax5043.c$1724$1$657 ==.
;	..\COMMON\easyax5043.c:1724: if (axradio_phy_vcocalib) {
	mov	dptr,#_axradio_phy_vcocalib
	clr	a
	movc	a,@a+dptr
	jnz	00318$
	ljmp	00211$
00318$:
	C$easyax5043.c$1725$2$678 ==.
;	..\COMMON\easyax5043.c:1725: ax5043_set_registers_tx();
	lcall	_ax5043_set_registers_tx
	C$easyax5043.c$1726$3$679 ==.
;	..\COMMON\easyax5043.c:1726: radio_write8(AX5043_REG_MODULATION, 0x08);
	mov	dptr,#0x4010
	mov	a,#0x08
	movx	@dptr,a
	C$easyax5043.c$1727$3$680 ==.
;	..\COMMON\easyax5043.c:1727: radio_write8(AX5043_REG_FSKDEV2, 0x00);
	mov	dptr,#0x4161
	clr	a
	movx	@dptr,a
	C$easyax5043.c$1728$3$681 ==.
;	..\COMMON\easyax5043.c:1728: radio_write8(AX5043_REG_FSKDEV1, 0x00);
	mov	dptr,#0x4162
	movx	@dptr,a
	C$easyax5043.c$1729$3$682 ==.
;	..\COMMON\easyax5043.c:1729: radio_write8(AX5043_REG_FSKDEV0, 0x00);
	mov	dptr,#0x4163
	movx	@dptr,a
	C$easyax5043.c$1730$3$683 ==.
;	..\COMMON\easyax5043.c:1730: radio_write8(AX5043_REG_PLLLOOP, (radio_read8(AX5043_REG_PLLLOOP) | 0x04));
	mov	dptr,#0x4030
	movx	a,@dptr
	orl	a,#0x04
	movx	@dptr,a
	C$easyax5043.c$1732$3$684 ==.
;	..\COMMON\easyax5043.c:1732: uint8_t x = radio_read8(AX5043_REG_0xF35);
	mov	dptr,#0x4f35
	movx	a,@dptr
	C$easyax5043.c$1733$3$684 ==.
;	..\COMMON\easyax5043.c:1733: x |= 0x80;
	C$easyax5043.c$1734$3$684 ==.
;	..\COMMON\easyax5043.c:1734: if (2 & (uint8_t)~x)
	orl	a,#0x80
	mov	r7,a
	cpl	a
	mov	r6,a
	jnb	acc.1,00173$
	C$easyax5043.c$1735$3$684 ==.
;	..\COMMON\easyax5043.c:1735: ++x;
	inc	r7
	C$easyax5043.c$1736$3$684 ==.
;	..\COMMON\easyax5043.c:1736: radio_write8(AX5043_REG_0xF35, x);
00173$:
	mov	dptr,#0x4f35
	mov	a,r7
	movx	@dptr,a
	C$easyax5043.c$1738$3$686 ==.
;	..\COMMON\easyax5043.c:1738: radio_write8(AX5043_REG_PWRMODE, AX5043_PWRSTATE_SYNTH_TX);
	mov	dptr,#0x4002
	mov	a,#0x0c
	movx	@dptr,a
	C$easyax5043.c$1740$3$687 ==.
;	..\COMMON\easyax5043.c:1740: uint8_t __autodata vcoisave = radio_read8(AX5043_REG_PLLVCOI);
	mov	dptr,#0x4180
	movx	a,@dptr
	mov	_axradio_init_vcoisave_3_687,a
	C$easyax5043.c$1741$3$687 ==.
;	..\COMMON\easyax5043.c:1741: uint8_t j = 2;
	mov	_axradio_init_j_3_687,#0x02
	C$easyax5043.c$1742$5$695 ==.
;	..\COMMON\easyax5043.c:1742: for (i = 0; i < axradio_phy_nrchannels; ++i) {
	mov	_axradio_init_i_1_657,#0x00
00242$:
	mov	dptr,#_axradio_phy_nrchannels
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	clr	c
	mov	a,_axradio_init_i_1_657
	subb	a,r4
	jc	00320$
	ljmp	00206$
00320$:
	C$easyax5043.c$1743$4$688 ==.
;	..\COMMON\easyax5043.c:1743: axradio_phy_chanvcoi[i] = 0;
	mov	a,_axradio_init_i_1_657
	add	a,#_axradio_phy_chanvcoi
	mov	dpl,a
	clr	a
	addc	a,#(_axradio_phy_chanvcoi >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
	C$easyax5043.c$1744$4$688 ==.
;	..\COMMON\easyax5043.c:1744: if (axradio_phy_chanpllrng[i] & 0x20)
	mov	a,_axradio_init_i_1_657
	mov	b,#0x02
	mul	ab
	mov	r3,a
	mov	r4,b
	add	a,#_axradio_phy_chanpllrng
	mov	r1,a
	mov	a,r4
	addc	a,#(_axradio_phy_chanpllrng >> 8)
	mov	r2,a
	mov	dpl,r1
	mov	dph,r2
	movx	a,@dptr
	mov	_axradio_init_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_axradio_init_sloc0_1_0 + 1),a
	mov	a,_axradio_init_sloc0_1_0
	jnb	acc.5,00321$
	ljmp	00204$
00321$:
	C$easyax5043.c$1746$5$689 ==.
;	..\COMMON\easyax5043.c:1746: radio_write8(AX5043_REG_PLLRANGINGA, (axradio_phy_chanpllrng[i] & 0x0F));
	mov	a,#0x0f
	anl	a,_axradio_init_sloc0_1_0
	mov	r0,a
	mov	dptr,#0x4033
	movx	@dptr,a
	C$easyax5043.c$1748$5$690 ==.
;	..\COMMON\easyax5043.c:1748: uint32_t __autodata f = axradio_phy_chanfreq[i];
	mov	a,_axradio_init_i_1_657
	mov	b,#0x04
	mul	ab
	add	a,#_axradio_phy_chanfreq
	mov	dpl,a
	mov	a,#(_axradio_phy_chanfreq >> 8)
	addc	a,b
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	_axradio_init_f_5_690,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	(_axradio_init_f_5_690 + 1),a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	(_axradio_init_f_5_690 + 2),a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	(_axradio_init_f_5_690 + 3),a
	C$easyax5043.c$1749$6$691 ==.
;	..\COMMON\easyax5043.c:1749: radio_write8(AX5043_REG_FREQA0, f);
	mov	r7,_axradio_init_f_5_690
	mov	dptr,#0x4037
	mov	a,r7
	movx	@dptr,a
	C$easyax5043.c$1750$6$692 ==.
;	..\COMMON\easyax5043.c:1750: radio_write8(AX5043_REG_FREQA1, (f >> 8));
	mov	r7,(_axradio_init_f_5_690 + 1)
	mov	dptr,#0x4036
	mov	a,r7
	movx	@dptr,a
	C$easyax5043.c$1751$6$693 ==.
;	..\COMMON\easyax5043.c:1751: radio_write8(AX5043_REG_FREQA2, (f >> 16));
	mov	r7,(_axradio_init_f_5_690 + 2)
	mov	dptr,#0x4035
	mov	a,r7
	movx	@dptr,a
	C$easyax5043.c$1752$6$694 ==.
;	..\COMMON\easyax5043.c:1752: radio_write8(AX5043_REG_FREQA3, (f >> 24));
	mov	r7,(_axradio_init_f_5_690 + 3)
	mov	dptr,#0x4034
	mov	a,r7
	movx	@dptr,a
	C$easyax5043.c$1754$4$688 ==.
;	..\COMMON\easyax5043.c:1754: do {
00201$:
	C$easyax5043.c$1755$5$695 ==.
;	..\COMMON\easyax5043.c:1755: if (axradio_phy_chanvcoiinit[0]) {
	mov	dptr,#_axradio_phy_chanvcoiinit
	clr	a
	movc	a,@a+dptr
	jz	00199$
	C$easyax5043.c$1756$6$696 ==.
;	..\COMMON\easyax5043.c:1756: uint8_t x = axradio_phy_chanvcoiinit[i];
	mov	a,_axradio_init_i_1_657
	mov	dptr,#_axradio_phy_chanvcoiinit
	movc	a,@a+dptr
	mov	r7,a
	C$easyax5043.c$1757$6$696 ==.
;	..\COMMON\easyax5043.c:1757: if (!(axradio_phy_chanpllrnginit[0] & 0xF0))
	mov	dptr,#_axradio_phy_chanpllrnginit
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	a,r5
	anl	a,#0xf0
	jnz	00197$
	C$easyax5043.c$1758$6$696 ==.
;	..\COMMON\easyax5043.c:1758: x += (axradio_phy_chanpllrng[i] & 0x0F) - (axradio_phy_chanpllrnginit[i] & 0x0F);
	mov	dpl,r1
	mov	dph,r2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	anl	ar5,#0x0f
	mov	a,r3
	add	a,#_axradio_phy_chanpllrnginit
	mov	dpl,a
	mov	a,r4
	addc	a,#(_axradio_phy_chanpllrnginit >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r0,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	anl	ar0,#0x0f
	mov	r6,#0x00
	mov	a,r5
	clr	c
	subb	a,r0
	add	a,r7
	mov	r7,a
00197$:
	C$easyax5043.c$1759$6$696 ==.
;	..\COMMON\easyax5043.c:1759: axradio_phy_chanvcoi[i] = axradio_adjustvcoi(x);
	mov	a,_axradio_init_i_1_657
	add	a,#_axradio_phy_chanvcoi
	mov	r5,a
	clr	a
	addc	a,#(_axradio_phy_chanvcoi >> 8)
	mov	r6,a
	mov	dpl,r7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	_axradio_adjustvcoi
	mov	r7,dpl
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	mov	dpl,r5
	mov	dph,r6
	mov	a,r7
	movx	@dptr,a
	sjmp	00202$
00199$:
	C$easyax5043.c$1761$6$697 ==.
;	..\COMMON\easyax5043.c:1761: axradio_phy_chanvcoi[i] = axradio_calvcoi();
	mov	a,_axradio_init_i_1_657
	add	a,#_axradio_phy_chanvcoi
	mov	r6,a
	clr	a
	addc	a,#(_axradio_phy_chanvcoi >> 8)
	mov	r7,a
	push	ar7
	push	ar6
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	_axradio_calvcoi
	mov	r5,dpl
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar6
	pop	ar7
	mov	dpl,r6
	mov	dph,r7
	mov	a,r5
	movx	@dptr,a
00202$:
	C$easyax5043.c$1763$4$688 ==.
;	..\COMMON\easyax5043.c:1763: } while (--j);
	mov	a,_axradio_init_j_3_687
	dec	a
	mov	r7,a
	mov	_axradio_init_j_3_687,r7
	jz	00325$
	ljmp	00201$
00325$:
	C$easyax5043.c$1764$4$688 ==.
;	..\COMMON\easyax5043.c:1764: j = 1;
	mov	_axradio_init_j_3_687,#0x01
00204$:
	C$easyax5043.c$1742$3$687 ==.
;	..\COMMON\easyax5043.c:1742: for (i = 0; i < axradio_phy_nrchannels; ++i) {
	inc	_axradio_init_i_1_657
	ljmp	00242$
	C$easyax5043.c$1784$3$687 ==.
;	..\COMMON\easyax5043.c:1784: radio_write8(AX5043_REG_PLLVCOI, vcoisave);
00206$:
	mov	dptr,#0x4180
	mov	a,_axradio_init_vcoisave_3_687
	movx	@dptr,a
	C$easyax5043.c$1817$1$657 ==.
;	..\COMMON\easyax5043.c:1817: radio_write8(AX5043_REG_PWRMODE, AX5043_PWRSTATE_POWERDOWN);
00211$:
	mov	dptr,#0x4002
	clr	a
	movx	@dptr,a
	C$easyax5043.c$1818$1$657 ==.
;	..\COMMON\easyax5043.c:1818: ax5043_init_registers();
	lcall	_ax5043_init_registers
	C$easyax5043.c$1819$1$657 ==.
;	..\COMMON\easyax5043.c:1819: ax5043_set_registers_rx();
	lcall	_ax5043_set_registers_rx
	C$easyax5043.c$1820$2$700 ==.
;	..\COMMON\easyax5043.c:1820: radio_write8(AX5043_REG_PLLRANGINGA, (axradio_phy_chanpllrng[0] & 0x0F));
	mov	dptr,#_axradio_phy_chanpllrng
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	anl	ar6,#0x0f
	mov	dptr,#0x4033
	mov	a,r6
	movx	@dptr,a
	C$easyax5043.c$1822$2$701 ==.
;	..\COMMON\easyax5043.c:1822: uint32_t __autodata f = axradio_phy_chanfreq[0];
	mov	dptr,#_axradio_phy_chanfreq
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	C$easyax5043.c$1823$3$702 ==.
;	..\COMMON\easyax5043.c:1823: radio_write8(AX5043_REG_FREQA0, f);
	mov	ar3,r4
	mov	dptr,#0x4037
	mov	a,r3
	movx	@dptr,a
	C$easyax5043.c$1824$3$703 ==.
;	..\COMMON\easyax5043.c:1824: radio_write8(AX5043_REG_FREQA1, (f >> 8));
	mov	ar3,r5
	mov	dptr,#0x4036
	mov	a,r3
	movx	@dptr,a
	C$easyax5043.c$1825$3$704 ==.
;	..\COMMON\easyax5043.c:1825: radio_write8(AX5043_REG_FREQA2, (f >> 16));
	mov	ar3,r6
	mov	dptr,#0x4035
	mov	a,r3
	movx	@dptr,a
	C$easyax5043.c$1826$3$705 ==.
;	..\COMMON\easyax5043.c:1826: radio_write8(AX5043_REG_FREQA3, (f >> 24));
	mov	ar4,r7
	mov	dptr,#0x4034
	mov	a,r4
	movx	@dptr,a
	C$easyax5043.c$1829$1$657 ==.
;	..\COMMON\easyax5043.c:1829: axradio_mode = AXRADIO_MODE_OFF;
	mov	_axradio_mode,#0x01
	C$easyax5043.c$1830$1$657 ==.
;	..\COMMON\easyax5043.c:1830: for (i = 0; i < axradio_phy_nrchannels; ++i)
	mov	r7,#0x00
00244$:
	mov	dptr,#_axradio_phy_nrchannels
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	clr	c
	mov	a,r7
	subb	a,r6
	jnc	00231$
	C$easyax5043.c$1831$1$657 ==.
;	..\COMMON\easyax5043.c:1831: if (axradio_phy_chanpllrng[i] & 0x20)
	mov	a,r7
	mov	b,#0x02
	mul	ab
	add	a,#_axradio_phy_chanpllrng
	mov	dpl,a
	mov	a,#(_axradio_phy_chanpllrng >> 8)
	addc	a,b
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,r5
	jnb	acc.5,00245$
	C$easyax5043.c$1832$1$657 ==.
;	..\COMMON\easyax5043.c:1832: return AXRADIO_ERR_RANGING;
	mov	dpl,#0x06
	sjmp	00246$
00245$:
	C$easyax5043.c$1830$1$657 ==.
;	..\COMMON\easyax5043.c:1830: for (i = 0; i < axradio_phy_nrchannels; ++i)
	inc	r7
	sjmp	00244$
00231$:
	C$easyax5043.c$1833$1$657 ==.
;	..\COMMON\easyax5043.c:1833: return AXRADIO_ERR_NOERROR;
	mov	dpl,#0x00
00246$:
	C$easyax5043.c$1834$1$657 ==.
	XG$axradio_init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_cansleep'
;------------------------------------------------------------
	G$axradio_cansleep$0$0 ==.
	C$easyax5043.c$1836$1$657 ==.
;	..\COMMON\easyax5043.c:1836: __reentrantb uint8_t axradio_cansleep(void) __reentrant
;	-----------------------------------------
;	 function axradio_cansleep
;	-----------------------------------------
_axradio_cansleep:
	C$easyax5043.c$1838$1$719 ==.
;	..\COMMON\easyax5043.c:1838: if (axradio_trxstate == trxstate_off || axradio_trxstate == trxstate_rxwor)
	mov	a,_axradio_trxstate
	jz	00101$
	mov	a,#0x02
	cjne	a,_axradio_trxstate,00102$
00101$:
	C$easyax5043.c$1839$1$719 ==.
;	..\COMMON\easyax5043.c:1839: return 1;
	mov	dpl,#0x01
	sjmp	00104$
00102$:
	C$easyax5043.c$1840$1$719 ==.
;	..\COMMON\easyax5043.c:1840: return 0;
	mov	dpl,#0x00
00104$:
	C$easyax5043.c$1841$1$719 ==.
	XG$axradio_cansleep$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'wtimer_cansleep_dummy'
;------------------------------------------------------------
	Feasyax5043$wtimer_cansleep_dummy$0$0 ==.
	C$easyax5043.c$1844$1$719 ==.
;	..\COMMON\easyax5043.c:1844: static void wtimer_cansleep_dummy(void) __naked
;	-----------------------------------------
;	 function wtimer_cansleep_dummy
;	-----------------------------------------
_wtimer_cansleep_dummy:
;	naked function: no prologue.
	C$easyax5043.c$1858$1$721 ==.
;	..\COMMON\easyax5043.c:1858: __endasm;
	.area	WTCANSLP0 (CODE)
	.area	WTCANSLP1 (CODE)
	.area	WTCANSLP2 (CODE)
	.area	WTCANSLP1 (CODE)
	lcall	_axradio_cansleep
	mov	a,dpl
	jnz	00000$
	ret
	00000$:
	.area	CSEG (CODE)
;	naked function: no epilogue.
	C$easyax5043.c$1859$1$721 ==.
	XFeasyax5043$wtimer_cansleep_dummy$0$0 ==.
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_set_mode'
;------------------------------------------------------------
;mode                      Allocated to registers r7 
;r                         Allocated to registers r5 
;r                         Allocated to registers r6 
;__00030034                Allocated to registers 
;crit                      Allocated to registers r6 
;crit                      Allocated to registers r6 
;__00040036                Allocated to registers 
;crit                      Allocated to registers 
;------------------------------------------------------------
	G$axradio_set_mode$0$0 ==.
	C$easyax5043.c$1862$1$721 ==.
;	..\COMMON\easyax5043.c:1862: uint8_t axradio_set_mode(uint8_t mode)
;	-----------------------------------------
;	 function axradio_set_mode
;	-----------------------------------------
_axradio_set_mode:
	C$easyax5043.c$1864$1$723 ==.
;	..\COMMON\easyax5043.c:1864: if (mode == axradio_mode)
	mov	a,dpl
	mov	r7,a
	cjne	a,_axradio_mode,00102$
	C$easyax5043.c$1865$1$723 ==.
;	..\COMMON\easyax5043.c:1865: return AXRADIO_ERR_NOERROR;
	mov	dpl,#0x00
	ljmp	00257$
00102$:
	C$easyax5043.c$1866$1$723 ==.
;	..\COMMON\easyax5043.c:1866: switch (axradio_mode) {
	mov	r6,_axradio_mode
	cjne	r6,#0x00,00357$
	sjmp	00103$
00357$:
	cjne	r6,#0x02,00358$
	sjmp	00106$
00358$:
	cjne	r6,#0x03,00359$
	ljmp	00116$
00359$:
	cjne	r6,#0x18,00360$
	ljmp	00116$
00360$:
	cjne	r6,#0x19,00361$
	ljmp	00116$
00361$:
	cjne	r6,#0x1a,00362$
	sjmp	00116$
00362$:
	cjne	r6,#0x1b,00363$
	sjmp	00116$
00363$:
	cjne	r6,#0x1c,00364$
	sjmp	00116$
00364$:
	cjne	r6,#0x28,00365$
	ljmp	00124$
00365$:
	cjne	r6,#0x29,00366$
	ljmp	00124$
00366$:
	cjne	r6,#0x2a,00367$
	ljmp	00124$
00367$:
	cjne	r6,#0x2b,00368$
	ljmp	00124$
00368$:
	cjne	r6,#0x2c,00369$
	ljmp	00124$
00369$:
	cjne	r6,#0x2d,00370$
	ljmp	00124$
00370$:
	ljmp	00125$
	C$easyax5043.c$1867$2$724 ==.
;	..\COMMON\easyax5043.c:1867: case AXRADIO_MODE_UNINIT:
00103$:
	C$easyax5043.c$1869$3$725 ==.
;	..\COMMON\easyax5043.c:1869: uint8_t __autodata r = axradio_init();
	push	ar7
	lcall	_axradio_init
	mov	r6,dpl
	pop	ar7
	C$easyax5043.c$1870$3$725 ==.
;	..\COMMON\easyax5043.c:1870: if (r != AXRADIO_ERR_NOERROR)
	mov	a,r6
	mov	r5,a
	jnz	00371$
	ljmp	00126$
00371$:
	C$easyax5043.c$1871$3$725 ==.
;	..\COMMON\easyax5043.c:1871: return r;
	mov	dpl,r5
	ljmp	00257$
	C$easyax5043.c$1875$2$724 ==.
;	..\COMMON\easyax5043.c:1875: case AXRADIO_MODE_DEEPSLEEP:
00106$:
	C$easyax5043.c$1877$3$726 ==.
;	..\COMMON\easyax5043.c:1877: uint8_t __autodata r = ax5043_wakeup_deepsleep();
	push	ar7
	lcall	_ax5043_wakeup_deepsleep
	mov	r6,dpl
	pop	ar7
	C$easyax5043.c$1878$3$726 ==.
;	..\COMMON\easyax5043.c:1878: if (r)
	mov	a,r6
	jz	00108$
	C$easyax5043.c$1879$3$726 ==.
;	..\COMMON\easyax5043.c:1879: return AXRADIO_ERR_NOCHIP;
	mov	dpl,#0x05
	ljmp	00257$
00108$:
	C$easyax5043.c$1880$3$726 ==.
;	..\COMMON\easyax5043.c:1880: ax5043_init_registers();
	push	ar7
	lcall	_ax5043_init_registers
	C$easyax5043.c$1881$3$726 ==.
;	..\COMMON\easyax5043.c:1881: r = axradio_set_channel(axradio_curchannel);
	mov	dptr,#_axradio_curchannel
	movx	a,@dptr
	mov	dpl,a
	lcall	_axradio_set_channel
	mov	r6,dpl
	pop	ar7
	C$easyax5043.c$1882$3$726 ==.
;	..\COMMON\easyax5043.c:1882: if (r != AXRADIO_ERR_NOERROR)
	mov	a,r6
	jz	00110$
	C$easyax5043.c$1883$3$726 ==.
;	..\COMMON\easyax5043.c:1883: return r;
	mov	dpl,r6
	ljmp	00257$
00110$:
	C$easyax5043.c$1884$3$726 ==.
;	..\COMMON\easyax5043.c:1884: axradio_trxstate = trxstate_off;
	mov	_axradio_trxstate,#0x00
	C$easyax5043.c$1885$3$726 ==.
;	..\COMMON\easyax5043.c:1885: axradio_mode = AXRADIO_MODE_OFF;
	mov	_axradio_mode,#0x01
	C$easyax5043.c$1886$3$726 ==.
;	..\COMMON\easyax5043.c:1886: break;
	C$easyax5043.c$1894$2$724 ==.
;	..\COMMON\easyax5043.c:1894: case AXRADIO_MODE_CW_TRANSMIT:
	sjmp	00126$
00116$:
	C$libmftypes.h$351$6$759 ==.
;	C:/Program Files (x86)/ON Semiconductor/AXSDB/libmf/include/libmftypes.h:351: criticalsection_t crit = IE & 0x80;
	mov	a,#0x80
	anl	a,_IE
	mov	r6,a
	C$easyax5043.c$1896$6$759 ==.
;	..\COMMON\easyax5043.c:1896: criticalsection_t crit = enter_critical();
	clr	_EA
	C$easyax5043.c$1897$3$727 ==.
;	..\COMMON\easyax5043.c:1897: if (axradio_trxstate == trxstate_off) {
	mov	a,_axradio_trxstate
	jnz	00118$
	C$easyax5043.c$1898$4$728 ==.
;	..\COMMON\easyax5043.c:1898: update_timeanchor();
	push	ar7
	push	ar6
	lcall	_update_timeanchor
	C$easyax5043.c$1899$4$728 ==.
;	..\COMMON\easyax5043.c:1899: wtimer_remove_callback(&axradio_cb_transmitend.cb);
	mov	dptr,#_axradio_cb_transmitend
	lcall	_wtimer_remove_callback
	C$easyax5043.c$1900$4$728 ==.
;	..\COMMON\easyax5043.c:1900: axradio_cb_transmitend.st.error = AXRADIO_ERR_NOERROR;
	mov	dptr,#(_axradio_cb_transmitend + 0x0005)
	clr	a
	movx	@dptr,a
	C$easyax5043.c$1901$4$728 ==.
;	..\COMMON\easyax5043.c:1901: axradio_cb_transmitend.st.time.t = axradio_timeanchor.radiotimer;
	mov	dptr,#(_axradio_timeanchor + 0x0004)
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#(_axradio_cb_transmitend + 0x0006)
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1902$4$728 ==.
;	..\COMMON\easyax5043.c:1902: wtimer_add_callback(&axradio_cb_transmitend.cb);
	mov	dptr,#_axradio_cb_transmitend
	lcall	_wtimer_add_callback
	pop	ar6
	pop	ar7
00118$:
	C$easyax5043.c$1904$3$727 ==.
;	..\COMMON\easyax5043.c:1904: ax5043_off();
	push	ar7
	push	ar6
	lcall	_ax5043_off
	pop	ar6
	C$libmftypes.h$358$6$762 ==.
;	C:/Program Files (x86)/ON Semiconductor/AXSDB/libmf/include/libmftypes.h:358: IE |= crit;
	mov	a,r6
	orl	_IE,a
	C$easyax5043.c$1907$3$727 ==.
;	..\COMMON\easyax5043.c:1907: ax5043_init_registers();
	lcall	_ax5043_init_registers
	pop	ar7
	C$easyax5043.c$1908$3$727 ==.
;	..\COMMON\easyax5043.c:1908: axradio_mode = AXRADIO_MODE_OFF;
	mov	_axradio_mode,#0x01
	C$easyax5043.c$1909$3$727 ==.
;	..\COMMON\easyax5043.c:1909: break;
	C$easyax5043.c$1917$2$724 ==.
;	..\COMMON\easyax5043.c:1917: case AXRADIO_MODE_STREAM_RECEIVE_DATAPIN:
	sjmp	00126$
00124$:
	C$easyax5043.c$1918$2$724 ==.
;	..\COMMON\easyax5043.c:1918: ax5043_off();
	push	ar7
	lcall	_ax5043_off
	C$easyax5043.c$1919$2$724 ==.
;	..\COMMON\easyax5043.c:1919: ax5043_init_registers();
	lcall	_ax5043_init_registers
	pop	ar7
	C$easyax5043.c$1920$2$724 ==.
;	..\COMMON\easyax5043.c:1920: axradio_mode = AXRADIO_MODE_OFF;
	mov	_axradio_mode,#0x01
	C$easyax5043.c$1922$2$724 ==.
;	..\COMMON\easyax5043.c:1922: default:
00125$:
	C$easyax5043.c$1923$2$724 ==.
;	..\COMMON\easyax5043.c:1923: ax5043_off();
	push	ar7
	lcall	_ax5043_off
	pop	ar7
	C$easyax5043.c$1924$2$724 ==.
;	..\COMMON\easyax5043.c:1924: axradio_mode = AXRADIO_MODE_OFF;
	mov	_axradio_mode,#0x01
	C$easyax5043.c$1926$1$723 ==.
;	..\COMMON\easyax5043.c:1926: }
00126$:
	C$easyax5043.c$1927$1$723 ==.
;	..\COMMON\easyax5043.c:1927: axradio_killallcb();
	push	ar7
	lcall	_axradio_killallcb
	pop	ar7
	C$easyax5043.c$1928$1$723 ==.
;	..\COMMON\easyax5043.c:1928: if (mode == AXRADIO_MODE_UNINIT)
	mov	a,r7
	jnz	00128$
	C$easyax5043.c$1929$1$723 ==.
;	..\COMMON\easyax5043.c:1929: return AXRADIO_ERR_NOTSUPPORTED;
	mov	dpl,#0x01
	ljmp	00257$
00128$:
	C$easyax5043.c$1930$1$723 ==.
;	..\COMMON\easyax5043.c:1930: axradio_syncstate = syncstate_off;
	mov	dptr,#_axradio_syncstate
	clr	a
	movx	@dptr,a
	C$easyax5043.c$1931$1$723 ==.
;	..\COMMON\easyax5043.c:1931: switch (mode) {
	mov	a,r7
	add	a,#0xff - 0x33
	jnc	00376$
	ljmp	00253$
00376$:
	mov	a,r7
	add	a,#(00377$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,r7
	add	a,#(00378$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00377$:
	.db	00253$
	.db	00129$
	.db	00130$
	.db	00215$
	.db	00253$
	.db	00253$
	.db	00253$
	.db	00253$
	.db	00253$
	.db	00253$
	.db	00253$
	.db	00253$
	.db	00253$
	.db	00253$
	.db	00253$
	.db	00253$
	.db	00131$
	.db	00133$
	.db	00132$
	.db	00134$
	.db	00253$
	.db	00253$
	.db	00253$
	.db	00253$
	.db	00143$
	.db	00144$
	.db	00145$
	.db	00146$
	.db	00142$
	.db	00253$
	.db	00253$
	.db	00253$
	.db	00135$
	.db	00140$
	.db	00136$
	.db	00141$
	.db	00253$
	.db	00253$
	.db	00253$
	.db	00253$
	.db	00175$
	.db	00176$
	.db	00177$
	.db	00178$
	.db	00174$
	.db	00179$
	.db	00253$
	.db	00253$
	.db	00249$
	.db	00250$
	.db	00251$
	.db	00252$
00378$:
	.db	00253$>>8
	.db	00129$>>8
	.db	00130$>>8
	.db	00215$>>8
	.db	00253$>>8
	.db	00253$>>8
	.db	00253$>>8
	.db	00253$>>8
	.db	00253$>>8
	.db	00253$>>8
	.db	00253$>>8
	.db	00253$>>8
	.db	00253$>>8
	.db	00253$>>8
	.db	00253$>>8
	.db	00253$>>8
	.db	00131$>>8
	.db	00133$>>8
	.db	00132$>>8
	.db	00134$>>8
	.db	00253$>>8
	.db	00253$>>8
	.db	00253$>>8
	.db	00253$>>8
	.db	00143$>>8
	.db	00144$>>8
	.db	00145$>>8
	.db	00146$>>8
	.db	00142$>>8
	.db	00253$>>8
	.db	00253$>>8
	.db	00253$>>8
	.db	00135$>>8
	.db	00140$>>8
	.db	00136$>>8
	.db	00141$>>8
	.db	00253$>>8
	.db	00253$>>8
	.db	00253$>>8
	.db	00253$>>8
	.db	00175$>>8
	.db	00176$>>8
	.db	00177$>>8
	.db	00178$>>8
	.db	00174$>>8
	.db	00179$>>8
	.db	00253$>>8
	.db	00253$>>8
	.db	00249$>>8
	.db	00250$>>8
	.db	00251$>>8
	.db	00252$>>8
	C$easyax5043.c$1932$2$729 ==.
;	..\COMMON\easyax5043.c:1932: case AXRADIO_MODE_OFF:
00129$:
	C$easyax5043.c$1933$2$729 ==.
;	..\COMMON\easyax5043.c:1933: return AXRADIO_ERR_NOERROR;
	mov	dpl,#0x00
	ljmp	00257$
	C$easyax5043.c$1935$2$729 ==.
;	..\COMMON\easyax5043.c:1935: case AXRADIO_MODE_DEEPSLEEP:
00130$:
	C$easyax5043.c$1936$2$729 ==.
;	..\COMMON\easyax5043.c:1936: ax5043_enter_deepsleep();
	lcall	_ax5043_enter_deepsleep
	C$easyax5043.c$1937$2$729 ==.
;	..\COMMON\easyax5043.c:1937: axradio_mode = AXRADIO_MODE_DEEPSLEEP;
	mov	_axradio_mode,#0x02
	C$easyax5043.c$1938$2$729 ==.
;	..\COMMON\easyax5043.c:1938: return AXRADIO_ERR_NOERROR;
	mov	dpl,#0x00
	ljmp	00257$
	C$easyax5043.c$1940$2$729 ==.
;	..\COMMON\easyax5043.c:1940: case AXRADIO_MODE_ASYNC_TRANSMIT:
00131$:
	C$easyax5043.c$1941$2$729 ==.
;	..\COMMON\easyax5043.c:1941: case AXRADIO_MODE_ACK_TRANSMIT:
00132$:
	C$easyax5043.c$1942$2$729 ==.
;	..\COMMON\easyax5043.c:1942: axradio_mode = mode;
	mov	_axradio_mode,r7
	C$easyax5043.c$1943$2$729 ==.
;	..\COMMON\easyax5043.c:1943: axradio_ack_seqnr = 0xff;
	mov	dptr,#_axradio_ack_seqnr
	mov	a,#0xff
	movx	@dptr,a
	C$easyax5043.c$1944$2$729 ==.
;	..\COMMON\easyax5043.c:1944: ax5043_init_registers_tx();
	lcall	_ax5043_init_registers_tx
	C$easyax5043.c$1945$2$729 ==.
;	..\COMMON\easyax5043.c:1945: return AXRADIO_ERR_NOERROR;
	mov	dpl,#0x00
	ljmp	00257$
	C$easyax5043.c$1947$2$729 ==.
;	..\COMMON\easyax5043.c:1947: case AXRADIO_MODE_WOR_TRANSMIT:
00133$:
	C$easyax5043.c$1948$2$729 ==.
;	..\COMMON\easyax5043.c:1948: case AXRADIO_MODE_WOR_ACK_TRANSMIT:
00134$:
	C$easyax5043.c$1949$2$729 ==.
;	..\COMMON\easyax5043.c:1949: axradio_mode = mode;
	mov	_axradio_mode,r7
	C$easyax5043.c$1950$2$729 ==.
;	..\COMMON\easyax5043.c:1950: axradio_ack_seqnr = 0xff;
	mov	dptr,#_axradio_ack_seqnr
	mov	a,#0xff
	movx	@dptr,a
	C$easyax5043.c$1951$2$729 ==.
;	..\COMMON\easyax5043.c:1951: ax5043_init_registers_tx();
	lcall	_ax5043_init_registers_tx
	C$easyax5043.c$1952$2$729 ==.
;	..\COMMON\easyax5043.c:1952: return AXRADIO_ERR_NOERROR;
	mov	dpl,#0x00
	ljmp	00257$
	C$easyax5043.c$1954$2$729 ==.
;	..\COMMON\easyax5043.c:1954: case AXRADIO_MODE_ASYNC_RECEIVE:
00135$:
	C$easyax5043.c$1955$2$729 ==.
;	..\COMMON\easyax5043.c:1955: case AXRADIO_MODE_ACK_RECEIVE:
00136$:
	C$easyax5043.c$1956$2$729 ==.
;	..\COMMON\easyax5043.c:1956: axradio_mode = mode;
	mov	_axradio_mode,r7
	C$easyax5043.c$1957$2$729 ==.
;	..\COMMON\easyax5043.c:1957: axradio_ack_seqnr = 0xff;
	mov	dptr,#_axradio_ack_seqnr
	mov	a,#0xff
	movx	@dptr,a
	C$easyax5043.c$1958$2$729 ==.
;	..\COMMON\easyax5043.c:1958: ax5043_init_registers_rx();
	lcall	_ax5043_init_registers_rx
	C$easyax5043.c$1959$2$729 ==.
;	..\COMMON\easyax5043.c:1959: ax5043_receiver_on_continuous();
	lcall	_ax5043_receiver_on_continuous
	C$easyax5043.c$1960$2$729 ==.
;	..\COMMON\easyax5043.c:1960: enablecs:
00137$:
	C$easyax5043.c$1961$2$729 ==.
;	..\COMMON\easyax5043.c:1961: if (axradio_phy_cs_enabled) {
	mov	dptr,#_axradio_phy_cs_enabled
	clr	a
	movc	a,@a+dptr
	jz	00139$
	C$easyax5043.c$1962$3$730 ==.
;	..\COMMON\easyax5043.c:1962: wtimer_remove(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer_remove
	C$easyax5043.c$1963$3$730 ==.
;	..\COMMON\easyax5043.c:1963: axradio_timer.time = axradio_phy_cs_period;
	mov	dptr,#_axradio_phy_cs_period
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r6,a
	mov	r4,#0x00
	mov	r3,#0x00
	mov	dptr,#(_axradio_timer + 0x0004)
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1964$3$730 ==.
;	..\COMMON\easyax5043.c:1964: wtimer0_addrelative(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer0_addrelative
00139$:
	C$easyax5043.c$1966$2$729 ==.
;	..\COMMON\easyax5043.c:1966: return AXRADIO_ERR_NOERROR;
	mov	dpl,#0x00
	ljmp	00257$
	C$easyax5043.c$1968$2$729 ==.
;	..\COMMON\easyax5043.c:1968: case AXRADIO_MODE_WOR_RECEIVE:
00140$:
	C$easyax5043.c$1969$2$729 ==.
;	..\COMMON\easyax5043.c:1969: case AXRADIO_MODE_WOR_ACK_RECEIVE:
00141$:
	C$easyax5043.c$1970$2$729 ==.
;	..\COMMON\easyax5043.c:1970: axradio_ack_seqnr = 0xff;
	mov	dptr,#_axradio_ack_seqnr
	mov	a,#0xff
	movx	@dptr,a
	C$easyax5043.c$1971$2$729 ==.
;	..\COMMON\easyax5043.c:1971: axradio_mode = mode;
	mov	_axradio_mode,r7
	C$easyax5043.c$1972$2$729 ==.
;	..\COMMON\easyax5043.c:1972: ax5043_init_registers_rx();
	lcall	_ax5043_init_registers_rx
	C$easyax5043.c$1973$2$729 ==.
;	..\COMMON\easyax5043.c:1973: ax5043_receiver_on_wor();
	lcall	_ax5043_receiver_on_wor
	C$easyax5043.c$1974$2$729 ==.
;	..\COMMON\easyax5043.c:1974: return AXRADIO_ERR_NOERROR;
	mov	dpl,#0x00
	ljmp	00257$
	C$easyax5043.c$1976$2$729 ==.
;	..\COMMON\easyax5043.c:1976: case AXRADIO_MODE_STREAM_TRANSMIT:
00142$:
	C$easyax5043.c$1977$2$729 ==.
;	..\COMMON\easyax5043.c:1977: case AXRADIO_MODE_STREAM_TRANSMIT_UNENC:
00143$:
	C$easyax5043.c$1978$2$729 ==.
;	..\COMMON\easyax5043.c:1978: case AXRADIO_MODE_STREAM_TRANSMIT_SCRAM:
00144$:
	C$easyax5043.c$1979$2$729 ==.
;	..\COMMON\easyax5043.c:1979: case AXRADIO_MODE_STREAM_TRANSMIT_UNENC_LSB:
00145$:
	C$easyax5043.c$1980$2$729 ==.
;	..\COMMON\easyax5043.c:1980: case AXRADIO_MODE_STREAM_TRANSMIT_SCRAM_LSB:
00146$:
	C$easyax5043.c$1981$2$729 ==.
;	..\COMMON\easyax5043.c:1981: axradio_mode = mode;
	mov	_axradio_mode,r7
	C$easyax5043.c$1982$2$729 ==.
;	..\COMMON\easyax5043.c:1982: if (axradio_mode == AXRADIO_MODE_STREAM_TRANSMIT_UNENC ||
	mov	a,#0x18
	cjne	a,_axradio_mode,00380$
	sjmp	00147$
00380$:
	C$easyax5043.c$1983$2$729 ==.
;	..\COMMON\easyax5043.c:1983: axradio_mode == AXRADIO_MODE_STREAM_TRANSMIT_UNENC_LSB)
	mov	a,#0x1a
	cjne	a,_axradio_mode,00151$
	C$easyax5043.c$1984$2$729 ==.
;	..\COMMON\easyax5043.c:1984: radio_write8(AX5043_REG_ENCODING, 0);
00147$:
	mov	dptr,#0x4011
	clr	a
	movx	@dptr,a
00151$:
	C$easyax5043.c$1985$2$729 ==.
;	..\COMMON\easyax5043.c:1985: if (axradio_mode == AXRADIO_MODE_STREAM_TRANSMIT_SCRAM ||
	mov	a,#0x19
	cjne	a,_axradio_mode,00383$
	sjmp	00153$
00383$:
	C$easyax5043.c$1986$2$729 ==.
;	..\COMMON\easyax5043.c:1986: axradio_mode == AXRADIO_MODE_STREAM_TRANSMIT_SCRAM_LSB)
	mov	a,#0x1b
	cjne	a,_axradio_mode,00157$
	C$easyax5043.c$1987$2$729 ==.
;	..\COMMON\easyax5043.c:1987: radio_write8(AX5043_REG_ENCODING, 4);
00153$:
	mov	dptr,#0x4011
	mov	a,#0x04
	movx	@dptr,a
00157$:
	C$easyax5043.c$1988$2$729 ==.
;	..\COMMON\easyax5043.c:1988: if (axradio_mode == AXRADIO_MODE_STREAM_TRANSMIT_UNENC_LSB ||
	mov	a,#0x1a
	cjne	a,_axradio_mode,00386$
	sjmp	00159$
00386$:
	C$easyax5043.c$1989$2$729 ==.
;	..\COMMON\easyax5043.c:1989: axradio_mode == AXRADIO_MODE_STREAM_TRANSMIT_SCRAM_LSB)
	mov	a,#0x1b
	cjne	a,_axradio_mode,00163$
	C$easyax5043.c$1990$2$729 ==.
;	..\COMMON\easyax5043.c:1990: radio_write8(AX5043_REG_PKTADDRCFG, (radio_read8(AX5043_REG_PKTADDRCFG) & 0x7F));
00159$:
	mov	dptr,#0x4200
	movx	a,@dptr
	anl	a,#0x7f
	mov	r6,a
	movx	@dptr,a
00163$:
	C$easyax5043.c$1991$2$729 ==.
;	..\COMMON\easyax5043.c:1991: ax5043_init_registers_tx();
	lcall	_ax5043_init_registers_tx
	C$easyax5043.c$1992$3$734 ==.
;	..\COMMON\easyax5043.c:1992: radio_write8(AX5043_REG_FRAMING, 0);
	mov	dptr,#0x4012
	clr	a
	movx	@dptr,a
	C$easyax5043.c$1993$2$729 ==.
;	..\COMMON\easyax5043.c:1993: ax5043_prepare_tx();
	lcall	_ax5043_prepare_tx
	C$easyax5043.c$1994$2$729 ==.
;	..\COMMON\easyax5043.c:1994: axradio_trxstate = trxstate_txstream_xtalwait;
	mov	_axradio_trxstate,#0x0f
	C$easyax5043.c$1995$2$729 ==.
;	..\COMMON\easyax5043.c:1995: while (!(radio_read8(AX5043_REG_POWSTAT) & 0x08)) {}; // wait for modem vdd so writing the FIFO is safe
00168$:
	mov	dptr,#0x4003
	movx	a,@dptr
	mov	r6,a
	jnb	acc.3,00168$
	C$easyax5043.c$1996$3$736 ==.
;	..\COMMON\easyax5043.c:1996: radio_write8(AX5043_REG_FIFOSTAT, 3); // clear FIFO data & flags (prevent transmitting anything left over in the FIFO, this has no effect if the FIFO is not powerered, in this case it is reset any way)
	mov	dptr,#0x4028
	mov	a,#0x03
	movx	@dptr,a
	C$easyax5043.c$1997$2$729 ==.
;	..\COMMON\easyax5043.c:1997: radio_read8(AX5043_REG_RADIOEVENTREQ0); // make sure REVRDONE bit is cleared, so it is a reliable indicator that the packet is out
	mov	dptr,#0x400f
	movx	a,@dptr
	C$easyax5043.c$1998$2$729 ==.
;	..\COMMON\easyax5043.c:1998: update_timeanchor();
	lcall	_update_timeanchor
	C$easyax5043.c$1999$2$729 ==.
;	..\COMMON\easyax5043.c:1999: wtimer_remove_callback(&axradio_cb_transmitdata.cb);
	mov	dptr,#_axradio_cb_transmitdata
	lcall	_wtimer_remove_callback
	C$easyax5043.c$2000$2$729 ==.
;	..\COMMON\easyax5043.c:2000: axradio_cb_transmitdata.st.error = AXRADIO_ERR_NOERROR;
	mov	dptr,#(_axradio_cb_transmitdata + 0x0005)
	clr	a
	movx	@dptr,a
	C$easyax5043.c$2001$2$729 ==.
;	..\COMMON\easyax5043.c:2001: axradio_cb_transmitdata.st.time.t = axradio_timeanchor.radiotimer;
	mov	dptr,#(_axradio_timeanchor + 0x0004)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#(_axradio_cb_transmitdata + 0x0006)
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
	C$easyax5043.c$2002$2$729 ==.
;	..\COMMON\easyax5043.c:2002: wtimer_add_callback(&axradio_cb_transmitdata.cb);
	mov	dptr,#_axradio_cb_transmitdata
	lcall	_wtimer_add_callback
	C$easyax5043.c$2003$2$729 ==.
;	..\COMMON\easyax5043.c:2003: return AXRADIO_ERR_NOERROR;
	mov	dpl,#0x00
	ljmp	00257$
	C$easyax5043.c$2005$2$729 ==.
;	..\COMMON\easyax5043.c:2005: case AXRADIO_MODE_STREAM_RECEIVE:
00174$:
	C$easyax5043.c$2006$2$729 ==.
;	..\COMMON\easyax5043.c:2006: case AXRADIO_MODE_STREAM_RECEIVE_UNENC:
00175$:
	C$easyax5043.c$2007$2$729 ==.
;	..\COMMON\easyax5043.c:2007: case AXRADIO_MODE_STREAM_RECEIVE_SCRAM:
00176$:
	C$easyax5043.c$2008$2$729 ==.
;	..\COMMON\easyax5043.c:2008: case AXRADIO_MODE_STREAM_RECEIVE_UNENC_LSB:
00177$:
	C$easyax5043.c$2009$2$729 ==.
;	..\COMMON\easyax5043.c:2009: case AXRADIO_MODE_STREAM_RECEIVE_SCRAM_LSB:
00178$:
	C$easyax5043.c$2010$2$729 ==.
;	..\COMMON\easyax5043.c:2010: case AXRADIO_MODE_STREAM_RECEIVE_DATAPIN:
00179$:
	C$easyax5043.c$2011$2$729 ==.
;	..\COMMON\easyax5043.c:2011: axradio_mode = mode;
	mov	_axradio_mode,r7
	C$easyax5043.c$2012$2$729 ==.
;	..\COMMON\easyax5043.c:2012: ax5043_init_registers_rx();
	lcall	_ax5043_init_registers_rx
	C$easyax5043.c$2013$2$729 ==.
;	..\COMMON\easyax5043.c:2013: if (axradio_mode == AXRADIO_MODE_STREAM_RECEIVE_UNENC ||
	mov	a,#0x28
	cjne	a,_axradio_mode,00390$
	sjmp	00180$
00390$:
	C$easyax5043.c$2014$2$729 ==.
;	..\COMMON\easyax5043.c:2014: axradio_mode == AXRADIO_MODE_STREAM_RECEIVE_UNENC_LSB)
	mov	a,#0x2a
	cjne	a,_axradio_mode,00184$
	C$easyax5043.c$2015$2$729 ==.
;	..\COMMON\easyax5043.c:2015: radio_write8(AX5043_REG_ENCODING, 0);
00180$:
	mov	dptr,#0x4011
	clr	a
	movx	@dptr,a
00184$:
	C$easyax5043.c$2016$2$729 ==.
;	..\COMMON\easyax5043.c:2016: if (axradio_mode == AXRADIO_MODE_STREAM_RECEIVE_SCRAM ||
	mov	a,#0x29
	cjne	a,_axradio_mode,00393$
	sjmp	00186$
00393$:
	C$easyax5043.c$2017$2$729 ==.
;	..\COMMON\easyax5043.c:2017: axradio_mode == AXRADIO_MODE_STREAM_RECEIVE_SCRAM_LSB)
	mov	a,#0x2b
	cjne	a,_axradio_mode,00190$
	C$easyax5043.c$2018$2$729 ==.
;	..\COMMON\easyax5043.c:2018: radio_write8(AX5043_REG_ENCODING, 4);
00186$:
	mov	dptr,#0x4011
	mov	a,#0x04
	movx	@dptr,a
00190$:
	C$easyax5043.c$2019$2$729 ==.
;	..\COMMON\easyax5043.c:2019: if (axradio_mode == AXRADIO_MODE_STREAM_RECEIVE_UNENC_LSB ||
	mov	a,#0x2a
	cjne	a,_axradio_mode,00396$
	sjmp	00192$
00396$:
	C$easyax5043.c$2020$2$729 ==.
;	..\COMMON\easyax5043.c:2020: axradio_mode == AXRADIO_MODE_STREAM_RECEIVE_SCRAM_LSB)
	mov	a,#0x2b
	cjne	a,_axradio_mode,00198$
	C$easyax5043.c$2021$2$729 ==.
;	..\COMMON\easyax5043.c:2021: radio_write8(AX5043_REG_PKTADDRCFG, (radio_read8(AX5043_REG_PKTADDRCFG) & 0x7F));
00192$:
	mov	dptr,#0x4200
	movx	a,@dptr
	anl	a,#0x7f
	mov	r6,a
	movx	@dptr,a
	C$easyax5043.c$2022$2$729 ==.
;	..\COMMON\easyax5043.c:2022: radio_write8(AX5043_REG_FRAMING, 0);
00198$:
	mov	dptr,#0x4012
	clr	a
	movx	@dptr,a
	C$easyax5043.c$2023$3$741 ==.
;	..\COMMON\easyax5043.c:2023: radio_write8(AX5043_REG_PKTCHUNKSIZE, 8); // 64 byte
	mov	dptr,#0x4230
	mov	a,#0x08
	movx	@dptr,a
	C$easyax5043.c$2024$3$742 ==.
;	..\COMMON\easyax5043.c:2024: radio_write8(AX5043_REG_RXPARAMSETS, 0x00);
	mov	dptr,#0x4117
	clr	a
	movx	@dptr,a
	C$easyax5043.c$2025$2$729 ==.
;	..\COMMON\easyax5043.c:2025: if (axradio_mode == AXRADIO_MODE_STREAM_RECEIVE_DATAPIN) {
	mov	a,#0x2d
	cjne	a,_axradio_mode,00214$
	C$easyax5043.c$2026$3$743 ==.
;	..\COMMON\easyax5043.c:2026: ax5043_set_registers_rxcont_singleparamset();
	lcall	_ax5043_set_registers_rxcont_singleparamset
	C$easyax5043.c$2027$4$744 ==.
;	..\COMMON\easyax5043.c:2027: radio_write8(AX5043_REG_PINFUNCDATA, 0x04);
	mov	dptr,#0x4023
	mov	a,#0x04
	movx	@dptr,a
	C$easyax5043.c$2028$4$745 ==.
;	..\COMMON\easyax5043.c:2028: radio_write8(AX5043_REG_PINFUNCDCLK, 0x04);
	mov	dptr,#0x4022
	movx	@dptr,a
00214$:
	C$easyax5043.c$2030$2$729 ==.
;	..\COMMON\easyax5043.c:2030: ax5043_receiver_on_continuous();
	lcall	_ax5043_receiver_on_continuous
	C$easyax5043.c$2031$2$729 ==.
;	..\COMMON\easyax5043.c:2031: goto enablecs;
	ljmp	00137$
	C$easyax5043.c$2033$2$729 ==.
;	..\COMMON\easyax5043.c:2033: case AXRADIO_MODE_CW_TRANSMIT:
00215$:
	C$easyax5043.c$2034$2$729 ==.
;	..\COMMON\easyax5043.c:2034: axradio_mode = AXRADIO_MODE_CW_TRANSMIT;
	mov	_axradio_mode,#0x03
	C$easyax5043.c$2035$2$729 ==.
;	..\COMMON\easyax5043.c:2035: ax5043_init_registers_tx();
	lcall	_ax5043_init_registers_tx
	C$easyax5043.c$2036$3$746 ==.
;	..\COMMON\easyax5043.c:2036: radio_write8(AX5043_REG_MODULATION, 8);   // Set an FSK mode
	mov	dptr,#0x4010
	mov	a,#0x08
	movx	@dptr,a
	C$easyax5043.c$2037$3$747 ==.
;	..\COMMON\easyax5043.c:2037: radio_write8(AX5043_REG_FSKDEV2, 0x00);
	mov	dptr,#0x4161
	clr	a
	movx	@dptr,a
	C$easyax5043.c$2038$3$748 ==.
;	..\COMMON\easyax5043.c:2038: radio_write8(AX5043_REG_FSKDEV1, 0x00);
	mov	dptr,#0x4162
	movx	@dptr,a
	C$easyax5043.c$2039$3$749 ==.
;	..\COMMON\easyax5043.c:2039: radio_write8(AX5043_REG_FSKDEV0, 0x00);
	mov	dptr,#0x4163
	movx	@dptr,a
	C$easyax5043.c$2040$3$750 ==.
;	..\COMMON\easyax5043.c:2040: radio_write8(AX5043_REG_TXRATE2, 0x00);
	mov	dptr,#0x4165
	movx	@dptr,a
	C$easyax5043.c$2041$3$751 ==.
;	..\COMMON\easyax5043.c:2041: radio_write8(AX5043_REG_TXRATE1, 0x00);
	mov	dptr,#0x4166
	movx	@dptr,a
	C$easyax5043.c$2042$3$752 ==.
;	..\COMMON\easyax5043.c:2042: radio_write8(AX5043_REG_TXRATE0, 0x01);
	mov	dptr,#0x4167
	inc	a
	movx	@dptr,a
	C$easyax5043.c$2043$3$753 ==.
;	..\COMMON\easyax5043.c:2043: radio_write8(AX5043_REG_PINFUNCDATA, 0x04);
	mov	dptr,#0x4023
	mov	a,#0x04
	movx	@dptr,a
	C$easyax5043.c$2044$3$754 ==.
;	..\COMMON\easyax5043.c:2044: radio_write8(AX5043_REG_PWRMODE, AX5043_PWRSTATE_FIFO_ON);
	mov	dptr,#0x4002
	mov	a,#0x07
	movx	@dptr,a
	C$easyax5043.c$2045$2$729 ==.
;	..\COMMON\easyax5043.c:2045: axradio_trxstate = trxstate_txcw_xtalwait;
	mov	_axradio_trxstate,#0x0e
	C$easyax5043.c$2046$3$755 ==.
;	..\COMMON\easyax5043.c:2046: radio_write8(AX5043_REG_IRQMASK0, 0x00);
	mov	dptr,#0x4007
	clr	a
	movx	@dptr,a
	C$easyax5043.c$2047$3$756 ==.
;	..\COMMON\easyax5043.c:2047: radio_write8(AX5043_REG_IRQMASK1, 0x01); // enable xtal ready interrupt
	mov	dptr,#0x4006
	inc	a
	movx	@dptr,a
	C$easyax5043.c$2048$2$729 ==.
;	..\COMMON\easyax5043.c:2048: return AXRADIO_ERR_NOERROR;
	mov	dpl,#0x00
	ljmp	00257$
	C$easyax5043.c$2050$2$729 ==.
;	..\COMMON\easyax5043.c:2050: case AXRADIO_MODE_SYNC_MASTER:
00249$:
	C$easyax5043.c$2051$2$729 ==.
;	..\COMMON\easyax5043.c:2051: case AXRADIO_MODE_SYNC_ACK_MASTER:
00250$:
	C$easyax5043.c$2052$2$729 ==.
;	..\COMMON\easyax5043.c:2052: axradio_mode = mode;
	mov	_axradio_mode,r7
	C$easyax5043.c$2053$2$729 ==.
;	..\COMMON\easyax5043.c:2053: axradio_syncstate = syncstate_master_normal;
	mov	dptr,#_axradio_syncstate
	mov	a,#0x03
	movx	@dptr,a
	C$easyax5043.c$2055$2$729 ==.
;	..\COMMON\easyax5043.c:2055: wtimer_remove(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer_remove
	C$easyax5043.c$2056$2$729 ==.
;	..\COMMON\easyax5043.c:2056: axradio_timer.time = 2;
	mov	dptr,#(_axradio_timer + 0x0004)
	mov	a,#0x02
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$2057$2$729 ==.
;	..\COMMON\easyax5043.c:2057: wtimer0_addrelative(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer0_addrelative
	C$easyax5043.c$2058$2$729 ==.
;	..\COMMON\easyax5043.c:2058: axradio_sync_time = axradio_timer.time;
	mov	dptr,#(_axradio_timer + 0x0004)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_axradio_sync_time
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
	C$easyax5043.c$2059$2$729 ==.
;	..\COMMON\easyax5043.c:2059: axradio_sync_addtime(axradio_sync_xoscstartup);
	mov	dptr,#_axradio_sync_xoscstartup
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r4,a
	mov	a,#0x02
	movc	a,@a+dptr
	mov	r5,a
	mov	a,#0x03
	movc	a,@a+dptr
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	_axradio_sync_addtime
	C$easyax5043.c$2060$2$729 ==.
;	..\COMMON\easyax5043.c:2060: return AXRADIO_ERR_NOERROR;
	mov	dpl,#0x00
	ljmp	00257$
	C$easyax5043.c$2062$2$729 ==.
;	..\COMMON\easyax5043.c:2062: case AXRADIO_MODE_SYNC_SLAVE:
00251$:
	C$easyax5043.c$2063$2$729 ==.
;	..\COMMON\easyax5043.c:2063: case AXRADIO_MODE_SYNC_ACK_SLAVE:
00252$:
	C$easyax5043.c$2064$2$729 ==.
;	..\COMMON\easyax5043.c:2064: axradio_mode = mode;
	mov	_axradio_mode,r7
	C$easyax5043.c$2065$2$729 ==.
;	..\COMMON\easyax5043.c:2065: ax5043_init_registers_rx();
	lcall	_ax5043_init_registers_rx
	C$easyax5043.c$2066$2$729 ==.
;	..\COMMON\easyax5043.c:2066: ax5043_receiver_on_continuous();
	lcall	_ax5043_receiver_on_continuous
	C$easyax5043.c$2067$2$729 ==.
;	..\COMMON\easyax5043.c:2067: axradio_syncstate = syncstate_slave_synchunt;
	mov	dptr,#_axradio_syncstate
	mov	a,#0x06
	movx	@dptr,a
	C$easyax5043.c$2068$2$729 ==.
;	..\COMMON\easyax5043.c:2068: wtimer_remove(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer_remove
	C$easyax5043.c$2069$2$729 ==.
;	..\COMMON\easyax5043.c:2069: axradio_timer.time = axradio_sync_slave_initialsyncwindow;
	mov	dptr,#_axradio_sync_slave_initialsyncwindow
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r5,a
	mov	a,#0x02
	movc	a,@a+dptr
	mov	r6,a
	mov	a,#0x03
	movc	a,@a+dptr
	mov	r7,a
	mov	dptr,#(_axradio_timer + 0x0004)
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
	C$easyax5043.c$2070$2$729 ==.
;	..\COMMON\easyax5043.c:2070: wtimer0_addrelative(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer0_addrelative
	C$easyax5043.c$2071$2$729 ==.
;	..\COMMON\easyax5043.c:2071: axradio_sync_time = axradio_timer.time;
	mov	dptr,#(_axradio_timer + 0x0004)
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
	mov	dptr,#_axradio_sync_time
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
	C$easyax5043.c$2072$2$729 ==.
;	..\COMMON\easyax5043.c:2072: wtimer_remove_callback(&axradio_cb_receive.cb);
	mov	dptr,#_axradio_cb_receive
	lcall	_wtimer_remove_callback
	C$easyax5043.c$2073$2$729 ==.
;	..\COMMON\easyax5043.c:2073: memset_xdata(&axradio_cb_receive.st, 0, sizeof(axradio_cb_receive.st));
	mov	_memset_PARM_2,#0x00
	mov	_memset_PARM_3,#0x20
	mov	(_memset_PARM_3 + 1),#0x00
	mov	dptr,#(_axradio_cb_receive + 0x0004)
	mov	b,#0x00
	lcall	_memset
	C$easyax5043.c$2074$2$729 ==.
;	..\COMMON\easyax5043.c:2074: axradio_cb_receive.st.time.t = axradio_timeanchor.radiotimer;
	mov	dptr,#(_axradio_timeanchor + 0x0004)
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
	mov	dptr,#(_axradio_cb_receive + 0x0006)
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
	C$easyax5043.c$2075$2$729 ==.
;	..\COMMON\easyax5043.c:2075: axradio_cb_receive.st.error = AXRADIO_ERR_RESYNC;
	mov	dptr,#(_axradio_cb_receive + 0x0005)
	mov	a,#0x09
	movx	@dptr,a
	C$easyax5043.c$2076$2$729 ==.
;	..\COMMON\easyax5043.c:2076: wtimer_add_callback(&axradio_cb_receive.cb);
	mov	dptr,#_axradio_cb_receive
	lcall	_wtimer_add_callback
	C$easyax5043.c$2077$2$729 ==.
;	..\COMMON\easyax5043.c:2077: return AXRADIO_ERR_NOERROR;
	mov	dpl,#0x00
	C$easyax5043.c$2079$2$729 ==.
;	..\COMMON\easyax5043.c:2079: default:
	sjmp	00257$
00253$:
	C$easyax5043.c$2080$2$729 ==.
;	..\COMMON\easyax5043.c:2080: return AXRADIO_ERR_NOTSUPPORTED;
	mov	dpl,#0x01
	C$easyax5043.c$2081$1$723 ==.
;	..\COMMON\easyax5043.c:2081: }
00257$:
	C$easyax5043.c$2082$1$723 ==.
	XG$axradio_set_mode$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_get_mode'
;------------------------------------------------------------
	G$axradio_get_mode$0$0 ==.
	C$easyax5043.c$2084$1$723 ==.
;	..\COMMON\easyax5043.c:2084: uint8_t axradio_get_mode(void)
;	-----------------------------------------
;	 function axradio_get_mode
;	-----------------------------------------
_axradio_get_mode:
	C$easyax5043.c$2086$1$764 ==.
;	..\COMMON\easyax5043.c:2086: return axradio_mode;
	mov	dpl,_axradio_mode
	C$easyax5043.c$2087$1$764 ==.
	XG$axradio_get_mode$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_set_channel'
;------------------------------------------------------------
;chnum                     Allocated to registers r7 
;rng                       Allocated with name '_axradio_set_channel_rng_1_766'
;f                         Allocated to registers r3 r4 r6 r7 
;------------------------------------------------------------
	G$axradio_set_channel$0$0 ==.
	C$easyax5043.c$2089$1$764 ==.
;	..\COMMON\easyax5043.c:2089: uint8_t axradio_set_channel(uint8_t chnum)
;	-----------------------------------------
;	 function axradio_set_channel
;	-----------------------------------------
_axradio_set_channel:
	mov	r7,dpl
	C$easyax5043.c$2092$1$766 ==.
;	..\COMMON\easyax5043.c:2092: if (chnum >= axradio_phy_nrchannels)
	mov	dptr,#_axradio_phy_nrchannels
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	clr	c
	mov	a,r7
	subb	a,r6
	jc	00102$
	C$easyax5043.c$2093$1$766 ==.
;	..\COMMON\easyax5043.c:2093: return AXRADIO_ERR_INVALID;
	mov	dpl,#0x04
	ljmp	00141$
00102$:
	C$easyax5043.c$2094$1$766 ==.
;	..\COMMON\easyax5043.c:2094: axradio_curchannel = chnum;
	mov	dptr,#_axradio_curchannel
	mov	a,r7
	movx	@dptr,a
	C$easyax5043.c$2095$1$766 ==.
;	..\COMMON\easyax5043.c:2095: rng = axradio_phy_chanpllrng[chnum];
	mov	a,r7
	mov	b,#0x02
	mul	ab
	add	a,#_axradio_phy_chanpllrng
	mov	dpl,a
	mov	a,#(_axradio_phy_chanpllrng >> 8)
	addc	a,b
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	C$easyax5043.c$2096$1$766 ==.
;	..\COMMON\easyax5043.c:2096: if (rng & 0x20)
	mov	a,r5
	mov	_axradio_set_channel_rng_1_766,a
	jnb	acc.5,00104$
	C$easyax5043.c$2097$1$766 ==.
;	..\COMMON\easyax5043.c:2097: return AXRADIO_ERR_RANGING;
	mov	dpl,#0x06
	ljmp	00141$
00104$:
	C$easyax5043.c$2099$2$767 ==.
;	..\COMMON\easyax5043.c:2099: uint32_t __autodata f = axradio_phy_chanfreq[chnum];
	mov	a,r7
	mov	b,#0x04
	mul	ab
	add	a,#_axradio_phy_chanfreq
	mov	dpl,a
	mov	a,#(_axradio_phy_chanfreq >> 8)
	addc	a,b
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	C$easyax5043.c$2100$2$767 ==.
;	..\COMMON\easyax5043.c:2100: f += axradio_curfreqoffset;
	mov	dptr,#_axradio_curfreqoffset
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r0
	add	a,r3
	mov	r3,a
	mov	a,r1
	addc	a,r4
	mov	r4,a
	mov	a,r2
	addc	a,r6
	mov	r6,a
	mov	a,r5
	addc	a,r7
	mov	r7,a
	C$easyax5043.c$2101$2$767 ==.
;	..\COMMON\easyax5043.c:2101: if (radio_read8(AX5043_REG_PLLLOOP) & 0x80) {
	mov	dptr,#0x4030
	movx	a,@dptr
	mov	r5,a
	jnb	acc.7,00120$
	C$easyax5043.c$2102$4$769 ==.
;	..\COMMON\easyax5043.c:2102: radio_write8(AX5043_REG_PLLRANGINGA, (rng & 0x0F));
	mov	a,#0x0f
	anl	a,_axradio_set_channel_rng_1_766
	mov	dptr,#0x4033
	movx	@dptr,a
	C$easyax5043.c$2103$4$770 ==.
;	..\COMMON\easyax5043.c:2103: radio_write8(AX5043_REG_FREQA0, f);
	mov	ar5,r3
	mov	dptr,#0x4037
	mov	a,r5
	movx	@dptr,a
	C$easyax5043.c$2104$4$771 ==.
;	..\COMMON\easyax5043.c:2104: radio_write8(AX5043_REG_FREQA1, f >> 8);
	mov	ar5,r4
	mov	dptr,#0x4036
	mov	a,r5
	movx	@dptr,a
	C$easyax5043.c$2105$4$772 ==.
;	..\COMMON\easyax5043.c:2105: radio_write8(AX5043_REG_FREQA2, f >> 16);
	mov	ar5,r6
	mov	dptr,#0x4035
	mov	a,r5
	movx	@dptr,a
	C$easyax5043.c$2106$4$773 ==.
;	..\COMMON\easyax5043.c:2106: radio_write8(AX5043_REG_FREQA3, f >> 24);
	mov	ar5,r7
	mov	dptr,#0x4034
	mov	a,r5
	movx	@dptr,a
	C$easyax5043.c$2108$3$774 ==.
;	..\COMMON\easyax5043.c:2108: radio_write8(AX5043_REG_PLLRANGINGB, rng & 0x0F);
	sjmp	00138$
00120$:
	mov	a,#0x0f
	anl	a,_axradio_set_channel_rng_1_766
	mov	dptr,#0x403b
	movx	@dptr,a
	C$easyax5043.c$2109$4$776 ==.
;	..\COMMON\easyax5043.c:2109: radio_write8(AX5043_REG_FREQB0, f);
	mov	ar5,r3
	mov	dptr,#0x403f
	mov	a,r5
	movx	@dptr,a
	C$easyax5043.c$2110$4$777 ==.
;	..\COMMON\easyax5043.c:2110: radio_write8(AX5043_REG_FREQB1, f >> 8);
	mov	ar5,r4
	mov	dptr,#0x403e
	mov	a,r5
	movx	@dptr,a
	C$easyax5043.c$2111$4$778 ==.
;	..\COMMON\easyax5043.c:2111: radio_write8(AX5043_REG_FREQB2, f >> 16);
	mov	ar5,r6
	mov	dptr,#0x403d
	mov	a,r5
	movx	@dptr,a
	C$easyax5043.c$2112$4$779 ==.
;	..\COMMON\easyax5043.c:2112: radio_write8(AX5043_REG_FREQB3, f >> 24);
	mov	ar3,r7
	mov	dptr,#0x403c
	mov	a,r3
	movx	@dptr,a
	C$easyax5043.c$2115$1$766 ==.
;	..\COMMON\easyax5043.c:2115: radio_write8(AX5043_REG_PLLLOOP, radio_read8(AX5043_REG_PLLLOOP) ^ 0x80);
00138$:
	mov	dptr,#0x4030
	movx	a,@dptr
	xrl	a,#0x80
	mov	r7,a
	movx	@dptr,a
	C$easyax5043.c$2116$1$766 ==.
;	..\COMMON\easyax5043.c:2116: return AXRADIO_ERR_NOERROR;
	mov	dpl,#0x00
00141$:
	C$easyax5043.c$2117$1$766 ==.
	XG$axradio_set_channel$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_get_channel'
;------------------------------------------------------------
	G$axradio_get_channel$0$0 ==.
	C$easyax5043.c$2119$1$766 ==.
;	..\COMMON\easyax5043.c:2119: uint8_t axradio_get_channel(void)
;	-----------------------------------------
;	 function axradio_get_channel
;	-----------------------------------------
_axradio_get_channel:
	C$easyax5043.c$2121$1$782 ==.
;	..\COMMON\easyax5043.c:2121: return axradio_curchannel;
	mov	dptr,#_axradio_curchannel
	movx	a,@dptr
	C$easyax5043.c$2122$1$782 ==.
	XG$axradio_get_channel$0$0 ==.
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_get_pllrange'
;------------------------------------------------------------
	G$axradio_get_pllrange$0$0 ==.
	C$easyax5043.c$2124$1$782 ==.
;	..\COMMON\easyax5043.c:2124: uint16_t axradio_get_pllrange(void)
;	-----------------------------------------
;	 function axradio_get_pllrange
;	-----------------------------------------
_axradio_get_pllrange:
	C$easyax5043.c$2126$1$784 ==.
;	..\COMMON\easyax5043.c:2126: return axradio_phy_chanpllrng[axradio_curchannel] & 0x000F;
	mov	dptr,#_axradio_curchannel
	movx	a,@dptr
	mov	b,#0x02
	mul	ab
	add	a,#_axradio_phy_chanpllrng
	mov	dpl,a
	mov	a,#(_axradio_phy_chanpllrng >> 8)
	addc	a,b
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	a,#0x0f
	anl	a,r6
	mov	dpl,a
	mov	dph,#0x00
	C$easyax5043.c$2127$1$784 ==.
	XG$axradio_get_pllrange$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_get_pllvcoi'
;------------------------------------------------------------
;x                         Allocated to registers r7 
;x                         Allocated to registers r6 
;------------------------------------------------------------
	G$axradio_get_pllvcoi$0$0 ==.
	C$easyax5043.c$2129$1$784 ==.
;	..\COMMON\easyax5043.c:2129: uint8_t axradio_get_pllvcoi(void)
;	-----------------------------------------
;	 function axradio_get_pllvcoi
;	-----------------------------------------
_axradio_get_pllvcoi:
	C$easyax5043.c$2131$1$786 ==.
;	..\COMMON\easyax5043.c:2131: if (axradio_phy_vcocalib) {
	mov	dptr,#_axradio_phy_vcocalib
	clr	a
	movc	a,@a+dptr
	jz	00104$
	C$easyax5043.c$2132$2$787 ==.
;	..\COMMON\easyax5043.c:2132: uint8_t x = axradio_phy_chanvcoi[axradio_curchannel];
	mov	dptr,#_axradio_curchannel
	movx	a,@dptr
	add	a,#_axradio_phy_chanvcoi
	mov	dpl,a
	clr	a
	addc	a,#(_axradio_phy_chanvcoi >> 8)
	mov	dph,a
	movx	a,@dptr
	C$easyax5043.c$2133$2$787 ==.
;	..\COMMON\easyax5043.c:2133: if (x & 0x80)
	mov	r7,a
	jnb	acc.7,00104$
	C$easyax5043.c$2134$2$787 ==.
;	..\COMMON\easyax5043.c:2134: return x;
	mov	dpl,r7
	sjmp	00109$
00104$:
	C$easyax5043.c$2137$2$788 ==.
;	..\COMMON\easyax5043.c:2137: uint8_t x = axradio_phy_chanvcoiinit[axradio_curchannel];
	mov	dptr,#_axradio_curchannel
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_axradio_phy_chanvcoiinit
	movc	a,@a+dptr
	C$easyax5043.c$2138$2$788 ==.
;	..\COMMON\easyax5043.c:2138: if (x & 0x80) {
	mov	r6,a
	jnb	acc.7,00108$
	C$easyax5043.c$2139$3$789 ==.
;	..\COMMON\easyax5043.c:2139: if (!(axradio_phy_chanpllrnginit[0] & 0xF0)) {
	mov	dptr,#_axradio_phy_chanpllrnginit
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	a,r4
	anl	a,#0xf0
	jnz	00106$
	C$easyax5043.c$2140$4$790 ==.
;	..\COMMON\easyax5043.c:2140: x += (axradio_phy_chanpllrng[axradio_curchannel] & 0x0F) - (axradio_phy_chanpllrnginit[axradio_curchannel] & 0x0F);
	mov	a,r7
	mov	b,#0x02
	mul	ab
	mov	r7,a
	mov	r5,b
	add	a,#_axradio_phy_chanpllrng
	mov	dpl,a
	mov	a,r5
	addc	a,#(_axradio_phy_chanpllrng >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	anl	ar3,#0x0f
	mov	r4,#0x00
	mov	a,r7
	add	a,#_axradio_phy_chanpllrnginit
	mov	dpl,a
	mov	a,r5
	addc	a,#(_axradio_phy_chanpllrnginit >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	anl	ar5,#0x0f
	mov	r7,#0x00
	mov	a,r3
	clr	c
	subb	a,r5
	add	a,r6
	mov	r6,a
	C$easyax5043.c$2141$4$790 ==.
;	..\COMMON\easyax5043.c:2141: x &= 0x3f;
	anl	ar6,#0x3f
	C$easyax5043.c$2142$4$790 ==.
;	..\COMMON\easyax5043.c:2142: x |= 0x80;
	orl	ar6,#0x80
00106$:
	C$easyax5043.c$2144$3$789 ==.
;	..\COMMON\easyax5043.c:2144: return x;
	mov	dpl,r6
	sjmp	00109$
00108$:
	C$easyax5043.c$2147$1$786 ==.
;	..\COMMON\easyax5043.c:2147: return radio_read8(AX5043_REG_PLLVCOI);
	mov	dptr,#0x4180
	movx	a,@dptr
	C$easyax5043.c$2148$1$786 ==.
	XG$axradio_get_pllvcoi$0$0 ==.
	mov	dpl,a
00109$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_set_curfreqoffset'
;------------------------------------------------------------
;offs                      Allocated to registers r4 r5 r6 r7 
;------------------------------------------------------------
	Feasyax5043$axradio_set_curfreqoffset$0$0 ==.
	C$easyax5043.c$2150$1$786 ==.
;	..\COMMON\easyax5043.c:2150: static uint8_t axradio_set_curfreqoffset(int32_t offs)
;	-----------------------------------------
;	 function axradio_set_curfreqoffset
;	-----------------------------------------
_axradio_set_curfreqoffset:
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	C$easyax5043.c$2152$1$792 ==.
;	..\COMMON\easyax5043.c:2152: axradio_curfreqoffset = offs;
	mov	dptr,#_axradio_curfreqoffset
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
	C$easyax5043.c$2153$1$792 ==.
;	..\COMMON\easyax5043.c:2153: if (checksignedlimit32(offs, axradio_phy_maxfreqoffset))
	mov	dptr,#_axradio_phy_maxfreqoffset
	clr	a
	movc	a,@a+dptr
	push	acc
	mov	a,#0x01
	movc	a,@a+dptr
	push	acc
	mov	a,#0x02
	movc	a,@a+dptr
	push	acc
	mov	a,#0x03
	movc	a,@a+dptr
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	_checksignedlimit32
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r7
	jz	00102$
	C$easyax5043.c$2154$1$792 ==.
;	..\COMMON\easyax5043.c:2154: return AXRADIO_ERR_NOERROR;
	mov	dpl,#0x00
	sjmp	00106$
00102$:
	C$easyax5043.c$2155$1$792 ==.
;	..\COMMON\easyax5043.c:2155: if (axradio_curfreqoffset < 0)
	mov	dptr,#_axradio_curfreqoffset
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
	jnb	acc.7,00104$
	C$easyax5043.c$2156$1$792 ==.
;	..\COMMON\easyax5043.c:2156: axradio_curfreqoffset = -axradio_phy_maxfreqoffset;
	mov	dptr,#_axradio_phy_maxfreqoffset
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r5,a
	mov	a,#0x02
	movc	a,@a+dptr
	mov	r6,a
	mov	a,#0x03
	movc	a,@a+dptr
	mov	r7,a
	mov	dptr,#_axradio_curfreqoffset
	clr	c
	clr	a
	subb	a,r4
	movx	@dptr,a
	clr	a
	subb	a,r5
	inc	dptr
	movx	@dptr,a
	clr	a
	subb	a,r6
	inc	dptr
	movx	@dptr,a
	clr	a
	subb	a,r7
	inc	dptr
	movx	@dptr,a
	sjmp	00105$
00104$:
	C$easyax5043.c$2158$1$792 ==.
;	..\COMMON\easyax5043.c:2158: axradio_curfreqoffset = axradio_phy_maxfreqoffset;
	mov	dptr,#_axradio_phy_maxfreqoffset
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r5,a
	mov	a,#0x02
	movc	a,@a+dptr
	mov	r6,a
	mov	a,#0x03
	movc	a,@a+dptr
	mov	r7,a
	mov	dptr,#_axradio_curfreqoffset
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
00105$:
	C$easyax5043.c$2159$1$792 ==.
;	..\COMMON\easyax5043.c:2159: return AXRADIO_ERR_INVALID;
	mov	dpl,#0x04
00106$:
	C$easyax5043.c$2160$1$792 ==.
	XFeasyax5043$axradio_set_curfreqoffset$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_set_freqoffset'
;------------------------------------------------------------
;offs                      Allocated to registers r4 r5 r6 r7 
;ret                       Allocated to registers r7 
;ret2                      Allocated to registers r6 
;------------------------------------------------------------
	G$axradio_set_freqoffset$0$0 ==.
	C$easyax5043.c$2162$1$792 ==.
;	..\COMMON\easyax5043.c:2162: uint8_t axradio_set_freqoffset(int32_t offs)
;	-----------------------------------------
;	 function axradio_set_freqoffset
;	-----------------------------------------
_axradio_set_freqoffset:
	C$easyax5043.c$2164$1$794 ==.
;	..\COMMON\easyax5043.c:2164: uint8_t __autodata ret = axradio_set_curfreqoffset(offs);
	lcall	_axradio_set_curfreqoffset
	mov	r7,dpl
	C$easyax5043.c$2166$2$795 ==.
;	..\COMMON\easyax5043.c:2166: uint8_t __autodata ret2 = axradio_set_channel(axradio_curchannel);
	mov	dptr,#_axradio_curchannel
	movx	a,@dptr
	mov	dpl,a
	push	ar7
	lcall	_axradio_set_channel
	mov	r6,dpl
	pop	ar7
	C$easyax5043.c$2167$2$795 ==.
;	..\COMMON\easyax5043.c:2167: if (ret == AXRADIO_ERR_NOERROR)
	mov	a,r7
	jnz	00102$
	C$easyax5043.c$2168$2$795 ==.
;	..\COMMON\easyax5043.c:2168: ret = ret2;
	mov	ar7,r6
00102$:
	C$easyax5043.c$2170$1$794 ==.
;	..\COMMON\easyax5043.c:2170: return ret;
	mov	dpl,r7
	C$easyax5043.c$2171$1$794 ==.
	XG$axradio_set_freqoffset$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_get_freqoffset'
;------------------------------------------------------------
	G$axradio_get_freqoffset$0$0 ==.
	C$easyax5043.c$2173$1$794 ==.
;	..\COMMON\easyax5043.c:2173: int32_t axradio_get_freqoffset(void)
;	-----------------------------------------
;	 function axradio_get_freqoffset
;	-----------------------------------------
_axradio_get_freqoffset:
	C$easyax5043.c$2175$1$797 ==.
;	..\COMMON\easyax5043.c:2175: return axradio_curfreqoffset;
	mov	dptr,#_axradio_curfreqoffset
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
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	C$easyax5043.c$2176$1$797 ==.
	XG$axradio_get_freqoffset$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_set_local_address'
;------------------------------------------------------------
;addr                      Allocated to registers r5 r6 r7 
;------------------------------------------------------------
	G$axradio_set_local_address$0$0 ==.
	C$easyax5043.c$2178$1$797 ==.
;	..\COMMON\easyax5043.c:2178: void axradio_set_local_address(const struct axradio_address_mask __genericaddr *addr)
;	-----------------------------------------
;	 function axradio_set_local_address
;	-----------------------------------------
_axradio_set_local_address:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$easyax5043.c$2180$1$799 ==.
;	..\COMMON\easyax5043.c:2180: memcpy_xdatageneric(&axradio_localaddr, addr, sizeof(axradio_localaddr));
	mov	_memcpy_PARM_2,r5
	mov	(_memcpy_PARM_2 + 1),r6
	mov	(_memcpy_PARM_2 + 2),r7
	mov	_memcpy_PARM_3,#0x0a
	mov	(_memcpy_PARM_3 + 1),#0x00
	mov	dptr,#_axradio_localaddr
	mov	b,#0x00
	lcall	_memcpy
	C$easyax5043.c$2181$1$799 ==.
;	..\COMMON\easyax5043.c:2181: axradio_setaddrregs();
	lcall	_axradio_setaddrregs
	C$easyax5043.c$2182$1$799 ==.
	XG$axradio_set_local_address$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_get_local_address'
;------------------------------------------------------------
;addr                      Allocated to registers r5 r6 r7 
;------------------------------------------------------------
	G$axradio_get_local_address$0$0 ==.
	C$easyax5043.c$2184$1$799 ==.
;	..\COMMON\easyax5043.c:2184: void axradio_get_local_address(struct axradio_address_mask __genericaddr *addr)
;	-----------------------------------------
;	 function axradio_get_local_address
;	-----------------------------------------
_axradio_get_local_address:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$easyax5043.c$2186$1$801 ==.
;	..\COMMON\easyax5043.c:2186: memcpy_genericxdata(addr, &axradio_localaddr, sizeof(axradio_localaddr));
	mov	_memcpy_PARM_2,#_axradio_localaddr
	mov	(_memcpy_PARM_2 + 1),#(_axradio_localaddr >> 8)
	mov	(_memcpy_PARM_2 + 2),#0x00
	mov	_memcpy_PARM_3,#0x0a
	mov	(_memcpy_PARM_3 + 1),#0x00
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_memcpy
	C$easyax5043.c$2187$1$801 ==.
	XG$axradio_get_local_address$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_set_default_remote_address'
;------------------------------------------------------------
;addr                      Allocated to registers r5 r6 r7 
;------------------------------------------------------------
	G$axradio_set_default_remote_address$0$0 ==.
	C$easyax5043.c$2189$1$801 ==.
;	..\COMMON\easyax5043.c:2189: void axradio_set_default_remote_address(const struct axradio_address __genericaddr *addr)
;	-----------------------------------------
;	 function axradio_set_default_remote_address
;	-----------------------------------------
_axradio_set_default_remote_address:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$easyax5043.c$2191$1$803 ==.
;	..\COMMON\easyax5043.c:2191: memcpy_xdatageneric(&axradio_default_remoteaddr, addr, sizeof(axradio_default_remoteaddr));
	mov	_memcpy_PARM_2,r5
	mov	(_memcpy_PARM_2 + 1),r6
	mov	(_memcpy_PARM_2 + 2),r7
	mov	_memcpy_PARM_3,#0x05
	mov	(_memcpy_PARM_3 + 1),#0x00
	mov	dptr,#_axradio_default_remoteaddr
	mov	b,#0x00
	lcall	_memcpy
	C$easyax5043.c$2192$1$803 ==.
	XG$axradio_set_default_remote_address$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_get_default_remote_address'
;------------------------------------------------------------
;addr                      Allocated to registers r5 r6 r7 
;------------------------------------------------------------
	G$axradio_get_default_remote_address$0$0 ==.
	C$easyax5043.c$2194$1$803 ==.
;	..\COMMON\easyax5043.c:2194: void axradio_get_default_remote_address(struct axradio_address __genericaddr *addr)
;	-----------------------------------------
;	 function axradio_get_default_remote_address
;	-----------------------------------------
_axradio_get_default_remote_address:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$easyax5043.c$2196$1$805 ==.
;	..\COMMON\easyax5043.c:2196: memcpy_genericxdata(addr, &axradio_default_remoteaddr, sizeof(axradio_default_remoteaddr));
	mov	_memcpy_PARM_2,#_axradio_default_remoteaddr
	mov	(_memcpy_PARM_2 + 1),#(_axradio_default_remoteaddr >> 8)
	mov	(_memcpy_PARM_2 + 2),#0x00
	mov	_memcpy_PARM_3,#0x05
	mov	(_memcpy_PARM_3 + 1),#0x00
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_memcpy
	C$easyax5043.c$2197$1$805 ==.
	XG$axradio_get_default_remote_address$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_transmit'
;------------------------------------------------------------
;pkt                       Allocated with name '_axradio_transmit_PARM_2'
;pktlen                    Allocated with name '_axradio_transmit_PARM_3'
;addr                      Allocated to registers r5 r6 r7 
;fifofree                  Allocated to registers r3 r4 
;i                         Allocated to registers r4 
;__00030038                Allocated to registers 
;crit                      Allocated to registers 
;crit                      Allocated to registers r4 
;__00040040                Allocated to registers 
;crit                      Allocated to registers 
;len_byte                  Allocated to registers r6 
;------------------------------------------------------------
	G$axradio_transmit$0$0 ==.
	C$easyax5043.c$2199$1$805 ==.
;	..\COMMON\easyax5043.c:2199: uint8_t axradio_transmit(const struct axradio_address __genericaddr *addr, const uint8_t __genericaddr *pkt, uint16_t pktlen)
;	-----------------------------------------
;	 function axradio_transmit
;	-----------------------------------------
_axradio_transmit:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$easyax5043.c$2201$1$807 ==.
;	..\COMMON\easyax5043.c:2201: switch (axradio_mode) {
	mov	r4,_axradio_mode
	cjne	r4,#0x10,00316$
	ljmp	00155$
00316$:
	cjne	r4,#0x11,00317$
	ljmp	00155$
00317$:
	cjne	r4,#0x12,00318$
	ljmp	00155$
00318$:
	cjne	r4,#0x13,00319$
	ljmp	00155$
00319$:
	cjne	r4,#0x18,00320$
	sjmp	00105$
00320$:
	cjne	r4,#0x19,00321$
	sjmp	00105$
00321$:
	cjne	r4,#0x1a,00322$
	sjmp	00105$
00322$:
	cjne	r4,#0x1b,00323$
	sjmp	00105$
00323$:
	cjne	r4,#0x1c,00324$
	sjmp	00105$
00324$:
	cjne	r4,#0x20,00325$
	ljmp	00134$
00325$:
	cjne	r4,#0x21,00326$
	ljmp	00134$
00326$:
	cjne	r4,#0x30,00327$
	ljmp	00158$
00327$:
	cjne	r4,#0x31,00328$
	ljmp	00158$
00328$:
	ljmp	00198$
	C$easyax5043.c$2206$2$808 ==.
;	..\COMMON\easyax5043.c:2206: case AXRADIO_MODE_STREAM_TRANSMIT_SCRAM_LSB:
00105$:
	C$easyax5043.c$2208$3$809 ==.
;	..\COMMON\easyax5043.c:2208: uint16_t __autodata fifofree = radio_read16(AX5043_REG_FIFOFREE1); ///
	mov	dptr,#0x002c
	lcall	_radio_read16
	mov	r3,dpl
	mov	r4,dph
	C$easyax5043.c$2210$3$809 ==.
;	..\COMMON\easyax5043.c:2210: if (fifofree < pktlen + 3)
	mov	a,#0x03
	add	a,_axradio_transmit_PARM_3
	mov	r1,a
	clr	a
	addc	a,(_axradio_transmit_PARM_3 + 1)
	mov	r2,a
	clr	c
	mov	a,r3
	subb	a,r1
	mov	a,r4
	subb	a,r2
	jnc	00107$
	C$easyax5043.c$2211$3$809 ==.
;	..\COMMON\easyax5043.c:2211: return AXRADIO_ERR_INVALID;
	mov	dpl,#0x04
	ljmp	00202$
00107$:
	C$easyax5043.c$2213$2$808 ==.
;	..\COMMON\easyax5043.c:2213: if (pktlen) {
	mov	a,_axradio_transmit_PARM_3
	orl	a,(_axradio_transmit_PARM_3 + 1)
	jz	00124$
	C$easyax5043.c$2214$3$808 ==.
;	..\COMMON\easyax5043.c:2214: uint8_t __autodata i = pktlen;
	mov	r4,_axradio_transmit_PARM_3
	C$easyax5043.c$2215$4$811 ==.
;	..\COMMON\easyax5043.c:2215: radio_write8(AX5043_REG_FIFODATA, AX5043_FIFOCMD_DATA | (7 << 5));
	mov	dptr,#0x4029
	mov	a,#0xe1
	movx	@dptr,a
	C$easyax5043.c$2216$4$812 ==.
;	..\COMMON\easyax5043.c:2216: radio_write8(AX5043_REG_FIFODATA, i + 1);
	mov	a,r4
	inc	a
	mov	dptr,#0x4029
	movx	@dptr,a
	C$easyax5043.c$2217$4$813 ==.
;	..\COMMON\easyax5043.c:2217: radio_write8(AX5043_REG_FIFODATA, 0x08);
	mov	dptr,#0x4029
	mov	a,#0x08
	movx	@dptr,a
	C$easyax5043.c$2219$1$807 ==.
;	..\COMMON\easyax5043.c:2219: radio_write8(AX5043_REG_FIFODATA, *pkt++);
	mov	r1,_axradio_transmit_PARM_2
	mov	r2,(_axradio_transmit_PARM_2 + 1)
	mov	r3,(_axradio_transmit_PARM_2 + 2)
00117$:
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	mov	r1,dpl
	mov	r2,dph
	mov	dptr,#0x4029
	mov	a,r0
	movx	@dptr,a
	C$easyax5043.c$2220$3$810 ==.
;	..\COMMON\easyax5043.c:2220: } while (--i);
	djnz	r4,00117$
00124$:
	C$libmftypes.h$351$6$830 ==.
;	C:/Program Files (x86)/ON Semiconductor/AXSDB/libmf/include/libmftypes.h:351: criticalsection_t crit = IE & 0x80;
	mov	a,#0x80
	anl	a,_IE
	mov	r4,a
	C$easyax5043.c$2223$6$830 ==.
;	..\COMMON\easyax5043.c:2223: criticalsection_t crit = enter_critical();
	clr	_EA
	C$easyax5043.c$2224$3$816 ==.
;	..\COMMON\easyax5043.c:2224: radio_read8(AX5043_REG_RADIOEVENTREQ0);
	mov	dptr,#0x400f
	movx	a,@dptr
	C$easyax5043.c$2225$3$816 ==.
;	..\COMMON\easyax5043.c:2225: radio_read8(AX5043_REG_IRQREQUEST0);
	mov	dptr,#0x400d
	movx	a,@dptr
	C$easyax5043.c$2226$4$817 ==.
;	..\COMMON\easyax5043.c:2226: radio_write8(AX5043_REG_IRQMASK0, radio_read8(AX5043_REG_IRQMASK0) | 0x08);
	mov	dptr,#0x4007
	movx	a,@dptr
	orl	a,#0x08
	mov	r3,a
	movx	@dptr,a
	C$easyax5043.c$2227$4$818 ==.
;	..\COMMON\easyax5043.c:2227: radio_write8(AX5043_REG_FIFOSTAT,  4); // FIFO commit
	mov	dptr,#0x4028
	mov	a,#0x04
	movx	@dptr,a
	C$libmftypes.h$358$6$833 ==.
;	C:/Program Files (x86)/ON Semiconductor/AXSDB/libmf/include/libmftypes.h:358: IE |= crit;
	mov	a,r4
	orl	_IE,a
	C$easyax5043.c$2230$2$808 ==.
;	..\COMMON\easyax5043.c:2230: return AXRADIO_ERR_NOERROR;
	mov	dpl,#0x00
	ljmp	00202$
	C$easyax5043.c$2237$2$808 ==.
;	..\COMMON\easyax5043.c:2237: case AXRADIO_MODE_WOR_RECEIVE:
00134$:
	C$easyax5043.c$2238$2$808 ==.
;	..\COMMON\easyax5043.c:2238: if (axradio_syncstate != syncstate_off)
	mov	dptr,#_axradio_syncstate
	movx	a,@dptr
	movx	a,@dptr
	jz	00137$
	C$easyax5043.c$2239$2$808 ==.
;	..\COMMON\easyax5043.c:2239: return AXRADIO_ERR_BUSY;
	mov	dpl,#0x02
	ljmp	00202$
	C$easyax5043.c$2240$2$808 ==.
;	..\COMMON\easyax5043.c:2240: radio_write8(AX5043_REG_IRQMASK1, 0x00);
00137$:
	mov	dptr,#0x4006
	clr	a
	movx	@dptr,a
	C$easyax5043.c$2241$3$820 ==.
;	..\COMMON\easyax5043.c:2241: radio_write8(AX5043_REG_IRQMASK0, 0x00);
	mov	dptr,#0x4007
	movx	@dptr,a
	C$easyax5043.c$2242$3$821 ==.
;	..\COMMON\easyax5043.c:2242: radio_write8(AX5043_REG_PWRMODE, AX5043_PWRSTATE_XTAL_ON);
	mov	dptr,#0x4002
	mov	a,#0x05
	movx	@dptr,a
	C$easyax5043.c$2243$3$822 ==.
;	..\COMMON\easyax5043.c:2243: radio_write8(AX5043_REG_FIFOSTAT, 3);
	mov	dptr,#0x4028
	mov	a,#0x03
	movx	@dptr,a
	C$easyax5043.c$2244$2$808 ==.
;	..\COMMON\easyax5043.c:2244: while (radio_read8(AX5043_REG_POWSTAT) & 0x08);
00149$:
	mov	dptr,#0x4003
	movx	a,@dptr
	mov	r4,a
	jb	acc.3,00149$
	C$easyax5043.c$2245$2$808 ==.
;	..\COMMON\easyax5043.c:2245: ax5043_init_registers_tx();
	push	ar7
	push	ar6
	push	ar5
	lcall	_ax5043_init_registers_tx
	pop	ar5
	pop	ar6
	pop	ar7
	C$easyax5043.c$2246$2$808 ==.
;	..\COMMON\easyax5043.c:2246: goto dotx;
	C$easyax5043.c$2251$2$808 ==.
;	..\COMMON\easyax5043.c:2251: case AXRADIO_MODE_WOR_ACK_TRANSMIT:
	sjmp	00158$
00155$:
	C$easyax5043.c$2252$2$808 ==.
;	..\COMMON\easyax5043.c:2252: if (axradio_syncstate != syncstate_off)
	mov	dptr,#_axradio_syncstate
	movx	a,@dptr
	movx	a,@dptr
	jz	00158$
	C$easyax5043.c$2253$2$808 ==.
;	..\COMMON\easyax5043.c:2253: return AXRADIO_ERR_BUSY;
	mov	dpl,#0x02
	ljmp	00202$
	C$easyax5043.c$2254$2$808 ==.
;	..\COMMON\easyax5043.c:2254: dotx:
00158$:
	C$easyax5043.c$2255$2$808 ==.
;	..\COMMON\easyax5043.c:2255: axradio_ack_count = axradio_framing_ack_retransmissions;
	mov	dptr,#_axradio_framing_ack_retransmissions
	clr	a
	movc	a,@a+dptr
	mov	dptr,#_axradio_ack_count
	movx	@dptr,a
	C$easyax5043.c$2256$2$808 ==.
;	..\COMMON\easyax5043.c:2256: ++axradio_ack_seqnr;
	mov	dptr,#_axradio_ack_seqnr
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	C$easyax5043.c$2257$2$808 ==.
;	..\COMMON\easyax5043.c:2257: axradio_txbuffer_len = pktlen + axradio_framing_maclen;
	mov	dptr,#_axradio_framing_maclen
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	r3,#0x00
	add	a,_axradio_transmit_PARM_3
	mov	r2,a
	mov	a,r3
	addc	a,(_axradio_transmit_PARM_3 + 1)
	mov	r3,a
	mov	dptr,#_axradio_txbuffer_len
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$2258$2$808 ==.
;	..\COMMON\easyax5043.c:2258: if (axradio_txbuffer_len > sizeof(axradio_txbuffer))
	clr	c
	mov	a,#0x04
	subb	a,r2
	mov	a,#0x01
	subb	a,r3
	jnc	00160$
	C$easyax5043.c$2259$2$808 ==.
;	..\COMMON\easyax5043.c:2259: return AXRADIO_ERR_INVALID;
	mov	dpl,#0x04
	ljmp	00202$
00160$:
	C$easyax5043.c$2260$2$808 ==.
;	..\COMMON\easyax5043.c:2260: memset_xdata(axradio_txbuffer, 0, axradio_framing_maclen);
	mov	_memset_PARM_3,r4
	mov	(_memset_PARM_3 + 1),#0x00
	mov	_memset_PARM_2,#0x00
	mov	dptr,#_axradio_txbuffer
	mov	b,#0x00
	push	ar7
	push	ar6
	push	ar5
	lcall	_memset
	C$easyax5043.c$2261$2$808 ==.
;	..\COMMON\easyax5043.c:2261: memcpy_xdatageneric(&axradio_txbuffer[axradio_framing_maclen], pkt, pktlen);
	mov	dptr,#_axradio_framing_maclen
	clr	a
	movc	a,@a+dptr
	add	a,#_axradio_txbuffer
	mov	r4,a
	clr	a
	addc	a,#(_axradio_txbuffer >> 8)
	mov	r3,a
	mov	r2,#0x00
	mov	_memcpy_PARM_2,_axradio_transmit_PARM_2
	mov	(_memcpy_PARM_2 + 1),(_axradio_transmit_PARM_2 + 1)
	mov	(_memcpy_PARM_2 + 2),(_axradio_transmit_PARM_2 + 2)
	mov	_memcpy_PARM_3,_axradio_transmit_PARM_3
	mov	(_memcpy_PARM_3 + 1),(_axradio_transmit_PARM_3 + 1)
	mov	dpl,r4
	mov	dph,r3
	mov	b,r2
	lcall	_memcpy
	pop	ar5
	pop	ar6
	pop	ar7
	C$easyax5043.c$2262$2$808 ==.
;	..\COMMON\easyax5043.c:2262: if (axradio_framing_ack_seqnrpos != 0xff)
	mov	dptr,#_axradio_framing_ack_seqnrpos
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	cjne	r4,#0xff,00337$
	sjmp	00162$
00337$:
	C$easyax5043.c$2263$2$808 ==.
;	..\COMMON\easyax5043.c:2263: axradio_txbuffer[axradio_framing_ack_seqnrpos] = axradio_ack_seqnr;
	mov	a,r4
	add	a,#_axradio_txbuffer
	mov	r4,a
	clr	a
	addc	a,#(_axradio_txbuffer >> 8)
	mov	r3,a
	mov	dptr,#_axradio_ack_seqnr
	movx	a,@dptr
	mov	r2,a
	mov	dpl,r4
	mov	dph,r3
	movx	@dptr,a
00162$:
	C$easyax5043.c$2264$2$808 ==.
;	..\COMMON\easyax5043.c:2264: if (axradio_framing_destaddrpos != 0xff)
	mov	dptr,#_axradio_framing_destaddrpos
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	cjne	r4,#0xff,00338$
	sjmp	00164$
00338$:
	C$easyax5043.c$2265$2$808 ==.
;	..\COMMON\easyax5043.c:2265: memcpy_xdatageneric(&axradio_txbuffer[axradio_framing_destaddrpos], &addr->addr, axradio_framing_addrlen);
	mov	a,r4
	add	a,#_axradio_txbuffer
	mov	r4,a
	clr	a
	addc	a,#(_axradio_txbuffer >> 8)
	mov	r3,a
	mov	r2,#0x00
	mov	_memcpy_PARM_2,r5
	mov	(_memcpy_PARM_2 + 1),r6
	mov	(_memcpy_PARM_2 + 2),r7
	mov	dptr,#_axradio_framing_addrlen
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	_memcpy_PARM_3,r7
;	1-genFromRTrack replaced	mov	(_memcpy_PARM_3 + 1),#0x00
	mov	(_memcpy_PARM_3 + 1),r2
	mov	dpl,r4
	mov	dph,r3
	mov	b,r2
	lcall	_memcpy
00164$:
	C$easyax5043.c$2266$2$808 ==.
;	..\COMMON\easyax5043.c:2266: if (axradio_framing_sourceaddrpos != 0xff)
	mov	dptr,#_axradio_framing_sourceaddrpos
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	cjne	r7,#0xff,00339$
	sjmp	00166$
00339$:
	C$easyax5043.c$2267$2$808 ==.
;	..\COMMON\easyax5043.c:2267: memcpy_xdata(&axradio_txbuffer[axradio_framing_sourceaddrpos], &axradio_localaddr.addr, axradio_framing_addrlen);
	mov	a,r7
	add	a,#_axradio_txbuffer
	mov	r7,a
	clr	a
	addc	a,#(_axradio_txbuffer >> 8)
	mov	r6,a
	mov	r5,#0x00
	mov	_memcpy_PARM_2,#_axradio_localaddr
	mov	(_memcpy_PARM_2 + 1),#(_axradio_localaddr >> 8)
;	1-genFromRTrack replaced	mov	(_memcpy_PARM_2 + 2),#0x00
	mov	(_memcpy_PARM_2 + 2),r5
	mov	dptr,#_axradio_framing_addrlen
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	_memcpy_PARM_3,r4
;	1-genFromRTrack replaced	mov	(_memcpy_PARM_3 + 1),#0x00
	mov	(_memcpy_PARM_3 + 1),r5
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	_memcpy
00166$:
	C$easyax5043.c$2268$2$808 ==.
;	..\COMMON\easyax5043.c:2268: if (axradio_framing_lenmask) {
	mov	dptr,#_axradio_framing_lenmask
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	jz	00168$
	C$easyax5043.c$2269$3$823 ==.
;	..\COMMON\easyax5043.c:2269: uint8_t __autodata len_byte = (uint8_t)(axradio_txbuffer_len - axradio_framing_lenoffs) & axradio_framing_lenmask; // if you prefer not counting the len byte itself, set LENOFFS = 1
	mov	dptr,#_axradio_txbuffer_len
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	dptr,#_axradio_framing_lenoffs
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	a,r5
	clr	c
	subb	a,r6
	anl	a,r7
	mov	r6,a
	C$easyax5043.c$2270$3$823 ==.
;	..\COMMON\easyax5043.c:2270: axradio_txbuffer[axradio_framing_lenpos] = (axradio_txbuffer[axradio_framing_lenpos] & (uint8_t)~axradio_framing_lenmask) | len_byte;
	mov	dptr,#_axradio_framing_lenpos
	clr	a
	movc	a,@a+dptr
	add	a,#_axradio_txbuffer
	mov	r5,a
	clr	a
	addc	a,#(_axradio_txbuffer >> 8)
	mov	r4,a
	mov	dpl,r5
	mov	dph,r4
	movx	a,@dptr
	mov	r3,a
	mov	a,r7
	cpl	a
	mov	r7,a
	anl	a,r3
	orl	ar6,a
	mov	dpl,r5
	mov	dph,r4
	mov	a,r6
	movx	@dptr,a
00168$:
	C$easyax5043.c$2272$2$808 ==.
;	..\COMMON\easyax5043.c:2272: if (axradio_framing_swcrclen)
	mov	dptr,#_axradio_framing_swcrclen
	clr	a
	movc	a,@a+dptr
	jz	00170$
	C$easyax5043.c$2273$2$808 ==.
;	..\COMMON\easyax5043.c:2273: axradio_txbuffer_len = axradio_framing_append_crc(axradio_txbuffer, axradio_txbuffer_len);
	mov	dptr,#_axradio_txbuffer_len
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dptr,#_axradio_txbuffer
	lcall	_axradio_framing_append_crc
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	mov	dptr,#_axradio_txbuffer_len
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00170$:
	C$easyax5043.c$2274$2$808 ==.
;	..\COMMON\easyax5043.c:2274: if (axradio_phy_pn9)
	mov	dptr,#_axradio_phy_pn9
	clr	a
	movc	a,@a+dptr
	jz	00172$
	C$easyax5043.c$2275$2$808 ==.
;	..\COMMON\easyax5043.c:2275: pn9_buffer(axradio_txbuffer, axradio_txbuffer_len, 0x1ff, -((radio_read8(AX5043_REG_ENCODING) & 0x01)));
	mov	dptr,#0x4011
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0x01
	clr	c
	clr	a
	subb	a,r7
	mov	r7,a
	push	ar7
	mov	a,#0xff
	push	acc
	mov	a,#0x01
	push	acc
	mov	dptr,#_axradio_txbuffer_len
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dptr,#_axradio_txbuffer
	mov	b,#0x00
	lcall	_pn9_buffer
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
00172$:
	C$easyax5043.c$2276$2$808 ==.
;	..\COMMON\easyax5043.c:2276: if (axradio_mode == AXRADIO_MODE_SYNC_MASTER ||
	mov	a,#0x30
	cjne	a,_axradio_mode,00343$
	sjmp	00173$
00343$:
	C$easyax5043.c$2277$2$808 ==.
;	..\COMMON\easyax5043.c:2277: axradio_mode == AXRADIO_MODE_SYNC_ACK_MASTER)
	mov	a,#0x31
	cjne	a,_axradio_mode,00174$
00173$:
	C$easyax5043.c$2278$2$808 ==.
;	..\COMMON\easyax5043.c:2278: return AXRADIO_ERR_NOERROR;
	mov	dpl,#0x00
	ljmp	00202$
00174$:
	C$easyax5043.c$2279$2$808 ==.
;	..\COMMON\easyax5043.c:2279: if (axradio_mode == AXRADIO_MODE_WOR_TRANSMIT ||
	mov	a,#0x11
	cjne	a,_axradio_mode,00346$
	sjmp	00176$
00346$:
	C$easyax5043.c$2280$2$808 ==.
;	..\COMMON\easyax5043.c:2280: axradio_mode == AXRADIO_MODE_WOR_ACK_TRANSMIT)
	mov	a,#0x13
	cjne	a,_axradio_mode,00177$
00176$:
	C$easyax5043.c$2281$2$808 ==.
;	..\COMMON\easyax5043.c:2281: axradio_txbuffer_cnt = axradio_phy_preamble_wor_longlen;
	mov	dptr,#_axradio_phy_preamble_wor_longlen
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r7,a
	mov	dptr,#_axradio_txbuffer_cnt
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	sjmp	00178$
00177$:
	C$easyax5043.c$2283$2$808 ==.
;	..\COMMON\easyax5043.c:2283: axradio_txbuffer_cnt = axradio_phy_preamble_longlen;
	mov	dptr,#_axradio_phy_preamble_longlen
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r7,a
	mov	dptr,#_axradio_txbuffer_cnt
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00178$:
	C$easyax5043.c$2284$2$808 ==.
;	..\COMMON\easyax5043.c:2284: if (axradio_phy_lbt_retries) {
	mov	dptr,#_axradio_phy_lbt_retries
	clr	a
	movc	a,@a+dptr
	jz	00197$
	C$easyax5043.c$2285$3$824 ==.
;	..\COMMON\easyax5043.c:2285: switch (axradio_mode) {
	mov	r7,_axradio_mode
	cjne	r7,#0x10,00350$
	sjmp	00187$
00350$:
	cjne	r7,#0x11,00351$
	sjmp	00187$
00351$:
	cjne	r7,#0x12,00352$
	sjmp	00187$
00352$:
	cjne	r7,#0x13,00353$
	sjmp	00187$
00353$:
	cjne	r7,#0x20,00354$
	sjmp	00187$
00354$:
	cjne	r7,#0x21,00355$
	sjmp	00187$
00355$:
	cjne	r7,#0x22,00356$
	sjmp	00187$
00356$:
	cjne	r7,#0x23,00197$
	C$easyax5043.c$2293$4$825 ==.
;	..\COMMON\easyax5043.c:2293: case AXRADIO_MODE_ACK_RECEIVE:
00187$:
	C$easyax5043.c$2294$4$825 ==.
;	..\COMMON\easyax5043.c:2294: ax5043_off_xtal();
	lcall	_ax5043_off_xtal
	C$easyax5043.c$2295$4$825 ==.
;	..\COMMON\easyax5043.c:2295: ax5043_init_registers_rx();
	lcall	_ax5043_init_registers_rx
	C$easyax5043.c$2296$5$826 ==.
;	..\COMMON\easyax5043.c:2296: radio_write8(AX5043_REG_RSSIREFERENCE, axradio_phy_rssireference);
	mov	dptr,#_axradio_phy_rssireference
	clr	a
	movc	a,@a+dptr
	mov	dptr,#0x422c
	movx	@dptr,a
	C$easyax5043.c$2297$5$827 ==.
;	..\COMMON\easyax5043.c:2297: radio_write8(AX5043_REG_PWRMODE, AX5043_PWRSTATE_FULL_RX);
	mov	dptr,#0x4002
	mov	a,#0x09
	movx	@dptr,a
	C$easyax5043.c$2298$4$825 ==.
;	..\COMMON\easyax5043.c:2298: axradio_ack_count = axradio_phy_lbt_retries;
	mov	dptr,#_axradio_phy_lbt_retries
	clr	a
	movc	a,@a+dptr
	mov	dptr,#_axradio_ack_count
	movx	@dptr,a
	C$easyax5043.c$2299$4$825 ==.
;	..\COMMON\easyax5043.c:2299: axradio_syncstate = syncstate_lbt;
	mov	dptr,#_axradio_syncstate
	mov	a,#0x01
	movx	@dptr,a
	C$easyax5043.c$2300$4$825 ==.
;	..\COMMON\easyax5043.c:2300: wtimer_remove(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer_remove
	C$easyax5043.c$2301$4$825 ==.
;	..\COMMON\easyax5043.c:2301: axradio_timer.time = axradio_phy_cs_period;
	mov	dptr,#_axradio_phy_cs_period
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r7,a
	mov	r5,#0x00
	mov	r4,#0x00
	mov	dptr,#(_axradio_timer + 0x0004)
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$2302$4$825 ==.
;	..\COMMON\easyax5043.c:2302: wtimer0_addrelative(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer0_addrelative
	C$easyax5043.c$2303$4$825 ==.
;	..\COMMON\easyax5043.c:2303: return AXRADIO_ERR_NOERROR;
	mov	dpl,#0x00
	C$easyax5043.c$2307$2$808 ==.
;	..\COMMON\easyax5043.c:2307: }
	sjmp	00202$
00197$:
	C$easyax5043.c$2309$2$808 ==.
;	..\COMMON\easyax5043.c:2309: axradio_syncstate = syncstate_asynctx;
	mov	dptr,#_axradio_syncstate
	mov	a,#0x02
	movx	@dptr,a
	C$easyax5043.c$2310$2$808 ==.
;	..\COMMON\easyax5043.c:2310: ax5043_prepare_tx();
	lcall	_ax5043_prepare_tx
	C$easyax5043.c$2311$2$808 ==.
;	..\COMMON\easyax5043.c:2311: return AXRADIO_ERR_NOERROR;
	mov	dpl,#0x00
	C$easyax5043.c$2313$2$808 ==.
;	..\COMMON\easyax5043.c:2313: default:
	sjmp	00202$
00198$:
	C$easyax5043.c$2314$2$808 ==.
;	..\COMMON\easyax5043.c:2314: return AXRADIO_ERR_NOTSUPPORTED;
	mov	dpl,#0x01
	C$easyax5043.c$2315$1$807 ==.
;	..\COMMON\easyax5043.c:2315: }
00202$:
	C$easyax5043.c$2316$1$807 ==.
	XG$axradio_transmit$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_set_paramsets'
;------------------------------------------------------------
;val                       Allocated to registers r7 
;------------------------------------------------------------
	Feasyax5043$axradio_set_paramsets$0$0 ==.
	C$easyax5043.c$2318$1$807 ==.
;	..\COMMON\easyax5043.c:2318: static __reentrantb uint8_t axradio_set_paramsets(uint8_t val) __reentrant
;	-----------------------------------------
;	 function axradio_set_paramsets
;	-----------------------------------------
_axradio_set_paramsets:
	mov	r7,dpl
	C$easyax5043.c$2320$1$835 ==.
;	..\COMMON\easyax5043.c:2320: if (!AXRADIO_MODE_IS_STREAM_RECEIVE(axradio_mode))
	mov	a,#0xf8
	anl	a,_axradio_mode
	mov	r6,a
	cjne	r6,#0x28,00111$
	sjmp	00103$
00111$:
	C$easyax5043.c$2321$1$835 ==.
;	..\COMMON\easyax5043.c:2321: return AXRADIO_ERR_NOTSUPPORTED;
	mov	dpl,#0x01
	C$easyax5043.c$2322$1$835 ==.
;	..\COMMON\easyax5043.c:2322: radio_write8(AX5043_REG_RXPARAMSETS, val);
	sjmp	00106$
00103$:
	mov	dptr,#0x4117
	mov	a,r7
	movx	@dptr,a
	C$easyax5043.c$2323$1$835 ==.
;	..\COMMON\easyax5043.c:2323: return AXRADIO_ERR_NOERROR;
	mov	dpl,#0x00
00106$:
	C$easyax5043.c$2324$1$835 ==.
	XFeasyax5043$axradio_set_paramsets$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_agc_freeze'
;------------------------------------------------------------
	G$axradio_agc_freeze$0$0 ==.
	C$easyax5043.c$2326$1$835 ==.
;	..\COMMON\easyax5043.c:2326: uint8_t axradio_agc_freeze(void)
;	-----------------------------------------
;	 function axradio_agc_freeze
;	-----------------------------------------
_axradio_agc_freeze:
	C$easyax5043.c$2328$1$838 ==.
;	..\COMMON\easyax5043.c:2328: return axradio_set_paramsets(0xff);
	mov	dpl,#0xff
	lcall	_axradio_set_paramsets
	C$easyax5043.c$2329$1$838 ==.
	XG$axradio_agc_freeze$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_agc_thaw'
;------------------------------------------------------------
	G$axradio_agc_thaw$0$0 ==.
	C$easyax5043.c$2331$1$838 ==.
;	..\COMMON\easyax5043.c:2331: uint8_t axradio_agc_thaw(void)
;	-----------------------------------------
;	 function axradio_agc_thaw
;	-----------------------------------------
_axradio_agc_thaw:
	C$easyax5043.c$2333$1$840 ==.
;	..\COMMON\easyax5043.c:2333: return axradio_set_paramsets(0x00);
	mov	dpl,#0x00
	lcall	_axradio_set_paramsets
	C$easyax5043.c$2334$1$840 ==.
	XG$axradio_agc_thaw$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_wait_n_lposccycles'
;------------------------------------------------------------
;n                         Allocated to registers r7 
;cnt                       Allocated to registers r6 
;------------------------------------------------------------
	G$axradio_wait_n_lposccycles$0$0 ==.
	C$easyax5043.c$2336$1$840 ==.
;	..\COMMON\easyax5043.c:2336: void axradio_wait_n_lposccycles(uint8_t n)
;	-----------------------------------------
;	 function axradio_wait_n_lposccycles
;	-----------------------------------------
_axradio_wait_n_lposccycles:
	mov	r7,dpl
	C$libmftypes.h$373$4$849 ==.
;	C:/Program Files (x86)/ON Semiconductor/AXSDB/libmf/include/libmftypes.h:373: EA = 0;
	clr	_EA
	C$easyax5043.c$2340$2$843 ==.
;	..\COMMON\easyax5043.c:2340: radio_write8(AX5043_REG_IRQMASK1, radio_read8(AX5043_REG_IRQMASK1) | 0x04); // LPOSC irq
	mov	dptr,#0x4006
	movx	a,@dptr
	orl	a,#0x04
	movx	@dptr,a
	mov	r6,#0x00
00114$:
	C$easyax5043.c$2343$2$844 ==.
;	..\COMMON\easyax5043.c:2343: if( radio_read8(AX5043_REG_IRQREQUEST1) & 0x04 )
	mov	dptr,#0x400c
	movx	a,@dptr
	mov	r5,a
	jnb	acc.2,00105$
	C$easyax5043.c$2345$3$845 ==.
;	..\COMMON\easyax5043.c:2345: cnt++;
	inc	r6
	C$easyax5043.c$2346$3$845 ==.
;	..\COMMON\easyax5043.c:2346: radio_read8(AX5043_REG_LPOSCSTATUS); // clear irq request
	mov	dptr,#0x4311
	movx	a,@dptr
00105$:
	C$easyax5043.c$2349$2$844 ==.
;	..\COMMON\easyax5043.c:2349: if(cnt > n)
	clr	c
	mov	a,r7
	subb	a,r6
	jc	00109$
	C$easyax5043.c$2351$2$844 ==.
;	..\COMMON\easyax5043.c:2351: enter_standby();
	lcall	_enter_standby
	C$easyax5043.c$2354$1$842 ==.
;	..\COMMON\easyax5043.c:2354: radio_write8(AX5043_REG_IRQMASK1, (radio_read8(AX5043_REG_IRQMASK1) & ~0x04)); // disable LPOSC irq
	sjmp	00114$
00109$:
	mov	dptr,#0x4006
	movx	a,@dptr
	anl	a,#0xfb
	movx	@dptr,a
	C$libmftypes.h$368$4$852 ==.
;	C:/Program Files (x86)/ON Semiconductor/AXSDB/libmf/include/libmftypes.h:368: EA = 1;
	setb	_EA
	C$easyax5043.c$2355$3$851 ==.
;	..\COMMON\easyax5043.c:2355: __enable_irq();
	C$easyax5043.c$2356$3$851 ==.
	XG$axradio_wait_n_lposccycles$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_calibrate_lposc'
;------------------------------------------------------------
;x                         Allocated to registers r7 
;------------------------------------------------------------
	G$axradio_calibrate_lposc$0$0 ==.
	C$easyax5043.c$2358$3$851 ==.
;	..\COMMON\easyax5043.c:2358: void axradio_calibrate_lposc(void)
;	-----------------------------------------
;	 function axradio_calibrate_lposc
;	-----------------------------------------
_axradio_calibrate_lposc:
	C$easyax5043.c$2360$2$855 ==.
;	..\COMMON\easyax5043.c:2360: radio_write8(AX5043_REG_LPOSCFREQ1, 0x00);
	mov	dptr,#0x4316
	clr	a
	movx	@dptr,a
	C$easyax5043.c$2361$2$856 ==.
;	..\COMMON\easyax5043.c:2361: radio_write8(AX5043_REG_LPOSCFREQ0, 0x00);
	mov	dptr,#0x4317
	movx	@dptr,a
	C$easyax5043.c$2363$2$857 ==.
;	..\COMMON\easyax5043.c:2363: radio_write8(AX5043_REG_LPOSCREF1, (((axradio_fxtal/640)>>8) & 0xFF));
	mov	dptr,#_axradio_fxtal
;	genFromRTrack removed	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r5,a
	mov	a,#0x02
	movc	a,@a+dptr
	mov	r6,a
	mov	a,#0x03
	movc	a,@a+dptr
	mov	r7,a
	mov	__divulong_PARM_2,#0x80
	mov	(__divulong_PARM_2 + 1),#0x02
	clr	a
	mov	(__divulong_PARM_2 + 2),a
	mov	(__divulong_PARM_2 + 3),a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	mov	ar3,r5
	mov	dptr,#0x4314
	mov	a,r3
	movx	@dptr,a
	C$easyax5043.c$2364$2$858 ==.
;	..\COMMON\easyax5043.c:2364: radio_write8(AX5043_REG_LPOSCREF0, (((axradio_fxtal/640)>>0) & 0xFF));
	mov	dptr,#0x4315
	mov	a,r4
	movx	@dptr,a
	C$easyax5043.c$2365$2$859 ==.
;	..\COMMON\easyax5043.c:2365: radio_write8(AX5043_REG_PWRMODE, AX5043_PWRSTATE_SYNTH_RX);
	mov	dptr,#0x4002
	mov	a,#0x08
	movx	@dptr,a
	C$easyax5043.c$2366$2$860 ==.
;	..\COMMON\easyax5043.c:2366: radio_write8(AX5043_REG_LPOSCKFILT1, ((axradio_lposckfiltmax >> (8 + 1)) & 0xFF)); // kfiltmax >> 1
	mov	dptr,#_axradio_lposckfiltmax
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r7,a
	clr	c
	rrc	a
	mov	r4,a
	mov	dptr,#0x4312
	mov	a,r4
	movx	@dptr,a
	C$easyax5043.c$2367$2$861 ==.
;	..\COMMON\easyax5043.c:2367: radio_write8(AX5043_REG_LPOSCKFILT0, ((axradio_lposckfiltmax >> 1) & 0xFF));
	mov	a,r7
	clr	c
	rrc	a
	xch	a,r6
	rrc	a
	xch	a,r6
	mov	dptr,#0x4313
	mov	a,r6
	movx	@dptr,a
	C$easyax5043.c$2368$1$854 ==.
;	..\COMMON\easyax5043.c:2368: axradio_wait_for_xtal();
	lcall	_axradio_wait_for_xtal
	C$easyax5043.c$2370$2$862 ==.
;	..\COMMON\easyax5043.c:2370: radio_write8(AX5043_REG_LPOSCCONFIG, 0x25); // LPOSC ENA, slow mode; calibrate on rising edge, irq on rising edge
	mov	dptr,#0x4310
	mov	a,#0x25
	movx	@dptr,a
	C$easyax5043.c$2371$1$854 ==.
;	..\COMMON\easyax5043.c:2371: axradio_wait_n_lposccycles(6);
	mov	dpl,#0x06
	lcall	_axradio_wait_n_lposccycles
	C$easyax5043.c$2388$2$863 ==.
;	..\COMMON\easyax5043.c:2388: radio_write8(AX5043_REG_LPOSCKFILT1, ((axradio_lposckfiltmax >> (8 + 2)) & 0xFF)); // kfiltmax >> 2
	mov	dptr,#_axradio_lposckfiltmax
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r7,a
	rr	a
	rr	a
	anl	a,#0x3f
	mov	r4,a
	mov	dptr,#0x4312
	mov	a,r4
	movx	@dptr,a
	C$easyax5043.c$2389$2$864 ==.
;	..\COMMON\easyax5043.c:2389: radio_write8(AX5043_REG_LPOSCKFILT0, ((axradio_lposckfiltmax >> 2) & 0xFF));
	mov	a,r7
	clr	c
	rrc	a
	xch	a,r6
	rrc	a
	xch	a,r6
	clr	c
	rrc	a
	xch	a,r6
	rrc	a
	xch	a,r6
	mov	dptr,#0x4313
	mov	a,r6
	movx	@dptr,a
	C$easyax5043.c$2390$1$854 ==.
;	..\COMMON\easyax5043.c:2390: axradio_wait_n_lposccycles(5);
	mov	dpl,#0x05
	lcall	_axradio_wait_n_lposccycles
	C$easyax5043.c$2392$2$865 ==.
;	..\COMMON\easyax5043.c:2392: radio_write8(AX5043_REG_LPOSCCONFIG, 0x00);
	mov	dptr,#0x4310
	clr	a
	movx	@dptr,a
	C$easyax5043.c$2393$2$866 ==.
;	..\COMMON\easyax5043.c:2393: radio_write8(AX5043_REG_PWRMODE, AX5043_PWRSTATE_POWERDOWN);
	mov	dptr,#0x4002
	movx	@dptr,a
	C$easyax5043.c$2396$2$867 ==.
;	..\COMMON\easyax5043.c:2396: uint8_t x = radio_read8(AX5043_REG_LPOSCFREQ1);
	mov	dptr,#0x4316
	movx	a,@dptr
	mov	r7,a
	C$easyax5043.c$2397$2$867 ==.
;	..\COMMON\easyax5043.c:2397: if( x == 0x7f || x == 0x80 )
	cjne	r7,#0x7f,00151$
	sjmp	00137$
00151$:
	cjne	r7,#0x80,00146$
	C$easyax5043.c$2399$3$868 ==.
;	..\COMMON\easyax5043.c:2399: radio_write8(AX5043_REG_LPOSCFREQ1, 0);
00137$:
	mov	dptr,#0x4316
	clr	a
	movx	@dptr,a
	C$easyax5043.c$2400$4$870 ==.
;	..\COMMON\easyax5043.c:2400: radio_write8(AX5043_REG_LPOSCFREQ0, 0);
	mov	dptr,#0x4317
	movx	@dptr,a
00146$:
	C$easyax5043.c$2405$2$867 ==.
	XG$axradio_calibrate_lposc$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_commsleepexit'
;------------------------------------------------------------
	G$axradio_commsleepexit$0$0 ==.
	C$easyax5043.c$2408$2$867 ==.
;	..\COMMON\easyax5043.c:2408: __reentrantb void axradio_commsleepexit(void) __reentrant
;	-----------------------------------------
;	 function axradio_commsleepexit
;	-----------------------------------------
_axradio_commsleepexit:
	C$easyax5043.c$2410$1$872 ==.
;	..\COMMON\easyax5043.c:2410: ax5043_commsleepexit();
	lcall	_ax5043_commsleepexit
	C$easyax5043.c$2411$1$872 ==.
	XG$axradio_commsleepexit$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_check_fourfsk_modulation'
;------------------------------------------------------------
;modulation                Allocated to registers r7 
;------------------------------------------------------------
	G$axradio_check_fourfsk_modulation$0$0 ==.
	C$easyax5043.c$2422$1$872 ==.
;	..\COMMON\easyax5043.c:2422: uint8_t axradio_check_fourfsk_modulation(void)
;	-----------------------------------------
;	 function axradio_check_fourfsk_modulation
;	-----------------------------------------
_axradio_check_fourfsk_modulation:
	C$easyax5043.c$2424$1$874 ==.
;	..\COMMON\easyax5043.c:2424: uint8_t modulation = radio_read8(AX5043_REG_MODULATION);
	mov	dptr,#0x4010
	movx	a,@dptr
	mov	r7,a
	C$easyax5043.c$2425$1$874 ==.
;	..\COMMON\easyax5043.c:2425: if((modulation & 0x0F) == 9)
	anl	ar7,#0x0f
	cjne	r7,#0x09,00102$
	C$easyax5043.c$2426$1$874 ==.
;	..\COMMON\easyax5043.c:2426: return 1;
	mov	dpl,#0x01
	sjmp	00104$
00102$:
	C$easyax5043.c$2428$1$874 ==.
;	..\COMMON\easyax5043.c:2428: return 0;
	mov	dpl,#0x00
00104$:
	C$easyax5043.c$2429$1$874 ==.
	XG$axradio_check_fourfsk_modulation$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_get_transmitter_pa_type'
;------------------------------------------------------------
	G$axradio_get_transmitter_pa_type$0$0 ==.
	C$easyax5043.c$2431$1$874 ==.
;	..\COMMON\easyax5043.c:2431: uint8_t axradio_get_transmitter_pa_type(void)
;	-----------------------------------------
;	 function axradio_get_transmitter_pa_type
;	-----------------------------------------
_axradio_get_transmitter_pa_type:
	C$easyax5043.c$2433$1$876 ==.
;	..\COMMON\easyax5043.c:2433: return (radio_read8(AX5043_REG_MODCFGA) & 0x03);
	mov	dptr,#0x4164
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x03
	anl	a,r7
	mov	dpl,a
	C$easyax5043.c$2434$1$876 ==.
	XG$axradio_get_transmitter_pa_type$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
Feasyax5043$__xinit_f30_saved$0$0 == .
__xinit__f30_saved:
	.db #0x3f	; 63
Feasyax5043$__xinit_f31_saved$0$0 == .
__xinit__f31_saved:
	.db #0xf0	; 240
Feasyax5043$__xinit_f32_saved$0$0 == .
__xinit__f32_saved:
	.db #0x3f	; 63
Feasyax5043$__xinit_f33_saved$0$0 == .
__xinit__f33_saved:
	.db #0xf0	; 240
Feasyax5043$__xinit_radio_lcd_display$0$0 == .
__xinit__radio_lcd_display:
	.ascii "found AX5043"
	.db 0x0a
	.db 0x00
Feasyax5043$__xinit_radio_not_found_lcd_display$0$0 == .
__xinit__radio_not_found_lcd_display:
	.ascii "No Radio"
	.db 0x0a
	.ascii "chip found"
	.db 0x00
	.area CABS    (ABS,CODE)
