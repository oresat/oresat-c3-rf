;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.0 #9615 (MINGW64)
;--------------------------------------------------------
	.module config
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _axradio_fxtal
	.globl _axradio_lposckfiltmax
	.globl _axradio_sync_slave_rxtimeout
	.globl _axradio_sync_slave_rxwindow
	.globl _axradio_sync_slave_rxadvance
	.globl _axradio_sync_slave_nrrx
	.globl _axradio_sync_slave_resyncloss
	.globl _axradio_sync_slave_maxperiod
	.globl _axradio_sync_slave_syncpause
	.globl _axradio_sync_slave_initialsyncwindow
	.globl _axradio_sync_slave_syncwindow
	.globl _axradio_sync_xoscstartup
	.globl _axradio_sync_period
	.globl _axradio_wor_period
	.globl _axradio_framing_minpayloadlen
	.globl _axradio_framing_ack_seqnrpos
	.globl _axradio_framing_ack_retransmissions
	.globl _axradio_framing_ack_delay
	.globl _axradio_framing_ack_timeout
	.globl _axradio_framing_enable_sfdcallback
	.globl _axradio_framing_syncflags
	.globl _axradio_framing_syncword
	.globl _axradio_framing_synclen
	.globl _axradio_framing_swcrclen
	.globl _axradio_framing_lenmask
	.globl _axradio_framing_lenoffs
	.globl _axradio_framing_lenpos
	.globl _axradio_framing_sourceaddrpos
	.globl _axradio_framing_destaddrpos
	.globl _axradio_framing_addrlen
	.globl _axradio_framing_maclen
	.globl _axradio_phy_preamble_appendpattern
	.globl _axradio_phy_preamble_appendbits
	.globl _axradio_phy_preamble_flags
	.globl _axradio_phy_preamble_byte
	.globl _axradio_phy_preamble_len
	.globl _axradio_phy_preamble_longlen
	.globl _axradio_phy_preamble_wor_len
	.globl _axradio_phy_preamble_wor_longlen
	.globl _axradio_phy_lbt_forcetx
	.globl _axradio_phy_lbt_retries
	.globl _axradio_phy_cs_enabled
	.globl _axradio_phy_cs_period
	.globl _axradio_phy_channelbusy
	.globl _axradio_phy_rssireference
	.globl _axradio_phy_rssioffset
	.globl _axradio_phy_maxfreqoffset
	.globl _axradio_phy_vcocalib
	.globl _axradio_phy_chanvcoiinit
	.globl _axradio_phy_chanpllrnginit
	.globl _axradio_phy_chanfreq
	.globl _axradio_phy_nrchannels
	.globl _axradio_phy_pn9
	.globl _axradio_phy_innerfreqloop
	.globl _axradio_byteconv_buffer
	.globl _axradio_byteconv
	.globl _crc_ccitt
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
	.globl _axradio_phy_chanvcoi
	.globl _axradio_phy_chanpllrng
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
	.globl _ax5043_set_registers
	.globl _ax5043_set_registers_tx
	.globl _ax5043_set_registers_rx
	.globl _ax5043_set_registers_rxwor
	.globl _ax5043_set_registers_rxcont
	.globl _ax5043_set_registers_rxcont_singleparamset
	.globl _axradio_setup_pincfg1
	.globl _axradio_setup_pincfg2
	.globl _axradio_conv_freq_fromhz
	.globl _axradio_conv_freq_tohz
	.globl _axradio_conv_freq_fromreg
	.globl _axradio_conv_timeinterval_totimer0
	.globl _axradio_framing_check_crc
	.globl _axradio_framing_append_crc
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
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
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
G$axradio_phy_chanpllrng$0$0==.
_axradio_phy_chanpllrng::
	.ds 2
G$axradio_phy_chanvcoi$0$0==.
_axradio_phy_chanvcoi::
	.ds 1
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
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
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
;Allocation info for local variables in function 'ax5043_set_registers'
;------------------------------------------------------------
	G$ax5043_set_registers$0$0 ==.
	C$config.c$12$0$0 ==.
;	..\AX_Radio_Lab_output\config.c:12: __reentrantb void ax5043_set_registers(void) __reentrant
;	-----------------------------------------
;	 function ax5043_set_registers
;	-----------------------------------------
_ax5043_set_registers:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	C$config.c$14$2$171 ==.
;	..\AX_Radio_Lab_output\config.c:14: radio_write8(AX5043_REG_MODULATION     ,                              			0x08);
	mov	dptr,#0x4010
	mov	a,#0x08
	movx	@dptr,a
	C$config.c$15$2$172 ==.
;	..\AX_Radio_Lab_output\config.c:15: radio_write8(AX5043_REG_ENCODING       ,                              			0x07);
	mov	dptr,#0x4011
	dec	a
	movx	@dptr,a
	C$config.c$16$2$173 ==.
;	..\AX_Radio_Lab_output\config.c:16: radio_write8(AX5043_REG_FRAMING        ,                              			0x14);
	mov	dptr,#0x4012
	mov	a,#0x14
	movx	@dptr,a
	C$config.c$17$2$174 ==.
;	..\AX_Radio_Lab_output\config.c:17: radio_write8(AX5043_REG_PINFUNCSYSCLK  ,                              			0x04);
	mov	dptr,#0x4021
	mov	a,#0x04
	movx	@dptr,a
	C$config.c$18$2$175 ==.
;	..\AX_Radio_Lab_output\config.c:18: radio_write8(AX5043_REG_PINFUNCDCLK    ,                              			0x00);
	mov	dptr,#0x4022
	clr	a
	movx	@dptr,a
	C$config.c$19$2$176 ==.
;	..\AX_Radio_Lab_output\config.c:19: radio_write8(AX5043_REG_PINFUNCDATA    ,                              			0x00);
	mov	dptr,#0x4023
	movx	@dptr,a
	C$config.c$20$2$177 ==.
;	..\AX_Radio_Lab_output\config.c:20: radio_write8(AX5043_REG_PINFUNCANTSEL  ,                              			0x00);
	mov	dptr,#0x4025
	movx	@dptr,a
	C$config.c$21$2$178 ==.
;	..\AX_Radio_Lab_output\config.c:21: radio_write8(AX5043_REG_PINFUNCPWRAMP  ,                              			0x00);
	mov	dptr,#0x4026
	movx	@dptr,a
	C$config.c$22$2$179 ==.
;	..\AX_Radio_Lab_output\config.c:22: radio_write8(AX5043_REG_WAKEUPXOEARLY  ,                              			0x01);
	mov	dptr,#0x406e
	inc	a
	movx	@dptr,a
	C$config.c$23$2$180 ==.
;	..\AX_Radio_Lab_output\config.c:23: radio_write8(AX5043_REG_IFFREQ1        ,                              			0x0E);
	mov	dptr,#0x4100
	mov	a,#0x0e
	movx	@dptr,a
	C$config.c$24$2$181 ==.
;	..\AX_Radio_Lab_output\config.c:24: radio_write8(AX5043_REG_IFFREQ0        ,                              			0x78);
	mov	dptr,#0x4101
	mov	a,#0x78
	movx	@dptr,a
	C$config.c$25$2$182 ==.
;	..\AX_Radio_Lab_output\config.c:25: radio_write8(AX5043_REG_DECIMATION     ,                              			0x02);
	mov	dptr,#0x4102
	mov	a,#0x02
	movx	@dptr,a
	C$config.c$26$2$183 ==.
;	..\AX_Radio_Lab_output\config.c:26: radio_write8(AX5043_REG_RXDATARATE2    ,                              			0x00);
	mov	dptr,#0x4103
	clr	a
	movx	@dptr,a
	C$config.c$27$2$184 ==.
;	..\AX_Radio_Lab_output\config.c:27: radio_write8(AX5043_REG_RXDATARATE1    ,                              			0x42);
	mov	dptr,#0x4104
	mov	a,#0x42
	movx	@dptr,a
	C$config.c$28$2$185 ==.
;	..\AX_Radio_Lab_output\config.c:28: radio_write8(AX5043_REG_RXDATARATE0    ,                              			0xAA);
	mov	dptr,#0x4105
	mov	a,#0xaa
	movx	@dptr,a
	C$config.c$29$2$186 ==.
;	..\AX_Radio_Lab_output\config.c:29: radio_write8(AX5043_REG_MAXDROFFSET2   ,                              			0x00);
	mov	dptr,#0x4106
	clr	a
	movx	@dptr,a
	C$config.c$30$2$187 ==.
;	..\AX_Radio_Lab_output\config.c:30: radio_write8(AX5043_REG_MAXDROFFSET1   ,                              			0x00);
	mov	dptr,#0x4107
	movx	@dptr,a
	C$config.c$31$2$188 ==.
;	..\AX_Radio_Lab_output\config.c:31: radio_write8(AX5043_REG_MAXDROFFSET0   ,                              			0x00);
	mov	dptr,#0x4108
	movx	@dptr,a
	C$config.c$32$2$189 ==.
;	..\AX_Radio_Lab_output\config.c:32: radio_write8(AX5043_REG_MAXRFOFFSET2   ,                              			0x80);
	mov	dptr,#0x4109
	mov	a,#0x80
	movx	@dptr,a
	C$config.c$33$2$190 ==.
;	..\AX_Radio_Lab_output\config.c:33: radio_write8(AX5043_REG_MAXRFOFFSET1   ,                              			0x04);
	mov	dptr,#0x410a
	mov	a,#0x04
	movx	@dptr,a
	C$config.c$34$2$191 ==.
;	..\AX_Radio_Lab_output\config.c:34: radio_write8(AX5043_REG_MAXRFOFFSET0   ,                              			0x23);
	mov	dptr,#0x410b
	mov	a,#0x23
	movx	@dptr,a
	C$config.c$35$2$192 ==.
;	..\AX_Radio_Lab_output\config.c:35: radio_write8(AX5043_REG_FSKDMAX1       ,                              			0x00);
	mov	dptr,#0x410c
	clr	a
	movx	@dptr,a
	C$config.c$36$2$193 ==.
