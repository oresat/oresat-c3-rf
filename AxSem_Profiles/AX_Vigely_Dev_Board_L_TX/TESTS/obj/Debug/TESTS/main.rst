                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _non_fourfsk_tx1010_pattern
                                     12 	.globl _fourfsk_tx1010_pattern
                                     13 	.globl _onepattern
                                     14 	.globl _txpattern
                                     15 	.globl _main
                                     16 	.globl __sdcc_external_startup
                                     17 	.globl _set_receiveber
                                     18 	.globl _set_transmit
                                     19 	.globl _set_cw
                                     20 	.globl _lcd2_display_radio_error
                                     21 	.globl _delay_ms
                                     22 	.globl _axradio_commsleepexit
                                     23 	.globl _axradio_setup_pincfg2
                                     24 	.globl _axradio_setup_pincfg1
                                     25 	.globl _axradio_get_transmitter_pa_type
                                     26 	.globl _axradio_check_fourfsk_modulation
                                     27 	.globl _axradio_agc_thaw
                                     28 	.globl _axradio_agc_freeze
                                     29 	.globl _axradio_conv_freq_tohz
                                     30 	.globl _axradio_transmit
                                     31 	.globl _axradio_get_pllvcoi
                                     32 	.globl _axradio_get_pllrange
                                     33 	.globl _axradio_set_mode
                                     34 	.globl _axradio_cansleep
                                     35 	.globl _axradio_init
                                     36 	.globl _lcd2_writenum32
                                     37 	.globl _lcd2_writehex16
                                     38 	.globl _lcd2_writenum16
                                     39 	.globl _lcd2_writestr
                                     40 	.globl _lcd2_clear
                                     41 	.globl _lcd2_setpos
                                     42 	.globl _lcd2_portinit
                                     43 	.globl _lcd2_init
                                     44 	.globl _lcd2_txidle
                                     45 	.globl _pn15_output
                                     46 	.globl _pn15_advance
                                     47 	.globl _pn9_advance
                                     48 	.globl _wtimer_runcallbacks
                                     49 	.globl _wtimer_idle
                                     50 	.globl _wtimer_init
                                     51 	.globl _wtimer1_setconfig
                                     52 	.globl _wtimer0_setconfig
                                     53 	.globl _flash_apply_calibration
                                     54 	.globl _enter_sleep
                                     55 	.globl _hweight8
                                     56 	.globl _PORTC_7
                                     57 	.globl _PORTC_6
                                     58 	.globl _PORTC_5
                                     59 	.globl _PORTC_4
                                     60 	.globl _PORTC_3
                                     61 	.globl _PORTC_2
                                     62 	.globl _PORTC_1
                                     63 	.globl _PORTC_0
                                     64 	.globl _PORTB_7
                                     65 	.globl _PORTB_6
                                     66 	.globl _PORTB_5
                                     67 	.globl _PORTB_4
                                     68 	.globl _PORTB_3
                                     69 	.globl _PORTB_2
                                     70 	.globl _PORTB_1
                                     71 	.globl _PORTB_0
                                     72 	.globl _PORTA_7
                                     73 	.globl _PORTA_6
                                     74 	.globl _PORTA_5
                                     75 	.globl _PORTA_4
                                     76 	.globl _PORTA_3
                                     77 	.globl _PORTA_2
                                     78 	.globl _PORTA_1
                                     79 	.globl _PORTA_0
                                     80 	.globl _PINC_7
                                     81 	.globl _PINC_6
                                     82 	.globl _PINC_5
                                     83 	.globl _PINC_4
                                     84 	.globl _PINC_3
                                     85 	.globl _PINC_2
                                     86 	.globl _PINC_1
                                     87 	.globl _PINC_0
                                     88 	.globl _PINB_7
                                     89 	.globl _PINB_6
                                     90 	.globl _PINB_5
                                     91 	.globl _PINB_4
                                     92 	.globl _PINB_3
                                     93 	.globl _PINB_2
                                     94 	.globl _PINB_1
                                     95 	.globl _PINB_0
                                     96 	.globl _PINA_7
                                     97 	.globl _PINA_6
                                     98 	.globl _PINA_5
                                     99 	.globl _PINA_4
                                    100 	.globl _PINA_3
                                    101 	.globl _PINA_2
                                    102 	.globl _PINA_1
                                    103 	.globl _PINA_0
                                    104 	.globl _CY
                                    105 	.globl _AC
                                    106 	.globl _F0
                                    107 	.globl _RS1
                                    108 	.globl _RS0
                                    109 	.globl _OV
                                    110 	.globl _F1
                                    111 	.globl _P
                                    112 	.globl _IP_7
                                    113 	.globl _IP_6
                                    114 	.globl _IP_5
                                    115 	.globl _IP_4
                                    116 	.globl _IP_3
                                    117 	.globl _IP_2
                                    118 	.globl _IP_1
                                    119 	.globl _IP_0
                                    120 	.globl _EA
                                    121 	.globl _IE_7
                                    122 	.globl _IE_6
                                    123 	.globl _IE_5
                                    124 	.globl _IE_4
                                    125 	.globl _IE_3
                                    126 	.globl _IE_2
                                    127 	.globl _IE_1
                                    128 	.globl _IE_0
                                    129 	.globl _EIP_7
                                    130 	.globl _EIP_6
                                    131 	.globl _EIP_5
                                    132 	.globl _EIP_4
                                    133 	.globl _EIP_3
                                    134 	.globl _EIP_2
                                    135 	.globl _EIP_1
                                    136 	.globl _EIP_0
                                    137 	.globl _EIE_7
                                    138 	.globl _EIE_6
                                    139 	.globl _EIE_5
                                    140 	.globl _EIE_4
                                    141 	.globl _EIE_3
                                    142 	.globl _EIE_2
                                    143 	.globl _EIE_1
                                    144 	.globl _EIE_0
                                    145 	.globl _E2IP_7
                                    146 	.globl _E2IP_6
                                    147 	.globl _E2IP_5
                                    148 	.globl _E2IP_4
                                    149 	.globl _E2IP_3
                                    150 	.globl _E2IP_2
                                    151 	.globl _E2IP_1
                                    152 	.globl _E2IP_0
                                    153 	.globl _E2IE_7
                                    154 	.globl _E2IE_6
                                    155 	.globl _E2IE_5
                                    156 	.globl _E2IE_4
                                    157 	.globl _E2IE_3
                                    158 	.globl _E2IE_2
                                    159 	.globl _E2IE_1
                                    160 	.globl _E2IE_0
                                    161 	.globl _B_7
                                    162 	.globl _B_6
                                    163 	.globl _B_5
                                    164 	.globl _B_4
                                    165 	.globl _B_3
                                    166 	.globl _B_2
                                    167 	.globl _B_1
                                    168 	.globl _B_0
                                    169 	.globl _ACC_7
                                    170 	.globl _ACC_6
                                    171 	.globl _ACC_5
                                    172 	.globl _ACC_4
                                    173 	.globl _ACC_3
                                    174 	.globl _ACC_2
                                    175 	.globl _ACC_1
                                    176 	.globl _ACC_0
                                    177 	.globl _WTSTAT
                                    178 	.globl _WTIRQEN
                                    179 	.globl _WTEVTD
                                    180 	.globl _WTEVTD1
                                    181 	.globl _WTEVTD0
                                    182 	.globl _WTEVTC
                                    183 	.globl _WTEVTC1
                                    184 	.globl _WTEVTC0
                                    185 	.globl _WTEVTB
                                    186 	.globl _WTEVTB1
                                    187 	.globl _WTEVTB0
                                    188 	.globl _WTEVTA
                                    189 	.globl _WTEVTA1
                                    190 	.globl _WTEVTA0
                                    191 	.globl _WTCNTR1
                                    192 	.globl _WTCNTB
                                    193 	.globl _WTCNTB1
                                    194 	.globl _WTCNTB0
                                    195 	.globl _WTCNTA
                                    196 	.globl _WTCNTA1
                                    197 	.globl _WTCNTA0
                                    198 	.globl _WTCFGB
                                    199 	.globl _WTCFGA
                                    200 	.globl _WDTRESET
                                    201 	.globl _WDTCFG
                                    202 	.globl _U1STATUS
                                    203 	.globl _U1SHREG
                                    204 	.globl _U1MODE
                                    205 	.globl _U1CTRL
                                    206 	.globl _U0STATUS
                                    207 	.globl _U0SHREG
                                    208 	.globl _U0MODE
                                    209 	.globl _U0CTRL
                                    210 	.globl _T2STATUS
                                    211 	.globl _T2PERIOD
                                    212 	.globl _T2PERIOD1
                                    213 	.globl _T2PERIOD0
                                    214 	.globl _T2MODE
                                    215 	.globl _T2CNT
                                    216 	.globl _T2CNT1
                                    217 	.globl _T2CNT0
                                    218 	.globl _T2CLKSRC
                                    219 	.globl _T1STATUS
                                    220 	.globl _T1PERIOD
                                    221 	.globl _T1PERIOD1
                                    222 	.globl _T1PERIOD0
                                    223 	.globl _T1MODE
                                    224 	.globl _T1CNT
                                    225 	.globl _T1CNT1
                                    226 	.globl _T1CNT0
                                    227 	.globl _T1CLKSRC
                                    228 	.globl _T0STATUS
                                    229 	.globl _T0PERIOD
                                    230 	.globl _T0PERIOD1
                                    231 	.globl _T0PERIOD0
                                    232 	.globl _T0MODE
                                    233 	.globl _T0CNT
                                    234 	.globl _T0CNT1
                                    235 	.globl _T0CNT0
                                    236 	.globl _T0CLKSRC
                                    237 	.globl _SPSTATUS
                                    238 	.globl _SPSHREG
                                    239 	.globl _SPMODE
                                    240 	.globl _SPCLKSRC
                                    241 	.globl _RADIOSTAT
                                    242 	.globl _RADIOSTAT1
                                    243 	.globl _RADIOSTAT0
                                    244 	.globl _RADIODATA
                                    245 	.globl _RADIODATA3
                                    246 	.globl _RADIODATA2
                                    247 	.globl _RADIODATA1
                                    248 	.globl _RADIODATA0
                                    249 	.globl _RADIOADDR
                                    250 	.globl _RADIOADDR1
                                    251 	.globl _RADIOADDR0
                                    252 	.globl _RADIOACC
                                    253 	.globl _OC1STATUS
                                    254 	.globl _OC1PIN
                                    255 	.globl _OC1MODE
                                    256 	.globl _OC1COMP
                                    257 	.globl _OC1COMP1
                                    258 	.globl _OC1COMP0
                                    259 	.globl _OC0STATUS
                                    260 	.globl _OC0PIN
                                    261 	.globl _OC0MODE
                                    262 	.globl _OC0COMP
                                    263 	.globl _OC0COMP1
                                    264 	.globl _OC0COMP0
                                    265 	.globl _NVSTATUS
                                    266 	.globl _NVKEY
                                    267 	.globl _NVDATA
                                    268 	.globl _NVDATA1
                                    269 	.globl _NVDATA0
                                    270 	.globl _NVADDR
                                    271 	.globl _NVADDR1
                                    272 	.globl _NVADDR0
                                    273 	.globl _IC1STATUS
                                    274 	.globl _IC1MODE
                                    275 	.globl _IC1CAPT
                                    276 	.globl _IC1CAPT1
                                    277 	.globl _IC1CAPT0
                                    278 	.globl _IC0STATUS
                                    279 	.globl _IC0MODE
                                    280 	.globl _IC0CAPT
                                    281 	.globl _IC0CAPT1
                                    282 	.globl _IC0CAPT0
                                    283 	.globl _PORTR
                                    284 	.globl _PORTC
                                    285 	.globl _PORTB
                                    286 	.globl _PORTA
                                    287 	.globl _PINR
                                    288 	.globl _PINC
                                    289 	.globl _PINB
                                    290 	.globl _PINA
                                    291 	.globl _DIRR
                                    292 	.globl _DIRC
                                    293 	.globl _DIRB
                                    294 	.globl _DIRA
                                    295 	.globl _DBGLNKSTAT
                                    296 	.globl _DBGLNKBUF
                                    297 	.globl _CODECONFIG
                                    298 	.globl _CLKSTAT
                                    299 	.globl _CLKCON
                                    300 	.globl _ANALOGCOMP
                                    301 	.globl _ADCCONV
                                    302 	.globl _ADCCLKSRC
                                    303 	.globl _ADCCH3CONFIG
                                    304 	.globl _ADCCH2CONFIG
                                    305 	.globl _ADCCH1CONFIG
                                    306 	.globl _ADCCH0CONFIG
                                    307 	.globl __XPAGE
                                    308 	.globl _XPAGE
                                    309 	.globl _SP
                                    310 	.globl _PSW
                                    311 	.globl _PCON
                                    312 	.globl _IP
                                    313 	.globl _IE
                                    314 	.globl _EIP
                                    315 	.globl _EIE
                                    316 	.globl _E2IP
                                    317 	.globl _E2IE
                                    318 	.globl _DPS
                                    319 	.globl _DPTR1
                                    320 	.globl _DPTR0
                                    321 	.globl _DPL1
                                    322 	.globl _DPL
                                    323 	.globl _DPH1
                                    324 	.globl _DPH
                                    325 	.globl _B
                                    326 	.globl _ACC
                                    327 	.globl _txdata
                                    328 	.globl _XTALREADY
                                    329 	.globl _XTALOSC
                                    330 	.globl _XTALAMPL
                                    331 	.globl _SILICONREV
                                    332 	.globl _SCRATCH3
                                    333 	.globl _SCRATCH2
                                    334 	.globl _SCRATCH1
                                    335 	.globl _SCRATCH0
                                    336 	.globl _RADIOMUX
                                    337 	.globl _RADIOFSTATADDR
                                    338 	.globl _RADIOFSTATADDR1
                                    339 	.globl _RADIOFSTATADDR0
                                    340 	.globl _RADIOFDATAADDR
                                    341 	.globl _RADIOFDATAADDR1
                                    342 	.globl _RADIOFDATAADDR0
                                    343 	.globl _OSCRUN
                                    344 	.globl _OSCREADY
                                    345 	.globl _OSCFORCERUN
                                    346 	.globl _OSCCALIB
                                    347 	.globl _MISCCTRL
                                    348 	.globl _LPXOSCGM
                                    349 	.globl _LPOSCREF
                                    350 	.globl _LPOSCREF1
                                    351 	.globl _LPOSCREF0
                                    352 	.globl _LPOSCPER
                                    353 	.globl _LPOSCPER1
                                    354 	.globl _LPOSCPER0
                                    355 	.globl _LPOSCKFILT
                                    356 	.globl _LPOSCKFILT1
                                    357 	.globl _LPOSCKFILT0
                                    358 	.globl _LPOSCFREQ
                                    359 	.globl _LPOSCFREQ1
                                    360 	.globl _LPOSCFREQ0
                                    361 	.globl _LPOSCCONFIG
                                    362 	.globl _PINSEL
                                    363 	.globl _PINCHGC
                                    364 	.globl _PINCHGB
                                    365 	.globl _PINCHGA
                                    366 	.globl _PALTRADIO
                                    367 	.globl _PALTC
                                    368 	.globl _PALTB
                                    369 	.globl _PALTA
                                    370 	.globl _INTCHGC
                                    371 	.globl _INTCHGB
                                    372 	.globl _INTCHGA
                                    373 	.globl _EXTIRQ
                                    374 	.globl _GPIOENABLE
                                    375 	.globl _ANALOGA
                                    376 	.globl _FRCOSCREF
                                    377 	.globl _FRCOSCREF1
                                    378 	.globl _FRCOSCREF0
                                    379 	.globl _FRCOSCPER
                                    380 	.globl _FRCOSCPER1
                                    381 	.globl _FRCOSCPER0
                                    382 	.globl _FRCOSCKFILT
                                    383 	.globl _FRCOSCKFILT1
                                    384 	.globl _FRCOSCKFILT0
                                    385 	.globl _FRCOSCFREQ
                                    386 	.globl _FRCOSCFREQ1
                                    387 	.globl _FRCOSCFREQ0
                                    388 	.globl _FRCOSCCTRL
                                    389 	.globl _FRCOSCCONFIG
                                    390 	.globl _DMA1CONFIG
                                    391 	.globl _DMA1ADDR
                                    392 	.globl _DMA1ADDR1
                                    393 	.globl _DMA1ADDR0
                                    394 	.globl _DMA0CONFIG
                                    395 	.globl _DMA0ADDR
                                    396 	.globl _DMA0ADDR1
                                    397 	.globl _DMA0ADDR0
                                    398 	.globl _ADCTUNE2
                                    399 	.globl _ADCTUNE1
                                    400 	.globl _ADCTUNE0
                                    401 	.globl _ADCCH3VAL
                                    402 	.globl _ADCCH3VAL1
                                    403 	.globl _ADCCH3VAL0
                                    404 	.globl _ADCCH2VAL
                                    405 	.globl _ADCCH2VAL1
                                    406 	.globl _ADCCH2VAL0
                                    407 	.globl _ADCCH1VAL
                                    408 	.globl _ADCCH1VAL1
                                    409 	.globl _ADCCH1VAL0
                                    410 	.globl _ADCCH0VAL
                                    411 	.globl _ADCCH0VAL1
                                    412 	.globl _ADCCH0VAL0
                                    413 	.globl _acquire_agc
                                    414 	.globl _errors2
                                    415 	.globl _errors
                                    416 	.globl _bytes
                                    417 	.globl _scr
                                    418 	.globl _BER_TEST
                                    419 	.globl _coldstart
                                    420 	.globl _axradio_statuschange
                                    421 	.globl _enable_radio_interrupt_in_mcu_pin
                                    422 	.globl _disable_radio_interrupt_in_mcu_pin
                                    423 ;--------------------------------------------------------
                                    424 ; special function registers
                                    425 ;--------------------------------------------------------
                                    426 	.area RSEG    (ABS,DATA)
      000000                        427 	.org 0x0000
                           0000E0   428 G$ACC$0$0 == 0x00e0
                           0000E0   429 _ACC	=	0x00e0
                           0000F0   430 G$B$0$0 == 0x00f0
                           0000F0   431 _B	=	0x00f0
                           000083   432 G$DPH$0$0 == 0x0083
                           000083   433 _DPH	=	0x0083
                           000085   434 G$DPH1$0$0 == 0x0085
                           000085   435 _DPH1	=	0x0085
                           000082   436 G$DPL$0$0 == 0x0082
                           000082   437 _DPL	=	0x0082
                           000084   438 G$DPL1$0$0 == 0x0084
                           000084   439 _DPL1	=	0x0084
                           008382   440 G$DPTR0$0$0 == 0x8382
                           008382   441 _DPTR0	=	0x8382
                           008584   442 G$DPTR1$0$0 == 0x8584
                           008584   443 _DPTR1	=	0x8584
                           000086   444 G$DPS$0$0 == 0x0086
                           000086   445 _DPS	=	0x0086
                           0000A0   446 G$E2IE$0$0 == 0x00a0
                           0000A0   447 _E2IE	=	0x00a0
                           0000C0   448 G$E2IP$0$0 == 0x00c0
                           0000C0   449 _E2IP	=	0x00c0
                           000098   450 G$EIE$0$0 == 0x0098
                           000098   451 _EIE	=	0x0098
                           0000B0   452 G$EIP$0$0 == 0x00b0
                           0000B0   453 _EIP	=	0x00b0
                           0000A8   454 G$IE$0$0 == 0x00a8
                           0000A8   455 _IE	=	0x00a8
                           0000B8   456 G$IP$0$0 == 0x00b8
                           0000B8   457 _IP	=	0x00b8
                           000087   458 G$PCON$0$0 == 0x0087
                           000087   459 _PCON	=	0x0087
                           0000D0   460 G$PSW$0$0 == 0x00d0
                           0000D0   461 _PSW	=	0x00d0
                           000081   462 G$SP$0$0 == 0x0081
                           000081   463 _SP	=	0x0081
                           0000D9   464 G$XPAGE$0$0 == 0x00d9
                           0000D9   465 _XPAGE	=	0x00d9
                           0000D9   466 G$_XPAGE$0$0 == 0x00d9
                           0000D9   467 __XPAGE	=	0x00d9
                           0000CA   468 G$ADCCH0CONFIG$0$0 == 0x00ca
                           0000CA   469 _ADCCH0CONFIG	=	0x00ca
                           0000CB   470 G$ADCCH1CONFIG$0$0 == 0x00cb
                           0000CB   471 _ADCCH1CONFIG	=	0x00cb
                           0000D2   472 G$ADCCH2CONFIG$0$0 == 0x00d2
                           0000D2   473 _ADCCH2CONFIG	=	0x00d2
                           0000D3   474 G$ADCCH3CONFIG$0$0 == 0x00d3
                           0000D3   475 _ADCCH3CONFIG	=	0x00d3
                           0000D1   476 G$ADCCLKSRC$0$0 == 0x00d1
                           0000D1   477 _ADCCLKSRC	=	0x00d1
                           0000C9   478 G$ADCCONV$0$0 == 0x00c9
                           0000C9   479 _ADCCONV	=	0x00c9
                           0000E1   480 G$ANALOGCOMP$0$0 == 0x00e1
                           0000E1   481 _ANALOGCOMP	=	0x00e1
                           0000C6   482 G$CLKCON$0$0 == 0x00c6
                           0000C6   483 _CLKCON	=	0x00c6
                           0000C7   484 G$CLKSTAT$0$0 == 0x00c7
                           0000C7   485 _CLKSTAT	=	0x00c7
                           000097   486 G$CODECONFIG$0$0 == 0x0097
                           000097   487 _CODECONFIG	=	0x0097
                           0000E3   488 G$DBGLNKBUF$0$0 == 0x00e3
                           0000E3   489 _DBGLNKBUF	=	0x00e3
                           0000E2   490 G$DBGLNKSTAT$0$0 == 0x00e2
                           0000E2   491 _DBGLNKSTAT	=	0x00e2
                           000089   492 G$DIRA$0$0 == 0x0089
                           000089   493 _DIRA	=	0x0089
                           00008A   494 G$DIRB$0$0 == 0x008a
                           00008A   495 _DIRB	=	0x008a
                           00008B   496 G$DIRC$0$0 == 0x008b
                           00008B   497 _DIRC	=	0x008b
                           00008E   498 G$DIRR$0$0 == 0x008e
                           00008E   499 _DIRR	=	0x008e
                           0000C8   500 G$PINA$0$0 == 0x00c8
                           0000C8   501 _PINA	=	0x00c8
                           0000E8   502 G$PINB$0$0 == 0x00e8
                           0000E8   503 _PINB	=	0x00e8
                           0000F8   504 G$PINC$0$0 == 0x00f8
                           0000F8   505 _PINC	=	0x00f8
                           00008D   506 G$PINR$0$0 == 0x008d
                           00008D   507 _PINR	=	0x008d
                           000080   508 G$PORTA$0$0 == 0x0080
                           000080   509 _PORTA	=	0x0080
                           000088   510 G$PORTB$0$0 == 0x0088
                           000088   511 _PORTB	=	0x0088
                           000090   512 G$PORTC$0$0 == 0x0090
                           000090   513 _PORTC	=	0x0090
                           00008C   514 G$PORTR$0$0 == 0x008c
                           00008C   515 _PORTR	=	0x008c
                           0000CE   516 G$IC0CAPT0$0$0 == 0x00ce
                           0000CE   517 _IC0CAPT0	=	0x00ce
                           0000CF   518 G$IC0CAPT1$0$0 == 0x00cf
                           0000CF   519 _IC0CAPT1	=	0x00cf
                           00CFCE   520 G$IC0CAPT$0$0 == 0xcfce
                           00CFCE   521 _IC0CAPT	=	0xcfce
                           0000CC   522 G$IC0MODE$0$0 == 0x00cc
                           0000CC   523 _IC0MODE	=	0x00cc
                           0000CD   524 G$IC0STATUS$0$0 == 0x00cd
                           0000CD   525 _IC0STATUS	=	0x00cd
                           0000D6   526 G$IC1CAPT0$0$0 == 0x00d6
                           0000D6   527 _IC1CAPT0	=	0x00d6
                           0000D7   528 G$IC1CAPT1$0$0 == 0x00d7
                           0000D7   529 _IC1CAPT1	=	0x00d7
                           00D7D6   530 G$IC1CAPT$0$0 == 0xd7d6
                           00D7D6   531 _IC1CAPT	=	0xd7d6
                           0000D4   532 G$IC1MODE$0$0 == 0x00d4
                           0000D4   533 _IC1MODE	=	0x00d4
                           0000D5   534 G$IC1STATUS$0$0 == 0x00d5
                           0000D5   535 _IC1STATUS	=	0x00d5
                           000092   536 G$NVADDR0$0$0 == 0x0092
                           000092   537 _NVADDR0	=	0x0092
                           000093   538 G$NVADDR1$0$0 == 0x0093
                           000093   539 _NVADDR1	=	0x0093
                           009392   540 G$NVADDR$0$0 == 0x9392
                           009392   541 _NVADDR	=	0x9392
                           000094   542 G$NVDATA0$0$0 == 0x0094
                           000094   543 _NVDATA0	=	0x0094
                           000095   544 G$NVDATA1$0$0 == 0x0095
                           000095   545 _NVDATA1	=	0x0095
                           009594   546 G$NVDATA$0$0 == 0x9594
                           009594   547 _NVDATA	=	0x9594
                           000096   548 G$NVKEY$0$0 == 0x0096
                           000096   549 _NVKEY	=	0x0096
                           000091   550 G$NVSTATUS$0$0 == 0x0091
                           000091   551 _NVSTATUS	=	0x0091
                           0000BC   552 G$OC0COMP0$0$0 == 0x00bc
                           0000BC   553 _OC0COMP0	=	0x00bc
                           0000BD   554 G$OC0COMP1$0$0 == 0x00bd
                           0000BD   555 _OC0COMP1	=	0x00bd
                           00BDBC   556 G$OC0COMP$0$0 == 0xbdbc
                           00BDBC   557 _OC0COMP	=	0xbdbc
                           0000B9   558 G$OC0MODE$0$0 == 0x00b9
                           0000B9   559 _OC0MODE	=	0x00b9
                           0000BA   560 G$OC0PIN$0$0 == 0x00ba
                           0000BA   561 _OC0PIN	=	0x00ba
                           0000BB   562 G$OC0STATUS$0$0 == 0x00bb
                           0000BB   563 _OC0STATUS	=	0x00bb
                           0000C4   564 G$OC1COMP0$0$0 == 0x00c4
                           0000C4   565 _OC1COMP0	=	0x00c4
                           0000C5   566 G$OC1COMP1$0$0 == 0x00c5
                           0000C5   567 _OC1COMP1	=	0x00c5
                           00C5C4   568 G$OC1COMP$0$0 == 0xc5c4
                           00C5C4   569 _OC1COMP	=	0xc5c4
                           0000C1   570 G$OC1MODE$0$0 == 0x00c1
                           0000C1   571 _OC1MODE	=	0x00c1
                           0000C2   572 G$OC1PIN$0$0 == 0x00c2
                           0000C2   573 _OC1PIN	=	0x00c2
                           0000C3   574 G$OC1STATUS$0$0 == 0x00c3
                           0000C3   575 _OC1STATUS	=	0x00c3
                           0000B1   576 G$RADIOACC$0$0 == 0x00b1
                           0000B1   577 _RADIOACC	=	0x00b1
                           0000B3   578 G$RADIOADDR0$0$0 == 0x00b3
                           0000B3   579 _RADIOADDR0	=	0x00b3
                           0000B2   580 G$RADIOADDR1$0$0 == 0x00b2
                           0000B2   581 _RADIOADDR1	=	0x00b2
                           00B2B3   582 G$RADIOADDR$0$0 == 0xb2b3
                           00B2B3   583 _RADIOADDR	=	0xb2b3
                           0000B7   584 G$RADIODATA0$0$0 == 0x00b7
                           0000B7   585 _RADIODATA0	=	0x00b7
                           0000B6   586 G$RADIODATA1$0$0 == 0x00b6
                           0000B6   587 _RADIODATA1	=	0x00b6
                           0000B5   588 G$RADIODATA2$0$0 == 0x00b5
                           0000B5   589 _RADIODATA2	=	0x00b5
                           0000B4   590 G$RADIODATA3$0$0 == 0x00b4
                           0000B4   591 _RADIODATA3	=	0x00b4
                           B4B5B6B7   592 G$RADIODATA$0$0 == 0xb4b5b6b7
                           B4B5B6B7   593 _RADIODATA	=	0xb4b5b6b7
                           0000BE   594 G$RADIOSTAT0$0$0 == 0x00be
                           0000BE   595 _RADIOSTAT0	=	0x00be
                           0000BF   596 G$RADIOSTAT1$0$0 == 0x00bf
                           0000BF   597 _RADIOSTAT1	=	0x00bf
                           00BFBE   598 G$RADIOSTAT$0$0 == 0xbfbe
                           00BFBE   599 _RADIOSTAT	=	0xbfbe
                           0000DF   600 G$SPCLKSRC$0$0 == 0x00df
                           0000DF   601 _SPCLKSRC	=	0x00df
                           0000DC   602 G$SPMODE$0$0 == 0x00dc
                           0000DC   603 _SPMODE	=	0x00dc
                           0000DE   604 G$SPSHREG$0$0 == 0x00de
                           0000DE   605 _SPSHREG	=	0x00de
                           0000DD   606 G$SPSTATUS$0$0 == 0x00dd
                           0000DD   607 _SPSTATUS	=	0x00dd
                           00009A   608 G$T0CLKSRC$0$0 == 0x009a
                           00009A   609 _T0CLKSRC	=	0x009a
                           00009C   610 G$T0CNT0$0$0 == 0x009c
                           00009C   611 _T0CNT0	=	0x009c
                           00009D   612 G$T0CNT1$0$0 == 0x009d
                           00009D   613 _T0CNT1	=	0x009d
                           009D9C   614 G$T0CNT$0$0 == 0x9d9c
                           009D9C   615 _T0CNT	=	0x9d9c
                           000099   616 G$T0MODE$0$0 == 0x0099
                           000099   617 _T0MODE	=	0x0099
                           00009E   618 G$T0PERIOD0$0$0 == 0x009e
                           00009E   619 _T0PERIOD0	=	0x009e
                           00009F   620 G$T0PERIOD1$0$0 == 0x009f
                           00009F   621 _T0PERIOD1	=	0x009f
                           009F9E   622 G$T0PERIOD$0$0 == 0x9f9e
                           009F9E   623 _T0PERIOD	=	0x9f9e
                           00009B   624 G$T0STATUS$0$0 == 0x009b
                           00009B   625 _T0STATUS	=	0x009b
                           0000A2   626 G$T1CLKSRC$0$0 == 0x00a2
                           0000A2   627 _T1CLKSRC	=	0x00a2
                           0000A4   628 G$T1CNT0$0$0 == 0x00a4
                           0000A4   629 _T1CNT0	=	0x00a4
                           0000A5   630 G$T1CNT1$0$0 == 0x00a5
                           0000A5   631 _T1CNT1	=	0x00a5
                           00A5A4   632 G$T1CNT$0$0 == 0xa5a4
                           00A5A4   633 _T1CNT	=	0xa5a4
                           0000A1   634 G$T1MODE$0$0 == 0x00a1
                           0000A1   635 _T1MODE	=	0x00a1
                           0000A6   636 G$T1PERIOD0$0$0 == 0x00a6
                           0000A6   637 _T1PERIOD0	=	0x00a6
                           0000A7   638 G$T1PERIOD1$0$0 == 0x00a7
                           0000A7   639 _T1PERIOD1	=	0x00a7
                           00A7A6   640 G$T1PERIOD$0$0 == 0xa7a6
                           00A7A6   641 _T1PERIOD	=	0xa7a6
                           0000A3   642 G$T1STATUS$0$0 == 0x00a3
                           0000A3   643 _T1STATUS	=	0x00a3
                           0000AA   644 G$T2CLKSRC$0$0 == 0x00aa
                           0000AA   645 _T2CLKSRC	=	0x00aa
                           0000AC   646 G$T2CNT0$0$0 == 0x00ac
                           0000AC   647 _T2CNT0	=	0x00ac
                           0000AD   648 G$T2CNT1$0$0 == 0x00ad
                           0000AD   649 _T2CNT1	=	0x00ad
                           00ADAC   650 G$T2CNT$0$0 == 0xadac
                           00ADAC   651 _T2CNT	=	0xadac
                           0000A9   652 G$T2MODE$0$0 == 0x00a9
                           0000A9   653 _T2MODE	=	0x00a9
                           0000AE   654 G$T2PERIOD0$0$0 == 0x00ae
                           0000AE   655 _T2PERIOD0	=	0x00ae
                           0000AF   656 G$T2PERIOD1$0$0 == 0x00af
                           0000AF   657 _T2PERIOD1	=	0x00af
                           00AFAE   658 G$T2PERIOD$0$0 == 0xafae
                           00AFAE   659 _T2PERIOD	=	0xafae
                           0000AB   660 G$T2STATUS$0$0 == 0x00ab
                           0000AB   661 _T2STATUS	=	0x00ab
                           0000E4   662 G$U0CTRL$0$0 == 0x00e4
                           0000E4   663 _U0CTRL	=	0x00e4
                           0000E7   664 G$U0MODE$0$0 == 0x00e7
                           0000E7   665 _U0MODE	=	0x00e7
                           0000E6   666 G$U0SHREG$0$0 == 0x00e6
                           0000E6   667 _U0SHREG	=	0x00e6
                           0000E5   668 G$U0STATUS$0$0 == 0x00e5
                           0000E5   669 _U0STATUS	=	0x00e5
                           0000EC   670 G$U1CTRL$0$0 == 0x00ec
                           0000EC   671 _U1CTRL	=	0x00ec
                           0000EF   672 G$U1MODE$0$0 == 0x00ef
                           0000EF   673 _U1MODE	=	0x00ef
                           0000EE   674 G$U1SHREG$0$0 == 0x00ee
                           0000EE   675 _U1SHREG	=	0x00ee
                           0000ED   676 G$U1STATUS$0$0 == 0x00ed
                           0000ED   677 _U1STATUS	=	0x00ed
                           0000DA   678 G$WDTCFG$0$0 == 0x00da
                           0000DA   679 _WDTCFG	=	0x00da
                           0000DB   680 G$WDTRESET$0$0 == 0x00db
                           0000DB   681 _WDTRESET	=	0x00db
                           0000F1   682 G$WTCFGA$0$0 == 0x00f1
                           0000F1   683 _WTCFGA	=	0x00f1
                           0000F9   684 G$WTCFGB$0$0 == 0x00f9
                           0000F9   685 _WTCFGB	=	0x00f9
                           0000F2   686 G$WTCNTA0$0$0 == 0x00f2
                           0000F2   687 _WTCNTA0	=	0x00f2
                           0000F3   688 G$WTCNTA1$0$0 == 0x00f3
                           0000F3   689 _WTCNTA1	=	0x00f3
                           00F3F2   690 G$WTCNTA$0$0 == 0xf3f2
                           00F3F2   691 _WTCNTA	=	0xf3f2
                           0000FA   692 G$WTCNTB0$0$0 == 0x00fa
                           0000FA   693 _WTCNTB0	=	0x00fa
                           0000FB   694 G$WTCNTB1$0$0 == 0x00fb
                           0000FB   695 _WTCNTB1	=	0x00fb
                           00FBFA   696 G$WTCNTB$0$0 == 0xfbfa
                           00FBFA   697 _WTCNTB	=	0xfbfa
                           0000EB   698 G$WTCNTR1$0$0 == 0x00eb
                           0000EB   699 _WTCNTR1	=	0x00eb
                           0000F4   700 G$WTEVTA0$0$0 == 0x00f4
                           0000F4   701 _WTEVTA0	=	0x00f4
                           0000F5   702 G$WTEVTA1$0$0 == 0x00f5
                           0000F5   703 _WTEVTA1	=	0x00f5
                           00F5F4   704 G$WTEVTA$0$0 == 0xf5f4
                           00F5F4   705 _WTEVTA	=	0xf5f4
                           0000F6   706 G$WTEVTB0$0$0 == 0x00f6
                           0000F6   707 _WTEVTB0	=	0x00f6
                           0000F7   708 G$WTEVTB1$0$0 == 0x00f7
                           0000F7   709 _WTEVTB1	=	0x00f7
                           00F7F6   710 G$WTEVTB$0$0 == 0xf7f6
                           00F7F6   711 _WTEVTB	=	0xf7f6
                           0000FC   712 G$WTEVTC0$0$0 == 0x00fc
                           0000FC   713 _WTEVTC0	=	0x00fc
                           0000FD   714 G$WTEVTC1$0$0 == 0x00fd
                           0000FD   715 _WTEVTC1	=	0x00fd
                           00FDFC   716 G$WTEVTC$0$0 == 0xfdfc
                           00FDFC   717 _WTEVTC	=	0xfdfc
                           0000FE   718 G$WTEVTD0$0$0 == 0x00fe
                           0000FE   719 _WTEVTD0	=	0x00fe
                           0000FF   720 G$WTEVTD1$0$0 == 0x00ff
                           0000FF   721 _WTEVTD1	=	0x00ff
                           00FFFE   722 G$WTEVTD$0$0 == 0xfffe
                           00FFFE   723 _WTEVTD	=	0xfffe
                           0000E9   724 G$WTIRQEN$0$0 == 0x00e9
                           0000E9   725 _WTIRQEN	=	0x00e9
                           0000EA   726 G$WTSTAT$0$0 == 0x00ea
                           0000EA   727 _WTSTAT	=	0x00ea
                                    728 ;--------------------------------------------------------
                                    729 ; special function bits
                                    730 ;--------------------------------------------------------
                                    731 	.area RSEG    (ABS,DATA)
      000000                        732 	.org 0x0000
                           0000E0   733 G$ACC_0$0$0 == 0x00e0
                           0000E0   734 _ACC_0	=	0x00e0
                           0000E1   735 G$ACC_1$0$0 == 0x00e1
                           0000E1   736 _ACC_1	=	0x00e1
                           0000E2   737 G$ACC_2$0$0 == 0x00e2
                           0000E2   738 _ACC_2	=	0x00e2
                           0000E3   739 G$ACC_3$0$0 == 0x00e3
                           0000E3   740 _ACC_3	=	0x00e3
                           0000E4   741 G$ACC_4$0$0 == 0x00e4
                           0000E4   742 _ACC_4	=	0x00e4
                           0000E5   743 G$ACC_5$0$0 == 0x00e5
                           0000E5   744 _ACC_5	=	0x00e5
                           0000E6   745 G$ACC_6$0$0 == 0x00e6
                           0000E6   746 _ACC_6	=	0x00e6
                           0000E7   747 G$ACC_7$0$0 == 0x00e7
                           0000E7   748 _ACC_7	=	0x00e7
                           0000F0   749 G$B_0$0$0 == 0x00f0
                           0000F0   750 _B_0	=	0x00f0
                           0000F1   751 G$B_1$0$0 == 0x00f1
                           0000F1   752 _B_1	=	0x00f1
                           0000F2   753 G$B_2$0$0 == 0x00f2
                           0000F2   754 _B_2	=	0x00f2
                           0000F3   755 G$B_3$0$0 == 0x00f3
                           0000F3   756 _B_3	=	0x00f3
                           0000F4   757 G$B_4$0$0 == 0x00f4
                           0000F4   758 _B_4	=	0x00f4
                           0000F5   759 G$B_5$0$0 == 0x00f5
                           0000F5   760 _B_5	=	0x00f5
                           0000F6   761 G$B_6$0$0 == 0x00f6
                           0000F6   762 _B_6	=	0x00f6
                           0000F7   763 G$B_7$0$0 == 0x00f7
                           0000F7   764 _B_7	=	0x00f7
                           0000A0   765 G$E2IE_0$0$0 == 0x00a0
                           0000A0   766 _E2IE_0	=	0x00a0
                           0000A1   767 G$E2IE_1$0$0 == 0x00a1
                           0000A1   768 _E2IE_1	=	0x00a1
                           0000A2   769 G$E2IE_2$0$0 == 0x00a2
                           0000A2   770 _E2IE_2	=	0x00a2
                           0000A3   771 G$E2IE_3$0$0 == 0x00a3
                           0000A3   772 _E2IE_3	=	0x00a3
                           0000A4   773 G$E2IE_4$0$0 == 0x00a4
                           0000A4   774 _E2IE_4	=	0x00a4
                           0000A5   775 G$E2IE_5$0$0 == 0x00a5
                           0000A5   776 _E2IE_5	=	0x00a5
                           0000A6   777 G$E2IE_6$0$0 == 0x00a6
                           0000A6   778 _E2IE_6	=	0x00a6
                           0000A7   779 G$E2IE_7$0$0 == 0x00a7
                           0000A7   780 _E2IE_7	=	0x00a7
                           0000C0   781 G$E2IP_0$0$0 == 0x00c0
                           0000C0   782 _E2IP_0	=	0x00c0
                           0000C1   783 G$E2IP_1$0$0 == 0x00c1
                           0000C1   784 _E2IP_1	=	0x00c1
                           0000C2   785 G$E2IP_2$0$0 == 0x00c2
                           0000C2   786 _E2IP_2	=	0x00c2
                           0000C3   787 G$E2IP_3$0$0 == 0x00c3
                           0000C3   788 _E2IP_3	=	0x00c3
                           0000C4   789 G$E2IP_4$0$0 == 0x00c4
                           0000C4   790 _E2IP_4	=	0x00c4
                           0000C5   791 G$E2IP_5$0$0 == 0x00c5
                           0000C5   792 _E2IP_5	=	0x00c5
                           0000C6   793 G$E2IP_6$0$0 == 0x00c6
                           0000C6   794 _E2IP_6	=	0x00c6
                           0000C7   795 G$E2IP_7$0$0 == 0x00c7
                           0000C7   796 _E2IP_7	=	0x00c7
                           000098   797 G$EIE_0$0$0 == 0x0098
                           000098   798 _EIE_0	=	0x0098
                           000099   799 G$EIE_1$0$0 == 0x0099
                           000099   800 _EIE_1	=	0x0099
                           00009A   801 G$EIE_2$0$0 == 0x009a
                           00009A   802 _EIE_2	=	0x009a
                           00009B   803 G$EIE_3$0$0 == 0x009b
                           00009B   804 _EIE_3	=	0x009b
                           00009C   805 G$EIE_4$0$0 == 0x009c
                           00009C   806 _EIE_4	=	0x009c
                           00009D   807 G$EIE_5$0$0 == 0x009d
                           00009D   808 _EIE_5	=	0x009d
                           00009E   809 G$EIE_6$0$0 == 0x009e
                           00009E   810 _EIE_6	=	0x009e
                           00009F   811 G$EIE_7$0$0 == 0x009f
                           00009F   812 _EIE_7	=	0x009f
                           0000B0   813 G$EIP_0$0$0 == 0x00b0
                           0000B0   814 _EIP_0	=	0x00b0
                           0000B1   815 G$EIP_1$0$0 == 0x00b1
                           0000B1   816 _EIP_1	=	0x00b1
                           0000B2   817 G$EIP_2$0$0 == 0x00b2
                           0000B2   818 _EIP_2	=	0x00b2
                           0000B3   819 G$EIP_3$0$0 == 0x00b3
                           0000B3   820 _EIP_3	=	0x00b3
                           0000B4   821 G$EIP_4$0$0 == 0x00b4
                           0000B4   822 _EIP_4	=	0x00b4
                           0000B5   823 G$EIP_5$0$0 == 0x00b5
                           0000B5   824 _EIP_5	=	0x00b5
                           0000B6   825 G$EIP_6$0$0 == 0x00b6
                           0000B6   826 _EIP_6	=	0x00b6
                           0000B7   827 G$EIP_7$0$0 == 0x00b7
                           0000B7   828 _EIP_7	=	0x00b7
                           0000A8   829 G$IE_0$0$0 == 0x00a8
                           0000A8   830 _IE_0	=	0x00a8
                           0000A9   831 G$IE_1$0$0 == 0x00a9
                           0000A9   832 _IE_1	=	0x00a9
                           0000AA   833 G$IE_2$0$0 == 0x00aa
                           0000AA   834 _IE_2	=	0x00aa
                           0000AB   835 G$IE_3$0$0 == 0x00ab
                           0000AB   836 _IE_3	=	0x00ab
                           0000AC   837 G$IE_4$0$0 == 0x00ac
                           0000AC   838 _IE_4	=	0x00ac
                           0000AD   839 G$IE_5$0$0 == 0x00ad
                           0000AD   840 _IE_5	=	0x00ad
                           0000AE   841 G$IE_6$0$0 == 0x00ae
                           0000AE   842 _IE_6	=	0x00ae
                           0000AF   843 G$IE_7$0$0 == 0x00af
                           0000AF   844 _IE_7	=	0x00af
                           0000AF   845 G$EA$0$0 == 0x00af
                           0000AF   846 _EA	=	0x00af
                           0000B8   847 G$IP_0$0$0 == 0x00b8
                           0000B8   848 _IP_0	=	0x00b8
                           0000B9   849 G$IP_1$0$0 == 0x00b9
                           0000B9   850 _IP_1	=	0x00b9
                           0000BA   851 G$IP_2$0$0 == 0x00ba
                           0000BA   852 _IP_2	=	0x00ba
                           0000BB   853 G$IP_3$0$0 == 0x00bb
                           0000BB   854 _IP_3	=	0x00bb
                           0000BC   855 G$IP_4$0$0 == 0x00bc
                           0000BC   856 _IP_4	=	0x00bc
                           0000BD   857 G$IP_5$0$0 == 0x00bd
                           0000BD   858 _IP_5	=	0x00bd
                           0000BE   859 G$IP_6$0$0 == 0x00be
                           0000BE   860 _IP_6	=	0x00be
                           0000BF   861 G$IP_7$0$0 == 0x00bf
                           0000BF   862 _IP_7	=	0x00bf
                           0000D0   863 G$P$0$0 == 0x00d0
                           0000D0   864 _P	=	0x00d0
                           0000D1   865 G$F1$0$0 == 0x00d1
                           0000D1   866 _F1	=	0x00d1
                           0000D2   867 G$OV$0$0 == 0x00d2
                           0000D2   868 _OV	=	0x00d2
                           0000D3   869 G$RS0$0$0 == 0x00d3
                           0000D3   870 _RS0	=	0x00d3
                           0000D4   871 G$RS1$0$0 == 0x00d4
                           0000D4   872 _RS1	=	0x00d4
                           0000D5   873 G$F0$0$0 == 0x00d5
                           0000D5   874 _F0	=	0x00d5
                           0000D6   875 G$AC$0$0 == 0x00d6
                           0000D6   876 _AC	=	0x00d6
                           0000D7   877 G$CY$0$0 == 0x00d7
                           0000D7   878 _CY	=	0x00d7
                           0000C8   879 G$PINA_0$0$0 == 0x00c8
                           0000C8   880 _PINA_0	=	0x00c8
                           0000C9   881 G$PINA_1$0$0 == 0x00c9
                           0000C9   882 _PINA_1	=	0x00c9
                           0000CA   883 G$PINA_2$0$0 == 0x00ca
                           0000CA   884 _PINA_2	=	0x00ca
                           0000CB   885 G$PINA_3$0$0 == 0x00cb
                           0000CB   886 _PINA_3	=	0x00cb
                           0000CC   887 G$PINA_4$0$0 == 0x00cc
                           0000CC   888 _PINA_4	=	0x00cc
                           0000CD   889 G$PINA_5$0$0 == 0x00cd
                           0000CD   890 _PINA_5	=	0x00cd
                           0000CE   891 G$PINA_6$0$0 == 0x00ce
                           0000CE   892 _PINA_6	=	0x00ce
                           0000CF   893 G$PINA_7$0$0 == 0x00cf
                           0000CF   894 _PINA_7	=	0x00cf
                           0000E8   895 G$PINB_0$0$0 == 0x00e8
                           0000E8   896 _PINB_0	=	0x00e8
                           0000E9   897 G$PINB_1$0$0 == 0x00e9
                           0000E9   898 _PINB_1	=	0x00e9
                           0000EA   899 G$PINB_2$0$0 == 0x00ea
                           0000EA   900 _PINB_2	=	0x00ea
                           0000EB   901 G$PINB_3$0$0 == 0x00eb
                           0000EB   902 _PINB_3	=	0x00eb
                           0000EC   903 G$PINB_4$0$0 == 0x00ec
                           0000EC   904 _PINB_4	=	0x00ec
                           0000ED   905 G$PINB_5$0$0 == 0x00ed
                           0000ED   906 _PINB_5	=	0x00ed
                           0000EE   907 G$PINB_6$0$0 == 0x00ee
                           0000EE   908 _PINB_6	=	0x00ee
                           0000EF   909 G$PINB_7$0$0 == 0x00ef
                           0000EF   910 _PINB_7	=	0x00ef
                           0000F8   911 G$PINC_0$0$0 == 0x00f8
                           0000F8   912 _PINC_0	=	0x00f8
                           0000F9   913 G$PINC_1$0$0 == 0x00f9
                           0000F9   914 _PINC_1	=	0x00f9
                           0000FA   915 G$PINC_2$0$0 == 0x00fa
                           0000FA   916 _PINC_2	=	0x00fa
                           0000FB   917 G$PINC_3$0$0 == 0x00fb
                           0000FB   918 _PINC_3	=	0x00fb
                           0000FC   919 G$PINC_4$0$0 == 0x00fc
                           0000FC   920 _PINC_4	=	0x00fc
                           0000FD   921 G$PINC_5$0$0 == 0x00fd
                           0000FD   922 _PINC_5	=	0x00fd
                           0000FE   923 G$PINC_6$0$0 == 0x00fe
                           0000FE   924 _PINC_6	=	0x00fe
                           0000FF   925 G$PINC_7$0$0 == 0x00ff
                           0000FF   926 _PINC_7	=	0x00ff
                           000080   927 G$PORTA_0$0$0 == 0x0080
                           000080   928 _PORTA_0	=	0x0080
                           000081   929 G$PORTA_1$0$0 == 0x0081
                           000081   930 _PORTA_1	=	0x0081
                           000082   931 G$PORTA_2$0$0 == 0x0082
                           000082   932 _PORTA_2	=	0x0082
                           000083   933 G$PORTA_3$0$0 == 0x0083
                           000083   934 _PORTA_3	=	0x0083
                           000084   935 G$PORTA_4$0$0 == 0x0084
                           000084   936 _PORTA_4	=	0x0084
                           000085   937 G$PORTA_5$0$0 == 0x0085
                           000085   938 _PORTA_5	=	0x0085
                           000086   939 G$PORTA_6$0$0 == 0x0086
                           000086   940 _PORTA_6	=	0x0086
                           000087   941 G$PORTA_7$0$0 == 0x0087
                           000087   942 _PORTA_7	=	0x0087
                           000088   943 G$PORTB_0$0$0 == 0x0088
                           000088   944 _PORTB_0	=	0x0088
                           000089   945 G$PORTB_1$0$0 == 0x0089
                           000089   946 _PORTB_1	=	0x0089
                           00008A   947 G$PORTB_2$0$0 == 0x008a
                           00008A   948 _PORTB_2	=	0x008a
                           00008B   949 G$PORTB_3$0$0 == 0x008b
                           00008B   950 _PORTB_3	=	0x008b
                           00008C   951 G$PORTB_4$0$0 == 0x008c
                           00008C   952 _PORTB_4	=	0x008c
                           00008D   953 G$PORTB_5$0$0 == 0x008d
                           00008D   954 _PORTB_5	=	0x008d
                           00008E   955 G$PORTB_6$0$0 == 0x008e
                           00008E   956 _PORTB_6	=	0x008e
                           00008F   957 G$PORTB_7$0$0 == 0x008f
                           00008F   958 _PORTB_7	=	0x008f
                           000090   959 G$PORTC_0$0$0 == 0x0090
                           000090   960 _PORTC_0	=	0x0090
                           000091   961 G$PORTC_1$0$0 == 0x0091
                           000091   962 _PORTC_1	=	0x0091
                           000092   963 G$PORTC_2$0$0 == 0x0092
                           000092   964 _PORTC_2	=	0x0092
                           000093   965 G$PORTC_3$0$0 == 0x0093
                           000093   966 _PORTC_3	=	0x0093
                           000094   967 G$PORTC_4$0$0 == 0x0094
                           000094   968 _PORTC_4	=	0x0094
                           000095   969 G$PORTC_5$0$0 == 0x0095
                           000095   970 _PORTC_5	=	0x0095
                           000096   971 G$PORTC_6$0$0 == 0x0096
                           000096   972 _PORTC_6	=	0x0096
                           000097   973 G$PORTC_7$0$0 == 0x0097
                           000097   974 _PORTC_7	=	0x0097
                                    975 ;--------------------------------------------------------
                                    976 ; overlayable register banks
                                    977 ;--------------------------------------------------------
                                    978 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        979 	.ds 8
                                    980 ;--------------------------------------------------------
                                    981 ; internal ram data
                                    982 ;--------------------------------------------------------
                                    983 	.area DSEG    (DATA)
                           000000   984 G$coldstart$0$0==.
      000022                        985 _coldstart::
      000022                        986 	.ds 1
                           000001   987 G$BER_TEST$0$0==.
      000023                        988 _BER_TEST::
      000023                        989 	.ds 1
                           000002   990 G$scr$0$0==.
      000024                        991 _scr::
      000024                        992 	.ds 4
                           000006   993 G$bytes$0$0==.
      000028                        994 _bytes::
      000028                        995 	.ds 4
                           00000A   996 G$errors$0$0==.
      00002C                        997 _errors::
      00002C                        998 	.ds 4
                           00000E   999 G$errors2$0$0==.
      000030                       1000 _errors2::
      000030                       1001 	.ds 4
                           000012  1002 G$acquire_agc$0$0==.
      000034                       1003 _acquire_agc::
      000034                       1004 	.ds 1
                           000013  1005 Lmain.process_ber$i$2$344==.
      000035                       1006 _process_ber_i_2_344:
      000035                       1007 	.ds 1
                           000014  1008 Lmain.process_ber$sloc0$1$0==.
      000036                       1009 _process_ber_sloc0_1_0:
      000036                       1010 	.ds 1
                           000015  1011 Lmain.process_ber$sloc1$1$0==.
      000037                       1012 _process_ber_sloc1_1_0:
      000037                       1013 	.ds 1
                           000016  1014 Lmain.si_write_reg$data$1$403==.
      000038                       1015 _si_write_reg_PARM_2:
      000038                       1016 	.ds 4
                                   1017 ;--------------------------------------------------------
                                   1018 ; overlayable items in internal ram 
                                   1019 ;--------------------------------------------------------
                                   1020 	.area	OSEG    (OVR,DATA)
                                   1021 ;--------------------------------------------------------
                                   1022 ; Stack segment in internal ram 
                                   1023 ;--------------------------------------------------------
                                   1024 	.area	SSEG
      000050                       1025 __start__stack:
      000050                       1026 	.ds	1
                                   1027 
                                   1028 ;--------------------------------------------------------
                                   1029 ; indirectly addressable internal ram data
                                   1030 ;--------------------------------------------------------
                                   1031 	.area ISEG    (DATA)
                                   1032 ;--------------------------------------------------------
                                   1033 ; absolute internal ram data
                                   1034 ;--------------------------------------------------------
                                   1035 	.area IABS    (ABS,DATA)
                                   1036 	.area IABS    (ABS,DATA)
                                   1037 ;--------------------------------------------------------
                                   1038 ; bit data
                                   1039 ;--------------------------------------------------------
                                   1040 	.area BSEG    (BIT)
                           000000  1041 Lmain._sdcc_external_startup$sloc0$1$0==.
      000001                       1042 __sdcc_external_startup_sloc0_1_0:
      000001                       1043 	.ds 1
                                   1044 ;--------------------------------------------------------
                                   1045 ; paged external ram data
                                   1046 ;--------------------------------------------------------
                                   1047 	.area PSEG    (PAG,XDATA)
                                   1048 ;--------------------------------------------------------
                                   1049 ; external ram data
                                   1050 ;--------------------------------------------------------
                                   1051 	.area XSEG    (XDATA)
                           007020  1052 G$ADCCH0VAL0$0$0 == 0x7020
                           007020  1053 _ADCCH0VAL0	=	0x7020
                           007021  1054 G$ADCCH0VAL1$0$0 == 0x7021
                           007021  1055 _ADCCH0VAL1	=	0x7021
                           007020  1056 G$ADCCH0VAL$0$0 == 0x7020
                           007020  1057 _ADCCH0VAL	=	0x7020
                           007022  1058 G$ADCCH1VAL0$0$0 == 0x7022
                           007022  1059 _ADCCH1VAL0	=	0x7022
                           007023  1060 G$ADCCH1VAL1$0$0 == 0x7023
                           007023  1061 _ADCCH1VAL1	=	0x7023
                           007022  1062 G$ADCCH1VAL$0$0 == 0x7022
                           007022  1063 _ADCCH1VAL	=	0x7022
                           007024  1064 G$ADCCH2VAL0$0$0 == 0x7024
                           007024  1065 _ADCCH2VAL0	=	0x7024
                           007025  1066 G$ADCCH2VAL1$0$0 == 0x7025
                           007025  1067 _ADCCH2VAL1	=	0x7025
                           007024  1068 G$ADCCH2VAL$0$0 == 0x7024
                           007024  1069 _ADCCH2VAL	=	0x7024
                           007026  1070 G$ADCCH3VAL0$0$0 == 0x7026
                           007026  1071 _ADCCH3VAL0	=	0x7026
                           007027  1072 G$ADCCH3VAL1$0$0 == 0x7027
                           007027  1073 _ADCCH3VAL1	=	0x7027
                           007026  1074 G$ADCCH3VAL$0$0 == 0x7026
                           007026  1075 _ADCCH3VAL	=	0x7026
                           007028  1076 G$ADCTUNE0$0$0 == 0x7028
                           007028  1077 _ADCTUNE0	=	0x7028
                           007029  1078 G$ADCTUNE1$0$0 == 0x7029
                           007029  1079 _ADCTUNE1	=	0x7029
                           00702A  1080 G$ADCTUNE2$0$0 == 0x702a
                           00702A  1081 _ADCTUNE2	=	0x702a
                           007010  1082 G$DMA0ADDR0$0$0 == 0x7010
                           007010  1083 _DMA0ADDR0	=	0x7010
                           007011  1084 G$DMA0ADDR1$0$0 == 0x7011
                           007011  1085 _DMA0ADDR1	=	0x7011
                           007010  1086 G$DMA0ADDR$0$0 == 0x7010
                           007010  1087 _DMA0ADDR	=	0x7010
                           007014  1088 G$DMA0CONFIG$0$0 == 0x7014
                           007014  1089 _DMA0CONFIG	=	0x7014
                           007012  1090 G$DMA1ADDR0$0$0 == 0x7012
                           007012  1091 _DMA1ADDR0	=	0x7012
                           007013  1092 G$DMA1ADDR1$0$0 == 0x7013
                           007013  1093 _DMA1ADDR1	=	0x7013
                           007012  1094 G$DMA1ADDR$0$0 == 0x7012
                           007012  1095 _DMA1ADDR	=	0x7012
                           007015  1096 G$DMA1CONFIG$0$0 == 0x7015
                           007015  1097 _DMA1CONFIG	=	0x7015
                           007070  1098 G$FRCOSCCONFIG$0$0 == 0x7070
                           007070  1099 _FRCOSCCONFIG	=	0x7070
                           007071  1100 G$FRCOSCCTRL$0$0 == 0x7071
                           007071  1101 _FRCOSCCTRL	=	0x7071
                           007076  1102 G$FRCOSCFREQ0$0$0 == 0x7076
                           007076  1103 _FRCOSCFREQ0	=	0x7076
                           007077  1104 G$FRCOSCFREQ1$0$0 == 0x7077
                           007077  1105 _FRCOSCFREQ1	=	0x7077
                           007076  1106 G$FRCOSCFREQ$0$0 == 0x7076
                           007076  1107 _FRCOSCFREQ	=	0x7076
                           007072  1108 G$FRCOSCKFILT0$0$0 == 0x7072
                           007072  1109 _FRCOSCKFILT0	=	0x7072
                           007073  1110 G$FRCOSCKFILT1$0$0 == 0x7073
                           007073  1111 _FRCOSCKFILT1	=	0x7073
                           007072  1112 G$FRCOSCKFILT$0$0 == 0x7072
                           007072  1113 _FRCOSCKFILT	=	0x7072
                           007078  1114 G$FRCOSCPER0$0$0 == 0x7078
                           007078  1115 _FRCOSCPER0	=	0x7078
                           007079  1116 G$FRCOSCPER1$0$0 == 0x7079
                           007079  1117 _FRCOSCPER1	=	0x7079
                           007078  1118 G$FRCOSCPER$0$0 == 0x7078
                           007078  1119 _FRCOSCPER	=	0x7078
                           007074  1120 G$FRCOSCREF0$0$0 == 0x7074
                           007074  1121 _FRCOSCREF0	=	0x7074
                           007075  1122 G$FRCOSCREF1$0$0 == 0x7075
                           007075  1123 _FRCOSCREF1	=	0x7075
                           007074  1124 G$FRCOSCREF$0$0 == 0x7074
                           007074  1125 _FRCOSCREF	=	0x7074
                           007007  1126 G$ANALOGA$0$0 == 0x7007
                           007007  1127 _ANALOGA	=	0x7007
                           00700C  1128 G$GPIOENABLE$0$0 == 0x700c
                           00700C  1129 _GPIOENABLE	=	0x700c
                           007003  1130 G$EXTIRQ$0$0 == 0x7003
                           007003  1131 _EXTIRQ	=	0x7003
                           007000  1132 G$INTCHGA$0$0 == 0x7000
                           007000  1133 _INTCHGA	=	0x7000
                           007001  1134 G$INTCHGB$0$0 == 0x7001
                           007001  1135 _INTCHGB	=	0x7001
                           007002  1136 G$INTCHGC$0$0 == 0x7002
                           007002  1137 _INTCHGC	=	0x7002
                           007008  1138 G$PALTA$0$0 == 0x7008
                           007008  1139 _PALTA	=	0x7008
                           007009  1140 G$PALTB$0$0 == 0x7009
                           007009  1141 _PALTB	=	0x7009
                           00700A  1142 G$PALTC$0$0 == 0x700a
                           00700A  1143 _PALTC	=	0x700a
                           007046  1144 G$PALTRADIO$0$0 == 0x7046
                           007046  1145 _PALTRADIO	=	0x7046
                           007004  1146 G$PINCHGA$0$0 == 0x7004
                           007004  1147 _PINCHGA	=	0x7004
                           007005  1148 G$PINCHGB$0$0 == 0x7005
                           007005  1149 _PINCHGB	=	0x7005
                           007006  1150 G$PINCHGC$0$0 == 0x7006
                           007006  1151 _PINCHGC	=	0x7006
                           00700B  1152 G$PINSEL$0$0 == 0x700b
                           00700B  1153 _PINSEL	=	0x700b
                           007060  1154 G$LPOSCCONFIG$0$0 == 0x7060
                           007060  1155 _LPOSCCONFIG	=	0x7060
                           007066  1156 G$LPOSCFREQ0$0$0 == 0x7066
                           007066  1157 _LPOSCFREQ0	=	0x7066
                           007067  1158 G$LPOSCFREQ1$0$0 == 0x7067
                           007067  1159 _LPOSCFREQ1	=	0x7067
                           007066  1160 G$LPOSCFREQ$0$0 == 0x7066
                           007066  1161 _LPOSCFREQ	=	0x7066
                           007062  1162 G$LPOSCKFILT0$0$0 == 0x7062
                           007062  1163 _LPOSCKFILT0	=	0x7062
                           007063  1164 G$LPOSCKFILT1$0$0 == 0x7063
                           007063  1165 _LPOSCKFILT1	=	0x7063
                           007062  1166 G$LPOSCKFILT$0$0 == 0x7062
                           007062  1167 _LPOSCKFILT	=	0x7062
                           007068  1168 G$LPOSCPER0$0$0 == 0x7068
                           007068  1169 _LPOSCPER0	=	0x7068
                           007069  1170 G$LPOSCPER1$0$0 == 0x7069
                           007069  1171 _LPOSCPER1	=	0x7069
                           007068  1172 G$LPOSCPER$0$0 == 0x7068
                           007068  1173 _LPOSCPER	=	0x7068
                           007064  1174 G$LPOSCREF0$0$0 == 0x7064
                           007064  1175 _LPOSCREF0	=	0x7064
                           007065  1176 G$LPOSCREF1$0$0 == 0x7065
                           007065  1177 _LPOSCREF1	=	0x7065
                           007064  1178 G$LPOSCREF$0$0 == 0x7064
                           007064  1179 _LPOSCREF	=	0x7064
                           007054  1180 G$LPXOSCGM$0$0 == 0x7054
                           007054  1181 _LPXOSCGM	=	0x7054
                           007F01  1182 G$MISCCTRL$0$0 == 0x7f01
                           007F01  1183 _MISCCTRL	=	0x7f01
                           007053  1184 G$OSCCALIB$0$0 == 0x7053
                           007053  1185 _OSCCALIB	=	0x7053
                           007050  1186 G$OSCFORCERUN$0$0 == 0x7050
                           007050  1187 _OSCFORCERUN	=	0x7050
                           007052  1188 G$OSCREADY$0$0 == 0x7052
                           007052  1189 _OSCREADY	=	0x7052
                           007051  1190 G$OSCRUN$0$0 == 0x7051
                           007051  1191 _OSCRUN	=	0x7051
                           007040  1192 G$RADIOFDATAADDR0$0$0 == 0x7040
                           007040  1193 _RADIOFDATAADDR0	=	0x7040
                           007041  1194 G$RADIOFDATAADDR1$0$0 == 0x7041
                           007041  1195 _RADIOFDATAADDR1	=	0x7041
                           007040  1196 G$RADIOFDATAADDR$0$0 == 0x7040
                           007040  1197 _RADIOFDATAADDR	=	0x7040
                           007042  1198 G$RADIOFSTATADDR0$0$0 == 0x7042
                           007042  1199 _RADIOFSTATADDR0	=	0x7042
                           007043  1200 G$RADIOFSTATADDR1$0$0 == 0x7043
                           007043  1201 _RADIOFSTATADDR1	=	0x7043
                           007042  1202 G$RADIOFSTATADDR$0$0 == 0x7042
                           007042  1203 _RADIOFSTATADDR	=	0x7042
                           007044  1204 G$RADIOMUX$0$0 == 0x7044
                           007044  1205 _RADIOMUX	=	0x7044
                           007084  1206 G$SCRATCH0$0$0 == 0x7084
                           007084  1207 _SCRATCH0	=	0x7084
                           007085  1208 G$SCRATCH1$0$0 == 0x7085
                           007085  1209 _SCRATCH1	=	0x7085
                           007086  1210 G$SCRATCH2$0$0 == 0x7086
                           007086  1211 _SCRATCH2	=	0x7086
                           007087  1212 G$SCRATCH3$0$0 == 0x7087
                           007087  1213 _SCRATCH3	=	0x7087
                           007F00  1214 G$SILICONREV$0$0 == 0x7f00
                           007F00  1215 _SILICONREV	=	0x7f00
                           007F19  1216 G$XTALAMPL$0$0 == 0x7f19
                           007F19  1217 _XTALAMPL	=	0x7f19
                           007F18  1218 G$XTALOSC$0$0 == 0x7f18
                           007F18  1219 _XTALOSC	=	0x7f18
                           007F1A  1220 G$XTALREADY$0$0 == 0x7f1a
                           007F1A  1221 _XTALREADY	=	0x7f1a
                           00FC06  1222 Fmain$flash_deviceid$0$0 == 0xfc06
                           00FC06  1223 _flash_deviceid	=	0xfc06
                           00FC00  1224 Fmain$flash_calsector$0$0 == 0xfc00
                           00FC00  1225 _flash_calsector	=	0xfc00
                           000000  1226 G$txdata$0$0==.
      00029E                       1227 _txdata::
      00029E                       1228 	.ds 8
                                   1229 ;--------------------------------------------------------
                                   1230 ; absolute external ram data
                                   1231 ;--------------------------------------------------------
                                   1232 	.area XABS    (ABS,XDATA)
                                   1233 ;--------------------------------------------------------
                                   1234 ; external initialized ram data
                                   1235 ;--------------------------------------------------------
                                   1236 	.area XISEG   (XDATA)
                                   1237 	.area HOME    (CODE)
                                   1238 	.area GSINIT0 (CODE)
                                   1239 	.area GSINIT1 (CODE)
                                   1240 	.area GSINIT2 (CODE)
                                   1241 	.area GSINIT3 (CODE)
                                   1242 	.area GSINIT4 (CODE)
                                   1243 	.area GSINIT5 (CODE)
                                   1244 	.area GSINIT  (CODE)
                                   1245 	.area GSFINAL (CODE)
                                   1246 	.area CSEG    (CODE)
                                   1247 ;--------------------------------------------------------
                                   1248 ; interrupt vector 
                                   1249 ;--------------------------------------------------------
                                   1250 	.area HOME    (CODE)
      000000                       1251 __interrupt_vect:
      000000 02 03 11         [24] 1252 	ljmp	__sdcc_gsinit_startup
      000003 32               [24] 1253 	reti
      000004                       1254 	.ds	7
      00000B 02 00 B1         [24] 1255 	ljmp	_wtimer_irq
      00000E                       1256 	.ds	5
      000013 32               [24] 1257 	reti
      000014                       1258 	.ds	7
      00001B 32               [24] 1259 	reti
      00001C                       1260 	.ds	7
      000023 02 11 BF         [24] 1261 	ljmp	_axradio_isr
      000026                       1262 	.ds	5
      00002B 32               [24] 1263 	reti
      00002C                       1264 	.ds	7
      000033 02 3C 46         [24] 1265 	ljmp	_pwrmgmt_irq
      000036                       1266 	.ds	5
      00003B 32               [24] 1267 	reti
      00003C                       1268 	.ds	7
      000043 32               [24] 1269 	reti
      000044                       1270 	.ds	7
      00004B 32               [24] 1271 	reti
      00004C                       1272 	.ds	7
      000053 02 50 1F         [24] 1273 	ljmp	_lcd2_irq
      000056                       1274 	.ds	5
      00005B 02 02 A3         [24] 1275 	ljmp	_uart0_irq
      00005E                       1276 	.ds	5
      000063 02 02 DA         [24] 1277 	ljmp	_uart1_irq
      000066                       1278 	.ds	5
      00006B 32               [24] 1279 	reti
      00006C                       1280 	.ds	7
      000073 32               [24] 1281 	reti
      000074                       1282 	.ds	7
      00007B 32               [24] 1283 	reti
      00007C                       1284 	.ds	7
      000083 32               [24] 1285 	reti
      000084                       1286 	.ds	7
      00008B 32               [24] 1287 	reti
      00008C                       1288 	.ds	7
      000093 32               [24] 1289 	reti
      000094                       1290 	.ds	7
      00009B 32               [24] 1291 	reti
      00009C                       1292 	.ds	7
      0000A3 32               [24] 1293 	reti
      0000A4                       1294 	.ds	7
      0000AB 02 02 6C         [24] 1295 	ljmp	_dbglink_irq
                                   1296 ;--------------------------------------------------------
                                   1297 ; global & static initialisations
                                   1298 ;--------------------------------------------------------
                                   1299 	.area HOME    (CODE)
                                   1300 	.area GSINIT  (CODE)
                                   1301 	.area GSFINAL (CODE)
                                   1302 	.area GSINIT  (CODE)
                                   1303 	.globl __sdcc_gsinit_startup
                                   1304 	.globl __sdcc_program_startup
                                   1305 	.globl __start__stack
                                   1306 	.globl __mcs51_genXINIT
                                   1307 	.globl __mcs51_genXRAMCLEAR
                                   1308 	.globl __mcs51_genRAMCLEAR
                           000000  1309 	C$main.c$66$1$435 ==.
                                   1310 ;	main.c:66: uint8_t __data coldstart = 1; /* caution: initialization with 1 is necessary! Variables are initialized upon _sdcc_external_startup returning 0 -> the coldstart value returned from _sdcc_external startup does not survive in the coldstart case */
      00038A 75 22 01         [24] 1311 	mov	_coldstart,#0x01
                                   1312 	.area GSFINAL (CODE)
      00038D 02 00 AE         [24] 1313 	ljmp	__sdcc_program_startup
                                   1314 ;--------------------------------------------------------
                                   1315 ; Home
                                   1316 ;--------------------------------------------------------
                                   1317 	.area HOME    (CODE)
                                   1318 	.area HOME    (CODE)
      0000AE                       1319 __sdcc_program_startup:
      0000AE 02 42 B9         [24] 1320 	ljmp	_main
                                   1321 ;	return from main will return to caller
                                   1322 ;--------------------------------------------------------
                                   1323 ; code
                                   1324 ;--------------------------------------------------------
                                   1325 	.area CSEG    (CODE)
                                   1326 ;------------------------------------------------------------
                                   1327 ;Allocation info for local variables in function 'pwrmgmt_irq'
                                   1328 ;------------------------------------------------------------
                                   1329 ;pc                        Allocated to registers r7 
                                   1330 ;------------------------------------------------------------
                           000000  1331 	Fmain$pwrmgmt_irq$0$0 ==.
                           000000  1332 	C$main.c$159$0$0 ==.
                                   1333 ;	main.c:159: static void pwrmgmt_irq(void) __interrupt(INT_POWERMGMT)
                                   1334 ;	-----------------------------------------
                                   1335 ;	 function pwrmgmt_irq
                                   1336 ;	-----------------------------------------
      003C46                       1337 _pwrmgmt_irq:
                           000007  1338 	ar7 = 0x07
                           000006  1339 	ar6 = 0x06
                           000005  1340 	ar5 = 0x05
                           000004  1341 	ar4 = 0x04
                           000003  1342 	ar3 = 0x03
                           000002  1343 	ar2 = 0x02
                           000001  1344 	ar1 = 0x01
                           000000  1345 	ar0 = 0x00
      003C46 C0 E0            [24] 1346 	push	acc
      003C48 C0 82            [24] 1347 	push	dpl
      003C4A C0 83            [24] 1348 	push	dph
      003C4C C0 07            [24] 1349 	push	ar7
      003C4E C0 D0            [24] 1350 	push	psw
      003C50 75 D0 00         [24] 1351 	mov	psw,#0x00
                           00000D  1352 	C$main.c$161$1$0 ==.
                                   1353 ;	main.c:161: uint8_t pc = PCON;
                           00000D  1354 	C$main.c$163$1$337 ==.
                                   1355 ;	main.c:163: if (!(pc & 0x80))
      003C53 E5 87            [12] 1356 	mov	a,_PCON
      003C55 FF               [12] 1357 	mov	r7,a
      003C56 20 E7 02         [24] 1358 	jb	acc.7,00102$
                           000013  1359 	C$main.c$164$1$337 ==.
                                   1360 ;	main.c:164: return;
      003C59 80 10            [24] 1361 	sjmp	00106$
      003C5B                       1362 00102$:
                           000015  1363 	C$main.c$166$1$337 ==.
                                   1364 ;	main.c:166: GPIOENABLE = 0;
      003C5B 90 70 0C         [24] 1365 	mov	dptr,#_GPIOENABLE
      003C5E E4               [12] 1366 	clr	a
      003C5F F0               [24] 1367 	movx	@dptr,a
                           00001A  1368 	C$main.c$167$1$337 ==.
                                   1369 ;	main.c:167: IE = EIE = E2IE = 0;
                                   1370 ;	1-genFromRTrack replaced	mov	_E2IE,#0x00
      003C60 F5 A0            [12] 1371 	mov	_E2IE,a
                                   1372 ;	1-genFromRTrack replaced	mov	_EIE,#0x00
      003C62 F5 98            [12] 1373 	mov	_EIE,a
                                   1374 ;	1-genFromRTrack replaced	mov	_IE,#0x00
      003C64 F5 A8            [12] 1375 	mov	_IE,a
      003C66                       1376 00104$:
                           000020  1377 	C$main.c$170$1$337 ==.
                                   1378 ;	main.c:170: PCON |= 0x01;
      003C66 43 87 01         [24] 1379 	orl	_PCON,#0x01
      003C69 80 FB            [24] 1380 	sjmp	00104$
      003C6B                       1381 00106$:
      003C6B D0 D0            [24] 1382 	pop	psw
      003C6D D0 07            [24] 1383 	pop	ar7
      003C6F D0 83            [24] 1384 	pop	dph
      003C71 D0 82            [24] 1385 	pop	dpl
      003C73 D0 E0            [24] 1386 	pop	acc
                           00002F  1387 	C$main.c$171$1$337 ==.
                           00002F  1388 	XFmain$pwrmgmt_irq$0$0 ==.
      003C75 32               [24] 1389 	reti
                                   1390 ;	eliminated unneeded push/pop b
                                   1391 ;------------------------------------------------------------
                                   1392 ;Allocation info for local variables in function 'correct_ber'
                                   1393 ;------------------------------------------------------------
                                   1394 ;x                         Allocated to registers r0 r1 r2 r3 
                                   1395 ;------------------------------------------------------------
                           000030  1396 	Fmain$correct_ber$0$0 ==.
                           000030  1397 	C$main.c$174$1$337 ==.
                                   1398 ;	main.c:174: static void correct_ber(void)
                                   1399 ;	-----------------------------------------
                                   1400 ;	 function correct_ber
                                   1401 ;	-----------------------------------------
      003C76                       1402 _correct_ber:
                           000030  1403 	C$main.c$183$1$339 ==.
                                   1404 ;	main.c:183: x *= errors;
      003C76 85 2C 82         [24] 1405 	mov	dpl,_errors
      003C79 85 2D 83         [24] 1406 	mov	dph,(_errors + 1)
      003C7C 85 2E F0         [24] 1407 	mov	b,(_errors + 2)
      003C7F E5 2F            [12] 1408 	mov	a,(_errors + 3)
      003C81 12 4C C4         [24] 1409 	lcall	___ulong2fs
      003C84 AC 82            [24] 1410 	mov	r4,dpl
      003C86 AD 83            [24] 1411 	mov	r5,dph
      003C88 AE F0            [24] 1412 	mov	r6,b
      003C8A FF               [12] 1413 	mov	r7,a
      003C8B C0 07            [24] 1414 	push	ar7
      003C8D C0 06            [24] 1415 	push	ar6
      003C8F C0 05            [24] 1416 	push	ar5
      003C91 C0 04            [24] 1417 	push	ar4
      003C93 C0 04            [24] 1418 	push	ar4
      003C95 C0 05            [24] 1419 	push	ar5
      003C97 C0 06            [24] 1420 	push	ar6
      003C99 C0 07            [24] 1421 	push	ar7
      003C9B 90 7F C3         [24] 1422 	mov	dptr,#0x7fc3
      003C9E 75 F0 3D         [24] 1423 	mov	b,#0x3d
      003CA1 74 39            [12] 1424 	mov	a,#0x39
      003CA3 12 44 DB         [24] 1425 	lcall	___fsmul
      003CA6 A8 82            [24] 1426 	mov	r0,dpl
      003CA8 A9 83            [24] 1427 	mov	r1,dph
      003CAA AA F0            [24] 1428 	mov	r2,b
      003CAC FB               [12] 1429 	mov	r3,a
      003CAD E5 81            [12] 1430 	mov	a,sp
      003CAF 24 FC            [12] 1431 	add	a,#0xfc
      003CB1 F5 81            [12] 1432 	mov	sp,a
                           00006D  1433 	C$main.c$184$1$339 ==.
                                   1434 ;	main.c:184: x *= x;
      003CB3 C0 00            [24] 1435 	push	ar0
      003CB5 C0 01            [24] 1436 	push	ar1
      003CB7 C0 02            [24] 1437 	push	ar2
      003CB9 C0 03            [24] 1438 	push	ar3
      003CBB 88 82            [24] 1439 	mov	dpl,r0
      003CBD 89 83            [24] 1440 	mov	dph,r1
      003CBF 8A F0            [24] 1441 	mov	b,r2
      003CC1 EB               [12] 1442 	mov	a,r3
      003CC2 12 44 DB         [24] 1443 	lcall	___fsmul
      003CC5 A8 82            [24] 1444 	mov	r0,dpl
      003CC7 A9 83            [24] 1445 	mov	r1,dph
      003CC9 AA F0            [24] 1446 	mov	r2,b
      003CCB FB               [12] 1447 	mov	r3,a
      003CCC E5 81            [12] 1448 	mov	a,sp
      003CCE 24 FC            [12] 1449 	add	a,#0xfc
      003CD0 F5 81            [12] 1450 	mov	sp,a
                           00008C  1451 	C$main.c$185$1$339 ==.
                                   1452 ;	main.c:185: x *= x;
      003CD2 C0 00            [24] 1453 	push	ar0
      003CD4 C0 01            [24] 1454 	push	ar1
      003CD6 C0 02            [24] 1455 	push	ar2
      003CD8 C0 03            [24] 1456 	push	ar3
      003CDA 88 82            [24] 1457 	mov	dpl,r0
      003CDC 89 83            [24] 1458 	mov	dph,r1
      003CDE 8A F0            [24] 1459 	mov	b,r2
      003CE0 EB               [12] 1460 	mov	a,r3
      003CE1 12 44 DB         [24] 1461 	lcall	___fsmul
      003CE4 A8 82            [24] 1462 	mov	r0,dpl
      003CE6 A9 83            [24] 1463 	mov	r1,dph
      003CE8 AA F0            [24] 1464 	mov	r2,b
      003CEA FB               [12] 1465 	mov	r3,a
      003CEB E5 81            [12] 1466 	mov	a,sp
      003CED 24 FC            [12] 1467 	add	a,#0xfc
      003CEF F5 81            [12] 1468 	mov	sp,a
                           0000AB  1469 	C$main.c$186$1$339 ==.
                                   1470 ;	main.c:186: x += 0.333333333333333;
      003CF1 74 AB            [12] 1471 	mov	a,#0xab
      003CF3 C0 E0            [24] 1472 	push	acc
      003CF5 14               [12] 1473 	dec	a
      003CF6 C0 E0            [24] 1474 	push	acc
      003CF8 C0 E0            [24] 1475 	push	acc
      003CFA 74 3E            [12] 1476 	mov	a,#0x3e
      003CFC C0 E0            [24] 1477 	push	acc
      003CFE 88 82            [24] 1478 	mov	dpl,r0
      003D00 89 83            [24] 1479 	mov	dph,r1
      003D02 8A F0            [24] 1480 	mov	b,r2
      003D04 EB               [12] 1481 	mov	a,r3
      003D05 12 52 E9         [24] 1482 	lcall	___fsadd
      003D08 A8 82            [24] 1483 	mov	r0,dpl
      003D0A A9 83            [24] 1484 	mov	r1,dph
      003D0C AA F0            [24] 1485 	mov	r2,b
      003D0E FB               [12] 1486 	mov	r3,a
      003D0F E5 81            [12] 1487 	mov	a,sp
      003D11 24 FC            [12] 1488 	add	a,#0xfc
      003D13 F5 81            [12] 1489 	mov	sp,a
      003D15 D0 04            [24] 1490 	pop	ar4
      003D17 D0 05            [24] 1491 	pop	ar5
      003D19 D0 06            [24] 1492 	pop	ar6
      003D1B D0 07            [24] 1493 	pop	ar7
                           0000D7  1494 	C$main.c$187$1$339 ==.
                                   1495 ;	main.c:187: errors *= x;
      003D1D C0 00            [24] 1496 	push	ar0
      003D1F C0 01            [24] 1497 	push	ar1
      003D21 C0 02            [24] 1498 	push	ar2
      003D23 C0 03            [24] 1499 	push	ar3
      003D25 8C 82            [24] 1500 	mov	dpl,r4
      003D27 8D 83            [24] 1501 	mov	dph,r5
      003D29 8E F0            [24] 1502 	mov	b,r6
      003D2B EF               [12] 1503 	mov	a,r7
      003D2C 12 44 DB         [24] 1504 	lcall	___fsmul
      003D2F AC 82            [24] 1505 	mov	r4,dpl
      003D31 AD 83            [24] 1506 	mov	r5,dph
      003D33 AE F0            [24] 1507 	mov	r6,b
      003D35 FF               [12] 1508 	mov	r7,a
      003D36 E5 81            [12] 1509 	mov	a,sp
      003D38 24 FC            [12] 1510 	add	a,#0xfc
      003D3A F5 81            [12] 1511 	mov	sp,a
      003D3C 8C 82            [24] 1512 	mov	dpl,r4
      003D3E 8D 83            [24] 1513 	mov	dph,r5
      003D40 8E F0            [24] 1514 	mov	b,r6
      003D42 EF               [12] 1515 	mov	a,r7
      003D43 12 4C D7         [24] 1516 	lcall	___fs2ulong
      003D46 85 82 2C         [24] 1517 	mov	_errors,dpl
      003D49 85 83 2D         [24] 1518 	mov	(_errors + 1),dph
      003D4C 85 F0 2E         [24] 1519 	mov	(_errors + 2),b
      003D4F F5 2F            [12] 1520 	mov	(_errors + 3),a
                           00010B  1521 	C$main.c$193$1$339 ==.
                                   1522 ;	main.c:193: }
                           00010B  1523 	C$main.c$194$1$339 ==.
                           00010B  1524 	XFmain$correct_ber$0$0 ==.
      003D51 22               [24] 1525 	ret
                                   1526 ;------------------------------------------------------------
                                   1527 ;Allocation info for local variables in function 'process_ber'
                                   1528 ;------------------------------------------------------------
                                   1529 ;st                        Allocated to registers r6 r7 
                                   1530 ;fourfsk                   Allocated to registers 
                                   1531 ;i                         Allocated with name '_process_ber_i_2_344'
                                   1532 ;p                         Allocated to registers 
                                   1533 ;databyte                  Allocated to registers 
                                   1534 ;databyte                  Allocated to registers 
                                   1535 ;databyte                  Allocated to registers 
                                   1536 ;databyte                  Allocated to registers 
                                   1537 ;databyte                  Allocated to registers 
                                   1538 ;sloc0                     Allocated with name '_process_ber_sloc0_1_0'
                                   1539 ;sloc1                     Allocated with name '_process_ber_sloc1_1_0'
                                   1540 ;------------------------------------------------------------
                           00010C  1541 	Fmain$process_ber$0$0 ==.
                           00010C  1542 	C$main.c$196$1$339 ==.
                                   1543 ;	main.c:196: static void process_ber(struct axradio_status __xdata *st)
                                   1544 ;	-----------------------------------------
                                   1545 ;	 function process_ber
                                   1546 ;	-----------------------------------------
      003D52                       1547 _process_ber:
      003D52 AE 82            [24] 1548 	mov	r6,dpl
      003D54 AF 83            [24] 1549 	mov	r7,dph
                           000110  1550 	C$main.c$198$1$343 ==.
                                   1551 ;	main.c:198: uint8_t fourfsk = axradio_check_fourfsk_modulation();
      003D56 C0 07            [24] 1552 	push	ar7
      003D58 C0 06            [24] 1553 	push	ar6
      003D5A 12 3A 50         [24] 1554 	lcall	_axradio_check_fourfsk_modulation
      003D5D D0 06            [24] 1555 	pop	ar6
      003D5F D0 07            [24] 1556 	pop	ar7
                           00011B  1557 	C$main.c$200$2$344 ==.
                                   1558 ;	main.c:200: uint8_t i = st->u.rx.pktlen;
      003D61 74 06            [12] 1559 	mov	a,#0x06
      003D63 2E               [12] 1560 	add	a,r6
      003D64 FE               [12] 1561 	mov	r6,a
      003D65 E4               [12] 1562 	clr	a
      003D66 3F               [12] 1563 	addc	a,r7
      003D67 FF               [12] 1564 	mov	r7,a
      003D68 74 18            [12] 1565 	mov	a,#0x18
      003D6A 2E               [12] 1566 	add	a,r6
      003D6B F5 82            [12] 1567 	mov	dpl,a
      003D6D E4               [12] 1568 	clr	a
      003D6E 3F               [12] 1569 	addc	a,r7
      003D6F F5 83            [12] 1570 	mov	dph,a
      003D71 E0               [24] 1571 	movx	a,@dptr
      003D72 FC               [12] 1572 	mov	r4,a
      003D73 A3               [24] 1573 	inc	dptr
      003D74 E0               [24] 1574 	movx	a,@dptr
      003D75 8C 35            [24] 1575 	mov	_process_ber_i_2_344,r4
                           000131  1576 	C$main.c$201$2$344 ==.
                                   1577 ;	main.c:201: bytes -= i;
      003D77 AA 35            [24] 1578 	mov	r2,_process_ber_i_2_344
      003D79 E4               [12] 1579 	clr	a
      003D7A FB               [12] 1580 	mov	r3,a
      003D7B FC               [12] 1581 	mov	r4,a
      003D7C FD               [12] 1582 	mov	r5,a
      003D7D E5 28            [12] 1583 	mov	a,_bytes
      003D7F C3               [12] 1584 	clr	c
      003D80 9A               [12] 1585 	subb	a,r2
      003D81 F5 28            [12] 1586 	mov	_bytes,a
      003D83 E5 29            [12] 1587 	mov	a,(_bytes + 1)
      003D85 9B               [12] 1588 	subb	a,r3
      003D86 F5 29            [12] 1589 	mov	(_bytes + 1),a
      003D88 E5 2A            [12] 1590 	mov	a,(_bytes + 2)
      003D8A 9C               [12] 1591 	subb	a,r4
      003D8B F5 2A            [12] 1592 	mov	(_bytes + 2),a
      003D8D E5 2B            [12] 1593 	mov	a,(_bytes + 3)
      003D8F 9D               [12] 1594 	subb	a,r5
      003D90 F5 2B            [12] 1595 	mov	(_bytes + 3),a
                           00014C  1596 	C$main.c$202$2$344 ==.
                                   1597 ;	main.c:202: acquire_agc = (0 > (int32_t)bytes);
      003D92 AA 28            [24] 1598 	mov	r2,_bytes
      003D94 AB 29            [24] 1599 	mov	r3,(_bytes + 1)
      003D96 AC 2A            [24] 1600 	mov	r4,(_bytes + 2)
      003D98 E5 2B            [12] 1601 	mov	a,(_bytes + 3)
      003D9A FD               [12] 1602 	mov	r5,a
      003D9B 33               [12] 1603 	rlc	a
      003D9C E4               [12] 1604 	clr	a
      003D9D 33               [12] 1605 	rlc	a
                           000158  1606 	C$main.c$204$2$344 ==.
                                   1607 ;	main.c:204: if (acquire_agc)
      003D9E F5 34            [12] 1608 	mov	_acquire_agc,a
      003DA0 60 10            [24] 1609 	jz	00102$
                           00015C  1610 	C$main.c$206$3$345 ==.
                                   1611 ;	main.c:206: i += (uint8_t)bytes;
      003DA2 E5 28            [12] 1612 	mov	a,_bytes
      003DA4 FD               [12] 1613 	mov	r5,a
      003DA5 25 35            [12] 1614 	add	a,_process_ber_i_2_344
      003DA7 F5 35            [12] 1615 	mov	_process_ber_i_2_344,a
                           000163  1616 	C$main.c$207$3$345 ==.
                                   1617 ;	main.c:207: bytes = 0;
      003DA9 E4               [12] 1618 	clr	a
      003DAA F5 28            [12] 1619 	mov	_bytes,a
      003DAC F5 29            [12] 1620 	mov	(_bytes + 1),a
      003DAE F5 2A            [12] 1621 	mov	(_bytes + 2),a
      003DB0 F5 2B            [12] 1622 	mov	(_bytes + 3),a
      003DB2                       1623 00102$:
                           00016C  1624 	C$main.c$210$2$344 ==.
                                   1625 ;	main.c:210: if (i)
      003DB2 E5 35            [12] 1626 	mov	a,_process_ber_i_2_344
      003DB4 70 03            [24] 1627 	jnz	00161$
      003DB6 02 3E 3F         [24] 1628 	ljmp	00126$
      003DB9                       1629 00161$:
                           000173  1630 	C$main.c$212$3$346 ==.
                                   1631 ;	main.c:212: const uint8_t __xdata *p = st->u.rx.pktdata;
      003DB9 74 16            [12] 1632 	mov	a,#0x16
      003DBB 2E               [12] 1633 	add	a,r6
      003DBC F5 82            [12] 1634 	mov	dpl,a
      003DBE E4               [12] 1635 	clr	a
      003DBF 3F               [12] 1636 	addc	a,r7
      003DC0 F5 83            [12] 1637 	mov	dph,a
      003DC2 E0               [24] 1638 	movx	a,@dptr
      003DC3 FE               [12] 1639 	mov	r6,a
      003DC4 A3               [24] 1640 	inc	dptr
      003DC5 E0               [24] 1641 	movx	a,@dptr
      003DC6 FF               [12] 1642 	mov	r7,a
                           000181  1643 	C$main.c$273$5$353 ==.
                                   1644 ;	main.c:273: do
      003DC7 85 35 37         [24] 1645 	mov	_process_ber_sloc1_1_0,_process_ber_i_2_344
      003DCA                       1646 00121$:
                           000184  1647 	C$main.c$276$5$353 ==.
                                   1648 ;	main.c:276: scr.b.b0 = scr.b.b1;
      003DCA AC 25            [24] 1649 	mov	r4,(_scr + 0x0001)
      003DCC 8C 24            [24] 1650 	mov	_scr,r4
                           000188  1651 	C$main.c$277$5$353 ==.
                                   1652 ;	main.c:277: scr.b.b1 = scr.b.b2;
      003DCE AC 26            [24] 1653 	mov	r4,(_scr + 0x0002)
      003DD0 8C 25            [24] 1654 	mov	(_scr + 0x0001),r4
                           00018C  1655 	C$main.c$278$5$353 ==.
                                   1656 ;	main.c:278: scr.b.b2 = *p++;
      003DD2 8E 82            [24] 1657 	mov	dpl,r6
      003DD4 8F 83            [24] 1658 	mov	dph,r7
      003DD6 E0               [24] 1659 	movx	a,@dptr
      003DD7 FC               [12] 1660 	mov	r4,a
      003DD8 A3               [24] 1661 	inc	dptr
      003DD9 AE 82            [24] 1662 	mov	r6,dpl
      003DDB AF 83            [24] 1663 	mov	r7,dph
      003DDD 8C 26            [24] 1664 	mov	(_scr + 0x0002),r4
                           000199  1665 	C$main.c$279$5$353 ==.
                                   1666 ;	main.c:279: databyte = (uint8_t)scr.l ^ (uint8_t)(scr.l >> 5) ^ (uint8_t)(scr.l >> 9);
      003DDF 85 24 36         [24] 1667 	mov	_process_ber_sloc0_1_0,_scr
      003DE2 AA 24            [24] 1668 	mov	r2,_scr
      003DE4 E5 25            [12] 1669 	mov	a,(_scr + 1)
      003DE6 C4               [12] 1670 	swap	a
      003DE7 03               [12] 1671 	rr	a
      003DE8 CA               [12] 1672 	xch	a,r2
      003DE9 C4               [12] 1673 	swap	a
      003DEA 03               [12] 1674 	rr	a
      003DEB 54 07            [12] 1675 	anl	a,#0x07
      003DED 6A               [12] 1676 	xrl	a,r2
      003DEE CA               [12] 1677 	xch	a,r2
      003DEF 54 07            [12] 1678 	anl	a,#0x07
      003DF1 CA               [12] 1679 	xch	a,r2
      003DF2 6A               [12] 1680 	xrl	a,r2
      003DF3 CA               [12] 1681 	xch	a,r2
      003DF4 FB               [12] 1682 	mov	r3,a
      003DF5 E5 26            [12] 1683 	mov	a,(_scr + 2)
      003DF7 C4               [12] 1684 	swap	a
      003DF8 03               [12] 1685 	rr	a
      003DF9 54 F8            [12] 1686 	anl	a,#0xf8
      003DFB 4B               [12] 1687 	orl	a,r3
      003DFC AC 26            [24] 1688 	mov	r4,(_scr + 2)
      003DFE E5 27            [12] 1689 	mov	a,(_scr + 3)
      003E00 C4               [12] 1690 	swap	a
      003E01 03               [12] 1691 	rr	a
      003E02 CC               [12] 1692 	xch	a,r4
      003E03 C4               [12] 1693 	swap	a
      003E04 03               [12] 1694 	rr	a
      003E05 54 07            [12] 1695 	anl	a,#0x07
      003E07 6C               [12] 1696 	xrl	a,r4
      003E08 CC               [12] 1697 	xch	a,r4
      003E09 54 07            [12] 1698 	anl	a,#0x07
      003E0B CC               [12] 1699 	xch	a,r4
      003E0C 6C               [12] 1700 	xrl	a,r4
      003E0D CC               [12] 1701 	xch	a,r4
      003E0E EA               [12] 1702 	mov	a,r2
      003E0F 62 36            [12] 1703 	xrl	_process_ber_sloc0_1_0,a
      003E11 E5 27            [12] 1704 	mov	a,(_scr + 3)
      003E13 C3               [12] 1705 	clr	c
      003E14 13               [12] 1706 	rrc	a
      003E15 E5 26            [12] 1707 	mov	a,(_scr + 2)
      003E17 13               [12] 1708 	rrc	a
      003E18 E5 25            [12] 1709 	mov	a,(_scr + 1)
      003E1A 13               [12] 1710 	rrc	a
      003E1B 65 36            [12] 1711 	xrl	a,_process_ber_sloc0_1_0
      003E1D F5 82            [12] 1712 	mov	dpl,a
                           0001D9  1713 	C$main.c$280$5$353 ==.
                                   1714 ;	main.c:280: errors += hweight8(databyte);
      003E1F 12 48 4E         [24] 1715 	lcall	_hweight8
      003E22 AD 82            [24] 1716 	mov	r5,dpl
      003E24 E4               [12] 1717 	clr	a
      003E25 FC               [12] 1718 	mov	r4,a
      003E26 FB               [12] 1719 	mov	r3,a
      003E27 FA               [12] 1720 	mov	r2,a
      003E28 ED               [12] 1721 	mov	a,r5
      003E29 25 2C            [12] 1722 	add	a,_errors
      003E2B F5 2C            [12] 1723 	mov	_errors,a
      003E2D EC               [12] 1724 	mov	a,r4
      003E2E 35 2D            [12] 1725 	addc	a,(_errors + 1)
      003E30 F5 2D            [12] 1726 	mov	(_errors + 1),a
      003E32 EB               [12] 1727 	mov	a,r3
      003E33 35 2E            [12] 1728 	addc	a,(_errors + 2)
      003E35 F5 2E            [12] 1729 	mov	(_errors + 2),a
      003E37 EA               [12] 1730 	mov	a,r2
      003E38 35 2F            [12] 1731 	addc	a,(_errors + 3)
      003E3A F5 2F            [12] 1732 	mov	(_errors + 3),a
                           0001F6  1733 	C$main.c$282$4$347 ==.
                                   1734 ;	main.c:282: while (--i);
      003E3C D5 37 8B         [24] 1735 	djnz	_process_ber_sloc1_1_0,00121$
                           0001F9  1736 	C$main.c$287$2$344 ==.
                                   1737 ;	main.c:287: }
      003E3F                       1738 00126$:
                           0001F9  1739 	C$main.c$291$1$343 ==.
                                   1740 ;	main.c:291: if (!acquire_agc)
      003E3F E5 34            [12] 1741 	mov	a,_acquire_agc
                           0001FB  1742 	C$main.c$292$1$343 ==.
                                   1743 ;	main.c:292: return;
      003E41 60 2B            [24] 1744 	jz	00138$
                           0001FD  1745 	C$main.c$295$1$343 ==.
                                   1746 ;	main.c:295: if (errors > (((uint32_t)NUMBYTES) << 2))
      003E43 C3               [12] 1747 	clr	c
      003E44 74 88            [12] 1748 	mov	a,#0x88
      003E46 95 2C            [12] 1749 	subb	a,_errors
      003E48 74 13            [12] 1750 	mov	a,#0x13
      003E4A 95 2D            [12] 1751 	subb	a,(_errors + 1)
      003E4C E4               [12] 1752 	clr	a
      003E4D 95 2E            [12] 1753 	subb	a,(_errors + 2)
      003E4F E4               [12] 1754 	clr	a
      003E50 95 2F            [12] 1755 	subb	a,(_errors + 3)
      003E52 50 17            [24] 1756 	jnc	00136$
                           00020E  1757 	C$main.c$296$1$343 ==.
                                   1758 ;	main.c:296: errors = (((uint32_t)NUMBYTES) << 3) - errors;
      003E54 74 10            [12] 1759 	mov	a,#0x10
      003E56 C3               [12] 1760 	clr	c
      003E57 95 2C            [12] 1761 	subb	a,_errors
      003E59 F5 2C            [12] 1762 	mov	_errors,a
      003E5B 74 27            [12] 1763 	mov	a,#0x27
      003E5D 95 2D            [12] 1764 	subb	a,(_errors + 1)
      003E5F F5 2D            [12] 1765 	mov	(_errors + 1),a
      003E61 E4               [12] 1766 	clr	a
      003E62 95 2E            [12] 1767 	subb	a,(_errors + 2)
      003E64 F5 2E            [12] 1768 	mov	(_errors + 2),a
      003E66 E4               [12] 1769 	clr	a
      003E67 95 2F            [12] 1770 	subb	a,(_errors + 3)
      003E69 F5 2F            [12] 1771 	mov	(_errors + 3),a
                           000225  1772 	C$main.c$304$1$343 ==.
                                   1773 ;	main.c:304: errors = errors2;
      003E6B                       1774 00136$:
                           000225  1775 	C$main.c$307$1$343 ==.
                                   1776 ;	main.c:307: correct_ber();
      003E6B 12 3C 76         [24] 1777 	lcall	_correct_ber
      003E6E                       1778 00138$:
                           000228  1779 	C$main.c$308$1$343 ==.
                           000228  1780 	XFmain$process_ber$0$0 ==.
      003E6E 22               [24] 1781 	ret
                                   1782 ;------------------------------------------------------------
                                   1783 ;Allocation info for local variables in function 'dump_pkt'
                                   1784 ;------------------------------------------------------------
                                   1785 ;st                        Allocated to registers 
                                   1786 ;------------------------------------------------------------
                           000229  1787 	Fmain$dump_pkt$0$0 ==.
                           000229  1788 	C$main.c$310$1$343 ==.
                                   1789 ;	main.c:310: static void dump_pkt(struct axradio_status __xdata *st)
                                   1790 ;	-----------------------------------------
                                   1791 ;	 function dump_pkt
                                   1792 ;	-----------------------------------------
      003E6F                       1793 _dump_pkt:
                           000229  1794 	C$main.c$336$1$343 ==.
                                   1795 ;	main.c:336: }
                           000229  1796 	C$main.c$336$1$343 ==.
                           000229  1797 	XFmain$dump_pkt$0$0 ==.
      003E6F 22               [24] 1798 	ret
                                   1799 ;------------------------------------------------------------
                                   1800 ;Allocation info for local variables in function 'display_ber'
                                   1801 ;------------------------------------------------------------
                                   1802 ;st                        Allocated to registers r6 r7 
                                   1803 ;freqoffs                  Allocated to registers r2 r3 r4 r5 
                                   1804 ;------------------------------------------------------------
                           00022A  1805 	Fmain$display_ber$0$0 ==.
                           00022A  1806 	C$main.c$338$1$343 ==.
                                   1807 ;	main.c:338: static void display_ber(struct axradio_status __xdata *st)
                                   1808 ;	-----------------------------------------
                                   1809 ;	 function display_ber
                                   1810 ;	-----------------------------------------
      003E70                       1811 _display_ber:
      003E70 AE 82            [24] 1812 	mov	r6,dpl
      003E72 AF 83            [24] 1813 	mov	r7,dph
                           00022E  1814 	C$main.c$340$1$358 ==.
                                   1815 ;	main.c:340: int32_t freqoffs = axradio_conv_freq_tohz(st->u.rx.phy.offset);
      003E74 74 06            [12] 1816 	mov	a,#0x06
      003E76 2E               [12] 1817 	add	a,r6
      003E77 FE               [12] 1818 	mov	r6,a
      003E78 E4               [12] 1819 	clr	a
      003E79 3F               [12] 1820 	addc	a,r7
      003E7A FF               [12] 1821 	mov	r7,a
      003E7B 8E 82            [24] 1822 	mov	dpl,r6
      003E7D 8F 83            [24] 1823 	mov	dph,r7
      003E7F A3               [24] 1824 	inc	dptr
      003E80 A3               [24] 1825 	inc	dptr
      003E81 E0               [24] 1826 	movx	a,@dptr
      003E82 FA               [12] 1827 	mov	r2,a
      003E83 A3               [24] 1828 	inc	dptr
      003E84 E0               [24] 1829 	movx	a,@dptr
      003E85 FB               [12] 1830 	mov	r3,a
      003E86 A3               [24] 1831 	inc	dptr
      003E87 E0               [24] 1832 	movx	a,@dptr
      003E88 FC               [12] 1833 	mov	r4,a
      003E89 A3               [24] 1834 	inc	dptr
      003E8A E0               [24] 1835 	movx	a,@dptr
      003E8B 8A 82            [24] 1836 	mov	dpl,r2
      003E8D 8B 83            [24] 1837 	mov	dph,r3
      003E8F 8C F0            [24] 1838 	mov	b,r4
      003E91 C0 07            [24] 1839 	push	ar7
      003E93 C0 06            [24] 1840 	push	ar6
      003E95 12 07 AC         [24] 1841 	lcall	_axradio_conv_freq_tohz
      003E98 AA 82            [24] 1842 	mov	r2,dpl
      003E9A AB 83            [24] 1843 	mov	r3,dph
      003E9C AC F0            [24] 1844 	mov	r4,b
      003E9E FD               [12] 1845 	mov	r5,a
                           000259  1846 	C$main.c$341$1$358 ==.
                                   1847 ;	main.c:341: display_setpos(0x44);
      003E9F 75 82 44         [24] 1848 	mov	dpl,#0x44
      003EA2 C0 05            [24] 1849 	push	ar5
      003EA4 C0 04            [24] 1850 	push	ar4
      003EA6 C0 03            [24] 1851 	push	ar3
      003EA8 C0 02            [24] 1852 	push	ar2
      003EAA 12 43 A8         [24] 1853 	lcall	_lcd2_setpos
                           000267  1854 	C$main.c$342$1$358 ==.
                                   1855 ;	main.c:342: display_writestr("0.");
      003EAD 90 5C D7         [24] 1856 	mov	dptr,#___str_0
      003EB0 75 F0 80         [24] 1857 	mov	b,#0x80
      003EB3 12 54 D0         [24] 1858 	lcall	_lcd2_writestr
                           000270  1859 	C$main.c$343$1$358 ==.
                                   1860 ;	main.c:343: display_writenum32(errors, BERDIGITS, WRNUM_PADZERO);
      003EB6 74 08            [12] 1861 	mov	a,#0x08
      003EB8 C0 E0            [24] 1862 	push	acc
      003EBA 03               [12] 1863 	rr	a
      003EBB C0 E0            [24] 1864 	push	acc
      003EBD 85 2C 82         [24] 1865 	mov	dpl,_errors
      003EC0 85 2D 83         [24] 1866 	mov	dph,(_errors + 1)
      003EC3 85 2E F0         [24] 1867 	mov	b,(_errors + 2)
      003EC6 E5 2F            [12] 1868 	mov	a,(_errors + 3)
      003EC8 12 43 B3         [24] 1869 	lcall	_lcd2_writenum32
      003ECB 15 81            [12] 1870 	dec	sp
      003ECD 15 81            [12] 1871 	dec	sp
                           000289  1872 	C$main.c$345$1$358 ==.
                                   1873 ;	main.c:345: display_setpos(0x00);
      003ECF 75 82 00         [24] 1874 	mov	dpl,#0x00
      003ED2 12 43 A8         [24] 1875 	lcall	_lcd2_setpos
                           00028F  1876 	C$main.c$346$1$358 ==.
                                   1877 ;	main.c:346: display_writestr("O:");
      003ED5 90 5C DA         [24] 1878 	mov	dptr,#___str_1
      003ED8 75 F0 80         [24] 1879 	mov	b,#0x80
      003EDB 12 54 D0         [24] 1880 	lcall	_lcd2_writestr
      003EDE D0 02            [24] 1881 	pop	ar2
      003EE0 D0 03            [24] 1882 	pop	ar3
      003EE2 D0 04            [24] 1883 	pop	ar4
      003EE4 D0 05            [24] 1884 	pop	ar5
                           0002A0  1885 	C$main.c$347$1$358 ==.
                                   1886 ;	main.c:347: display_writenum32(freqoffs, 6, WRNUM_SIGNED);
      003EE6 74 01            [12] 1887 	mov	a,#0x01
      003EE8 C0 E0            [24] 1888 	push	acc
      003EEA 74 06            [12] 1889 	mov	a,#0x06
      003EEC C0 E0            [24] 1890 	push	acc
      003EEE 8A 82            [24] 1891 	mov	dpl,r2
      003EF0 8B 83            [24] 1892 	mov	dph,r3
      003EF2 8C F0            [24] 1893 	mov	b,r4
      003EF4 ED               [12] 1894 	mov	a,r5
      003EF5 12 43 B3         [24] 1895 	lcall	_lcd2_writenum32
      003EF8 15 81            [12] 1896 	dec	sp
      003EFA 15 81            [12] 1897 	dec	sp
                           0002B6  1898 	C$main.c$349$1$358 ==.
                                   1899 ;	main.c:349: display_setpos(0x0c);
      003EFC 75 82 0C         [24] 1900 	mov	dpl,#0x0c
      003EFF 12 43 A8         [24] 1901 	lcall	_lcd2_setpos
      003F02 D0 06            [24] 1902 	pop	ar6
      003F04 D0 07            [24] 1903 	pop	ar7
                           0002C0  1904 	C$main.c$350$1$358 ==.
                                   1905 ;	main.c:350: display_writenum16(st->u.rx.phy.rssi, 4, WRNUM_SIGNED);
      003F06 8E 82            [24] 1906 	mov	dpl,r6
      003F08 8F 83            [24] 1907 	mov	dph,r7
      003F0A E0               [24] 1908 	movx	a,@dptr
      003F0B FE               [12] 1909 	mov	r6,a
      003F0C A3               [24] 1910 	inc	dptr
      003F0D E0               [24] 1911 	movx	a,@dptr
      003F0E FF               [12] 1912 	mov	r7,a
      003F0F 74 01            [12] 1913 	mov	a,#0x01
      003F11 C0 E0            [24] 1914 	push	acc
      003F13 74 04            [12] 1915 	mov	a,#0x04
      003F15 C0 E0            [24] 1916 	push	acc
      003F17 8E 82            [24] 1917 	mov	dpl,r6
      003F19 8F 83            [24] 1918 	mov	dph,r7
      003F1B 12 45 7E         [24] 1919 	lcall	_lcd2_writenum16
      003F1E 15 81            [12] 1920 	dec	sp
      003F20 15 81            [12] 1921 	dec	sp
                           0002DC  1922 	C$main.c$362$1$358 ==.
                           0002DC  1923 	XFmain$display_ber$0$0 ==.
      003F22 22               [24] 1924 	ret
                                   1925 ;------------------------------------------------------------
                                   1926 ;Allocation info for local variables in function 'axradio_statuschange'
                                   1927 ;------------------------------------------------------------
                                   1928 ;st                        Allocated to registers r6 r7 
                                   1929 ;fourfsk                   Allocated to registers 
                                   1930 ;i                         Allocated to registers 
                                   1931 ;i                         Allocated to registers 
                                   1932 ;i                         Allocated to registers r2 
                                   1933 ;p                         Allocated to registers r4 r5 
                                   1934 ;------------------------------------------------------------
                           0002DD  1935 	G$axradio_statuschange$0$0 ==.
                           0002DD  1936 	C$main.c$364$1$358 ==.
                                   1937 ;	main.c:364: void axradio_statuschange(struct axradio_status __xdata *st)
                                   1938 ;	-----------------------------------------
                                   1939 ;	 function axradio_statuschange
                                   1940 ;	-----------------------------------------
      003F23                       1941 _axradio_statuschange:
      003F23 AE 82            [24] 1942 	mov	r6,dpl
      003F25 AF 83            [24] 1943 	mov	r7,dph
                           0002E1  1944 	C$main.c$366$1$360 ==.
                                   1945 ;	main.c:366: uint8_t fourfsk = axradio_check_fourfsk_modulation();
      003F27 C0 07            [24] 1946 	push	ar7
      003F29 C0 06            [24] 1947 	push	ar6
      003F2B 12 3A 50         [24] 1948 	lcall	_axradio_check_fourfsk_modulation
      003F2E D0 06            [24] 1949 	pop	ar6
      003F30 D0 07            [24] 1950 	pop	ar7
                           0002EC  1951 	C$main.c$367$1$360 ==.
                                   1952 ;	main.c:367: switch (st->status)
      003F32 8E 82            [24] 1953 	mov	dpl,r6
      003F34 8F 83            [24] 1954 	mov	dph,r7
      003F36 E0               [24] 1955 	movx	a,@dptr
      003F37 FD               [12] 1956 	mov	r5,a
      003F38 60 17            [24] 1957 	jz	00130$
      003F3A BD 03 02         [24] 1958 	cjne	r5,#0x03,00187$
      003F3D 80 08            [24] 1959 	sjmp	00105$
      003F3F                       1960 00187$:
      003F3F BD 04 02         [24] 1961 	cjne	r5,#0x04,00188$
      003F42 80 08            [24] 1962 	sjmp	00112$
      003F44                       1963 00188$:
      003F44 02 3F F2         [24] 1964 	ljmp	00161$
                           000301  1965 	C$main.c$370$2$361 ==.
                                   1966 ;	main.c:370: led0_on();
      003F47                       1967 00105$:
      003F47 D2 93            [12] 1968 	setb	_PORTC_3
                           000303  1969 	C$main.c$371$2$361 ==.
                                   1970 ;	main.c:371: break;
      003F49 02 3F F2         [24] 1971 	ljmp	00161$
                           000306  1972 	C$main.c$374$2$361 ==.
                                   1973 ;	main.c:374: led0_off();
      003F4C                       1974 00112$:
      003F4C C2 93            [12] 1975 	clr	_PORTC_3
                           000308  1976 	C$main.c$375$2$361 ==.
                                   1977 ;	main.c:375: break;
      003F4E 02 3F F2         [24] 1978 	ljmp	00161$
                           00030B  1979 	C$main.c$441$2$361 ==.
                                   1980 ;	main.c:441: case AXRADIO_STAT_RECEIVE:
      003F51                       1981 00130$:
                           00030B  1982 	C$main.c$443$3$373 ==.
                                   1983 ;	main.c:443: if (acquire_agc == 1)
      003F51 74 01            [12] 1984 	mov	a,#0x01
      003F53 B5 34 0B         [24] 1985 	cjne	a,_acquire_agc,00138$
                           000310  1986 	C$main.c$446$6$376 ==.
                                   1987 ;	main.c:446: led0_off();
      003F56 C2 93            [12] 1988 	clr	_PORTC_3
                           000312  1989 	C$main.c$447$4$374 ==.
                                   1990 ;	main.c:447: acquire_agc = 2;
      003F58 75 34 02         [24] 1991 	mov	_acquire_agc,#0x02
                           000315  1992 	C$main.c$448$4$374 ==.
                                   1993 ;	main.c:448: axradio_agc_freeze();
      003F5B 12 39 55         [24] 1994 	lcall	_axradio_agc_freeze
                           000318  1995 	C$main.c$449$4$374 ==.
                                   1996 ;	main.c:449: break;
      003F5E 02 3F F2         [24] 1997 	ljmp	00161$
      003F61                       1998 00138$:
                           00031B  1999 	C$main.c$452$3$373 ==.
                                   2000 ;	main.c:452: if (acquire_agc == 2)
      003F61 74 02            [12] 2001 	mov	a,#0x02
      003F63 B5 34 4A         [24] 2002 	cjne	a,_acquire_agc,00150$
                           000320  2003 	C$main.c$455$4$377 ==.
                                   2004 ;	main.c:455: acquire_agc = 0;
      003F66 75 34 00         [24] 2005 	mov	_acquire_agc,#0x00
                           000323  2006 	C$main.c$464$6$379 ==.
                                   2007 ;	main.c:464: uint8_t i = st->u.rx.pktlen;
      003F69 74 06            [12] 2008 	mov	a,#0x06
      003F6B 2E               [12] 2009 	add	a,r6
      003F6C FC               [12] 2010 	mov	r4,a
      003F6D E4               [12] 2011 	clr	a
      003F6E 3F               [12] 2012 	addc	a,r7
      003F6F FD               [12] 2013 	mov	r5,a
      003F70 74 18            [12] 2014 	mov	a,#0x18
      003F72 2C               [12] 2015 	add	a,r4
      003F73 F5 82            [12] 2016 	mov	dpl,a
      003F75 E4               [12] 2017 	clr	a
      003F76 3D               [12] 2018 	addc	a,r5
      003F77 F5 83            [12] 2019 	mov	dph,a
      003F79 E0               [24] 2020 	movx	a,@dptr
      003F7A FA               [12] 2021 	mov	r2,a
      003F7B A3               [24] 2022 	inc	dptr
      003F7C E0               [24] 2023 	movx	a,@dptr
      003F7D FB               [12] 2024 	mov	r3,a
                           000338  2025 	C$main.c$466$6$379 ==.
                                   2026 ;	main.c:466: if (i >= 2)
      003F7E BA 02 00         [24] 2027 	cjne	r2,#0x02,00193$
      003F81                       2028 00193$:
      003F81 40 6F            [24] 2029 	jc	00161$
                           00033D  2030 	C$main.c$468$7$380 ==.
                                   2031 ;	main.c:468: const uint8_t __xdata *p = st->u.rx.pktdata;
      003F83 74 16            [12] 2032 	mov	a,#0x16
      003F85 2C               [12] 2033 	add	a,r4
      003F86 F5 82            [12] 2034 	mov	dpl,a
      003F88 E4               [12] 2035 	clr	a
      003F89 3D               [12] 2036 	addc	a,r5
      003F8A F5 83            [12] 2037 	mov	dph,a
      003F8C E0               [24] 2038 	movx	a,@dptr
      003F8D FC               [12] 2039 	mov	r4,a
      003F8E A3               [24] 2040 	inc	dptr
      003F8F E0               [24] 2041 	movx	a,@dptr
      003F90 FD               [12] 2042 	mov	r5,a
                           00034B  2043 	C$main.c$469$7$380 ==.
                                   2044 ;	main.c:469: i -= 2;
      003F91 1A               [12] 2045 	dec	r2
      003F92 1A               [12] 2046 	dec	r2
                           00034D  2047 	C$main.c$470$7$380 ==.
                                   2048 ;	main.c:470: p += i;
      003F93 EA               [12] 2049 	mov	a,r2
      003F94 2C               [12] 2050 	add	a,r4
      003F95 FC               [12] 2051 	mov	r4,a
      003F96 E4               [12] 2052 	clr	a
      003F97 3D               [12] 2053 	addc	a,r5
      003F98 FD               [12] 2054 	mov	r5,a
                           000353  2055 	C$main.c$471$7$380 ==.
                                   2056 ;	main.c:471: scr.b.b1 = *p++;
      003F99 8C 82            [24] 2057 	mov	dpl,r4
      003F9B 8D 83            [24] 2058 	mov	dph,r5
      003F9D E0               [24] 2059 	movx	a,@dptr
      003F9E FB               [12] 2060 	mov	r3,a
      003F9F A3               [24] 2061 	inc	dptr
      003FA0 AC 82            [24] 2062 	mov	r4,dpl
      003FA2 AD 83            [24] 2063 	mov	r5,dph
      003FA4 8B 25            [24] 2064 	mov	(_scr + 0x0001),r3
                           000360  2065 	C$main.c$472$7$380 ==.
                                   2066 ;	main.c:472: scr.b.b2 = *p;
      003FA6 8C 82            [24] 2067 	mov	dpl,r4
      003FA8 8D 83            [24] 2068 	mov	dph,r5
      003FAA E0               [24] 2069 	movx	a,@dptr
      003FAB FC               [12] 2070 	mov	r4,a
      003FAC 8C 26            [24] 2071 	mov	(_scr + 0x0002),r4
                           000368  2072 	C$main.c$475$6$379 ==.
                                   2073 ;	main.c:475: break;
                           000368  2074 	C$main.c$487$3$373 ==.
                                   2075 ;	main.c:487: led0_on();
      003FAE 80 42            [24] 2076 	sjmp	00161$
      003FB0                       2077 00150$:
      003FB0 D2 93            [12] 2078 	setb	_PORTC_3
                           00036C  2079 	C$main.c$488$3$373 ==.
                                   2080 ;	main.c:488: process_ber(st);
      003FB2 8E 82            [24] 2081 	mov	dpl,r6
      003FB4 8F 83            [24] 2082 	mov	dph,r7
      003FB6 C0 07            [24] 2083 	push	ar7
      003FB8 C0 06            [24] 2084 	push	ar6
      003FBA 12 3D 52         [24] 2085 	lcall	_process_ber
      003FBD D0 06            [24] 2086 	pop	ar6
      003FBF D0 07            [24] 2087 	pop	ar7
                           00037B  2088 	C$main.c$490$3$373 ==.
                                   2089 ;	main.c:490: if (!acquire_agc)
      003FC1 E5 34            [12] 2090 	mov	a,_acquire_agc
      003FC3 60 2D            [24] 2091 	jz	00161$
                           00037F  2092 	C$main.c$493$3$373 ==.
                                   2093 ;	main.c:493: axradio_agc_thaw();
      003FC5 C0 07            [24] 2094 	push	ar7
      003FC7 C0 06            [24] 2095 	push	ar6
      003FC9 12 39 5C         [24] 2096 	lcall	_axradio_agc_thaw
      003FCC D0 06            [24] 2097 	pop	ar6
      003FCE D0 07            [24] 2098 	pop	ar7
                           00038A  2099 	C$main.c$494$3$373 ==.
                                   2100 ;	main.c:494: display_ber(st);
      003FD0 8E 82            [24] 2101 	mov	dpl,r6
      003FD2 8F 83            [24] 2102 	mov	dph,r7
      003FD4 12 3E 70         [24] 2103 	lcall	_display_ber
                           000391  2104 	C$main.c$496$3$373 ==.
                                   2105 ;	main.c:496: bytes = NUMBYTES;
      003FD7 75 28 E2         [24] 2106 	mov	_bytes,#0xe2
      003FDA 75 29 04         [24] 2107 	mov	(_bytes + 1),#0x04
      003FDD E4               [12] 2108 	clr	a
      003FDE F5 2A            [12] 2109 	mov	(_bytes + 2),a
      003FE0 F5 2B            [12] 2110 	mov	(_bytes + 3),a
                           00039C  2111 	C$main.c$497$3$373 ==.
                                   2112 ;	main.c:497: errors = 0;
      003FE2 F5 2C            [12] 2113 	mov	_errors,a
      003FE4 F5 2D            [12] 2114 	mov	(_errors + 1),a
      003FE6 F5 2E            [12] 2115 	mov	(_errors + 2),a
      003FE8 F5 2F            [12] 2116 	mov	(_errors + 3),a
                           0003A4  2117 	C$main.c$498$3$373 ==.
                                   2118 ;	main.c:498: errors2 = 0;
      003FEA F5 30            [12] 2119 	mov	_errors2,a
      003FEC F5 31            [12] 2120 	mov	(_errors2 + 1),a
      003FEE F5 32            [12] 2121 	mov	(_errors2 + 2),a
      003FF0 F5 33            [12] 2122 	mov	(_errors2 + 3),a
                           0003AC  2123 	C$main.c$504$1$360 ==.
                                   2124 ;	main.c:504: }
      003FF2                       2125 00161$:
                           0003AC  2126 	C$main.c$505$1$360 ==.
                           0003AC  2127 	XG$axradio_statuschange$0$0 ==.
      003FF2 22               [24] 2128 	ret
                                   2129 ;------------------------------------------------------------
                                   2130 ;Allocation info for local variables in function 'set_cw'
                                   2131 ;------------------------------------------------------------
                                   2132 ;i                         Allocated to registers r6 
                                   2133 ;------------------------------------------------------------
                           0003AD  2134 	G$set_cw$0$0 ==.
                           0003AD  2135 	C$main.c$507$1$360 ==.
                                   2136 ;	main.c:507: void set_cw(void)
                                   2137 ;	-----------------------------------------
                                   2138 ;	 function set_cw
                                   2139 ;	-----------------------------------------
      003FF3                       2140 _set_cw:
                           0003AD  2141 	C$main.c$509$1$384 ==.
                                   2142 ;	main.c:509: uint8_t i = axradio_set_mode(AXRADIO_MODE_CW_TRANSMIT);
      003FF3 75 82 03         [24] 2143 	mov	dpl,#0x03
      003FF6 12 2E 99         [24] 2144 	lcall	_axradio_set_mode
                           0003B3  2145 	C$main.c$511$1$384 ==.
                                   2146 ;	main.c:511: if (i != AXRADIO_ERR_NOERROR)
      003FF9 E5 82            [12] 2147 	mov	a,dpl
      003FFB FF               [12] 2148 	mov	r7,a
      003FFC FE               [12] 2149 	mov	r6,a
      003FFD 60 0A            [24] 2150 	jz	00103$
                           0003B9  2151 	C$main.c$513$2$385 ==.
                                   2152 ;	main.c:513: display_radio_error(i);
      003FFF 8E 82            [24] 2153 	mov	dpl,r6
      004001 12 3A 6F         [24] 2154 	lcall	_lcd2_display_radio_error
      004004                       2155 00109$:
                           0003BE  2156 	C$main.c$519$2$385 ==.
                                   2157 ;	main.c:519: enter_sleep();
      004004 12 58 00         [24] 2158 	lcall	_enter_sleep
      004007 80 FB            [24] 2159 	sjmp	00109$
      004009                       2160 00103$:
                           0003C3  2161 	C$main.c$522$1$384 ==.
                                   2162 ;	main.c:522: display_clear(0x00, 16);
      004009 74 10            [12] 2163 	mov	a,#0x10
      00400B C0 E0            [24] 2164 	push	acc
      00400D 75 82 00         [24] 2165 	mov	dpl,#0x00
      004010 12 55 56         [24] 2166 	lcall	_lcd2_clear
      004013 15 81            [12] 2167 	dec	sp
                           0003CF  2168 	C$main.c$523$1$384 ==.
                                   2169 ;	main.c:523: display_clear(0x40, 16);
      004015 74 10            [12] 2170 	mov	a,#0x10
      004017 C0 E0            [24] 2171 	push	acc
      004019 75 82 40         [24] 2172 	mov	dpl,#0x40
      00401C 12 55 56         [24] 2173 	lcall	_lcd2_clear
      00401F 15 81            [12] 2174 	dec	sp
                           0003DB  2175 	C$main.c$524$1$384 ==.
                                   2176 ;	main.c:524: display_setpos(0x00);
      004021 75 82 00         [24] 2177 	mov	dpl,#0x00
      004024 12 43 A8         [24] 2178 	lcall	_lcd2_setpos
                           0003E1  2179 	C$main.c$525$1$384 ==.
                                   2180 ;	main.c:525: display_writestr("TX CW, PA ");
      004027 90 5C DD         [24] 2181 	mov	dptr,#___str_2
      00402A 75 F0 80         [24] 2182 	mov	b,#0x80
      00402D 12 54 D0         [24] 2183 	lcall	_lcd2_writestr
                           0003EA  2184 	C$main.c$527$1$384 ==.
                                   2185 ;	main.c:527: if(axradio_get_transmitter_pa_type() == AXRADIO_DIFFERENTIAL_PA)
      004030 12 3A 64         [24] 2186 	lcall	_axradio_get_transmitter_pa_type
      004033 AF 82            [24] 2187 	mov	r7,dpl
      004035 BF 01 0B         [24] 2188 	cjne	r7,#0x01,00107$
                           0003F2  2189 	C$main.c$528$1$384 ==.
                                   2190 ;	main.c:528: display_writestr( "DI ");
      004038 90 5C E8         [24] 2191 	mov	dptr,#___str_3
      00403B 75 F0 80         [24] 2192 	mov	b,#0x80
      00403E 12 54 D0         [24] 2193 	lcall	_lcd2_writestr
      004041 80 11            [24] 2194 	sjmp	00111$
      004043                       2195 00107$:
                           0003FD  2196 	C$main.c$529$1$384 ==.
                                   2197 ;	main.c:529: else if(axradio_get_transmitter_pa_type() == AXRADIO_SINGLE_ENDED_PA)
      004043 12 3A 64         [24] 2198 	lcall	_axradio_get_transmitter_pa_type
      004046 AF 82            [24] 2199 	mov	r7,dpl
      004048 BF 02 09         [24] 2200 	cjne	r7,#0x02,00111$
                           000405  2201 	C$main.c$530$1$384 ==.
                                   2202 ;	main.c:530: display_writestr( "SE ");
      00404B 90 5C EC         [24] 2203 	mov	dptr,#___str_4
      00404E 75 F0 80         [24] 2204 	mov	b,#0x80
      004051 12 54 D0         [24] 2205 	lcall	_lcd2_writestr
      004054                       2206 00111$:
                           00040E  2207 	C$main.c$531$1$384 ==.
                           00040E  2208 	XG$set_cw$0$0 ==.
      004054 22               [24] 2209 	ret
                                   2210 ;------------------------------------------------------------
                                   2211 ;Allocation info for local variables in function 'set_transmit'
                                   2212 ;------------------------------------------------------------
                                   2213 ;i                         Allocated to registers r6 
                                   2214 ;------------------------------------------------------------
                           00040F  2215 	G$set_transmit$0$0 ==.
                           00040F  2216 	C$main.c$533$1$384 ==.
                                   2217 ;	main.c:533: void set_transmit(void)
                                   2218 ;	-----------------------------------------
                                   2219 ;	 function set_transmit
                                   2220 ;	-----------------------------------------
      004055                       2221 _set_transmit:
                           00040F  2222 	C$main.c$579$1$387 ==.
                                   2223 ;	main.c:579: i = axradio_set_mode(i);
      004055 75 82 18         [24] 2224 	mov	dpl,#0x18
      004058 12 2E 99         [24] 2225 	lcall	_axradio_set_mode
                           000415  2226 	C$main.c$581$1$387 ==.
                                   2227 ;	main.c:581: if (i != AXRADIO_ERR_NOERROR)
      00405B E5 82            [12] 2228 	mov	a,dpl
      00405D FF               [12] 2229 	mov	r7,a
      00405E FE               [12] 2230 	mov	r6,a
      00405F 60 0A            [24] 2231 	jz	00109$
                           00041B  2232 	C$main.c$583$2$389 ==.
                                   2233 ;	main.c:583: display_radio_error(i);
      004061 8E 82            [24] 2234 	mov	dpl,r6
      004063 12 3A 6F         [24] 2235 	lcall	_lcd2_display_radio_error
      004066                       2236 00121$:
                           000420  2237 	C$main.c$589$2$389 ==.
                                   2238 ;	main.c:589: enter_sleep();
      004066 12 58 00         [24] 2239 	lcall	_enter_sleep
      004069 80 FB            [24] 2240 	sjmp	00121$
      00406B                       2241 00109$:
                           000425  2242 	C$main.c$592$1$387 ==.
                                   2243 ;	main.c:592: scr.w = ~0U;
      00406B 75 24 FF         [24] 2244 	mov	(_scr + 0),#0xff
      00406E 75 25 FF         [24] 2245 	mov	(_scr + 1),#0xff
                           00042B  2246 	C$main.c$593$1$387 ==.
                                   2247 ;	main.c:593: display_clear(0x00, 16);
      004071 74 10            [12] 2248 	mov	a,#0x10
      004073 C0 E0            [24] 2249 	push	acc
      004075 75 82 00         [24] 2250 	mov	dpl,#0x00
      004078 12 55 56         [24] 2251 	lcall	_lcd2_clear
      00407B 15 81            [12] 2252 	dec	sp
                           000437  2253 	C$main.c$594$1$387 ==.
                                   2254 ;	main.c:594: display_clear(0x40, 16);
      00407D 74 10            [12] 2255 	mov	a,#0x10
      00407F C0 E0            [24] 2256 	push	acc
      004081 75 82 40         [24] 2257 	mov	dpl,#0x40
      004084 12 55 56         [24] 2258 	lcall	_lcd2_clear
      004087 15 81            [12] 2259 	dec	sp
                           000443  2260 	C$main.c$595$1$387 ==.
                                   2261 ;	main.c:595: display_setpos(0x00);
      004089 75 82 00         [24] 2262 	mov	dpl,#0x00
      00408C 12 43 A8         [24] 2263 	lcall	_lcd2_setpos
                           000449  2264 	C$main.c$616$2$390 ==.
                                   2265 ;	main.c:616: display_writestr("TX PAT, PA ");
      00408F 90 5D 22         [24] 2266 	mov	dptr,#___str_9
      004092 75 F0 80         [24] 2267 	mov	b,#0x80
      004095 12 54 D0         [24] 2268 	lcall	_lcd2_writestr
                           000452  2269 	C$main.c$620$1$387 ==.
                                   2270 ;	main.c:620: if(axradio_get_transmitter_pa_type() == AXRADIO_DIFFERENTIAL_PA)
      004098 12 3A 64         [24] 2271 	lcall	_axradio_get_transmitter_pa_type
      00409B AF 82            [24] 2272 	mov	r7,dpl
      00409D BF 01 0B         [24] 2273 	cjne	r7,#0x01,00119$
                           00045A  2274 	C$main.c$621$1$387 ==.
                                   2275 ;	main.c:621: display_writestr( "DI ");
      0040A0 90 5C E8         [24] 2276 	mov	dptr,#___str_3
      0040A3 75 F0 80         [24] 2277 	mov	b,#0x80
      0040A6 12 54 D0         [24] 2278 	lcall	_lcd2_writestr
      0040A9 80 11            [24] 2279 	sjmp	00123$
      0040AB                       2280 00119$:
                           000465  2281 	C$main.c$622$1$387 ==.
                                   2282 ;	main.c:622: else if(axradio_get_transmitter_pa_type() == AXRADIO_SINGLE_ENDED_PA)
      0040AB 12 3A 64         [24] 2283 	lcall	_axradio_get_transmitter_pa_type
      0040AE AF 82            [24] 2284 	mov	r7,dpl
      0040B0 BF 02 09         [24] 2285 	cjne	r7,#0x02,00123$
                           00046D  2286 	C$main.c$623$1$387 ==.
                                   2287 ;	main.c:623: display_writestr( "SE ");
      0040B3 90 5C EC         [24] 2288 	mov	dptr,#___str_4
      0040B6 75 F0 80         [24] 2289 	mov	b,#0x80
      0040B9 12 54 D0         [24] 2290 	lcall	_lcd2_writestr
      0040BC                       2291 00123$:
                           000476  2292 	C$main.c$624$1$387 ==.
                           000476  2293 	XG$set_transmit$0$0 ==.
      0040BC 22               [24] 2294 	ret
                                   2295 ;------------------------------------------------------------
                                   2296 ;Allocation info for local variables in function 'set_receiveber'
                                   2297 ;------------------------------------------------------------
                                   2298 ;i                         Allocated to registers r6 
                                   2299 ;------------------------------------------------------------
                           000477  2300 	G$set_receiveber$0$0 ==.
                           000477  2301 	C$main.c$626$1$387 ==.
                                   2302 ;	main.c:626: void set_receiveber(void)
                                   2303 ;	-----------------------------------------
                                   2304 ;	 function set_receiveber
                                   2305 ;	-----------------------------------------
      0040BD                       2306 _set_receiveber:
                           000477  2307 	C$main.c$669$1$392 ==.
                                   2308 ;	main.c:669: i = axradio_set_mode(i);
      0040BD 75 82 2A         [24] 2309 	mov	dpl,#0x2a
      0040C0 12 2E 99         [24] 2310 	lcall	_axradio_set_mode
                           00047D  2311 	C$main.c$671$1$392 ==.
                                   2312 ;	main.c:671: if (i != AXRADIO_ERR_NOERROR)
      0040C3 E5 82            [12] 2313 	mov	a,dpl
      0040C5 FF               [12] 2314 	mov	r7,a
      0040C6 FE               [12] 2315 	mov	r6,a
      0040C7 60 0A            [24] 2316 	jz	00109$
                           000483  2317 	C$main.c$673$2$394 ==.
                                   2318 ;	main.c:673: display_radio_error(i);
      0040C9 8E 82            [24] 2319 	mov	dpl,r6
      0040CB 12 3A 6F         [24] 2320 	lcall	_lcd2_display_radio_error
      0040CE                       2321 00110$:
                           000488  2322 	C$main.c$679$2$394 ==.
                                   2323 ;	main.c:679: enter_sleep();
      0040CE 12 58 00         [24] 2324 	lcall	_enter_sleep
      0040D1 80 FB            [24] 2325 	sjmp	00110$
      0040D3                       2326 00109$:
                           00048D  2327 	C$main.c$682$1$392 ==.
                                   2328 ;	main.c:682: display_clear(0x00, 16);
      0040D3 74 10            [12] 2329 	mov	a,#0x10
      0040D5 C0 E0            [24] 2330 	push	acc
      0040D7 75 82 00         [24] 2331 	mov	dpl,#0x00
      0040DA 12 55 56         [24] 2332 	lcall	_lcd2_clear
      0040DD 15 81            [12] 2333 	dec	sp
                           000499  2334 	C$main.c$683$1$392 ==.
                                   2335 ;	main.c:683: display_clear(0x40, 16);
      0040DF 74 10            [12] 2336 	mov	a,#0x10
      0040E1 C0 E0            [24] 2337 	push	acc
      0040E3 75 82 40         [24] 2338 	mov	dpl,#0x40
      0040E6 12 55 56         [24] 2339 	lcall	_lcd2_clear
      0040E9 15 81            [12] 2340 	dec	sp
                           0004A5  2341 	C$main.c$684$1$392 ==.
                                   2342 ;	main.c:684: display_setpos(0x00);
      0040EB 75 82 00         [24] 2343 	mov	dpl,#0x00
      0040EE 12 43 A8         [24] 2344 	lcall	_lcd2_setpos
                           0004AB  2345 	C$main.c$685$1$392 ==.
                                   2346 ;	main.c:685: display_writestr("RX");
      0040F1 90 5D 2E         [24] 2347 	mov	dptr,#___str_10
      0040F4 75 F0 80         [24] 2348 	mov	b,#0x80
      0040F7 12 54 D0         [24] 2349 	lcall	_lcd2_writestr
                           0004B4  2350 	C$main.c$687$1$392 ==.
                                   2351 ;	main.c:687: display_setpos(0x40);
      0040FA 75 82 40         [24] 2352 	mov	dpl,#0x40
      0040FD 12 43 A8         [24] 2353 	lcall	_lcd2_setpos
                           0004BA  2354 	C$main.c$688$1$392 ==.
                                   2355 ;	main.c:688: display_writestr("BER=?");
      004100 90 5D 31         [24] 2356 	mov	dptr,#___str_11
      004103 75 F0 80         [24] 2357 	mov	b,#0x80
      004106 12 54 D0         [24] 2358 	lcall	_lcd2_writestr
                           0004C3  2359 	C$main.c$690$1$392 ==.
                                   2360 ;	main.c:690: display_setpos(0x0A);
      004109 75 82 0A         [24] 2361 	mov	dpl,#0x0a
      00410C 12 43 A8         [24] 2362 	lcall	_lcd2_setpos
                           0004C9  2363 	C$main.c$691$1$392 ==.
                                   2364 ;	main.c:691: display_writestr("R:");
      00410F 90 5D 37         [24] 2365 	mov	dptr,#___str_12
      004112 75 F0 80         [24] 2366 	mov	b,#0x80
      004115 12 54 D0         [24] 2367 	lcall	_lcd2_writestr
                           0004D2  2368 	C$main.c$693$1$392 ==.
                                   2369 ;	main.c:693: bytes = NUMBYTES;
      004118 75 28 E2         [24] 2370 	mov	_bytes,#0xe2
      00411B 75 29 04         [24] 2371 	mov	(_bytes + 1),#0x04
      00411E E4               [12] 2372 	clr	a
      00411F F5 2A            [12] 2373 	mov	(_bytes + 2),a
      004121 F5 2B            [12] 2374 	mov	(_bytes + 3),a
                           0004DD  2375 	C$main.c$694$1$392 ==.
                                   2376 ;	main.c:694: errors = 0;
      004123 F5 2C            [12] 2377 	mov	_errors,a
      004125 F5 2D            [12] 2378 	mov	(_errors + 1),a
      004127 F5 2E            [12] 2379 	mov	(_errors + 2),a
      004129 F5 2F            [12] 2380 	mov	(_errors + 3),a
                           0004E5  2381 	C$main.c$695$1$392 ==.
                                   2382 ;	main.c:695: errors2 = 0;
      00412B F5 30            [12] 2383 	mov	_errors2,a
      00412D F5 31            [12] 2384 	mov	(_errors2 + 1),a
      00412F F5 32            [12] 2385 	mov	(_errors2 + 2),a
      004131 F5 33            [12] 2386 	mov	(_errors2 + 3),a
                           0004ED  2387 	C$main.c$696$1$392 ==.
                                   2388 ;	main.c:696: acquire_agc = 1;
      004133 75 34 01         [24] 2389 	mov	_acquire_agc,#0x01
                           0004F0  2390 	C$main.c$697$1$392 ==.
                           0004F0  2391 	XG$set_receiveber$0$0 ==.
      004136 22               [24] 2392 	ret
                                   2393 ;------------------------------------------------------------
                                   2394 ;Allocation info for local variables in function 'enable_radio_interrupt_in_mcu_pin'
                                   2395 ;------------------------------------------------------------
                           0004F1  2396 	G$enable_radio_interrupt_in_mcu_pin$0$0 ==.
                           0004F1  2397 	C$main.c$699$1$392 ==.
                                   2398 ;	main.c:699: void enable_radio_interrupt_in_mcu_pin(void)
                                   2399 ;	-----------------------------------------
                                   2400 ;	 function enable_radio_interrupt_in_mcu_pin
                                   2401 ;	-----------------------------------------
      004137                       2402 _enable_radio_interrupt_in_mcu_pin:
                           0004F1  2403 	C$main.c$701$1$396 ==.
                                   2404 ;	main.c:701: IE_4 = 1;
      004137 D2 AC            [12] 2405 	setb	_IE_4
                           0004F3  2406 	C$main.c$702$1$396 ==.
                           0004F3  2407 	XG$enable_radio_interrupt_in_mcu_pin$0$0 ==.
      004139 22               [24] 2408 	ret
                                   2409 ;------------------------------------------------------------
                                   2410 ;Allocation info for local variables in function 'disable_radio_interrupt_in_mcu_pin'
                                   2411 ;------------------------------------------------------------
                           0004F4  2412 	G$disable_radio_interrupt_in_mcu_pin$0$0 ==.
                           0004F4  2413 	C$main.c$704$1$396 ==.
                                   2414 ;	main.c:704: void disable_radio_interrupt_in_mcu_pin(void)
                                   2415 ;	-----------------------------------------
                                   2416 ;	 function disable_radio_interrupt_in_mcu_pin
                                   2417 ;	-----------------------------------------
      00413A                       2418 _disable_radio_interrupt_in_mcu_pin:
                           0004F4  2419 	C$main.c$706$1$398 ==.
                                   2420 ;	main.c:706: IE_4 = 0;
      00413A C2 AC            [12] 2421 	clr	_IE_4
                           0004F6  2422 	C$main.c$707$1$398 ==.
                           0004F6  2423 	XG$disable_radio_interrupt_in_mcu_pin$0$0 ==.
      00413C 22               [24] 2424 	ret
                                   2425 ;------------------------------------------------------------
                                   2426 ;Allocation info for local variables in function '_sdcc_external_startup'
                                   2427 ;------------------------------------------------------------
                                   2428 ;c                         Allocated to registers 
                                   2429 ;p                         Allocated to registers 
                                   2430 ;c                         Allocated to registers 
                                   2431 ;p                         Allocated to registers 
                                   2432 ;------------------------------------------------------------
                           0004F7  2433 	G$_sdcc_external_startup$0$0 ==.
                           0004F7  2434 	C$main.c$710$1$398 ==.
                                   2435 ;	main.c:710: uint8_t _sdcc_external_startup(void)
                                   2436 ;	-----------------------------------------
                                   2437 ;	 function _sdcc_external_startup
                                   2438 ;	-----------------------------------------
      00413D                       2439 __sdcc_external_startup:
                           0004F7  2440 	C$main.c$712$2$401 ==.
                                   2441 ;	main.c:712: wtimer0_setclksrc(WTIMER0_CLKSRC, WTIMER0_PRESCALER);
      00413D 75 82 09         [24] 2442 	mov	dpl,#0x09
      004140 12 48 73         [24] 2443 	lcall	_wtimer0_setconfig
                           0004FD  2444 	C$main.c$713$2$402 ==.
                                   2445 ;	main.c:713: wtimer1_setclksrc(CLKSRC_FRCOSC, 7);
      004143 75 82 38         [24] 2446 	mov	dpl,#0x38
      004146 12 48 C0         [24] 2447 	lcall	_wtimer1_setconfig
                           000503  2448 	C$main.c$715$1$400 ==.
                                   2449 ;	main.c:715: coldstart = !(PCON & 0x40);
      004149 E5 87            [12] 2450 	mov	a,_PCON
      00414B A2 E6            [12] 2451 	mov	c,acc[6]
      00414D B3               [12] 2452 	cpl	c
      00414E 92 01            [24] 2453 	mov	__sdcc_external_startup_sloc0_1_0,c
      004150 E4               [12] 2454 	clr	a
      004151 33               [12] 2455 	rlc	a
      004152 F5 22            [12] 2456 	mov	_coldstart,a
                           00050E  2457 	C$main.c$716$1$400 ==.
                                   2458 ;	main.c:716: ANALOGA = 0x18; /* PA[3,4] LPXOSC, other PA are used as digital pins */
      004154 90 70 07         [24] 2459 	mov	dptr,#_ANALOGA
      004157 74 18            [12] 2460 	mov	a,#0x18
      004159 F0               [24] 2461 	movx	@dptr,a
                           000514  2462 	C$main.c$717$1$400 ==.
                                   2463 ;	main.c:717: PORTA = 0xC0 | (PINA & 0x25); 	/* pull-up for PA[6,7] which are not bonded, no pull up for PA[3,4] (LPXOSC). Output 0 in PA[0,1,2,5] to prevent current consumption in all DIP switch states */
      00415A 74 25            [12] 2464 	mov	a,#0x25
      00415C 55 C8            [12] 2465 	anl	a,_PINA
      00415E 44 C0            [12] 2466 	orl	a,#0xc0
      004160 F5 80            [12] 2467 	mov	_PORTA,a
                           00051C  2468 	C$main.c$719$1$400 ==.
                                   2469 ;	main.c:719: PORTB = 0xFE; /*PB[0,1]  (LCD RS, LCD RST) are overwritten by lcd2_portinit(), enable pull-ups for PB[2..7]  (PB[2,3] for buttons, PB[4..7] unused) */
      004162 75 88 FE         [24] 2470 	mov	_PORTB,#0xfe
                           00051F  2471 	C$main.c$720$1$400 ==.
                                   2472 ;	main.c:720: PORTC = 0xF3 | (PINC & 0x08); 	/* set PC0 = 1 (LCD SEL), PC1 = 1 (LCD SCK), PC2 = 0 (LCD MOSI), PC3 =0 (LED), enable pull-ups for PC[4..7] which are not bonded Mind: PORTC[0:1] is set to 0x3 by lcd2_portinit() */
      004165 74 08            [12] 2473 	mov	a,#0x08
      004167 55 F8            [12] 2474 	anl	a,_PINC
      004169 44 F3            [12] 2475 	orl	a,#0xf3
      00416B F5 90            [12] 2476 	mov	_PORTC,a
                           000527  2477 	C$main.c$722$1$400 ==.
                                   2478 ;	main.c:722: PORTR = 0xCB; /* overwritten by ax5044_45_reset, ax5044_45_comminit() */
      00416D 75 8C CB         [24] 2479 	mov	_PORTR,#0xcb
                           00052A  2480 	C$main.c$724$1$400 ==.
                                   2481 ;	main.c:724: DIRA = 0x27; /* output 0 on PA[0,1,2,5] to prevent current consumption in all DIP switch states. Other PA are inputs, PA[3,4] (LPXOSC) must have disabled digital output drivers */
      004170 75 89 27         [24] 2482 	mov	_DIRA,#0x27
                           00052D  2483 	C$main.c$725$1$400 ==.
                                   2484 ;	main.c:725: DIRB = 0x03; /* PB[0,1] are outputs (LCD RS, LCD RST), PB[2..7] are inputs (PB[2,3] for buttons,  PB[4..7]  unused) */
      004173 75 8A 03         [24] 2485 	mov	_DIRB,#0x03
                           000530  2486 	C$main.c$726$1$400 ==.
                                   2487 ;	main.c:726: DIRC = 0x0F; /* PC[0..3] are outputs (LCD SEL, LCD,SCK, LCD MOSI, LED), PC[4..7] are inputs (not bonded). */
      004176 75 8B 0F         [24] 2488 	mov	_DIRC,#0x0f
                           000533  2489 	C$main.c$727$1$400 ==.
                                   2490 ;	main.c:727: DIRR = 0x15; /* overwritten by ax5044_45_reset, ax5044_45_comminit() */
      004179 75 8E 15         [24] 2491 	mov	_DIRR,#0x15
                           000536  2492 	C$main.c$729$1$400 ==.
                                   2493 ;	main.c:729: axradio_setup_pincfg1();
      00417C 12 06 BC         [24] 2494 	lcall	_axradio_setup_pincfg1
                           000539  2495 	C$main.c$730$1$400 ==.
                                   2496 ;	main.c:730: DPS = 0;
      00417F 75 86 00         [24] 2497 	mov	_DPS,#0x00
                           00053C  2498 	C$main.c$731$1$400 ==.
                                   2499 ;	main.c:731: IE = 0x40;
      004182 75 A8 40         [24] 2500 	mov	_IE,#0x40
                           00053F  2501 	C$main.c$732$1$400 ==.
                                   2502 ;	main.c:732: EIE = 0x00;
      004185 75 98 00         [24] 2503 	mov	_EIE,#0x00
                           000542  2504 	C$main.c$733$1$400 ==.
                                   2505 ;	main.c:733: E2IE = 0x00;
      004188 75 A0 00         [24] 2506 	mov	_E2IE,#0x00
                           000545  2507 	C$main.c$734$1$400 ==.
                                   2508 ;	main.c:734: display_portinit();
      00418B 12 51 07         [24] 2509 	lcall	_lcd2_portinit
                           000548  2510 	C$main.c$735$1$400 ==.
                                   2511 ;	main.c:735: GPIOENABLE = 1; /* unfreeze GPIO */
      00418E 90 70 0C         [24] 2512 	mov	dptr,#_GPIOENABLE
      004191 74 01            [12] 2513 	mov	a,#0x01
      004193 F0               [24] 2514 	movx	@dptr,a
                           00054E  2515 	C$main.c$736$1$400 ==.
                                   2516 ;	main.c:736: return !coldstart; /* coldstart -> return 0 -> var initialization; start from sleep -> return 1 -> no var initialization */
      004194 E5 22            [12] 2517 	mov	a,_coldstart
      004196 B4 01 00         [24] 2518 	cjne	a,#0x01,00109$
      004199                       2519 00109$:
      004199 92 01            [24] 2520 	mov  __sdcc_external_startup_sloc0_1_0,c
      00419B E4               [12] 2521 	clr	a
      00419C 33               [12] 2522 	rlc	a
      00419D F5 82            [12] 2523 	mov	dpl,a
                           000559  2524 	C$main.c$737$1$400 ==.
                           000559  2525 	XG$_sdcc_external_startup$0$0 ==.
      00419F 22               [24] 2526 	ret
                                   2527 ;------------------------------------------------------------
                                   2528 ;Allocation info for local variables in function 'si_write_reg'
                                   2529 ;------------------------------------------------------------
                                   2530 ;data                      Allocated with name '_si_write_reg_PARM_2'
                                   2531 ;address                   Allocated to registers r7 
                                   2532 ;i                         Allocated to registers r6 r7 
                                   2533 ;sdata                     Allocated to registers 
                                   2534 ;mask                      Allocated to registers 
                                   2535 ;------------------------------------------------------------
                           00055A  2536 	Fmain$si_write_reg$0$0 ==.
                           00055A  2537 	C$main.c$741$1$400 ==.
                                   2538 ;	main.c:741: static void si_write_reg(uint8_t address, uint32_t data)
                                   2539 ;	-----------------------------------------
                                   2540 ;	 function si_write_reg
                                   2541 ;	-----------------------------------------
      0041A0                       2542 _si_write_reg:
      0041A0 AF 82            [24] 2543 	mov	r7,dpl
                           00055C  2544 	C$main.c$747$1$404 ==.
                                   2545 ;	main.c:747: data = (data << 14) | (address << 10);
      0041A2 AD 39            [24] 2546 	mov	r5,(_si_write_reg_PARM_2 + 1)
      0041A4 E5 3A            [12] 2547 	mov	a,(_si_write_reg_PARM_2 + 2)
      0041A6 54 03            [12] 2548 	anl	a,#0x03
      0041A8 A2 E0            [12] 2549 	mov	c,acc.0
      0041AA CD               [12] 2550 	xch	a,r5
      0041AB 13               [12] 2551 	rrc	a
      0041AC CD               [12] 2552 	xch	a,r5
      0041AD 13               [12] 2553 	rrc	a
      0041AE A2 E0            [12] 2554 	mov	c,acc.0
      0041B0 CD               [12] 2555 	xch	a,r5
      0041B1 13               [12] 2556 	rrc	a
      0041B2 CD               [12] 2557 	xch	a,r5
      0041B3 13               [12] 2558 	rrc	a
      0041B4 CD               [12] 2559 	xch	a,r5
      0041B5 FE               [12] 2560 	mov	r6,a
      0041B6 E5 38            [12] 2561 	mov	a,_si_write_reg_PARM_2
      0041B8 03               [12] 2562 	rr	a
      0041B9 03               [12] 2563 	rr	a
      0041BA 54 C0            [12] 2564 	anl	a,#0xc0
      0041BC FC               [12] 2565 	mov	r4,a
      0041BD E5 38            [12] 2566 	mov	a,_si_write_reg_PARM_2
      0041BF 03               [12] 2567 	rr	a
      0041C0 03               [12] 2568 	rr	a
      0041C1 54 3F            [12] 2569 	anl	a,#0x3f
      0041C3 4D               [12] 2570 	orl	a,r5
      0041C4 FD               [12] 2571 	mov	r5,a
      0041C5 E4               [12] 2572 	clr	a
      0041C6 FB               [12] 2573 	mov	r3,a
      0041C7 EF               [12] 2574 	mov	a,r7
      0041C8 2F               [12] 2575 	add	a,r7
      0041C9 25 E0            [12] 2576 	add	a,acc
      0041CB FA               [12] 2577 	mov	r2,a
      0041CC 7F 00            [12] 2578 	mov	r7,#0x00
      0041CE 8F 00            [24] 2579 	mov	ar0,r7
      0041D0 EA               [12] 2580 	mov	a,r2
      0041D1 F9               [12] 2581 	mov	r1,a
      0041D2 33               [12] 2582 	rlc	a
      0041D3 95 E0            [12] 2583 	subb	a,acc
      0041D5 FA               [12] 2584 	mov	r2,a
      0041D6 FF               [12] 2585 	mov	r7,a
      0041D7 E8               [12] 2586 	mov	a,r0
      0041D8 4B               [12] 2587 	orl	a,r3
      0041D9 F5 38            [12] 2588 	mov	_si_write_reg_PARM_2,a
      0041DB E9               [12] 2589 	mov	a,r1
      0041DC 4C               [12] 2590 	orl	a,r4
      0041DD F5 39            [12] 2591 	mov	(_si_write_reg_PARM_2 + 1),a
      0041DF EA               [12] 2592 	mov	a,r2
      0041E0 4D               [12] 2593 	orl	a,r5
      0041E1 F5 3A            [12] 2594 	mov	(_si_write_reg_PARM_2 + 2),a
      0041E3 EF               [12] 2595 	mov	a,r7
      0041E4 4E               [12] 2596 	orl	a,r6
      0041E5 F5 3B            [12] 2597 	mov	(_si_write_reg_PARM_2 + 3),a
                           0005A1  2598 	C$main.c$752$3$406 ==.
                                   2599 ;	main.c:752: led2_off(); //palClearLine(LINE_SI_SENB);
      0041E7 C2 82            [12] 2600 	clr	_PORTA_2
                           0005A3  2601 	C$main.c$756$1$404 ==.
                                   2602 ;	main.c:756: led1_off(); //palClearLine(LINE_SI_SCLK);
      0041E9 7E 00            [12] 2603 	mov	r6,#0x00
      0041EB 7F 00            [12] 2604 	mov	r7,#0x00
      0041ED                       2605 00110$:
      0041ED C2 80            [12] 2606 	clr	_PORTA_0
                           0005A9  2607 	C$main.c$757$2$407 ==.
                                   2608 ;	main.c:757: delay_ms(1);
      0041EF 90 00 01         [24] 2609 	mov	dptr,#0x0001
      0041F2 C0 07            [24] 2610 	push	ar7
      0041F4 C0 06            [24] 2611 	push	ar6
      0041F6 12 3A E1         [24] 2612 	lcall	_delay_ms
      0041F9 D0 06            [24] 2613 	pop	ar6
      0041FB D0 07            [24] 2614 	pop	ar7
                           0005B7  2615 	C$main.c$758$2$407 ==.
                                   2616 ;	main.c:758: sdata = data & mask;
      0041FD E5 3B            [12] 2617 	mov	a,(_si_write_reg_PARM_2 + 3)
      0041FF 30 E7 04         [24] 2618 	jnb	acc.7,00122$
                           0005BC  2619 	C$main.c$759$2$407 ==.
                                   2620 ;	main.c:759: if(sdata > 0){
                           0005BC  2621 	C$main.c$761$5$412 ==.
                                   2622 ;	main.c:761: led3_on(); //palSetLine(LINE_SI_SDATA);
      004202 D2 85            [12] 2623 	setb	_PORTA_5
                           0005BE  2624 	C$main.c$765$3$413 ==.
                                   2625 ;	main.c:765: led3_off(); //palClearLine(LINE_SI_SDATA);
      004204 80 02            [24] 2626 	sjmp	00127$
      004206                       2627 00122$:
      004206 C2 85            [12] 2628 	clr	_PORTA_5
      004208                       2629 00127$:
                           0005C2  2630 	C$main.c$767$2$407 ==.
                                   2631 ;	main.c:767: delay_ms(1);
      004208 90 00 01         [24] 2632 	mov	dptr,#0x0001
      00420B C0 07            [24] 2633 	push	ar7
      00420D C0 06            [24] 2634 	push	ar6
      00420F 12 3A E1         [24] 2635 	lcall	_delay_ms
                           0005CC  2636 	C$main.c$768$4$417 ==.
                                   2637 ;	main.c:768: led1_on(); //palSetLine(LINE_SI_SCLK);
      004212 D2 80            [12] 2638 	setb	_PORTA_0
                           0005CE  2639 	C$main.c$769$2$407 ==.
                                   2640 ;	main.c:769: delay_ms(1);
      004214 90 00 01         [24] 2641 	mov	dptr,#0x0001
      004217 12 3A E1         [24] 2642 	lcall	_delay_ms
                           0005D4  2643 	C$main.c$770$2$407 ==.
                                   2644 ;	main.c:770: data = data <<1;
      00421A E5 38            [12] 2645 	mov	a,_si_write_reg_PARM_2
      00421C 25 38            [12] 2646 	add	a,_si_write_reg_PARM_2
      00421E F5 38            [12] 2647 	mov	_si_write_reg_PARM_2,a
      004220 E5 39            [12] 2648 	mov	a,(_si_write_reg_PARM_2 + 1)
      004222 33               [12] 2649 	rlc	a
      004223 F5 39            [12] 2650 	mov	(_si_write_reg_PARM_2 + 1),a
      004225 E5 3A            [12] 2651 	mov	a,(_si_write_reg_PARM_2 + 2)
      004227 33               [12] 2652 	rlc	a
      004228 F5 3A            [12] 2653 	mov	(_si_write_reg_PARM_2 + 2),a
      00422A E5 3B            [12] 2654 	mov	a,(_si_write_reg_PARM_2 + 3)
      00422C 33               [12] 2655 	rlc	a
      00422D F5 3B            [12] 2656 	mov	(_si_write_reg_PARM_2 + 3),a
                           0005E9  2657 	C$main.c$771$2$407 ==.
                                   2658 ;	main.c:771: delay_ms(1);
      00422F 90 00 01         [24] 2659 	mov	dptr,#0x0001
      004232 12 3A E1         [24] 2660 	lcall	_delay_ms
      004235 D0 06            [24] 2661 	pop	ar6
      004237 D0 07            [24] 2662 	pop	ar7
                           0005F3  2663 	C$main.c$754$1$404 ==.
                                   2664 ;	main.c:754: for(i=0; i<22;i++)
      004239 0E               [12] 2665 	inc	r6
      00423A BE 00 01         [24] 2666 	cjne	r6,#0x00,00156$
      00423D 0F               [12] 2667 	inc	r7
      00423E                       2668 00156$:
      00423E C3               [12] 2669 	clr	c
      00423F EE               [12] 2670 	mov	a,r6
      004240 94 16            [12] 2671 	subb	a,#0x16
      004242 EF               [12] 2672 	mov	a,r7
      004243 64 80            [12] 2673 	xrl	a,#0x80
      004245 94 80            [12] 2674 	subb	a,#0x80
      004247 40 A4            [24] 2675 	jc	00110$
                           000603  2676 	C$main.c$774$3$419 ==.
                                   2677 ;	main.c:774: led2_on(); //palSetLine(LINE_SI_SENB);
      004249 D2 82            [12] 2678 	setb	_PORTA_2
                           000605  2679 	C$main.c$776$1$404 ==.
                           000605  2680 	XFmain$si_write_reg$0$0 ==.
      00424B 22               [24] 2681 	ret
                                   2682 ;------------------------------------------------------------
                                   2683 ;Allocation info for local variables in function 'synth_init'
                                   2684 ;------------------------------------------------------------
                                   2685 ;freq                      Allocated to registers 
                                   2686 ;phase                     Allocated to registers 
                                   2687 ;pllref                    Allocated to registers 
                                   2688 ;ndiv                      Allocated to registers 
                                   2689 ;rdiv                      Allocated to registers 
                                   2690 ;------------------------------------------------------------
                           000606  2691 	Fmain$synth_init$0$0 ==.
                           000606  2692 	C$main.c$780$1$404 ==.
                                   2693 ;	main.c:780: static void synth_init(void)
                                   2694 ;	-----------------------------------------
                                   2695 ;	 function synth_init
                                   2696 ;	-----------------------------------------
      00424C                       2697 _synth_init:
                           000606  2698 	C$main.c$794$3$423 ==.
                                   2699 ;	main.c:794: led2_on(); //palSetLine(LINE_SI_SENB);
      00424C D2 82            [12] 2700 	setb	_PORTA_2
                           000608  2701 	C$main.c$795$3$425 ==.
                                   2702 ;	main.c:795: led3_on(); //palSetLine(LINE_SI_SDATA);
      00424E D2 85            [12] 2703 	setb	_PORTA_5
                           00060A  2704 	C$main.c$796$3$427 ==.
                                   2705 ;	main.c:796: led1_on(); //palSetLine(LINE_SI_SCLK);
      004250 D2 80            [12] 2706 	setb	_PORTA_0
                           00060C  2707 	C$main.c$797$1$421 ==.
                                   2708 ;	main.c:797: si_write_reg(SI41XX_REG_MAIN_CONFIG, 0b000011000000000100);
      004252 75 38 04         [24] 2709 	mov	_si_write_reg_PARM_2,#0x04
      004255 75 39 30         [24] 2710 	mov	(_si_write_reg_PARM_2 + 1),#0x30
      004258 E4               [12] 2711 	clr	a
      004259 F5 3A            [12] 2712 	mov	(_si_write_reg_PARM_2 + 2),a
      00425B F5 3B            [12] 2713 	mov	(_si_write_reg_PARM_2 + 3),a
      00425D 75 82 00         [24] 2714 	mov	dpl,#0x00
      004260 12 41 A0         [24] 2715 	lcall	_si_write_reg
                           00061D  2716 	C$main.c$798$1$421 ==.
                                   2717 ;	main.c:798: si_write_reg(SI41XX_REG_PHASE_GAIN,  0b000000000000000000);
      004263 E4               [12] 2718 	clr	a
      004264 F5 38            [12] 2719 	mov	_si_write_reg_PARM_2,a
      004266 F5 39            [12] 2720 	mov	(_si_write_reg_PARM_2 + 1),a
      004268 F5 3A            [12] 2721 	mov	(_si_write_reg_PARM_2 + 2),a
      00426A F5 3B            [12] 2722 	mov	(_si_write_reg_PARM_2 + 3),a
      00426C 75 82 01         [24] 2723 	mov	dpl,#0x01
      00426F 12 41 A0         [24] 2724 	lcall	_si_write_reg
                           00062C  2725 	C$main.c$799$1$421 ==.
                                   2726 ;	main.c:799: si_write_reg(SI41XX_REG_PWRDOWN,     0b000000000000000000);
      004272 E4               [12] 2727 	clr	a
      004273 F5 38            [12] 2728 	mov	_si_write_reg_PARM_2,a
      004275 F5 39            [12] 2729 	mov	(_si_write_reg_PARM_2 + 1),a
      004277 F5 3A            [12] 2730 	mov	(_si_write_reg_PARM_2 + 2),a
      004279 F5 3B            [12] 2731 	mov	(_si_write_reg_PARM_2 + 3),a
      00427B 75 82 02         [24] 2732 	mov	dpl,#0x02
      00427E 12 41 A0         [24] 2733 	lcall	_si_write_reg
                           00063B  2734 	C$main.c$800$1$421 ==.
                                   2735 ;	main.c:800: si_write_reg(SI41XX_REG_IF_NDIV, ndiv);
      004281 75 38 50         [24] 2736 	mov	_si_write_reg_PARM_2,#0x50
      004284 75 39 06         [24] 2737 	mov	(_si_write_reg_PARM_2 + 1),#0x06
      004287 E4               [12] 2738 	clr	a
      004288 F5 3A            [12] 2739 	mov	(_si_write_reg_PARM_2 + 2),a
      00428A F5 3B            [12] 2740 	mov	(_si_write_reg_PARM_2 + 3),a
      00428C 75 82 05         [24] 2741 	mov	dpl,#0x05
      00428F 12 41 A0         [24] 2742 	lcall	_si_write_reg
                           00064C  2743 	C$main.c$801$1$421 ==.
                                   2744 ;	main.c:801: si_write_reg(SI41XX_REG_IF_RDIV, rdiv);
      004292 75 38 20         [24] 2745 	mov	_si_write_reg_PARM_2,#0x20
      004295 E4               [12] 2746 	clr	a
      004296 F5 39            [12] 2747 	mov	(_si_write_reg_PARM_2 + 1),a
      004298 F5 3A            [12] 2748 	mov	(_si_write_reg_PARM_2 + 2),a
      00429A F5 3B            [12] 2749 	mov	(_si_write_reg_PARM_2 + 3),a
      00429C 75 82 08         [24] 2750 	mov	dpl,#0x08
      00429F 12 41 A0         [24] 2751 	lcall	_si_write_reg
                           00065C  2752 	C$main.c$802$1$421 ==.
                                   2753 ;	main.c:802: si_write_reg(SI41XX_REG_PWRDOWN,     0b000000000000000010);
      0042A2 75 38 02         [24] 2754 	mov	_si_write_reg_PARM_2,#0x02
      0042A5 E4               [12] 2755 	clr	a
      0042A6 F5 39            [12] 2756 	mov	(_si_write_reg_PARM_2 + 1),a
      0042A8 F5 3A            [12] 2757 	mov	(_si_write_reg_PARM_2 + 2),a
      0042AA F5 3B            [12] 2758 	mov	(_si_write_reg_PARM_2 + 3),a
      0042AC 75 82 02         [24] 2759 	mov	dpl,#0x02
      0042AF 12 41 A0         [24] 2760 	lcall	_si_write_reg
                           00066C  2761 	C$main.c$803$3$429 ==.
                                   2762 ;	main.c:803: led2_on(); //palSetLine(LINE_SI_SENB);
      0042B2 D2 82            [12] 2763 	setb	_PORTA_2
                           00066E  2764 	C$main.c$804$3$431 ==.
                                   2765 ;	main.c:804: led3_on(); //palSetLine(LINE_SI_SDATA);
      0042B4 D2 85            [12] 2766 	setb	_PORTA_5
                           000670  2767 	C$main.c$805$3$433 ==.
                                   2768 ;	main.c:805: led1_on(); //palSetLine(LINE_SI_SCLK);
      0042B6 D2 80            [12] 2769 	setb	_PORTA_0
                           000672  2770 	C$main.c$807$1$421 ==.
                           000672  2771 	XFmain$synth_init$0$0 ==.
      0042B8 22               [24] 2772 	ret
                                   2773 ;------------------------------------------------------------
                                   2774 ;Allocation info for local variables in function 'main'
                                   2775 ;------------------------------------------------------------
                                   2776 ;i                         Allocated to registers r6 
                                   2777 ;crit                      Allocated with name '_main_crit_1_435'
                                   2778 ;x                         Allocated to registers r7 
                                   2779 ;flg                       Allocated to registers r7 
                                   2780 ;flg                       Allocated to registers r7 
                                   2781 ;------------------------------------------------------------
                           000673  2782 	G$main$0$0 ==.
                           000673  2783 	C$main.c$810$1$421 ==.
                                   2784 ;	main.c:810: int main(void)
                                   2785 ;	-----------------------------------------
                                   2786 ;	 function main
                                   2787 ;	-----------------------------------------
      0042B9                       2788 _main:
                           000673  2789 	C$main.c$817$1$435 ==.
                                   2790 ;	main.c:817: __endasm;
                           000000  2791 	G$_start__stack$0$0	= __start__stack
                                   2792 	.globl	G$_start__stack$0$0
                           000673  2793 	C$libmftypes.h$368$4$457 ==.
                                   2794 ;	C:/Program Files (x86)/ON Semiconductor/AXSDB/libmf/include/libmftypes.h:368: EA = 1;
      0042B9 D2 AF            [12] 2795 	setb	_EA
                           000675  2796 	C$main.c$822$1$435 ==.
                                   2797 ;	main.c:822: flash_apply_calibration();
      0042BB 12 51 2D         [24] 2798 	lcall	_flash_apply_calibration
                           000678  2799 	C$main.c$823$1$435 ==.
                                   2800 ;	main.c:823: CLKCON = 0x00;
      0042BE 75 C6 00         [24] 2801 	mov	_CLKCON,#0x00
                           00067B  2802 	C$main.c$824$1$435 ==.
                                   2803 ;	main.c:824: wtimer_init();
      0042C1 12 49 6F         [24] 2804 	lcall	_wtimer_init
                           00067E  2805 	C$main.c$826$1$435 ==.
                                   2806 ;	main.c:826: if (coldstart)
      0042C4 E5 22            [12] 2807 	mov	a,_coldstart
      0042C6 70 03            [24] 2808 	jnz	00194$
      0042C8 02 43 4D         [24] 2809 	ljmp	00132$
      0042CB                       2810 00194$:
                           000685  2811 	C$main.c$828$4$438 ==.
                                   2812 ;	main.c:828: led0_off();
      0042CB C2 93            [12] 2813 	clr	_PORTC_3
                           000687  2814 	C$main.c$829$4$440 ==.
                                   2815 ;	main.c:829: led1_off();
      0042CD C2 80            [12] 2816 	clr	_PORTA_0
                           000689  2817 	C$main.c$830$4$442 ==.
                                   2818 ;	main.c:830: led2_off();
      0042CF C2 82            [12] 2819 	clr	_PORTA_2
                           00068B  2820 	C$main.c$831$4$444 ==.
                                   2821 ;	main.c:831: led3_off();
      0042D1 C2 85            [12] 2822 	clr	_PORTA_5
                           00068D  2823 	C$main.c$833$2$436 ==.
                                   2824 ;	main.c:833: display_init();
      0042D3 12 50 A1         [24] 2825 	lcall	_lcd2_init
                           000690  2826 	C$main.c$834$2$436 ==.
                                   2827 ;	main.c:834: display_setpos(0);
      0042D6 75 82 00         [24] 2828 	mov	dpl,#0x00
      0042D9 12 43 A8         [24] 2829 	lcall	_lcd2_setpos
                           000696  2830 	C$main.c$836$2$436 ==.
                                   2831 ;	main.c:836: i = axradio_init();             /* to be fixed PB3 to PC4 */
      0042DC 12 2A 95         [24] 2832 	lcall	_axradio_init
                           000699  2833 	C$main.c$838$2$436 ==.
                                   2834 ;	main.c:838: if (i != AXRADIO_ERR_NOERROR)
      0042DF E5 82            [12] 2835 	mov	a,dpl
      0042E1 FF               [12] 2836 	mov	r7,a
      0042E2 FE               [12] 2837 	mov	r6,a
      0042E3 60 14            [24] 2838 	jz	00128$
                           00069F  2839 	C$main.c$840$3$445 ==.
                                   2840 ;	main.c:840: if (i == AXRADIO_ERR_NOCHIP)
      0042E5 BE 05 02         [24] 2841 	cjne	r6,#0x05,00196$
      0042E8 80 03            [24] 2842 	sjmp	00197$
      0042EA                       2843 00196$:
      0042EA 02 43 87         [24] 2844 	ljmp	00160$
      0042ED                       2845 00197$:
                           0006A7  2846 	C$main.c$842$4$446 ==.
                                   2847 ;	main.c:842: display_writestr(radio_not_found_lcd_display);
      0042ED 90 04 CA         [24] 2848 	mov	dptr,#_radio_not_found_lcd_display
      0042F0 75 F0 00         [24] 2849 	mov	b,#0x00
      0042F3 12 54 D0         [24] 2850 	lcall	_lcd2_writestr
                           0006B0  2851 	C$main.c$849$4$446 ==.
                                   2852 ;	main.c:849: goto terminate_error;
      0042F6 02 43 87         [24] 2853 	ljmp	00160$
                           0006B3  2854 	C$main.c$852$2$436 ==.
                                   2855 ;	main.c:852: goto terminate_error;
      0042F9                       2856 00128$:
                           0006B3  2857 	C$main.c$855$2$436 ==.
                                   2858 ;	main.c:855: display_writestr(radio_lcd_display);
      0042F9 90 04 BC         [24] 2859 	mov	dptr,#_radio_lcd_display
      0042FC 75 F0 00         [24] 2860 	mov	b,#0x00
      0042FF 12 54 D0         [24] 2861 	lcall	_lcd2_writestr
                           0006BC  2862 	C$main.c$881$2$436 ==.
                                   2863 ;	main.c:881: display_writestr("RNG=");
      004302 90 5D 3A         [24] 2864 	mov	dptr,#___str_13
      004305 75 F0 80         [24] 2865 	mov	b,#0x80
      004308 12 54 D0         [24] 2866 	lcall	_lcd2_writestr
                           0006C5  2867 	C$main.c$882$2$436 ==.
                                   2868 ;	main.c:882: display_writenum16(axradio_get_pllrange(), 2, 0);     /* verify lcd2_writenum16 in libaxdvk2 */
      00430B 12 33 DD         [24] 2869 	lcall	_axradio_get_pllrange
      00430E E4               [12] 2870 	clr	a
      00430F C0 E0            [24] 2871 	push	acc
      004311 74 02            [12] 2872 	mov	a,#0x02
      004313 C0 E0            [24] 2873 	push	acc
      004315 12 45 7E         [24] 2874 	lcall	_lcd2_writenum16
      004318 15 81            [12] 2875 	dec	sp
      00431A 15 81            [12] 2876 	dec	sp
                           0006D6  2877 	C$main.c$884$3$447 ==.
                                   2878 ;	main.c:884: uint8_t x = axradio_get_pllvcoi();
      00431C 12 33 FC         [24] 2879 	lcall	_axradio_get_pllvcoi
                           0006D9  2880 	C$main.c$886$3$447 ==.
                                   2881 ;	main.c:886: if (x & 0x80)
      00431F E5 82            [12] 2882 	mov	a,dpl
      004321 FF               [12] 2883 	mov	r7,a
      004322 30 E7 20         [24] 2884 	jnb	acc.7,00130$
                           0006DF  2885 	C$main.c$888$4$448 ==.
                                   2886 ;	main.c:888: display_writestr(" VCOI=");
      004325 90 5D 3F         [24] 2887 	mov	dptr,#___str_14
      004328 75 F0 80         [24] 2888 	mov	b,#0x80
      00432B C0 07            [24] 2889 	push	ar7
      00432D 12 54 D0         [24] 2890 	lcall	_lcd2_writestr
      004330 D0 07            [24] 2891 	pop	ar7
                           0006EC  2892 	C$main.c$889$4$448 ==.
                                   2893 ;	main.c:889: display_writehex16(x, 2, 0);
      004332 E4               [12] 2894 	clr	a
      004333 FE               [12] 2895 	mov	r6,a
      004334 C0 E0            [24] 2896 	push	acc
      004336 74 02            [12] 2897 	mov	a,#0x02
      004338 C0 E0            [24] 2898 	push	acc
      00433A 8F 82            [24] 2899 	mov	dpl,r7
      00433C 8E 83            [24] 2900 	mov	dph,r6
      00433E 12 59 B1         [24] 2901 	lcall	_lcd2_writehex16
      004341 15 81            [12] 2902 	dec	sp
      004343 15 81            [12] 2903 	dec	sp
      004345                       2904 00130$:
                           0006FF  2905 	C$main.c$892$2$436 ==.
                                   2906 ;	main.c:892: delay_ms(1000); /* just to show PLL RNG */
      004345 90 03 E8         [24] 2907 	mov	dptr,#0x03e8
      004348 12 3A E1         [24] 2908 	lcall	_delay_ms
      00434B 80 05            [24] 2909 	sjmp	00133$
      00434D                       2910 00132$:
                           000707  2911 	C$main.c$898$2$449 ==.
                                   2912 ;	main.c:898: axradio_commsleepexit();
      00434D 12 3A 4C         [24] 2913 	lcall	_axradio_commsleepexit
                           00070A  2914 	C$main.c$899$2$449 ==.
                                   2915 ;	main.c:899: IE_4 = 1; /* enable radio interrupt */
      004350 D2 AC            [12] 2916 	setb	_IE_4
      004352                       2917 00133$:
                           00070C  2918 	C$main.c$902$1$435 ==.
                                   2919 ;	main.c:902: axradio_setup_pincfg2();
      004352 12 06 C2         [24] 2920 	lcall	_axradio_setup_pincfg2
                           00070F  2921 	C$main.c$905$1$435 ==.
                                   2922 ;	main.c:905: delay_ms(500);
      004355 90 01 F4         [24] 2923 	mov	dptr,#0x01f4
      004358 12 3A E1         [24] 2924 	lcall	_delay_ms
                           000715  2925 	C$main.c$906$1$435 ==.
                                   2926 ;	main.c:906: synth_init(); //initialize synthesizer.
      00435B 12 42 4C         [24] 2927 	lcall	_synth_init
                           000718  2928 	C$main.c$907$1$435 ==.
                                   2929 ;	main.c:907: delay_ms(500);
      00435E 90 01 F4         [24] 2930 	mov	dptr,#0x01f4
      004361 12 3A E1         [24] 2931 	lcall	_delay_ms
                           00071E  2932 	C$main.c$954$2$450 ==.
                                   2933 ;	main.c:954: set_receiveber();
      004364 12 40 BD         [24] 2934 	lcall	_set_receiveber
                           000721  2935 	C$main.c$964$1$435 ==.
                                   2936 ;	main.c:964: }
      004367                       2937 00158$:
                           000721  2938 	C$main.c$968$2$451 ==.
                                   2939 ;	main.c:968: wtimer_runcallbacks();
      004367 12 4B 27         [24] 2940 	lcall	_wtimer_runcallbacks
                           000724  2941 	C$main.c$970$3$451 ==.
                                   2942 ;	main.c:970: uint8_t flg = WTFLAG_CANSTANDBY;
      00436A 7F 02            [12] 2943 	mov	r7,#0x02
                           000726  2944 	C$main.c$973$3$452 ==.
                                   2945 ;	main.c:973: if (axradio_cansleep()
      00436C C0 07            [24] 2946 	push	ar7
      00436E 12 2E 87         [24] 2947 	lcall	_axradio_cansleep
      004371 E5 82            [12] 2948 	mov	a,dpl
      004373 D0 07            [24] 2949 	pop	ar7
      004375 60 09            [24] 2950 	jz	00149$
                           000731  2951 	C$main.c$977$3$452 ==.
                                   2952 ;	main.c:977: && display_txidle())
      004377 12 50 97         [24] 2953 	lcall	_lcd2_txidle
      00437A E5 82            [12] 2954 	mov	a,dpl
      00437C 60 02            [24] 2955 	jz	00149$
                           000738  2956 	C$main.c$978$3$452 ==.
                                   2957 ;	main.c:978: flg |= WTFLAG_CANSLEEP;
      00437E 7F 03            [12] 2958 	mov	r7,#0x03
      004380                       2959 00149$:
                           00073A  2960 	C$main.c$980$3$452 ==.
                                   2961 ;	main.c:980: wtimer_idle(flg);
      004380 8F 82            [24] 2962 	mov	dpl,r7
      004382 12 4A A3         [24] 2963 	lcall	_wtimer_idle
                           00073F  2964 	C$main.c$984$1$435 ==.
                                   2965 ;	main.c:984: terminate_error:
      004385 80 E0            [24] 2966 	sjmp	00158$
      004387                       2967 00160$:
                           000741  2968 	C$main.c$987$2$453 ==.
                                   2969 ;	main.c:987: wtimer_runcallbacks();
      004387 12 4B 27         [24] 2970 	lcall	_wtimer_runcallbacks
                           000744  2971 	C$main.c$989$3$453 ==.
                                   2972 ;	main.c:989: uint8_t flg = WTFLAG_CANSTANDBY;
      00438A 7F 02            [12] 2973 	mov	r7,#0x02
                           000746  2974 	C$main.c$992$3$454 ==.
                                   2975 ;	main.c:992: if (axradio_cansleep()
      00438C C0 07            [24] 2976 	push	ar7
      00438E 12 2E 87         [24] 2977 	lcall	_axradio_cansleep
      004391 E5 82            [12] 2978 	mov	a,dpl
      004393 D0 07            [24] 2979 	pop	ar7
      004395 60 09            [24] 2980 	jz	00154$
                           000751  2981 	C$main.c$996$3$454 ==.
                                   2982 ;	main.c:996: && display_txidle())
      004397 12 50 97         [24] 2983 	lcall	_lcd2_txidle
      00439A E5 82            [12] 2984 	mov	a,dpl
      00439C 60 02            [24] 2985 	jz	00154$
                           000758  2986 	C$main.c$997$3$454 ==.
                                   2987 ;	main.c:997: flg |= WTFLAG_CANSLEEP;
      00439E 7F 03            [12] 2988 	mov	r7,#0x03
      0043A0                       2989 00154$:
                           00075A  2990 	C$main.c$999$3$454 ==.
                                   2991 ;	main.c:999: wtimer_idle(flg);
      0043A0 8F 82            [24] 2992 	mov	dpl,r7
      0043A2 12 4A A3         [24] 2993 	lcall	_wtimer_idle
      0043A5 80 E0            [24] 2994 	sjmp	00160$
                           000761  2995 	C$main.c$1002$1$435 ==.
                           000761  2996 	XG$main$0$0 ==.
      0043A7 22               [24] 2997 	ret
                                   2998 	.area CSEG    (CODE)
                                   2999 	.area CONST   (CODE)
                           000000  3000 G$txpattern$0$0 == .
      005CAF                       3001 _txpattern:
      005CAF 55                    3002 	.db #0x55	; 85	'U'
      005CB0 55                    3003 	.db #0x55	; 85	'U'
      005CB1 55                    3004 	.db #0x55	; 85	'U'
      005CB2 55                    3005 	.db #0x55	; 85	'U'
      005CB3 55                    3006 	.db #0x55	; 85	'U'
      005CB4 55                    3007 	.db #0x55	; 85	'U'
      005CB5 55                    3008 	.db #0x55	; 85	'U'
      005CB6 55                    3009 	.db #0x55	; 85	'U'
                           000008  3010 G$onepattern$0$0 == .
      005CB7                       3011 _onepattern:
      005CB7 FF                    3012 	.db #0xff	; 255
      005CB8 FF                    3013 	.db #0xff	; 255
      005CB9 FF                    3014 	.db #0xff	; 255
      005CBA FF                    3015 	.db #0xff	; 255
      005CBB FF                    3016 	.db #0xff	; 255
      005CBC FF                    3017 	.db #0xff	; 255
      005CBD FF                    3018 	.db #0xff	; 255
      005CBE FF                    3019 	.db #0xff	; 255
      005CBF FF                    3020 	.db #0xff	; 255
      005CC0 FF                    3021 	.db #0xff	; 255
      005CC1 FF                    3022 	.db #0xff	; 255
      005CC2 FF                    3023 	.db #0xff	; 255
      005CC3 FF                    3024 	.db #0xff	; 255
      005CC4 FF                    3025 	.db #0xff	; 255
      005CC5 FF                    3026 	.db #0xff	; 255
      005CC6 FF                    3027 	.db #0xff	; 255
                           000018  3028 G$fourfsk_tx1010_pattern$0$0 == .
      005CC7                       3029 _fourfsk_tx1010_pattern:
      005CC7 1E                    3030 	.db #0x1e	; 30
      005CC8 1E                    3031 	.db #0x1e	; 30
      005CC9 1E                    3032 	.db #0x1e	; 30
      005CCA 1E                    3033 	.db #0x1e	; 30
      005CCB 1E                    3034 	.db #0x1e	; 30
      005CCC 1E                    3035 	.db #0x1e	; 30
      005CCD 1E                    3036 	.db #0x1e	; 30
      005CCE 1E                    3037 	.db #0x1e	; 30
                           000020  3038 G$non_fourfsk_tx1010_pattern$0$0 == .
      005CCF                       3039 _non_fourfsk_tx1010_pattern:
      005CCF 55                    3040 	.db #0x55	; 85	'U'
      005CD0 55                    3041 	.db #0x55	; 85	'U'
      005CD1 55                    3042 	.db #0x55	; 85	'U'
      005CD2 55                    3043 	.db #0x55	; 85	'U'
      005CD3 55                    3044 	.db #0x55	; 85	'U'
      005CD4 55                    3045 	.db #0x55	; 85	'U'
      005CD5 55                    3046 	.db #0x55	; 85	'U'
      005CD6 55                    3047 	.db #0x55	; 85	'U'
                           000028  3048 Fmain$__str_0$0$0 == .
      005CD7                       3049 ___str_0:
      005CD7 30 2E                 3050 	.ascii "0."
      005CD9 00                    3051 	.db 0x00
                           00002B  3052 Fmain$__str_1$0$0 == .
      005CDA                       3053 ___str_1:
      005CDA 4F 3A                 3054 	.ascii "O:"
      005CDC 00                    3055 	.db 0x00
                           00002E  3056 Fmain$__str_2$0$0 == .
      005CDD                       3057 ___str_2:
      005CDD 54 58 20 43 57 2C 20  3058 	.ascii "TX CW, PA "
             50 41 20
      005CE7 00                    3059 	.db 0x00
                           000039  3060 Fmain$__str_3$0$0 == .
      005CE8                       3061 ___str_3:
      005CE8 44 49 20              3062 	.ascii "DI "
      005CEB 00                    3063 	.db 0x00
                           00003D  3064 Fmain$__str_4$0$0 == .
      005CEC                       3065 ___str_4:
      005CEC 53 45 20              3066 	.ascii "SE "
      005CEF 00                    3067 	.db 0x00
                           000041  3068 Fmain$__str_5$0$0 == .
      005CF0                       3069 ___str_5:
      005CF0 54 58 20 52 4E 44 2C  3070 	.ascii "TX RND, PA "
             20 50 41 20
      005CFB 00                    3071 	.db 0x00
                           00004D  3072 Fmain$__str_6$0$0 == .
      005CFC                       3073 ___str_6:
      005CFC 54 58 20 50 4E 31 37  3074 	.ascii "TX PN17, PA "
             2C 20 50 41 20
      005D08 00                    3075 	.db 0x00
                           00005A  3076 Fmain$__str_7$0$0 == .
      005D09                       3077 ___str_7:
      005D09 54 58 20 50 4E 31 35  3078 	.ascii "TX PN15, PA "
             2C 20 50 41 20
      005D15 00                    3079 	.db 0x00
                           000067  3080 Fmain$__str_8$0$0 == .
      005D16                       3081 ___str_8:
      005D16 54 58 20 50 4E 39 2C  3082 	.ascii "TX PN9, PA "
             20 50 41 20
      005D21 00                    3083 	.db 0x00
                           000073  3084 Fmain$__str_9$0$0 == .
      005D22                       3085 ___str_9:
      005D22 54 58 20 50 41 54 2C  3086 	.ascii "TX PAT, PA "
             20 50 41 20
      005D2D 00                    3087 	.db 0x00
                           00007F  3088 Fmain$__str_10$0$0 == .
      005D2E                       3089 ___str_10:
      005D2E 52 58                 3090 	.ascii "RX"
      005D30 00                    3091 	.db 0x00
                           000082  3092 Fmain$__str_11$0$0 == .
      005D31                       3093 ___str_11:
      005D31 42 45 52 3D 3F        3094 	.ascii "BER=?"
      005D36 00                    3095 	.db 0x00
                           000088  3096 Fmain$__str_12$0$0 == .
      005D37                       3097 ___str_12:
      005D37 52 3A                 3098 	.ascii "R:"
      005D39 00                    3099 	.db 0x00
                           00008B  3100 Fmain$__str_13$0$0 == .
      005D3A                       3101 ___str_13:
      005D3A 52 4E 47 3D           3102 	.ascii "RNG="
      005D3E 00                    3103 	.db 0x00
                           000090  3104 Fmain$__str_14$0$0 == .
      005D3F                       3105 ___str_14:
      005D3F 20 56 43 4F 49 3D     3106 	.ascii " VCOI="
      005D45 00                    3107 	.db 0x00
                                   3108 	.area XINIT   (CODE)
                                   3109 	.area CABS    (ABS,CODE)