;	..\AX_Radio_Lab_output\config.c:36: radio_write8(AX5043_REG_FSKDMAX0       ,                              			0xA6);
	mov	dptr,#0x410d
	mov	a,#0xa6
	movx	@dptr,a
	C$config.c$37$2$194 ==.
;	..\AX_Radio_Lab_output\config.c:37: radio_write8(AX5043_REG_FSKDMIN1       ,                              			0xFF);
	mov	dptr,#0x410e
	mov	a,#0xff
	movx	@dptr,a
	C$config.c$38$2$195 ==.
;	..\AX_Radio_Lab_output\config.c:38: radio_write8(AX5043_REG_FSKDMIN0       ,                              			0x5A);
	mov	dptr,#0x410f
	mov	a,#0x5a
	movx	@dptr,a
	C$config.c$39$2$196 ==.
;	..\AX_Radio_Lab_output\config.c:39: radio_write8(AX5043_REG_AMPLFILTER     ,                              			0x00);
	mov	dptr,#0x4115
	clr	a
	movx	@dptr,a
	C$config.c$40$2$197 ==.
;	..\AX_Radio_Lab_output\config.c:40: radio_write8(AX5043_REG_RXPARAMSETS    ,                              			0xF4);
	mov	dptr,#0x4117
	mov	a,#0xf4
	movx	@dptr,a
	C$config.c$41$2$198 ==.
;	..\AX_Radio_Lab_output\config.c:41: radio_write8(AX5043_REG_AGCGAIN0       ,                              			0x93);
	mov	dptr,#0x4120
	mov	a,#0x93
	movx	@dptr,a
	C$config.c$42$2$199 ==.
;	..\AX_Radio_Lab_output\config.c:42: radio_write8(AX5043_REG_AGCTARGET0     ,                              			0x84);
	mov	dptr,#0x4121
	mov	a,#0x84
	movx	@dptr,a
	C$config.c$43$2$200 ==.
;	..\AX_Radio_Lab_output\config.c:43: radio_write8(AX5043_REG_TIMEGAIN0      ,                              			0x89);
	mov	dptr,#0x4124
	mov	a,#0x89
	movx	@dptr,a
	C$config.c$44$2$201 ==.
;	..\AX_Radio_Lab_output\config.c:44: radio_write8(AX5043_REG_DRGAIN0        ,                              			0x83);
	mov	dptr,#0x4125
	mov	a,#0x83
	movx	@dptr,a
	C$config.c$45$2$202 ==.
;	..\AX_Radio_Lab_output\config.c:45: radio_write8(AX5043_REG_PHASEGAIN0     ,                              			0xC3);
	mov	dptr,#0x4126
	mov	a,#0xc3
	movx	@dptr,a
	C$config.c$46$2$203 ==.
;	..\AX_Radio_Lab_output\config.c:46: radio_write8(AX5043_REG_FREQUENCYGAINA0,                              			0x0F);
	mov	dptr,#0x4127
	mov	a,#0x0f
	movx	@dptr,a
	C$config.c$47$2$204 ==.
;	..\AX_Radio_Lab_output\config.c:47: radio_write8(AX5043_REG_FREQUENCYGAINB0,                              			0x1F);
	mov	dptr,#0x4128
	mov	a,#0x1f
	movx	@dptr,a
	C$config.c$48$2$205 ==.
;	..\AX_Radio_Lab_output\config.c:48: radio_write8(AX5043_REG_FREQUENCYGAINC0,                              			0x06);
	mov	dptr,#0x4129
	mov	a,#0x06
	movx	@dptr,a
	C$config.c$49$2$206 ==.
;	..\AX_Radio_Lab_output\config.c:49: radio_write8(AX5043_REG_FREQUENCYGAIND0,                              			0x06);
	mov	dptr,#0x412a
	movx	@dptr,a
	C$config.c$50$2$207 ==.
;	..\AX_Radio_Lab_output\config.c:50: radio_write8(AX5043_REG_AMPLITUDEGAIN0 ,                              			0x06);
	mov	dptr,#0x412b
	movx	@dptr,a
	C$config.c$51$2$208 ==.
;	..\AX_Radio_Lab_output\config.c:51: radio_write8(AX5043_REG_FREQDEV10      ,                              			0x00);
	mov	dptr,#0x412c
	clr	a
	movx	@dptr,a
	C$config.c$52$2$209 ==.
;	..\AX_Radio_Lab_output\config.c:52: radio_write8(AX5043_REG_FREQDEV00      ,                              			0x00);
	mov	dptr,#0x412d
	movx	@dptr,a
	C$config.c$53$2$210 ==.
;	..\AX_Radio_Lab_output\config.c:53: radio_write8(AX5043_REG_BBOFFSRES0     ,                              			0x00);
	mov	dptr,#0x412f
	movx	@dptr,a
	C$config.c$54$2$211 ==.
;	..\AX_Radio_Lab_output\config.c:54: radio_write8(AX5043_REG_AGCGAIN1       ,                              			0x93);
	mov	dptr,#0x4130
	mov	a,#0x93
	movx	@dptr,a
	C$config.c$55$2$212 ==.
;	..\AX_Radio_Lab_output\config.c:55: radio_write8(AX5043_REG_AGCTARGET1     ,                              			0x84);
	mov	dptr,#0x4131
	mov	a,#0x84
	movx	@dptr,a
	C$config.c$56$2$213 ==.
;	..\AX_Radio_Lab_output\config.c:56: radio_write8(AX5043_REG_AGCAHYST1      ,                              			0x00);
	mov	dptr,#0x4132
	clr	a
	movx	@dptr,a
	C$config.c$57$2$214 ==.
;	..\AX_Radio_Lab_output\config.c:57: radio_write8(AX5043_REG_AGCMINMAX1     ,                              			0x00);
	mov	dptr,#0x4133
	movx	@dptr,a
	C$config.c$58$2$215 ==.
;	..\AX_Radio_Lab_output\config.c:58: radio_write8(AX5043_REG_TIMEGAIN1      ,                              			0x87);
	mov	dptr,#0x4134
	mov	a,#0x87
	movx	@dptr,a
	C$config.c$59$2$216 ==.
;	..\AX_Radio_Lab_output\config.c:59: radio_write8(AX5043_REG_DRGAIN1        ,                              			0x82);
	mov	dptr,#0x4135
	mov	a,#0x82
	movx	@dptr,a
	C$config.c$60$2$217 ==.
;	..\AX_Radio_Lab_output\config.c:60: radio_write8(AX5043_REG_PHASEGAIN1     ,                              			0xC3);
	mov	dptr,#0x4136
	mov	a,#0xc3
	movx	@dptr,a
	C$config.c$61$2$218 ==.
;	..\AX_Radio_Lab_output\config.c:61: radio_write8(AX5043_REG_FREQUENCYGAINA1,                              			0x0F);
	mov	dptr,#0x4137
	mov	a,#0x0f
	movx	@dptr,a
	C$config.c$62$2$219 ==.
;	..\AX_Radio_Lab_output\config.c:62: radio_write8(AX5043_REG_FREQUENCYGAINB1,                              			0x1F);
	mov	dptr,#0x4138
	mov	a,#0x1f
	movx	@dptr,a
	C$config.c$63$2$220 ==.
;	..\AX_Radio_Lab_output\config.c:63: radio_write8(AX5043_REG_FREQUENCYGAINC1,                              			0x06);
	mov	dptr,#0x4139
	mov	a,#0x06
	movx	@dptr,a
	C$config.c$64$2$221 ==.
;	..\AX_Radio_Lab_output\config.c:64: radio_write8(AX5043_REG_FREQUENCYGAIND1,                              			0x06);
	mov	dptr,#0x413a
	movx	@dptr,a
	C$config.c$65$2$222 ==.
;	..\AX_Radio_Lab_output\config.c:65: radio_write8(AX5043_REG_AMPLITUDEGAIN1 ,                              			0x06);
	mov	dptr,#0x413b
	movx	@dptr,a
	C$config.c$66$2$223 ==.
;	..\AX_Radio_Lab_output\config.c:66: radio_write8(AX5043_REG_FREQDEV11      ,                              			0x00);
	mov	dptr,#0x413c
	clr	a
	movx	@dptr,a
	C$config.c$67$2$224 ==.
;	..\AX_Radio_Lab_output\config.c:67: radio_write8(AX5043_REG_FREQDEV01      ,                              			0x3C);
	mov	dptr,#0x413d
	mov	a,#0x3c
	movx	@dptr,a
	C$config.c$68$2$225 ==.
;	..\AX_Radio_Lab_output\config.c:68: radio_write8(AX5043_REG_FOURFSK1       ,                              			0x16);
	mov	dptr,#0x413e
	mov	a,#0x16
	movx	@dptr,a
	C$config.c$69$2$226 ==.
;	..\AX_Radio_Lab_output\config.c:69: radio_write8(AX5043_REG_BBOFFSRES1     ,                              			0x00);
	mov	dptr,#0x413f
	clr	a
	movx	@dptr,a
	C$config.c$70$2$227 ==.
;	..\AX_Radio_Lab_output\config.c:70: radio_write8(AX5043_REG_AGCGAIN3       ,                              			0xFF);
	mov	dptr,#0x4150
	dec	a
	movx	@dptr,a
	C$config.c$71$2$228 ==.
;	..\AX_Radio_Lab_output\config.c:71: radio_write8(AX5043_REG_AGCTARGET3     ,                              			0x84);
	mov	dptr,#0x4151
	mov	a,#0x84
	movx	@dptr,a
	C$config.c$72$2$229 ==.
;	..\AX_Radio_Lab_output\config.c:72: radio_write8(AX5043_REG_AGCAHYST3      ,                              			0x00);
	mov	dptr,#0x4152
	clr	a
	movx	@dptr,a
	C$config.c$73$2$230 ==.
;	..\AX_Radio_Lab_output\config.c:73: radio_write8(AX5043_REG_AGCMINMAX3     ,                              			0x00);
	mov	dptr,#0x4153
	movx	@dptr,a
	C$config.c$74$2$231 ==.
;	..\AX_Radio_Lab_output\config.c:74: radio_write8(AX5043_REG_TIMEGAIN3      ,                              			0x86);
	mov	dptr,#0x4154
	mov	a,#0x86
	movx	@dptr,a
	C$config.c$75$2$232 ==.
;	..\AX_Radio_Lab_output\config.c:75: radio_write8(AX5043_REG_DRGAIN3        ,                              			0x81);
	mov	dptr,#0x4155
	mov	a,#0x81
	movx	@dptr,a
	C$config.c$76$2$233 ==.
;	..\AX_Radio_Lab_output\config.c:76: radio_write8(AX5043_REG_PHASEGAIN3     ,                              			0xC3);
	mov	dptr,#0x4156
	mov	a,#0xc3
	movx	@dptr,a
	C$config.c$77$2$234 ==.
;	..\AX_Radio_Lab_output\config.c:77: radio_write8(AX5043_REG_FREQUENCYGAINA3,                              			0x0F);
	mov	dptr,#0x4157
	mov	a,#0x0f
	movx	@dptr,a
	C$config.c$78$2$235 ==.
;	..\AX_Radio_Lab_output\config.c:78: radio_write8(AX5043_REG_FREQUENCYGAINB3,                              			0x1F);
	mov	dptr,#0x4158
	mov	a,#0x1f
	movx	@dptr,a
	C$config.c$79$2$236 ==.
;	..\AX_Radio_Lab_output\config.c:79: radio_write8(AX5043_REG_FREQUENCYGAINC3,                              			0x0A);
	mov	dptr,#0x4159
	mov	a,#0x0a
	movx	@dptr,a
	C$config.c$80$2$237 ==.
;	..\AX_Radio_Lab_output\config.c:80: radio_write8(AX5043_REG_FREQUENCYGAIND3,                              			0x0A);
	mov	dptr,#0x415a
	movx	@dptr,a
	C$config.c$81$2$238 ==.
;	..\AX_Radio_Lab_output\config.c:81: radio_write8(AX5043_REG_AMPLITUDEGAIN3 ,                              			0x06);
	mov	dptr,#0x415b
	mov	a,#0x06
	movx	@dptr,a
	C$config.c$82$2$239 ==.
;	..\AX_Radio_Lab_output\config.c:82: radio_write8(AX5043_REG_FREQDEV13      ,                              			0x00);
	mov	dptr,#0x415c
	clr	a
	movx	@dptr,a
	C$config.c$83$2$240 ==.
;	..\AX_Radio_Lab_output\config.c:83: radio_write8(AX5043_REG_FREQDEV03      ,                              			0x3C);
	mov	dptr,#0x415d
	mov	a,#0x3c
	movx	@dptr,a
	C$config.c$84$2$241 ==.
;	..\AX_Radio_Lab_output\config.c:84: radio_write8(AX5043_REG_FOURFSK3       ,                              			0x16);
	mov	dptr,#0x415e
	mov	a,#0x16
	movx	@dptr,a
	C$config.c$85$2$242 ==.
;	..\AX_Radio_Lab_output\config.c:85: radio_write8(AX5043_REG_BBOFFSRES3     ,                              			0x00);
	mov	dptr,#0x415f
	clr	a
	movx	@dptr,a
	C$config.c$86$2$243 ==.
;	..\AX_Radio_Lab_output\config.c:86: radio_write8(AX5043_REG_MODCFGF        ,                              			0x00);
	mov	dptr,#0x4160
	movx	@dptr,a
	C$config.c$87$2$244 ==.
;	..\AX_Radio_Lab_output\config.c:87: radio_write8(AX5043_REG_FSKDEV2        ,                              			0x00);
	mov	dptr,#0x4161
	movx	@dptr,a
	C$config.c$88$2$245 ==.
;	..\AX_Radio_Lab_output\config.c:88: radio_write8(AX5043_REG_FSKDEV1        ,                              			0x51);
	mov	dptr,#0x4162
	mov	a,#0x51
	movx	@dptr,a
	C$config.c$89$2$246 ==.
;	..\AX_Radio_Lab_output\config.c:89: radio_write8(AX5043_REG_FSKDEV0        ,                              			0xEC);
	mov	dptr,#0x4163
	mov	a,#0xec
	movx	@dptr,a
	C$config.c$90$2$247 ==.
;	..\AX_Radio_Lab_output\config.c:90: radio_write8(AX5043_REG_MODCFGA        ,                              			0x06);
	mov	dptr,#0x4164
	mov	a,#0x06
	movx	@dptr,a
	C$config.c$91$2$248 ==.
;	..\AX_Radio_Lab_output\config.c:91: radio_write8(AX5043_REG_TXRATE2        ,                              			0x00);
	mov	dptr,#0x4165
	clr	a
	movx	@dptr,a
	C$config.c$92$2$249 ==.
;	..\AX_Radio_Lab_output\config.c:92: radio_write8(AX5043_REG_TXRATE1        ,                              			0xF5);
	mov	dptr,#0x4166
	mov	a,#0xf5
	movx	@dptr,a
	C$config.c$93$2$250 ==.
;	..\AX_Radio_Lab_output\config.c:93: radio_write8(AX5043_REG_TXRATE0        ,                              			0xC3);
	mov	dptr,#0x4167
	mov	a,#0xc3
	movx	@dptr,a
	C$config.c$94$2$251 ==.
;	..\AX_Radio_Lab_output\config.c:94: radio_write8(AX5043_REG_TXPWRCOEFFB1   ,                              			0x07);
	mov	dptr,#0x416a
	mov	a,#0x07
	movx	@dptr,a
	C$config.c$95$2$252 ==.
;	..\AX_Radio_Lab_output\config.c:95: radio_write8(AX5043_REG_TXPWRCOEFFB0   ,                              			0x00);
	mov	dptr,#0x416b
	clr	a
	movx	@dptr,a
	C$config.c$96$2$253 ==.
;	..\AX_Radio_Lab_output\config.c:96: radio_write8(AX5043_REG_PLLVCOI        ,                              			0x93);
	mov	dptr,#0x4180
	mov	a,#0x93
	movx	@dptr,a
	C$config.c$97$2$254 ==.
;	..\AX_Radio_Lab_output\config.c:97: radio_write8(AX5043_REG_PLLRNGCLK      ,                              			0x03);
	mov	dptr,#0x4183
	mov	a,#0x03
	movx	@dptr,a
	C$config.c$98$2$255 ==.
;	..\AX_Radio_Lab_output\config.c:98: radio_write8(AX5043_REG_BBTUNE         ,                              			0x07);
	mov	dptr,#0x4188
	mov	a,#0x07
	movx	@dptr,a
	C$config.c$99$2$256 ==.
;	..\AX_Radio_Lab_output\config.c:99: radio_write8(AX5043_REG_BBOFFSCAP      ,                              			0x77);
	mov	dptr,#0x4189
	mov	a,#0x77
	movx	@dptr,a
	C$config.c$100$2$257 ==.
;	..\AX_Radio_Lab_output\config.c:100: radio_write8(AX5043_REG_PKTADDRCFG     ,                              			0x80);
	mov	dptr,#0x4200
	mov	a,#0x80
	movx	@dptr,a
	C$config.c$101$2$258 ==.
;	..\AX_Radio_Lab_output\config.c:101: radio_write8(AX5043_REG_PKTLENCFG      ,                              			0x00);
	mov	dptr,#0x4201
	clr	a
	movx	@dptr,a
	C$config.c$102$2$259 ==.
;	..\AX_Radio_Lab_output\config.c:102: radio_write8(AX5043_REG_PKTLENOFFSET   ,                              			0x48);
	mov	dptr,#0x4202
	mov	a,#0x48
	movx	@dptr,a
	C$config.c$103$2$260 ==.
;	..\AX_Radio_Lab_output\config.c:103: radio_write8(AX5043_REG_PKTMAXLEN      ,                              			0xC8);
	mov	dptr,#0x4203
	mov	a,#0xc8
	movx	@dptr,a
	C$config.c$104$2$261 ==.
;	..\AX_Radio_Lab_output\config.c:104: radio_write8(AX5043_REG_MATCH0PAT3     ,                              			0xAA);
	mov	dptr,#0x4210
	mov	a,#0xaa
	movx	@dptr,a
	C$config.c$105$2$262 ==.
;	..\AX_Radio_Lab_output\config.c:105: radio_write8(AX5043_REG_MATCH0PAT2     ,                              			0xCC);
	mov	dptr,#0x4211
	mov	a,#0xcc
	movx	@dptr,a
	C$config.c$106$2$263 ==.
;	..\AX_Radio_Lab_output\config.c:106: radio_write8(AX5043_REG_MATCH0PAT1     ,                              			0xAA);
	mov	dptr,#0x4212
	mov	a,#0xaa
	movx	@dptr,a
	C$config.c$107$2$264 ==.
;	..\AX_Radio_Lab_output\config.c:107: radio_write8(AX5043_REG_MATCH0PAT0     ,                              			0xCC);
	mov	dptr,#0x4213
	mov	a,#0xcc
	movx	@dptr,a
	C$config.c$108$2$265 ==.
;	..\AX_Radio_Lab_output\config.c:108: radio_write8(AX5043_REG_MATCH1PAT1     ,                              			0x7E);
	mov	dptr,#0x4218
	mov	a,#0x7e
	movx	@dptr,a
	C$config.c$109$2$266 ==.
;	..\AX_Radio_Lab_output\config.c:109: radio_write8(AX5043_REG_MATCH1PAT0     ,                              			0x7E);
	mov	dptr,#0x4219
	movx	@dptr,a
	C$config.c$110$2$267 ==.
;	..\AX_Radio_Lab_output\config.c:110: radio_write8(AX5043_REG_MATCH1LEN      ,                              			0x0A);
	mov	dptr,#0x421c
	mov	a,#0x0a
	movx	@dptr,a
	C$config.c$111$2$268 ==.
;	..\AX_Radio_Lab_output\config.c:111: radio_write8(AX5043_REG_MATCH1MAX      ,                              			0x0A);
	mov	dptr,#0x421e
	movx	@dptr,a
	C$config.c$112$2$269 ==.
;	..\AX_Radio_Lab_output\config.c:112: radio_write8(AX5043_REG_TMGTXBOOST     ,                              			0x32);
	mov	dptr,#0x4220
	mov	a,#0x32
	movx	@dptr,a
	C$config.c$113$2$270 ==.
;	..\AX_Radio_Lab_output\config.c:113: radio_write8(AX5043_REG_TMGTXSETTLE    ,                              			0x14);
	mov	dptr,#0x4221
	mov	a,#0x14
	movx	@dptr,a
	C$config.c$114$2$271 ==.
;	..\AX_Radio_Lab_output\config.c:114: radio_write8(AX5043_REG_TMGRXBOOST     ,                              			0x32);
	mov	dptr,#0x4223
	mov	a,#0x32
	movx	@dptr,a
	C$config.c$115$2$272 ==.
;	..\AX_Radio_Lab_output\config.c:115: radio_write8(AX5043_REG_TMGRXSETTLE    ,                              			0x14);
	mov	dptr,#0x4224
	mov	a,#0x14
	movx	@dptr,a
	C$config.c$116$2$273 ==.
;	..\AX_Radio_Lab_output\config.c:116: radio_write8(AX5043_REG_TMGRXOFFSACQ   ,                              			0x00);
	mov	dptr,#0x4225
	clr	a
	movx	@dptr,a
	C$config.c$117$2$274 ==.
;	..\AX_Radio_Lab_output\config.c:117: radio_write8(AX5043_REG_TMGRXCOARSEAGC ,                              			0x73);
	mov	dptr,#0x4226
	mov	a,#0x73
	movx	@dptr,a
	C$config.c$118$2$275 ==.
;	..\AX_Radio_Lab_output\config.c:118: radio_write8(AX5043_REG_TMGRXRSSI      ,                              			0x03);
	mov	dptr,#0x4228
	mov	a,#0x03
	movx	@dptr,a
	C$config.c$119$2$276 ==.
;	..\AX_Radio_Lab_output\config.c:119: radio_write8(AX5043_REG_TMGRXPREAMBLE2 ,                              			0x17);
	mov	dptr,#0x422a
	mov	a,#0x17
	movx	@dptr,a
	C$config.c$120$2$277 ==.
;	..\AX_Radio_Lab_output\config.c:120: radio_write8(AX5043_REG_RSSIABSTHR     ,                              			0xEA);
	mov	dptr,#0x422d
	mov	a,#0xea
	movx	@dptr,a
	C$config.c$121$2$278 ==.
;	..\AX_Radio_Lab_output\config.c:121: radio_write8(AX5043_REG_BGNDRSSITHR    ,                              			0x00);
	mov	dptr,#0x422f
	clr	a
	movx	@dptr,a
	C$config.c$122$2$279 ==.
;	..\AX_Radio_Lab_output\config.c:122: radio_write8(AX5043_REG_PKTCHUNKSIZE   ,                              			0x0D);
	mov	dptr,#0x4230
	mov	a,#0x0d
	movx	@dptr,a
	C$config.c$123$2$280 ==.
;	..\AX_Radio_Lab_output\config.c:123: radio_write8(AX5043_REG_PKTACCEPTFLAGS ,                              			0x20);
	mov	dptr,#0x4233
	mov	a,#0x20
	movx	@dptr,a
	C$config.c$124$2$281 ==.
;	..\AX_Radio_Lab_output\config.c:124: radio_write8(AX5043_REG_DACVALUE1      ,                              			0x00);
	mov	dptr,#0x4330
	clr	a
	movx	@dptr,a
	C$config.c$125$2$282 ==.
;	..\AX_Radio_Lab_output\config.c:125: radio_write8(AX5043_REG_DACVALUE0      ,                              			0x00);
	mov	dptr,#0x4331
	movx	@dptr,a
	C$config.c$126$2$283 ==.
;	..\AX_Radio_Lab_output\config.c:126: radio_write8(AX5043_REG_DACCONFIG      ,                              			0x00);
	mov	dptr,#0x4332
	movx	@dptr,a
	C$config.c$127$2$284 ==.
;	..\AX_Radio_Lab_output\config.c:127: radio_write8(AX5043_REG_REF            ,                              			0x03);
	mov	dptr,#0x4f0d
	mov	a,#0x03
	movx	@dptr,a
	C$config.c$128$2$285 ==.
;	..\AX_Radio_Lab_output\config.c:128: radio_write8(AX5043_REG_XTALOSC        ,                              			0x04);
	mov	dptr,#0x4f10
	inc	a
	movx	@dptr,a
	C$config.c$129$2$286 ==.
;	..\AX_Radio_Lab_output\config.c:129: radio_write8(AX5043_REG_XTALAMPL       ,                              			0x00);
	mov	dptr,#0x4f11
	clr	a
	movx	@dptr,a
	C$config.c$130$2$287 ==.
;	..\AX_Radio_Lab_output\config.c:130: radio_write8(AX5043_REG_0xF1C          ,                              			0x07);
	mov	dptr,#0x4f1c
	mov	a,#0x07
	movx	@dptr,a
	C$config.c$131$2$288 ==.
;	..\AX_Radio_Lab_output\config.c:131: radio_write8(AX5043_REG_0xF21          ,                              			0x68);
	mov	dptr,#0x4f21
	mov	a,#0x68
	movx	@dptr,a
	C$config.c$132$2$289 ==.
;	..\AX_Radio_Lab_output\config.c:132: radio_write8(AX5043_REG_0xF22          ,                              			0xFF);
	mov	dptr,#0x4f22
	mov	a,#0xff
	movx	@dptr,a
	C$config.c$133$2$290 ==.
;	..\AX_Radio_Lab_output\config.c:133: radio_write8(AX5043_REG_0xF23          ,                              			0x84);
	mov	dptr,#0x4f23
	mov	a,#0x84
	movx	@dptr,a
	C$config.c$134$2$291 ==.
;	..\AX_Radio_Lab_output\config.c:134: radio_write8(AX5043_REG_0xF26          ,                              			0x98);
	mov	dptr,#0x4f26
	mov	a,#0x98
	movx	@dptr,a
	C$config.c$135$2$292 ==.
;	..\AX_Radio_Lab_output\config.c:135: radio_write8(AX5043_REG_0xF34          ,                              			0x28);
	mov	dptr,#0x4f34
	mov	a,#0x28
	movx	@dptr,a
	C$config.c$136$2$293 ==.
;	..\AX_Radio_Lab_output\config.c:136: radio_write8(AX5043_REG_0xF35          ,                              			0x10);
	mov	dptr,#0x4f35
	mov	a,#0x10
	movx	@dptr,a
	C$config.c$137$2$294 ==.
;	..\AX_Radio_Lab_output\config.c:137: radio_write8(AX5043_REG_0xF44          ,                              			0x25);
	mov	dptr,#0x4f44
	mov	a,#0x25
	movx	@dptr,a
	C$config.c$138$1$170 ==.
	XG$ax5043_set_registers$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ax5043_set_registers_tx'
;------------------------------------------------------------
	G$ax5043_set_registers_tx$0$0 ==.
	C$config.c$141$1$170 ==.
;	..\AX_Radio_Lab_output\config.c:141: __reentrantb void ax5043_set_registers_tx(void) __reentrant
;	-----------------------------------------
;	 function ax5043_set_registers_tx
;	-----------------------------------------
_ax5043_set_registers_tx:
	C$config.c$143$2$297 ==.
;	..\AX_Radio_Lab_output\config.c:143: radio_write8(AX5043_REG_PLLLOOP        ,                              			0x09);
	mov	dptr,#0x4030
	mov	a,#0x09
	movx	@dptr,a
	C$config.c$144$2$298 ==.
;	..\AX_Radio_Lab_output\config.c:144: radio_write8(AX5043_REG_PLLCPI         ,                              			0x02);
	mov	dptr,#0x4031
	mov	a,#0x02
	movx	@dptr,a
	C$config.c$145$2$299 ==.
;	..\AX_Radio_Lab_output\config.c:145: radio_write8(AX5043_REG_PLLVCODIV      ,                              			0x24);
	mov	dptr,#0x4032
	mov	a,#0x24
	movx	@dptr,a
	C$config.c$146$2$300 ==.
;	..\AX_Radio_Lab_output\config.c:146: radio_write8(AX5043_REG_XTALCAP        ,                              			0x00);
	mov	dptr,#0x4184
	clr	a
	movx	@dptr,a
	C$config.c$147$2$301 ==.
;	..\AX_Radio_Lab_output\config.c:147: radio_write8(AX5043_REG_0xF00          ,                              			0x0F);
	mov	dptr,#0x4f00
	mov	a,#0x0f
	movx	@dptr,a
	C$config.c$148$2$302 ==.
;	..\AX_Radio_Lab_output\config.c:148: radio_write8(AX5043_REG_0xF18          ,                              			0x06);
	mov	dptr,#0x4f18
	mov	a,#0x06
	movx	@dptr,a
	C$config.c$149$1$296 ==.
	XG$ax5043_set_registers_tx$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ax5043_set_registers_rx'
;------------------------------------------------------------
	G$ax5043_set_registers_rx$0$0 ==.
	C$config.c$152$1$296 ==.
;	..\AX_Radio_Lab_output\config.c:152: __reentrantb void ax5043_set_registers_rx(void) __reentrant
;	-----------------------------------------
;	 function ax5043_set_registers_rx
;	-----------------------------------------
_ax5043_set_registers_rx:
	C$config.c$154$2$305 ==.
;	..\AX_Radio_Lab_output\config.c:154: radio_write8(AX5043_REG_PLLLOOP        ,                              			0x09);
	mov	dptr,#0x4030
	mov	a,#0x09
	movx	@dptr,a
	C$config.c$155$2$306 ==.
;	..\AX_Radio_Lab_output\config.c:155: radio_write8(AX5043_REG_PLLCPI         ,                              			0x01);
	mov	dptr,#0x4031
	mov	a,#0x01
	movx	@dptr,a
	C$config.c$156$2$307 ==.
;	..\AX_Radio_Lab_output\config.c:156: radio_write8(AX5043_REG_PLLVCODIV      ,                              			0x24);
	mov	dptr,#0x4032
	mov	a,#0x24
	movx	@dptr,a
	C$config.c$157$2$308 ==.
;	..\AX_Radio_Lab_output\config.c:157: radio_write8(AX5043_REG_XTALCAP        ,                              			0x00);
	mov	dptr,#0x4184
	clr	a
	movx	@dptr,a
	C$config.c$158$2$309 ==.
;	..\AX_Radio_Lab_output\config.c:158: radio_write8(AX5043_REG_0xF00          ,                              			0x0F);
	mov	dptr,#0x4f00
	mov	a,#0x0f
	movx	@dptr,a
	C$config.c$159$2$310 ==.
;	..\AX_Radio_Lab_output\config.c:159: radio_write8(AX5043_REG_0xF18          ,                              			0x02);
	mov	dptr,#0x4f18
	mov	a,#0x02
	movx	@dptr,a
	C$config.c$160$1$304 ==.
	XG$ax5043_set_registers_rx$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ax5043_set_registers_rxwor'
;------------------------------------------------------------
	G$ax5043_set_registers_rxwor$0$0 ==.
	C$config.c$163$1$304 ==.
;	..\AX_Radio_Lab_output\config.c:163: __reentrantb void ax5043_set_registers_rxwor(void) __reentrant
;	-----------------------------------------
;	 function ax5043_set_registers_rxwor
;	-----------------------------------------
_ax5043_set_registers_rxwor:
	C$config.c$165$2$313 ==.
;	..\AX_Radio_Lab_output\config.c:165: radio_write8(AX5043_REG_TMGRXAGC,                 0x11);
	mov	dptr,#0x4227
	mov	a,#0x11
	movx	@dptr,a
	C$config.c$166$2$314 ==.
;	..\AX_Radio_Lab_output\config.c:166: radio_write8(AX5043_REG_TMGRXPREAMBLE1,           0x19);
	mov	dptr,#0x4229
	mov	a,#0x19
	movx	@dptr,a
	C$config.c$167$2$315 ==.
;	..\AX_Radio_Lab_output\config.c:167: radio_write8(AX5043_REG_PKTMISCFLAGS,             0x03);
	mov	dptr,#0x4231
	mov	a,#0x03
	movx	@dptr,a
	C$config.c$168$1$312 ==.
	XG$ax5043_set_registers_rxwor$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ax5043_set_registers_rxcont'
;------------------------------------------------------------
	G$ax5043_set_registers_rxcont$0$0 ==.
	C$config.c$171$1$312 ==.
;	..\AX_Radio_Lab_output\config.c:171: __reentrantb void ax5043_set_registers_rxcont(void) __reentrant
;	-----------------------------------------
;	 function ax5043_set_registers_rxcont
;	-----------------------------------------
_ax5043_set_registers_rxcont:
	C$config.c$173$2$318 ==.
;	..\AX_Radio_Lab_output\config.c:173: radio_write8(AX5043_REG_TMGRXAGC,                 0x00);
	mov	dptr,#0x4227
	clr	a
	movx	@dptr,a
	C$config.c$174$2$319 ==.
;	..\AX_Radio_Lab_output\config.c:174: radio_write8(AX5043_REG_TMGRXPREAMBLE1,           0x00);
	mov	dptr,#0x4229
	movx	@dptr,a
	C$config.c$175$2$320 ==.
;	..\AX_Radio_Lab_output\config.c:175: radio_write8(AX5043_REG_PKTMISCFLAGS,             0x00);
	mov	dptr,#0x4231
	movx	@dptr,a
	C$config.c$176$1$317 ==.
	XG$ax5043_set_registers_rxcont$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ax5043_set_registers_rxcont_singleparamset'
;------------------------------------------------------------
	G$ax5043_set_registers_rxcont_singleparamset$0$0 ==.
	C$config.c$179$1$317 ==.
;	..\AX_Radio_Lab_output\config.c:179: __reentrantb void ax5043_set_registers_rxcont_singleparamset(void) __reentrant
;	-----------------------------------------
;	 function ax5043_set_registers_rxcont_singleparamset
;	-----------------------------------------
_ax5043_set_registers_rxcont_singleparamset:
	C$config.c$181$2$323 ==.
;	..\AX_Radio_Lab_output\config.c:181: radio_write8(AX5043_REG_RXPARAMSETS,              0xFF);
	mov	dptr,#0x4117
	mov	a,#0xff
	movx	@dptr,a
	C$config.c$182$2$324 ==.
;	..\AX_Radio_Lab_output\config.c:182: radio_write8(AX5043_REG_FREQDEV13,                0x00);
	mov	dptr,#0x415c
	clr	a
	movx	@dptr,a
	C$config.c$183$2$325 ==.
;	..\AX_Radio_Lab_output\config.c:183: radio_write8(AX5043_REG_FREQDEV03,                0x00);
	mov	dptr,#0x415d
	movx	@dptr,a
	C$config.c$184$2$326 ==.
;	..\AX_Radio_Lab_output\config.c:184: radio_write8(AX5043_REG_AGCGAIN3,                 0xB5);
	mov	dptr,#0x4150
	mov	a,#0xb5
	movx	@dptr,a
	C$config.c$185$1$322 ==.
	XG$ax5043_set_registers_rxcont_singleparamset$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_setup_pincfg1'
;------------------------------------------------------------
	G$axradio_setup_pincfg1$0$0 ==.
	C$config.c$189$1$322 ==.
;	..\AX_Radio_Lab_output\config.c:189: __reentrantb void axradio_setup_pincfg1(void) __reentrant
;	-----------------------------------------
;	 function axradio_setup_pincfg1
;	-----------------------------------------
_axradio_setup_pincfg1:
	C$config.c$194$1$328 ==.
;	..\AX_Radio_Lab_output\config.c:194: PALTRADIO = 0x00; //pass through  
	mov	dptr,#_PALTRADIO
	clr	a
	movx	@dptr,a
	C$config.c$197$1$328 ==.
	XG$axradio_setup_pincfg1$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_setup_pincfg2'
;------------------------------------------------------------
	G$axradio_setup_pincfg2$0$0 ==.
	C$config.c$199$1$328 ==.
;	..\AX_Radio_Lab_output\config.c:199: __reentrantb void axradio_setup_pincfg2(void) __reentrant
;	-----------------------------------------
;	 function axradio_setup_pincfg2
;	-----------------------------------------
_axradio_setup_pincfg2:
	C$config.c$204$1$330 ==.
;	..\AX_Radio_Lab_output\config.c:204: PORTR = (PORTR & 0x3F) | 0xc0; //AX8052F100 --> pull-ups on PR6, PR7
	mov	a,#0x3f
	anl	a,_PORTR
	orl	a,#0xc0
	mov	_PORTR,a
	C$config.c$207$1$330 ==.
	XG$axradio_setup_pincfg2$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_conv_freq_fromhz'
;------------------------------------------------------------
;f                         Allocated to registers 
;------------------------------------------------------------
	G$axradio_conv_freq_fromhz$0$0 ==.
	C$config.c$612$1$330 ==.
;	..\AX_Radio_Lab_output\config.c:612: int32_t axradio_conv_freq_fromhz(int32_t f)
;	-----------------------------------------
;	 function axradio_conv_freq_fromhz
;	-----------------------------------------
_axradio_conv_freq_fromhz:
	C$config.c$618$1$332 ==.
;	..\AX_Radio_Lab_output\config.c:618: CONSTMULFIX24(0x10c6f7a);
	mov r0,dpl 
	mov r1,dph 
	mov r2,b 
	mov r3,a 
	push acc 
	jnb acc.7,00000$ 
	clr c 
	clr a 
	subb a,r0 
	mov r0,a 
	clr a 
	subb a,r1 
	mov r1,a 
	clr a 
	subb a,r2 
	mov r2,a 
	clr a 
	subb a,r3 
	mov r3,a 
	 00000$:
	clr a 
	mov r4,a 
	mov r5,a 
	mov r6,a 
	mov r7,a 
;; stage -1 
	.if (((0x10c6f7a)>>16)&0xff) 
	mov a,# (((0x10c6f7a)>>16)&0xff) 
	mov b,r0 
	mul ab 
	mov r7,a 
	mov r4,b 
	.endif 
	.if (((0x10c6f7a)>>8)&0xff) 
	mov a,# (((0x10c6f7a)>>8)&0xff) 
	mov b,r1 
	mul ab 
	.if (((0x10c6f7a)>>16)&0xff) 
	add a,r7 
	mov r7,a 
	mov a,b 
	addc a,r4 
	mov r4,a 
	clr a 
	addc a,r5 
	mov r5,a 
	.else 
	mov r7,a 
	mov r4,b 
	.endif 
	.endif 
	.if ((0x10c6f7a)&0xff) 
	mov a,# ((0x10c6f7a)&0xff) 
	mov b,r2 
	mul ab 
	.if (((0x10c6f7a)>>8)&0xffff) 
	add a,r7 
	mov r7,a 
	mov a,b 
	addc a,r4 
	mov r4,a 
	clr a 
	addc a,r5 
	mov r5,a 
	.else 
	mov r7,a 
	mov r4,b 
	.endif 
	.endif 
;; clear precision extension 
	clr a 
	mov r7,a 
;; stage 0 
	.if (((0x10c6f7a)>>24)&0xff) 
	mov a,# (((0x10c6f7a)>>24)&0xff) 
	mov b,r0 
	mul ab 
	add a,r4 
	mov r4,a 
	mov a,b 
	addc a,r5 
	mov r5,a 
	clr a 
	addc a,r6 
	mov r6,a 
	.endif 
	.if (((0x10c6f7a)>>16)&0xff) 
	mov a,# (((0x10c6f7a)>>16)&0xff) 
	mov b,r1 
	mul ab 
	add a,r4 
	mov r4,a 
	mov a,b 
	addc a,r5 
	mov r5,a 
	clr a 
	addc a,r6 
	mov r6,a 
	.endif 
	.if (((0x10c6f7a)>>8)&0xff) 
	mov a,# (((0x10c6f7a)>>8)&0xff) 
	mov b,r2 
	mul ab 
	add a,r4 
	mov r4,a 
	mov a,b 
	addc a,r5 
	mov r5,a 
	clr a 
	addc a,r6 
	mov r6,a 
	.endif 
	.if ((0x10c6f7a)&0xff) 
	mov a,# ((0x10c6f7a)&0xff) 
	mov b,r3 
	mul ab 
	add a,r4 
	mov r4,a 
	mov a,b 
	addc a,r5 
	mov r5,a 
	clr a 
	addc a,r6 
	mov r6,a 
	.endif 
;; stage 1 
	.if (((0x10c6f7a)>>24)&0xff) 
	mov a,# (((0x10c6f7a)>>24)&0xff) 
	mov b,r1 
	mul ab 
	add a,r5 
	mov r5,a 
	mov a,b 
	addc a,r6 
	mov r6,a 
	clr a 
	addc a,r7 
	mov r7,a 
	.endif 
	.if (((0x10c6f7a)>>16)&0xff) 
	mov a,# (((0x10c6f7a)>>16)&0xff) 
	mov b,r2 
	mul ab 
	add a,r5 
	mov r5,a 
	mov a,b 
	addc a,r6 
	mov r6,a 
	clr a 
	addc a,r7 
	mov r7,a 
	.endif 
	.if (((0x10c6f7a)>>8)&0xff) 
	mov a,# (((0x10c6f7a)>>8)&0xff) 
	mov b,r3 
	mul ab 
	add a,r5 
	mov r5,a 
	mov a,b 
	addc a,r6 
	mov r6,a 
	clr a 
	addc a,r7 
	mov r7,a 
	.endif 
;; stage 2 
	.if (((0x10c6f7a)>>24)&0xff) 
	mov a,# (((0x10c6f7a)>>24)&0xff) 
	mov b,r2 
	mul ab 
	add a,r6 
	mov r6,a 
	mov a,b 
	addc a,r7 
	mov r7,a 
	.endif 
	.if (((0x10c6f7a)>>16)&0xff) 
	mov a,# (((0x10c6f7a)>>16)&0xff) 
	mov b,r3 
	mul ab 
	add a,r6 
	mov r6,a 
	mov a,b 
	addc a,r7 
	mov r7,a 
	.endif 
;; stage 3 
	.if (((0x10c6f7a)>>24)&0xff) 
	mov a,# (((0x10c6f7a)>>24)&0xff) 
	mov b,r3 
	mul ab 
	add a,r7 
	mov r7,a 
	.endif 
	pop acc 
	jnb acc.7,00001$ 
	clr c 
	clr a 
	subb a,r4 
	mov dpl,a 
	clr a 
	subb a,r5 
	mov dph,a 
	clr a 
	subb a,r6 
	mov b,a 
	clr a 
	subb a,r7 
	sjmp 00002$ 
	 00001$:
	mov dpl,r4 
	mov dph,r5 
	mov b,r6 
	mov a,r7 
	 00002$:
	C$config.c$619$1$332 ==.
	XG$axradio_conv_freq_fromhz$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_conv_freq_tohz'
;------------------------------------------------------------
;f                         Allocated to registers 
;------------------------------------------------------------
	G$axradio_conv_freq_tohz$0$0 ==.
	C$config.c$624$1$332 ==.
;	..\AX_Radio_Lab_output\config.c:624: int32_t axradio_conv_freq_tohz(int32_t f)
;	-----------------------------------------
;	 function axradio_conv_freq_tohz
;	-----------------------------------------
_axradio_conv_freq_tohz:
	C$config.c$630$1$334 ==.
;	..\AX_Radio_Lab_output\config.c:630: CONSTMULFIX24(0xf42400);
	mov r0,dpl 
	mov r1,dph 
	mov r2,b 
	mov r3,a 
	push acc 
	jnb acc.7,00000$ 
	clr c 
	clr a 
	subb a,r0 
	mov r0,a 
	clr a 
	subb a,r1 
	mov r1,a 
	clr a 
	subb a,r2 
	mov r2,a 
	clr a 
	subb a,r3 
	mov r3,a 
	 00000$:
	clr a 
	mov r4,a 
	mov r5,a 
	mov r6,a 
	mov r7,a 
;; stage -1 
	.if (((0xf42400)>>16)&0xff) 
	mov a,# (((0xf42400)>>16)&0xff) 
	mov b,r0 
	mul ab 
	mov r7,a 
	mov r4,b 
	.endif 
	.if (((0xf42400)>>8)&0xff) 
	mov a,# (((0xf42400)>>8)&0xff) 
	mov b,r1 
	mul ab 
	.if (((0xf42400)>>16)&0xff) 
	add a,r7 
	mov r7,a 
	mov a,b 
	addc a,r4 
	mov r4,a 
	clr a 
	addc a,r5 
	mov r5,a 
	.else 
	mov r7,a 
	mov r4,b 
	.endif 
	.endif 
	.if ((0xf42400)&0xff) 
	mov a,# ((0xf42400)&0xff) 
	mov b,r2 
	mul ab 
	.if (((0xf42400)>>8)&0xffff) 
	add a,r7 
	mov r7,a 
	mov a,b 
	addc a,r4 
	mov r4,a 
	clr a 
	addc a,r5 
	mov r5,a 
	.else 
	mov r7,a 
	mov r4,b 
	.endif 
	.endif 
;; clear precision extension 
	clr a 
	mov r7,a 
;; stage 0 
	.if (((0xf42400)>>24)&0xff) 
	mov a,# (((0xf42400)>>24)&0xff) 
	mov b,r0 
	mul ab 
	add a,r4 
	mov r4,a 
	mov a,b 
	addc a,r5 
	mov r5,a 
	clr a 
	addc a,r6 
	mov r6,a 
	.endif 
	.if (((0xf42400)>>16)&0xff) 
	mov a,# (((0xf42400)>>16)&0xff) 
	mov b,r1 
	mul ab 
	add a,r4 
	mov r4,a 
	mov a,b 
	addc a,r5 
	mov r5,a 
	clr a 
	addc a,r6 
	mov r6,a 
	.endif 
	.if (((0xf42400)>>8)&0xff) 
	mov a,# (((0xf42400)>>8)&0xff) 
	mov b,r2 
	mul ab 
	add a,r4 
	mov r4,a 
	mov a,b 
	addc a,r5 
	mov r5,a 
	clr a 
	addc a,r6 
	mov r6,a 
	.endif 
	.if ((0xf42400)&0xff) 
	mov a,# ((0xf42400)&0xff) 
	mov b,r3 
	mul ab 
	add a,r4 
	mov r4,a 
	mov a,b 
	addc a,r5 
	mov r5,a 
	clr a 
	addc a,r6 
	mov r6,a 
	.endif 
;; stage 1 
	.if (((0xf42400)>>24)&0xff) 
	mov a,# (((0xf42400)>>24)&0xff) 
	mov b,r1 
	mul ab 
	add a,r5 
	mov r5,a 
	mov a,b 
	addc a,r6 
	mov r6,a 
	clr a 
	addc a,r7 
	mov r7,a 
	.endif 
	.if (((0xf42400)>>16)&0xff) 
	mov a,# (((0xf42400)>>16)&0xff) 
	mov b,r2 
	mul ab 
	add a,r5 
	mov r5,a 
	mov a,b 
	addc a,r6 
	mov r6,a 
	clr a 
	addc a,r7 
	mov r7,a 
	.endif 
	.if (((0xf42400)>>8)&0xff) 
	mov a,# (((0xf42400)>>8)&0xff) 
	mov b,r3 
	mul ab 
	add a,r5 
	mov r5,a 
	mov a,b 
	addc a,r6 
	mov r6,a 
	clr a 
	addc a,r7 
	mov r7,a 
	.endif 
;; stage 2 
	.if (((0xf42400)>>24)&0xff) 
	mov a,# (((0xf42400)>>24)&0xff) 
	mov b,r2 
	mul ab 
	add a,r6 
	mov r6,a 
	mov a,b 
	addc a,r7 
	mov r7,a 
	.endif 
	.if (((0xf42400)>>16)&0xff) 
	mov a,# (((0xf42400)>>16)&0xff) 
	mov b,r3 
	mul ab 
	add a,r6 
	mov r6,a 
	mov a,b 
	addc a,r7 
	mov r7,a 
	.endif 
;; stage 3 
	.if (((0xf42400)>>24)&0xff) 
	mov a,# (((0xf42400)>>24)&0xff) 
	mov b,r3 
	mul ab 
	add a,r7 
	mov r7,a 
	.endif 
	pop acc 
	jnb acc.7,00001$ 
	clr c 
	clr a 
	subb a,r4 
	mov dpl,a 
	clr a 
	subb a,r5 
	mov dph,a 
	clr a 
	subb a,r6 
	mov b,a 
	clr a 
	subb a,r7 
	sjmp 00002$ 
	 00001$:
	mov dpl,r4 
	mov dph,r5 
	mov b,r6 
	mov a,r7 
	 00002$:
	C$config.c$631$1$334 ==.
	XG$axradio_conv_freq_tohz$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_conv_freq_fromreg'
;------------------------------------------------------------
;f                         Allocated to registers 
;------------------------------------------------------------
	G$axradio_conv_freq_fromreg$0$0 ==.
	C$config.c$638$1$334 ==.
;	..\AX_Radio_Lab_output\config.c:638: int32_t axradio_conv_freq_fromreg(int32_t f)
;	-----------------------------------------
;	 function axradio_conv_freq_fromreg
;	-----------------------------------------
_axradio_conv_freq_fromreg:
	C$config.c$644$1$336 ==.
;	..\AX_Radio_Lab_output\config.c:644: CONSTMULFIX16(0x1000000);
	mov r0,dpl 
	mov a,dph 
	mov r1,a 
	push acc 
	jnb acc.7,00000$ 
	clr c 
	clr a 
	subb a,r0 
	mov r0,a 
	clr a 
	subb a,r1 
	mov r1,a 
	 00000$:
	clr a 
	mov r4,a 
	mov r5,a 
	mov r6,a 
	mov r7,a 
;; stage -1 
	.if (((0x1000000)>>16)&0xff) 
	mov a,# (((0x1000000)>>16)&0xff) 
	mov b,r0 
	mul ab 
	mov r7,a 
	mov r4,b 
	.endif 
	.if (((0x1000000)>>8)&0xff) 
	mov a,# (((0x1000000)>>8)&0xff) 
	mov b,r1 
	mul ab 
	.if (((0x1000000)>>16)&0xff) 
	add a,r7 
	mov r7,a 
	mov a,b 
	addc a,r4 
	mov r4,a 
	clr a 
	addc a,r5 
	mov r5,a 
	.else 
	mov r7,a 
	mov r4,b 
	.endif 
	.endif 
;; clear precision extension 
	clr a 
	mov r7,a 
;; stage 0 
	.if (((0x1000000)>>24)&0xff) 
	mov a,# (((0x1000000)>>24)&0xff) 
	mov b,r0 
	mul ab 
	add a,r4 
	mov r4,a 
	mov a,b 
	addc a,r5 
	mov r5,a 
	clr a 
	addc a,r6 
	mov r6,a 
	.endif 
	.if (((0x1000000)>>16)&0xff) 
	mov a,# (((0x1000000)>>16)&0xff) 
	mov b,r1 
	mul ab 
	add a,r4 
	mov r4,a 
	mov a,b 
	addc a,r5 
	mov r5,a 
	clr a 
	addc a,r6 
	mov r6,a 
	.endif 
;; stage 1 
	.if (((0x1000000)>>24)&0xff) 
	mov a,# (((0x1000000)>>24)&0xff) 
	mov b,r1 
	mul ab 
	add a,r5 
	mov r5,a 
	mov a,b 
	addc a,r6 
	mov r6,a 
	clr a 
	addc a,r7 
	mov r7,a 
	.endif 
	pop acc 
	jnb acc.7,00001$ 
	clr c 
	clr a 
	subb a,r4 
	mov dpl,a 
	clr a 
	subb a,r5 
	mov dph,a 
	clr a 
	subb a,r6 
	mov b,a 
	clr a 
	subb a,r7 
	sjmp 00002$ 
	 00001$:
	mov dpl,r4 
	mov dph,r5 
	mov b,r6 
	mov a,r7 
	 00002$:
	C$config.c$645$1$336 ==.
	XG$axradio_conv_freq_fromreg$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_conv_timeinterval_totimer0'
;------------------------------------------------------------
;dt                        Allocated to registers r4 r5 r6 r7 
;r                         Allocated to registers r0 r1 r2 r3 
;------------------------------------------------------------
	G$axradio_conv_timeinterval_totimer0$0$0 ==.
	C$config.c$650$1$336 ==.
;	..\AX_Radio_Lab_output\config.c:650: int32_t axradio_conv_timeinterval_totimer0(int32_t dt)
;	-----------------------------------------
;	 function axradio_conv_timeinterval_totimer0
;	-----------------------------------------
_axradio_conv_timeinterval_totimer0:
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	C$config.c$657$1$338 ==.
;	..\AX_Radio_Lab_output\config.c:657: dt >>= 5;
	mov	a,r5
	swap	a
	rr	a
	xch	a,r4
	swap	a
	rr	a
	anl	a,#0x07
	xrl	a,r4
	xch	a,r4
	anl	a,#0x07
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	mov	r5,a
	mov	a,r6
	swap	a
	rr	a
	anl	a,#0xf8
	orl	a,r5
	mov	r5,a
	mov	a,r7
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
	jnb	acc.2,00103$
	orl	a,#0xf8
00103$:
	mov	r7,a
	C$config.c$658$1$338 ==.
;	..\AX_Radio_Lab_output\config.c:658: r = dt;
	mov	ar0,r4
	mov	ar1,r5
	mov	ar2,r6
	mov	ar3,r7
	C$config.c$659$1$338 ==.
;	..\AX_Radio_Lab_output\config.c:659: dt >>= 4;
	mov	a,r5
	swap	a
	xch	a,r4
	swap	a
	anl	a,#0x0f
	xrl	a,r4
	xch	a,r4
	anl	a,#0x0f
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	mov	r5,a
	mov	a,r6
	swap	a
	anl	a,#0xf0
	orl	a,r5
	mov	r5,a
	mov	a,r7
	swap	a
	xch	a,r6
	swap	a
	anl	a,#0x0f
	xrl	a,r6
	xch	a,r6
	anl	a,#0x0f
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	jnb	acc.3,00104$
	orl	a,#0xf0
00104$:
	mov	r7,a
	C$config.c$660$1$338 ==.
;	..\AX_Radio_Lab_output\config.c:660: r += dt;
	mov	a,r4
	add	a,r0
	mov	r0,a
	mov	a,r5
	addc	a,r1
	mov	r1,a
	mov	a,r6
	addc	a,r2
	mov	r2,a
	mov	a,r7
	addc	a,r3
	mov	r3,a
	C$config.c$661$1$338 ==.
;	..\AX_Radio_Lab_output\config.c:661: dt >>= 2;
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
	mov	r4,a
	C$config.c$662$1$338 ==.
;	..\AX_Radio_Lab_output\config.c:662: r -= dt;
	mov	a,r0
	clr	c
	subb	a,r4
	mov	r0,a
	mov	a,r1
	subb	a,r5
	mov	r1,a
	mov	a,r2
	subb	a,r6
	mov	r2,a
	mov	a,r3
	subb	a,r7
	mov	r3,a
	C$config.c$663$1$338 ==.
;	..\AX_Radio_Lab_output\config.c:663: dt >>= 3;
	mov	a,r5
	swap	a
	rl	a
	xch	a,r4
	swap	a
	rl	a
	anl	a,#0x1f
	xrl	a,r4
	xch	a,r4
	anl	a,#0x1f
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	mov	r5,a
	mov	a,r6
	swap	a
	rl	a
	anl	a,#0xe0
	orl	a,r5
	mov	r5,a
	mov	a,r7
	swap	a
	rl	a
	xch	a,r6
	swap	a
	rl	a
	anl	a,#0x1f
	xrl	a,r6
	xch	a,r6
	anl	a,#0x1f
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	jnb	acc.4,00105$
	orl	a,#0xe0
00105$:
	mov	r7,a
	C$config.c$664$1$338 ==.
;	..\AX_Radio_Lab_output\config.c:664: r += dt;
	mov	a,r4
	add	a,r0
	mov	r0,a
	mov	a,r5
	addc	a,r1
	mov	r1,a
	mov	a,r6
	addc	a,r2
	mov	r2,a
	mov	a,r7
	addc	a,r3
	C$config.c$665$1$338 ==.
;	..\AX_Radio_Lab_output\config.c:665: return r;
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	C$config.c$666$1$338 ==.
	XG$axradio_conv_timeinterval_totimer0$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_byteconv'
;------------------------------------------------------------
;b                         Allocated to registers r7 
;------------------------------------------------------------
	G$axradio_byteconv$0$0 ==.
	C$config.c$668$1$338 ==.
;	..\AX_Radio_Lab_output\config.c:668: __reentrantb uint8_t axradio_byteconv(uint8_t b) __reentrant
;	-----------------------------------------
;	 function axradio_byteconv
;	-----------------------------------------
_axradio_byteconv:
	C$config.c$670$1$340 ==.
;	..\AX_Radio_Lab_output\config.c:670: return b;
	C$config.c$671$1$340 ==.
	XG$axradio_byteconv$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_byteconv_buffer'
;------------------------------------------------------------
;buflen                    Allocated to stack - _bp -4
;buf                       Allocated to registers 
;------------------------------------------------------------
	G$axradio_byteconv_buffer$0$0 ==.
	C$config.c$674$1$340 ==.
;	..\AX_Radio_Lab_output\config.c:674: __reentrantb void axradio_byteconv_buffer(uint8_t __xdata *buf, uint16_t buflen) __reentrant
;	-----------------------------------------
;	 function axradio_byteconv_buffer
;	-----------------------------------------
_axradio_byteconv_buffer:
	push	_bp
	mov	_bp,sp
	C$config.c$676$1$340 ==.
;	..\AX_Radio_Lab_output\config.c:676: }
	pop	_bp
	C$config.c$676$1$340 ==.
	XG$axradio_byteconv_buffer$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_framing_check_crc'
;------------------------------------------------------------
;cnt                       Allocated to stack - _bp -4
;pkt                       Allocated to registers r6 r7 
;------------------------------------------------------------
	G$axradio_framing_check_crc$0$0 ==.
	C$config.c$678$1$340 ==.
;	..\AX_Radio_Lab_output\config.c:678: __reentrantb uint16_t axradio_framing_check_crc(uint8_t __xdata *pkt, uint16_t cnt) __reentrant
;	-----------------------------------------
;	 function axradio_framing_check_crc
;	-----------------------------------------
_axradio_framing_check_crc:
	push	_bp
	mov	_bp,sp
	mov	r6,dpl
	mov	r7,dph
	C$config.c$680$1$344 ==.
;	..\AX_Radio_Lab_output\config.c:680: if (crc_ccitt(pkt, cnt, 0xFFFF) != 0xF0B8)
	mov	r5,#0x00
	mov	a,#0xff
	push	acc
	push	acc
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	_crc_ccitt
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	cjne	r6,#0xb8,00108$
	cjne	r7,#0xf0,00108$
	sjmp	00102$
00108$:
	C$config.c$681$1$344 ==.
;	..\AX_Radio_Lab_output\config.c:681: return 0;
	mov	dptr,#0x0000
	sjmp	00103$
00102$:
	C$config.c$682$1$344 ==.
;	..\AX_Radio_Lab_output\config.c:682: return cnt;
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
00103$:
	pop	_bp
	C$config.c$683$1$344 ==.
	XG$axradio_framing_check_crc$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_framing_append_crc'
;------------------------------------------------------------
;cnt                       Allocated to stack - _bp -4
;pkt                       Allocated to registers r6 r7 
;s                         Allocated to registers r4 r5 
;------------------------------------------------------------
	G$axradio_framing_append_crc$0$0 ==.
	C$config.c$685$1$344 ==.
;	..\AX_Radio_Lab_output\config.c:685: __reentrantb uint16_t axradio_framing_append_crc(uint8_t __xdata *pkt, uint16_t cnt) __reentrant
;	-----------------------------------------
;	 function axradio_framing_append_crc
;	-----------------------------------------
_axradio_framing_append_crc:
	push	_bp
	mov	_bp,sp
	mov	r6,dpl
	mov	r7,dph
	C$config.c$688$1$346 ==.
;	..\AX_Radio_Lab_output\config.c:688: s = crc_ccitt(pkt, cnt, s);
	mov	ar3,r6
	mov	ar4,r7
	mov	r5,#0x00
	push	ar7
	push	ar6
	mov	a,#0xff
	push	acc
	push	acc
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	_crc_ccitt
	mov	r4,dpl
	mov	r5,dph
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar6
	pop	ar7
	C$config.c$689$1$346 ==.
;	..\AX_Radio_Lab_output\config.c:689: pkt += cnt;
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	add	a,r6
	mov	r6,a
	inc	r0
	mov	a,@r0
	addc	a,r7
	mov	r7,a
	C$config.c$690$1$346 ==.
;	..\AX_Radio_Lab_output\config.c:690: *pkt++ = ~(uint8_t)(s);
	mov	ar3,r4
	mov	a,r3
	cpl	a
	mov	dpl,r6
	mov	dph,r7
	movx	@dptr,a
	inc	dptr
	mov	r6,dpl
	mov	r7,dph
	C$config.c$691$1$346 ==.
;	..\AX_Radio_Lab_output\config.c:691: *pkt++ = ~(uint8_t)(s >> 8);
	mov	ar4,r5
	mov	a,r4
	cpl	a
	mov	dpl,r6
	mov	dph,r7
	movx	@dptr,a
	C$config.c$692$1$346 ==.
;	..\AX_Radio_Lab_output\config.c:692: return cnt + 2;
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	dptr
	inc	dptr
	pop	_bp
	C$config.c$693$1$346 ==.
	XG$axradio_framing_append_crc$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
G$axradio_phy_innerfreqloop$0$0 == .
_axradio_phy_innerfreqloop:
	.db #0x00	; 0
G$axradio_phy_pn9$0$0 == .
_axradio_phy_pn9:
	.db #0x00	; 0
G$axradio_phy_nrchannels$0$0 == .
_axradio_phy_nrchannels:
	.db #0x01	; 1
G$axradio_phy_chanfreq$0$0 == .
_axradio_phy_chanfreq:
	.byte #0x01,#0x00,#0x90,#0x1f	; 529530881
G$axradio_phy_chanpllrnginit$0$0 == .
_axradio_phy_chanpllrnginit:
	.byte #0x03,#0x00	; 3
G$axradio_phy_chanvcoiinit$0$0 == .
_axradio_phy_chanvcoiinit:
	.db #0x93	; 147
G$axradio_phy_vcocalib$0$0 == .
_axradio_phy_vcocalib:
	.db #0x00	; 0
G$axradio_phy_maxfreqoffset$0$0 == .
_axradio_phy_maxfreqoffset:
	.byte #0x69,#0x0c,#0x00,#0x00	;  3177
G$axradio_phy_rssioffset$0$0 == .
_axradio_phy_rssioffset:
	.db #0x40	;  64
G$axradio_phy_rssireference$0$0 == .
_axradio_phy_rssireference:
	.db #0x39	;  57	'9'
G$axradio_phy_channelbusy$0$0 == .
_axradio_phy_channelbusy:
	.db #0xea	; -22
G$axradio_phy_cs_period$0$0 == .
_axradio_phy_cs_period:
	.byte #0x07,#0x00	; 7
G$axradio_phy_cs_enabled$0$0 == .
_axradio_phy_cs_enabled:
	.db #0x00	; 0
G$axradio_phy_lbt_retries$0$0 == .
_axradio_phy_lbt_retries:
	.db #0x00	; 0
G$axradio_phy_lbt_forcetx$0$0 == .
_axradio_phy_lbt_forcetx:
	.db #0x00	; 0
G$axradio_phy_preamble_wor_longlen$0$0 == .
_axradio_phy_preamble_wor_longlen:
	.byte #0x39,#0x00	; 57
G$axradio_phy_preamble_wor_len$0$0 == .
_axradio_phy_preamble_wor_len:
	.byte #0xd0,#0x00	; 208
G$axradio_phy_preamble_longlen$0$0 == .
_axradio_phy_preamble_longlen:
	.byte #0x01,#0x00	; 1
G$axradio_phy_preamble_len$0$0 == .
_axradio_phy_preamble_len:
	.byte #0x90,#0x00	; 144
G$axradio_phy_preamble_byte$0$0 == .
_axradio_phy_preamble_byte:
	.db #0x7e	; 126
G$axradio_phy_preamble_flags$0$0 == .
_axradio_phy_preamble_flags:
	.db #0x18	; 24
G$axradio_phy_preamble_appendbits$0$0 == .
_axradio_phy_preamble_appendbits:
	.db #0x00	; 0
G$axradio_phy_preamble_appendpattern$0$0 == .
_axradio_phy_preamble_appendpattern:
	.db #0xc0	; 192
G$axradio_framing_maclen$0$0 == .
_axradio_framing_maclen:
	.db #0x00	; 0
G$axradio_framing_addrlen$0$0 == .
_axradio_framing_addrlen:
	.db #0x00	; 0
G$axradio_framing_destaddrpos$0$0 == .
_axradio_framing_destaddrpos:
	.db #0x00	; 0
G$axradio_framing_sourceaddrpos$0$0 == .
_axradio_framing_sourceaddrpos:
	.db #0xff	; 255
G$axradio_framing_lenpos$0$0 == .
_axradio_framing_lenpos:
	.db #0x00	; 0
G$axradio_framing_lenoffs$0$0 == .
_axradio_framing_lenoffs:
	.db #0x48	; 72	'H'
G$axradio_framing_lenmask$0$0 == .
_axradio_framing_lenmask:
	.db #0x00	; 0
G$axradio_framing_swcrclen$0$0 == .
_axradio_framing_swcrclen:
	.db #0x00	; 0
G$axradio_framing_synclen$0$0 == .
_axradio_framing_synclen:
	.db #0x20	; 32
G$axradio_framing_syncword$0$0 == .
_axradio_framing_syncword:
	.db #0x33	; 51	'3'
	.db #0x55	; 85	'U'
	.db #0x33	; 51	'3'
	.db #0x55	; 85	'U'
G$axradio_framing_syncflags$0$0 == .
_axradio_framing_syncflags:
	.db #0x18	; 24
G$axradio_framing_enable_sfdcallback$0$0 == .
_axradio_framing_enable_sfdcallback:
	.db #0x00	; 0
G$axradio_framing_ack_timeout$0$0 == .
_axradio_framing_ack_timeout:
	.byte #0x09,#0x00,#0x00,#0x00	; 9
G$axradio_framing_ack_delay$0$0 == .
_axradio_framing_ack_delay:
	.byte #0x39,#0x01,#0x00,#0x00	; 313
G$axradio_framing_ack_retransmissions$0$0 == .
_axradio_framing_ack_retransmissions:
	.db #0x00	; 0
G$axradio_framing_ack_seqnrpos$0$0 == .
_axradio_framing_ack_seqnrpos:
	.db #0xff	; 255
G$axradio_framing_minpayloadlen$0$0 == .
_axradio_framing_minpayloadlen:
	.db #0x00	; 0
G$axradio_wor_period$0$0 == .
_axradio_wor_period:
	.byte #0x80,#0x00	; 128
G$axradio_sync_period$0$0 == .
_axradio_sync_period:
	.byte #0x00,#0x00,#0x01,#0x00	; 65536
G$axradio_sync_xoscstartup$0$0 == .
_axradio_sync_xoscstartup:
	.byte #0x31,#0x00,#0x00,#0x00	; 49
G$axradio_sync_slave_syncwindow$0$0 == .
_axradio_sync_slave_syncwindow:
	.byte #0x00,#0x00,#0x03,#0x00	; 196608
G$axradio_sync_slave_initialsyncwindow$0$0 == .
_axradio_sync_slave_initialsyncwindow:
	.byte #0x00,#0x00,#0x5a,#0x00	; 5898240
G$axradio_sync_slave_syncpause$0$0 == .
_axradio_sync_slave_syncpause:
	.byte #0x00,#0x00,#0x2c,#0x01	; 19660800
G$axradio_sync_slave_maxperiod$0$0 == .
_axradio_sync_slave_maxperiod:
	.byte #0x87,#0x09	;  2439
G$axradio_sync_slave_resyncloss$0$0 == .
_axradio_sync_slave_resyncloss:
	.db #0x0b	; 11
G$axradio_sync_slave_nrrx$0$0 == .
_axradio_sync_slave_nrrx:
	.db #0x03	; 3
G$axradio_sync_slave_rxadvance$0$0 == .
_axradio_sync_slave_rxadvance:
	.byte #0x73,#0x01,#0x00,#0x00	; 371
	.byte #0x33,#0x01,#0x00,#0x00	; 307
	.byte #0x69,#0x01,#0x00,#0x00	; 361
G$axradio_sync_slave_rxwindow$0$0 == .
_axradio_sync_slave_rxwindow:
	.byte #0x94,#0x01,#0x00,#0x00	; 404
	.byte #0x14,#0x01,#0x00,#0x00	; 276
	.byte #0x80,#0x01,#0x00,#0x00	; 384
G$axradio_sync_slave_rxtimeout$0$0 == .
_axradio_sync_slave_rxtimeout:
	.byte #0x31,#0x02,#0x00,#0x00	; 561
G$axradio_lposckfiltmax$0$0 == .
_axradio_lposckfiltmax:
	.byte #0xc4,#0x20	; 8388
G$axradio_fxtal$0$0 == .
_axradio_fxtal:
	.byte #0x00,#0x24,#0xf4,#0x00	; 16000000
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
