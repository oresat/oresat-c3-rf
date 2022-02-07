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
                                     11 	.globl _main
                                     12 	.globl __sdcc_external_startup
                                     13 	.globl _lcd2_display_radio_error
                                     14 	.globl _delay_ms
                                     15 	.globl _memcpy
                                     16 	.globl _lcd2_writehex16
                                     17 	.globl _lcd2_writenum16
                                     18 	.globl _lcd2_writestr
                                     19 	.globl _lcd2_clear
                                     20 	.globl _lcd2_setpos
                                     21 	.globl _lcd2_portinit
                                     22 	.globl _lcd2_init
                                     23 	.globl _lcd2_txidle
                                     24 	.globl _wtimer0_correctinterval
                                     25 	.globl _wtimer0_addrelative
                                     26 	.globl _wtimer0_addabsolute
                                     27 	.globl _wtimer_runcallbacks
                                     28 	.globl _wtimer_idle
                                     29 	.globl _wtimer_init
                                     30 	.globl _wtimer1_setconfig
                                     31 	.globl _wtimer0_setconfig
                                     32 	.globl _flash_apply_calibration
                                     33 	.globl _axradio_commsleepexit
                                     34 	.globl _axradio_setup_pincfg2
                                     35 	.globl _axradio_setup_pincfg1
                                     36 	.globl _axradio_transmit
                                     37 	.globl _axradio_set_default_remote_address
                                     38 	.globl _axradio_set_local_address
                                     39 	.globl _axradio_get_pllvcoi
                                     40 	.globl _axradio_get_pllrange
                                     41 	.globl _axradio_set_mode
                                     42 	.globl _axradio_cansleep
                                     43 	.globl _axradio_init
                                     44 	.globl _PORTC_7
                                     45 	.globl _PORTC_6
                                     46 	.globl _PORTC_5
                                     47 	.globl _PORTC_4
                                     48 	.globl _PORTC_3
                                     49 	.globl _PORTC_2
                                     50 	.globl _PORTC_1
                                     51 	.globl _PORTC_0
                                     52 	.globl _PORTB_7
                                     53 	.globl _PORTB_6
                                     54 	.globl _PORTB_5
                                     55 	.globl _PORTB_4
                                     56 	.globl _PORTB_3
                                     57 	.globl _PORTB_2
                                     58 	.globl _PORTB_1
                                     59 	.globl _PORTB_0
                                     60 	.globl _PORTA_7
                                     61 	.globl _PORTA_6
                                     62 	.globl _PORTA_5
                                     63 	.globl _PORTA_4
                                     64 	.globl _PORTA_3
                                     65 	.globl _PORTA_2
                                     66 	.globl _PORTA_1
                                     67 	.globl _PORTA_0
                                     68 	.globl _PINC_7
                                     69 	.globl _PINC_6
                                     70 	.globl _PINC_5
                                     71 	.globl _PINC_4
                                     72 	.globl _PINC_3
                                     73 	.globl _PINC_2
                                     74 	.globl _PINC_1
                                     75 	.globl _PINC_0
                                     76 	.globl _PINB_7
                                     77 	.globl _PINB_6
                                     78 	.globl _PINB_5
                                     79 	.globl _PINB_4
                                     80 	.globl _PINB_3
                                     81 	.globl _PINB_2
                                     82 	.globl _PINB_1
                                     83 	.globl _PINB_0
                                     84 	.globl _PINA_7
                                     85 	.globl _PINA_6
                                     86 	.globl _PINA_5
                                     87 	.globl _PINA_4
                                     88 	.globl _PINA_3
                                     89 	.globl _PINA_2
                                     90 	.globl _PINA_1
                                     91 	.globl _PINA_0
                                     92 	.globl _CY
                                     93 	.globl _AC
                                     94 	.globl _F0
                                     95 	.globl _RS1
                                     96 	.globl _RS0
                                     97 	.globl _OV
                                     98 	.globl _F1
                                     99 	.globl _P
                                    100 	.globl _IP_7
                                    101 	.globl _IP_6
                                    102 	.globl _IP_5
                                    103 	.globl _IP_4
                                    104 	.globl _IP_3
                                    105 	.globl _IP_2
                                    106 	.globl _IP_1
                                    107 	.globl _IP_0
                                    108 	.globl _EA
                                    109 	.globl _IE_7
                                    110 	.globl _IE_6
                                    111 	.globl _IE_5
                                    112 	.globl _IE_4
                                    113 	.globl _IE_3
                                    114 	.globl _IE_2
                                    115 	.globl _IE_1
                                    116 	.globl _IE_0
                                    117 	.globl _EIP_7
                                    118 	.globl _EIP_6
                                    119 	.globl _EIP_5
                                    120 	.globl _EIP_4
                                    121 	.globl _EIP_3
                                    122 	.globl _EIP_2
                                    123 	.globl _EIP_1
                                    124 	.globl _EIP_0
                                    125 	.globl _EIE_7
                                    126 	.globl _EIE_6
                                    127 	.globl _EIE_5
                                    128 	.globl _EIE_4
                                    129 	.globl _EIE_3
                                    130 	.globl _EIE_2
                                    131 	.globl _EIE_1
                                    132 	.globl _EIE_0
                                    133 	.globl _E2IP_7
                                    134 	.globl _E2IP_6
                                    135 	.globl _E2IP_5
                                    136 	.globl _E2IP_4
                                    137 	.globl _E2IP_3
                                    138 	.globl _E2IP_2
                                    139 	.globl _E2IP_1
                                    140 	.globl _E2IP_0
                                    141 	.globl _E2IE_7
                                    142 	.globl _E2IE_6
                                    143 	.globl _E2IE_5
                                    144 	.globl _E2IE_4
                                    145 	.globl _E2IE_3
                                    146 	.globl _E2IE_2
                                    147 	.globl _E2IE_1
                                    148 	.globl _E2IE_0
                                    149 	.globl _B_7
                                    150 	.globl _B_6
                                    151 	.globl _B_5
                                    152 	.globl _B_4
                                    153 	.globl _B_3
                                    154 	.globl _B_2
                                    155 	.globl _B_1
                                    156 	.globl _B_0
                                    157 	.globl _ACC_7
                                    158 	.globl _ACC_6
                                    159 	.globl _ACC_5
                                    160 	.globl _ACC_4
                                    161 	.globl _ACC_3
                                    162 	.globl _ACC_2
                                    163 	.globl _ACC_1
                                    164 	.globl _ACC_0
                                    165 	.globl _WTSTAT
                                    166 	.globl _WTIRQEN
                                    167 	.globl _WTEVTD
                                    168 	.globl _WTEVTD1
                                    169 	.globl _WTEVTD0
                                    170 	.globl _WTEVTC
                                    171 	.globl _WTEVTC1
                                    172 	.globl _WTEVTC0
                                    173 	.globl _WTEVTB
                                    174 	.globl _WTEVTB1
                                    175 	.globl _WTEVTB0
                                    176 	.globl _WTEVTA
                                    177 	.globl _WTEVTA1
                                    178 	.globl _WTEVTA0
                                    179 	.globl _WTCNTR1
                                    180 	.globl _WTCNTB
                                    181 	.globl _WTCNTB1
                                    182 	.globl _WTCNTB0
                                    183 	.globl _WTCNTA
                                    184 	.globl _WTCNTA1
                                    185 	.globl _WTCNTA0
                                    186 	.globl _WTCFGB
                                    187 	.globl _WTCFGA
                                    188 	.globl _WDTRESET
                                    189 	.globl _WDTCFG
                                    190 	.globl _U1STATUS
                                    191 	.globl _U1SHREG
                                    192 	.globl _U1MODE
                                    193 	.globl _U1CTRL
                                    194 	.globl _U0STATUS
                                    195 	.globl _U0SHREG
                                    196 	.globl _U0MODE
                                    197 	.globl _U0CTRL
                                    198 	.globl _T2STATUS
                                    199 	.globl _T2PERIOD
                                    200 	.globl _T2PERIOD1
                                    201 	.globl _T2PERIOD0
                                    202 	.globl _T2MODE
                                    203 	.globl _T2CNT
                                    204 	.globl _T2CNT1
                                    205 	.globl _T2CNT0
                                    206 	.globl _T2CLKSRC
                                    207 	.globl _T1STATUS
                                    208 	.globl _T1PERIOD
                                    209 	.globl _T1PERIOD1
                                    210 	.globl _T1PERIOD0
                                    211 	.globl _T1MODE
                                    212 	.globl _T1CNT
                                    213 	.globl _T1CNT1
                                    214 	.globl _T1CNT0
                                    215 	.globl _T1CLKSRC
                                    216 	.globl _T0STATUS
                                    217 	.globl _T0PERIOD
                                    218 	.globl _T0PERIOD1
                                    219 	.globl _T0PERIOD0
                                    220 	.globl _T0MODE
                                    221 	.globl _T0CNT
                                    222 	.globl _T0CNT1
                                    223 	.globl _T0CNT0
                                    224 	.globl _T0CLKSRC
                                    225 	.globl _SPSTATUS
                                    226 	.globl _SPSHREG
                                    227 	.globl _SPMODE
                                    228 	.globl _SPCLKSRC
                                    229 	.globl _RADIOSTAT
                                    230 	.globl _RADIOSTAT1
                                    231 	.globl _RADIOSTAT0
                                    232 	.globl _RADIODATA
                                    233 	.globl _RADIODATA3
                                    234 	.globl _RADIODATA2
                                    235 	.globl _RADIODATA1
                                    236 	.globl _RADIODATA0
                                    237 	.globl _RADIOADDR
                                    238 	.globl _RADIOADDR1
                                    239 	.globl _RADIOADDR0
                                    240 	.globl _RADIOACC
                                    241 	.globl _OC1STATUS
                                    242 	.globl _OC1PIN
                                    243 	.globl _OC1MODE
                                    244 	.globl _OC1COMP
                                    245 	.globl _OC1COMP1
                                    246 	.globl _OC1COMP0
                                    247 	.globl _OC0STATUS
                                    248 	.globl _OC0PIN
                                    249 	.globl _OC0MODE
                                    250 	.globl _OC0COMP
                                    251 	.globl _OC0COMP1
                                    252 	.globl _OC0COMP0
                                    253 	.globl _NVSTATUS
                                    254 	.globl _NVKEY
                                    255 	.globl _NVDATA
                                    256 	.globl _NVDATA1
                                    257 	.globl _NVDATA0
                                    258 	.globl _NVADDR
                                    259 	.globl _NVADDR1
                                    260 	.globl _NVADDR0
                                    261 	.globl _IC1STATUS
                                    262 	.globl _IC1MODE
                                    263 	.globl _IC1CAPT
                                    264 	.globl _IC1CAPT1
                                    265 	.globl _IC1CAPT0
                                    266 	.globl _IC0STATUS
                                    267 	.globl _IC0MODE
                                    268 	.globl _IC0CAPT
                                    269 	.globl _IC0CAPT1
                                    270 	.globl _IC0CAPT0
                                    271 	.globl _PORTR
                                    272 	.globl _PORTC
                                    273 	.globl _PORTB
                                    274 	.globl _PORTA
                                    275 	.globl _PINR
                                    276 	.globl _PINC
                                    277 	.globl _PINB
                                    278 	.globl _PINA
                                    279 	.globl _DIRR
                                    280 	.globl _DIRC
                                    281 	.globl _DIRB
                                    282 	.globl _DIRA
                                    283 	.globl _DBGLNKSTAT
                                    284 	.globl _DBGLNKBUF
                                    285 	.globl _CODECONFIG
                                    286 	.globl _CLKSTAT
                                    287 	.globl _CLKCON
                                    288 	.globl _ANALOGCOMP
                                    289 	.globl _ADCCONV
                                    290 	.globl _ADCCLKSRC
                                    291 	.globl _ADCCH3CONFIG
                                    292 	.globl _ADCCH2CONFIG
                                    293 	.globl _ADCCH1CONFIG
                                    294 	.globl _ADCCH0CONFIG
                                    295 	.globl __XPAGE
                                    296 	.globl _XPAGE
                                    297 	.globl _SP
                                    298 	.globl _PSW
                                    299 	.globl _PCON
                                    300 	.globl _IP
                                    301 	.globl _IE
                                    302 	.globl _EIP
                                    303 	.globl _EIE
                                    304 	.globl _E2IP
                                    305 	.globl _E2IE
                                    306 	.globl _DPS
                                    307 	.globl _DPTR1
                                    308 	.globl _DPTR0
                                    309 	.globl _DPL1
                                    310 	.globl _DPL
                                    311 	.globl _DPH1
                                    312 	.globl _DPH
                                    313 	.globl _B
                                    314 	.globl _ACC
                                    315 	.globl _wakeup_desc
                                    316 	.globl _XTALREADY
                                    317 	.globl _XTALOSC
                                    318 	.globl _XTALAMPL
                                    319 	.globl _SILICONREV
                                    320 	.globl _SCRATCH3
                                    321 	.globl _SCRATCH2
                                    322 	.globl _SCRATCH1
                                    323 	.globl _SCRATCH0
                                    324 	.globl _RADIOMUX
                                    325 	.globl _RADIOFSTATADDR
                                    326 	.globl _RADIOFSTATADDR1
                                    327 	.globl _RADIOFSTATADDR0
                                    328 	.globl _RADIOFDATAADDR
                                    329 	.globl _RADIOFDATAADDR1
                                    330 	.globl _RADIOFDATAADDR0
                                    331 	.globl _OSCRUN
                                    332 	.globl _OSCREADY
                                    333 	.globl _OSCFORCERUN
                                    334 	.globl _OSCCALIB
                                    335 	.globl _MISCCTRL
                                    336 	.globl _LPXOSCGM
                                    337 	.globl _LPOSCREF
                                    338 	.globl _LPOSCREF1
                                    339 	.globl _LPOSCREF0
                                    340 	.globl _LPOSCPER
                                    341 	.globl _LPOSCPER1
                                    342 	.globl _LPOSCPER0
                                    343 	.globl _LPOSCKFILT
                                    344 	.globl _LPOSCKFILT1
                                    345 	.globl _LPOSCKFILT0
                                    346 	.globl _LPOSCFREQ
                                    347 	.globl _LPOSCFREQ1
                                    348 	.globl _LPOSCFREQ0
                                    349 	.globl _LPOSCCONFIG
                                    350 	.globl _PINSEL
                                    351 	.globl _PINCHGC
                                    352 	.globl _PINCHGB
                                    353 	.globl _PINCHGA
                                    354 	.globl _PALTRADIO
                                    355 	.globl _PALTC
                                    356 	.globl _PALTB
                                    357 	.globl _PALTA
                                    358 	.globl _INTCHGC
                                    359 	.globl _INTCHGB
                                    360 	.globl _INTCHGA
                                    361 	.globl _EXTIRQ
                                    362 	.globl _GPIOENABLE
                                    363 	.globl _ANALOGA
                                    364 	.globl _FRCOSCREF
                                    365 	.globl _FRCOSCREF1
                                    366 	.globl _FRCOSCREF0
                                    367 	.globl _FRCOSCPER
                                    368 	.globl _FRCOSCPER1
                                    369 	.globl _FRCOSCPER0
                                    370 	.globl _FRCOSCKFILT
                                    371 	.globl _FRCOSCKFILT1
                                    372 	.globl _FRCOSCKFILT0
                                    373 	.globl _FRCOSCFREQ
                                    374 	.globl _FRCOSCFREQ1
                                    375 	.globl _FRCOSCFREQ0
                                    376 	.globl _FRCOSCCTRL
                                    377 	.globl _FRCOSCCONFIG
                                    378 	.globl _DMA1CONFIG
                                    379 	.globl _DMA1ADDR
                                    380 	.globl _DMA1ADDR1
                                    381 	.globl _DMA1ADDR0
                                    382 	.globl _DMA0CONFIG
                                    383 	.globl _DMA0ADDR
                                    384 	.globl _DMA0ADDR1
                                    385 	.globl _DMA0ADDR0
                                    386 	.globl _ADCTUNE2
                                    387 	.globl _ADCTUNE1
                                    388 	.globl _ADCTUNE0
                                    389 	.globl _ADCCH3VAL
                                    390 	.globl _ADCCH3VAL1
                                    391 	.globl _ADCCH3VAL0
                                    392 	.globl _ADCCH2VAL
                                    393 	.globl _ADCCH2VAL1
                                    394 	.globl _ADCCH2VAL0
                                    395 	.globl _ADCCH1VAL
                                    396 	.globl _ADCCH1VAL1
                                    397 	.globl _ADCCH1VAL0
                                    398 	.globl _ADCCH0VAL
                                    399 	.globl _ADCCH0VAL1
                                    400 	.globl _ADCCH0VAL0
                                    401 	.globl _coldstart
                                    402 	.globl _pkt_counter
                                    403 	.globl _init_synth_only_once
                                    404 	.globl _axradio_statuschange
                                    405 	.globl _enable_radio_interrupt_in_mcu_pin
                                    406 	.globl _disable_radio_interrupt_in_mcu_pin
                                    407 ;--------------------------------------------------------
                                    408 ; special function registers
                                    409 ;--------------------------------------------------------
                                    410 	.area RSEG    (ABS,DATA)
      000000                        411 	.org 0x0000
                           0000E0   412 G$ACC$0$0 == 0x00e0
                           0000E0   413 _ACC	=	0x00e0
                           0000F0   414 G$B$0$0 == 0x00f0
                           0000F0   415 _B	=	0x00f0
                           000083   416 G$DPH$0$0 == 0x0083
                           000083   417 _DPH	=	0x0083
                           000085   418 G$DPH1$0$0 == 0x0085
                           000085   419 _DPH1	=	0x0085
                           000082   420 G$DPL$0$0 == 0x0082
                           000082   421 _DPL	=	0x0082
                           000084   422 G$DPL1$0$0 == 0x0084
                           000084   423 _DPL1	=	0x0084
                           008382   424 G$DPTR0$0$0 == 0x8382
                           008382   425 _DPTR0	=	0x8382
                           008584   426 G$DPTR1$0$0 == 0x8584
                           008584   427 _DPTR1	=	0x8584
                           000086   428 G$DPS$0$0 == 0x0086
                           000086   429 _DPS	=	0x0086
                           0000A0   430 G$E2IE$0$0 == 0x00a0
                           0000A0   431 _E2IE	=	0x00a0
                           0000C0   432 G$E2IP$0$0 == 0x00c0
                           0000C0   433 _E2IP	=	0x00c0
                           000098   434 G$EIE$0$0 == 0x0098
                           000098   435 _EIE	=	0x0098
                           0000B0   436 G$EIP$0$0 == 0x00b0
                           0000B0   437 _EIP	=	0x00b0
                           0000A8   438 G$IE$0$0 == 0x00a8
                           0000A8   439 _IE	=	0x00a8
                           0000B8   440 G$IP$0$0 == 0x00b8
                           0000B8   441 _IP	=	0x00b8
                           000087   442 G$PCON$0$0 == 0x0087
                           000087   443 _PCON	=	0x0087
                           0000D0   444 G$PSW$0$0 == 0x00d0
                           0000D0   445 _PSW	=	0x00d0
                           000081   446 G$SP$0$0 == 0x0081
                           000081   447 _SP	=	0x0081
                           0000D9   448 G$XPAGE$0$0 == 0x00d9
                           0000D9   449 _XPAGE	=	0x00d9
                           0000D9   450 G$_XPAGE$0$0 == 0x00d9
                           0000D9   451 __XPAGE	=	0x00d9
                           0000CA   452 G$ADCCH0CONFIG$0$0 == 0x00ca
                           0000CA   453 _ADCCH0CONFIG	=	0x00ca
                           0000CB   454 G$ADCCH1CONFIG$0$0 == 0x00cb
                           0000CB   455 _ADCCH1CONFIG	=	0x00cb
                           0000D2   456 G$ADCCH2CONFIG$0$0 == 0x00d2
                           0000D2   457 _ADCCH2CONFIG	=	0x00d2
                           0000D3   458 G$ADCCH3CONFIG$0$0 == 0x00d3
                           0000D3   459 _ADCCH3CONFIG	=	0x00d3
                           0000D1   460 G$ADCCLKSRC$0$0 == 0x00d1
                           0000D1   461 _ADCCLKSRC	=	0x00d1
                           0000C9   462 G$ADCCONV$0$0 == 0x00c9
                           0000C9   463 _ADCCONV	=	0x00c9
                           0000E1   464 G$ANALOGCOMP$0$0 == 0x00e1
                           0000E1   465 _ANALOGCOMP	=	0x00e1
                           0000C6   466 G$CLKCON$0$0 == 0x00c6
                           0000C6   467 _CLKCON	=	0x00c6
                           0000C7   468 G$CLKSTAT$0$0 == 0x00c7
                           0000C7   469 _CLKSTAT	=	0x00c7
                           000097   470 G$CODECONFIG$0$0 == 0x0097
                           000097   471 _CODECONFIG	=	0x0097
                           0000E3   472 G$DBGLNKBUF$0$0 == 0x00e3
                           0000E3   473 _DBGLNKBUF	=	0x00e3
                           0000E2   474 G$DBGLNKSTAT$0$0 == 0x00e2
                           0000E2   475 _DBGLNKSTAT	=	0x00e2
                           000089   476 G$DIRA$0$0 == 0x0089
                           000089   477 _DIRA	=	0x0089
                           00008A   478 G$DIRB$0$0 == 0x008a
                           00008A   479 _DIRB	=	0x008a
                           00008B   480 G$DIRC$0$0 == 0x008b
                           00008B   481 _DIRC	=	0x008b
                           00008E   482 G$DIRR$0$0 == 0x008e
                           00008E   483 _DIRR	=	0x008e
                           0000C8   484 G$PINA$0$0 == 0x00c8
                           0000C8   485 _PINA	=	0x00c8
                           0000E8   486 G$PINB$0$0 == 0x00e8
                           0000E8   487 _PINB	=	0x00e8
                           0000F8   488 G$PINC$0$0 == 0x00f8
                           0000F8   489 _PINC	=	0x00f8
                           00008D   490 G$PINR$0$0 == 0x008d
                           00008D   491 _PINR	=	0x008d
                           000080   492 G$PORTA$0$0 == 0x0080
                           000080   493 _PORTA	=	0x0080
                           000088   494 G$PORTB$0$0 == 0x0088
                           000088   495 _PORTB	=	0x0088
                           000090   496 G$PORTC$0$0 == 0x0090
                           000090   497 _PORTC	=	0x0090
                           00008C   498 G$PORTR$0$0 == 0x008c
                           00008C   499 _PORTR	=	0x008c
                           0000CE   500 G$IC0CAPT0$0$0 == 0x00ce
                           0000CE   501 _IC0CAPT0	=	0x00ce
                           0000CF   502 G$IC0CAPT1$0$0 == 0x00cf
                           0000CF   503 _IC0CAPT1	=	0x00cf
                           00CFCE   504 G$IC0CAPT$0$0 == 0xcfce
                           00CFCE   505 _IC0CAPT	=	0xcfce
                           0000CC   506 G$IC0MODE$0$0 == 0x00cc
                           0000CC   507 _IC0MODE	=	0x00cc
                           0000CD   508 G$IC0STATUS$0$0 == 0x00cd
                           0000CD   509 _IC0STATUS	=	0x00cd
                           0000D6   510 G$IC1CAPT0$0$0 == 0x00d6
                           0000D6   511 _IC1CAPT0	=	0x00d6
                           0000D7   512 G$IC1CAPT1$0$0 == 0x00d7
                           0000D7   513 _IC1CAPT1	=	0x00d7
                           00D7D6   514 G$IC1CAPT$0$0 == 0xd7d6
                           00D7D6   515 _IC1CAPT	=	0xd7d6
                           0000D4   516 G$IC1MODE$0$0 == 0x00d4
                           0000D4   517 _IC1MODE	=	0x00d4
                           0000D5   518 G$IC1STATUS$0$0 == 0x00d5
                           0000D5   519 _IC1STATUS	=	0x00d5
                           000092   520 G$NVADDR0$0$0 == 0x0092
                           000092   521 _NVADDR0	=	0x0092
                           000093   522 G$NVADDR1$0$0 == 0x0093
                           000093   523 _NVADDR1	=	0x0093
                           009392   524 G$NVADDR$0$0 == 0x9392
                           009392   525 _NVADDR	=	0x9392
                           000094   526 G$NVDATA0$0$0 == 0x0094
                           000094   527 _NVDATA0	=	0x0094
                           000095   528 G$NVDATA1$0$0 == 0x0095
                           000095   529 _NVDATA1	=	0x0095
                           009594   530 G$NVDATA$0$0 == 0x9594
                           009594   531 _NVDATA	=	0x9594
                           000096   532 G$NVKEY$0$0 == 0x0096
                           000096   533 _NVKEY	=	0x0096
                           000091   534 G$NVSTATUS$0$0 == 0x0091
                           000091   535 _NVSTATUS	=	0x0091
                           0000BC   536 G$OC0COMP0$0$0 == 0x00bc
                           0000BC   537 _OC0COMP0	=	0x00bc
                           0000BD   538 G$OC0COMP1$0$0 == 0x00bd
                           0000BD   539 _OC0COMP1	=	0x00bd
                           00BDBC   540 G$OC0COMP$0$0 == 0xbdbc
                           00BDBC   541 _OC0COMP	=	0xbdbc
                           0000B9   542 G$OC0MODE$0$0 == 0x00b9
                           0000B9   543 _OC0MODE	=	0x00b9
                           0000BA   544 G$OC0PIN$0$0 == 0x00ba
                           0000BA   545 _OC0PIN	=	0x00ba
                           0000BB   546 G$OC0STATUS$0$0 == 0x00bb
                           0000BB   547 _OC0STATUS	=	0x00bb
                           0000C4   548 G$OC1COMP0$0$0 == 0x00c4
                           0000C4   549 _OC1COMP0	=	0x00c4
                           0000C5   550 G$OC1COMP1$0$0 == 0x00c5
                           0000C5   551 _OC1COMP1	=	0x00c5
                           00C5C4   552 G$OC1COMP$0$0 == 0xc5c4
                           00C5C4   553 _OC1COMP	=	0xc5c4
                           0000C1   554 G$OC1MODE$0$0 == 0x00c1
                           0000C1   555 _OC1MODE	=	0x00c1
                           0000C2   556 G$OC1PIN$0$0 == 0x00c2
                           0000C2   557 _OC1PIN	=	0x00c2
                           0000C3   558 G$OC1STATUS$0$0 == 0x00c3
                           0000C3   559 _OC1STATUS	=	0x00c3
                           0000B1   560 G$RADIOACC$0$0 == 0x00b1
                           0000B1   561 _RADIOACC	=	0x00b1
                           0000B3   562 G$RADIOADDR0$0$0 == 0x00b3
                           0000B3   563 _RADIOADDR0	=	0x00b3
                           0000B2   564 G$RADIOADDR1$0$0 == 0x00b2
                           0000B2   565 _RADIOADDR1	=	0x00b2
                           00B2B3   566 G$RADIOADDR$0$0 == 0xb2b3
                           00B2B3   567 _RADIOADDR	=	0xb2b3
                           0000B7   568 G$RADIODATA0$0$0 == 0x00b7
                           0000B7   569 _RADIODATA0	=	0x00b7
                           0000B6   570 G$RADIODATA1$0$0 == 0x00b6
                           0000B6   571 _RADIODATA1	=	0x00b6
                           0000B5   572 G$RADIODATA2$0$0 == 0x00b5
                           0000B5   573 _RADIODATA2	=	0x00b5
                           0000B4   574 G$RADIODATA3$0$0 == 0x00b4
                           0000B4   575 _RADIODATA3	=	0x00b4
                           B4B5B6B7   576 G$RADIODATA$0$0 == 0xb4b5b6b7
                           B4B5B6B7   577 _RADIODATA	=	0xb4b5b6b7
                           0000BE   578 G$RADIOSTAT0$0$0 == 0x00be
                           0000BE   579 _RADIOSTAT0	=	0x00be
                           0000BF   580 G$RADIOSTAT1$0$0 == 0x00bf
                           0000BF   581 _RADIOSTAT1	=	0x00bf
                           00BFBE   582 G$RADIOSTAT$0$0 == 0xbfbe
                           00BFBE   583 _RADIOSTAT	=	0xbfbe
                           0000DF   584 G$SPCLKSRC$0$0 == 0x00df
                           0000DF   585 _SPCLKSRC	=	0x00df
                           0000DC   586 G$SPMODE$0$0 == 0x00dc
                           0000DC   587 _SPMODE	=	0x00dc
                           0000DE   588 G$SPSHREG$0$0 == 0x00de
                           0000DE   589 _SPSHREG	=	0x00de
                           0000DD   590 G$SPSTATUS$0$0 == 0x00dd
                           0000DD   591 _SPSTATUS	=	0x00dd
                           00009A   592 G$T0CLKSRC$0$0 == 0x009a
                           00009A   593 _T0CLKSRC	=	0x009a
                           00009C   594 G$T0CNT0$0$0 == 0x009c
                           00009C   595 _T0CNT0	=	0x009c
                           00009D   596 G$T0CNT1$0$0 == 0x009d
                           00009D   597 _T0CNT1	=	0x009d
                           009D9C   598 G$T0CNT$0$0 == 0x9d9c
                           009D9C   599 _T0CNT	=	0x9d9c
                           000099   600 G$T0MODE$0$0 == 0x0099
                           000099   601 _T0MODE	=	0x0099
                           00009E   602 G$T0PERIOD0$0$0 == 0x009e
                           00009E   603 _T0PERIOD0	=	0x009e
                           00009F   604 G$T0PERIOD1$0$0 == 0x009f
                           00009F   605 _T0PERIOD1	=	0x009f
                           009F9E   606 G$T0PERIOD$0$0 == 0x9f9e
                           009F9E   607 _T0PERIOD	=	0x9f9e
                           00009B   608 G$T0STATUS$0$0 == 0x009b
                           00009B   609 _T0STATUS	=	0x009b
                           0000A2   610 G$T1CLKSRC$0$0 == 0x00a2
                           0000A2   611 _T1CLKSRC	=	0x00a2
                           0000A4   612 G$T1CNT0$0$0 == 0x00a4
                           0000A4   613 _T1CNT0	=	0x00a4
                           0000A5   614 G$T1CNT1$0$0 == 0x00a5
                           0000A5   615 _T1CNT1	=	0x00a5
                           00A5A4   616 G$T1CNT$0$0 == 0xa5a4
                           00A5A4   617 _T1CNT	=	0xa5a4
                           0000A1   618 G$T1MODE$0$0 == 0x00a1
                           0000A1   619 _T1MODE	=	0x00a1
                           0000A6   620 G$T1PERIOD0$0$0 == 0x00a6
                           0000A6   621 _T1PERIOD0	=	0x00a6
                           0000A7   622 G$T1PERIOD1$0$0 == 0x00a7
                           0000A7   623 _T1PERIOD1	=	0x00a7
                           00A7A6   624 G$T1PERIOD$0$0 == 0xa7a6
                           00A7A6   625 _T1PERIOD	=	0xa7a6
                           0000A3   626 G$T1STATUS$0$0 == 0x00a3
                           0000A3   627 _T1STATUS	=	0x00a3
                           0000AA   628 G$T2CLKSRC$0$0 == 0x00aa
                           0000AA   629 _T2CLKSRC	=	0x00aa
                           0000AC   630 G$T2CNT0$0$0 == 0x00ac
                           0000AC   631 _T2CNT0	=	0x00ac
                           0000AD   632 G$T2CNT1$0$0 == 0x00ad
                           0000AD   633 _T2CNT1	=	0x00ad
                           00ADAC   634 G$T2CNT$0$0 == 0xadac
                           00ADAC   635 _T2CNT	=	0xadac
                           0000A9   636 G$T2MODE$0$0 == 0x00a9
                           0000A9   637 _T2MODE	=	0x00a9
                           0000AE   638 G$T2PERIOD0$0$0 == 0x00ae
                           0000AE   639 _T2PERIOD0	=	0x00ae
                           0000AF   640 G$T2PERIOD1$0$0 == 0x00af
                           0000AF   641 _T2PERIOD1	=	0x00af
                           00AFAE   642 G$T2PERIOD$0$0 == 0xafae
                           00AFAE   643 _T2PERIOD	=	0xafae
                           0000AB   644 G$T2STATUS$0$0 == 0x00ab
                           0000AB   645 _T2STATUS	=	0x00ab
                           0000E4   646 G$U0CTRL$0$0 == 0x00e4
                           0000E4   647 _U0CTRL	=	0x00e4
                           0000E7   648 G$U0MODE$0$0 == 0x00e7
                           0000E7   649 _U0MODE	=	0x00e7
                           0000E6   650 G$U0SHREG$0$0 == 0x00e6
                           0000E6   651 _U0SHREG	=	0x00e6
                           0000E5   652 G$U0STATUS$0$0 == 0x00e5
                           0000E5   653 _U0STATUS	=	0x00e5
                           0000EC   654 G$U1CTRL$0$0 == 0x00ec
                           0000EC   655 _U1CTRL	=	0x00ec
                           0000EF   656 G$U1MODE$0$0 == 0x00ef
                           0000EF   657 _U1MODE	=	0x00ef
                           0000EE   658 G$U1SHREG$0$0 == 0x00ee
                           0000EE   659 _U1SHREG	=	0x00ee
                           0000ED   660 G$U1STATUS$0$0 == 0x00ed
                           0000ED   661 _U1STATUS	=	0x00ed
                           0000DA   662 G$WDTCFG$0$0 == 0x00da
                           0000DA   663 _WDTCFG	=	0x00da
                           0000DB   664 G$WDTRESET$0$0 == 0x00db
                           0000DB   665 _WDTRESET	=	0x00db
                           0000F1   666 G$WTCFGA$0$0 == 0x00f1
                           0000F1   667 _WTCFGA	=	0x00f1
                           0000F9   668 G$WTCFGB$0$0 == 0x00f9
                           0000F9   669 _WTCFGB	=	0x00f9
                           0000F2   670 G$WTCNTA0$0$0 == 0x00f2
                           0000F2   671 _WTCNTA0	=	0x00f2
                           0000F3   672 G$WTCNTA1$0$0 == 0x00f3
                           0000F3   673 _WTCNTA1	=	0x00f3
                           00F3F2   674 G$WTCNTA$0$0 == 0xf3f2
                           00F3F2   675 _WTCNTA	=	0xf3f2
                           0000FA   676 G$WTCNTB0$0$0 == 0x00fa
                           0000FA   677 _WTCNTB0	=	0x00fa
                           0000FB   678 G$WTCNTB1$0$0 == 0x00fb
                           0000FB   679 _WTCNTB1	=	0x00fb
                           00FBFA   680 G$WTCNTB$0$0 == 0xfbfa
                           00FBFA   681 _WTCNTB	=	0xfbfa
                           0000EB   682 G$WTCNTR1$0$0 == 0x00eb
                           0000EB   683 _WTCNTR1	=	0x00eb
                           0000F4   684 G$WTEVTA0$0$0 == 0x00f4
                           0000F4   685 _WTEVTA0	=	0x00f4
                           0000F5   686 G$WTEVTA1$0$0 == 0x00f5
                           0000F5   687 _WTEVTA1	=	0x00f5
                           00F5F4   688 G$WTEVTA$0$0 == 0xf5f4
                           00F5F4   689 _WTEVTA	=	0xf5f4
                           0000F6   690 G$WTEVTB0$0$0 == 0x00f6
                           0000F6   691 _WTEVTB0	=	0x00f6
                           0000F7   692 G$WTEVTB1$0$0 == 0x00f7
                           0000F7   693 _WTEVTB1	=	0x00f7
                           00F7F6   694 G$WTEVTB$0$0 == 0xf7f6
                           00F7F6   695 _WTEVTB	=	0xf7f6
                           0000FC   696 G$WTEVTC0$0$0 == 0x00fc
                           0000FC   697 _WTEVTC0	=	0x00fc
                           0000FD   698 G$WTEVTC1$0$0 == 0x00fd
                           0000FD   699 _WTEVTC1	=	0x00fd
                           00FDFC   700 G$WTEVTC$0$0 == 0xfdfc
                           00FDFC   701 _WTEVTC	=	0xfdfc
                           0000FE   702 G$WTEVTD0$0$0 == 0x00fe
                           0000FE   703 _WTEVTD0	=	0x00fe
                           0000FF   704 G$WTEVTD1$0$0 == 0x00ff
                           0000FF   705 _WTEVTD1	=	0x00ff
                           00FFFE   706 G$WTEVTD$0$0 == 0xfffe
                           00FFFE   707 _WTEVTD	=	0xfffe
                           0000E9   708 G$WTIRQEN$0$0 == 0x00e9
                           0000E9   709 _WTIRQEN	=	0x00e9
                           0000EA   710 G$WTSTAT$0$0 == 0x00ea
                           0000EA   711 _WTSTAT	=	0x00ea
                                    712 ;--------------------------------------------------------
                                    713 ; special function bits
                                    714 ;--------------------------------------------------------
                                    715 	.area RSEG    (ABS,DATA)
      000000                        716 	.org 0x0000
                           0000E0   717 G$ACC_0$0$0 == 0x00e0
                           0000E0   718 _ACC_0	=	0x00e0
                           0000E1   719 G$ACC_1$0$0 == 0x00e1
                           0000E1   720 _ACC_1	=	0x00e1
                           0000E2   721 G$ACC_2$0$0 == 0x00e2
                           0000E2   722 _ACC_2	=	0x00e2
                           0000E3   723 G$ACC_3$0$0 == 0x00e3
                           0000E3   724 _ACC_3	=	0x00e3
                           0000E4   725 G$ACC_4$0$0 == 0x00e4
                           0000E4   726 _ACC_4	=	0x00e4
                           0000E5   727 G$ACC_5$0$0 == 0x00e5
                           0000E5   728 _ACC_5	=	0x00e5
                           0000E6   729 G$ACC_6$0$0 == 0x00e6
                           0000E6   730 _ACC_6	=	0x00e6
                           0000E7   731 G$ACC_7$0$0 == 0x00e7
                           0000E7   732 _ACC_7	=	0x00e7
                           0000F0   733 G$B_0$0$0 == 0x00f0
                           0000F0   734 _B_0	=	0x00f0
                           0000F1   735 G$B_1$0$0 == 0x00f1
                           0000F1   736 _B_1	=	0x00f1
                           0000F2   737 G$B_2$0$0 == 0x00f2
                           0000F2   738 _B_2	=	0x00f2
                           0000F3   739 G$B_3$0$0 == 0x00f3
                           0000F3   740 _B_3	=	0x00f3
                           0000F4   741 G$B_4$0$0 == 0x00f4
                           0000F4   742 _B_4	=	0x00f4
                           0000F5   743 G$B_5$0$0 == 0x00f5
                           0000F5   744 _B_5	=	0x00f5
                           0000F6   745 G$B_6$0$0 == 0x00f6
                           0000F6   746 _B_6	=	0x00f6
                           0000F7   747 G$B_7$0$0 == 0x00f7
                           0000F7   748 _B_7	=	0x00f7
                           0000A0   749 G$E2IE_0$0$0 == 0x00a0
                           0000A0   750 _E2IE_0	=	0x00a0
                           0000A1   751 G$E2IE_1$0$0 == 0x00a1
                           0000A1   752 _E2IE_1	=	0x00a1
                           0000A2   753 G$E2IE_2$0$0 == 0x00a2
                           0000A2   754 _E2IE_2	=	0x00a2
                           0000A3   755 G$E2IE_3$0$0 == 0x00a3
                           0000A3   756 _E2IE_3	=	0x00a3
                           0000A4   757 G$E2IE_4$0$0 == 0x00a4
                           0000A4   758 _E2IE_4	=	0x00a4
                           0000A5   759 G$E2IE_5$0$0 == 0x00a5
                           0000A5   760 _E2IE_5	=	0x00a5
                           0000A6   761 G$E2IE_6$0$0 == 0x00a6
                           0000A6   762 _E2IE_6	=	0x00a6
                           0000A7   763 G$E2IE_7$0$0 == 0x00a7
                           0000A7   764 _E2IE_7	=	0x00a7
                           0000C0   765 G$E2IP_0$0$0 == 0x00c0
                           0000C0   766 _E2IP_0	=	0x00c0
                           0000C1   767 G$E2IP_1$0$0 == 0x00c1
                           0000C1   768 _E2IP_1	=	0x00c1
                           0000C2   769 G$E2IP_2$0$0 == 0x00c2
                           0000C2   770 _E2IP_2	=	0x00c2
                           0000C3   771 G$E2IP_3$0$0 == 0x00c3
                           0000C3   772 _E2IP_3	=	0x00c3
                           0000C4   773 G$E2IP_4$0$0 == 0x00c4
                           0000C4   774 _E2IP_4	=	0x00c4
                           0000C5   775 G$E2IP_5$0$0 == 0x00c5
                           0000C5   776 _E2IP_5	=	0x00c5
                           0000C6   777 G$E2IP_6$0$0 == 0x00c6
                           0000C6   778 _E2IP_6	=	0x00c6
                           0000C7   779 G$E2IP_7$0$0 == 0x00c7
                           0000C7   780 _E2IP_7	=	0x00c7
                           000098   781 G$EIE_0$0$0 == 0x0098
                           000098   782 _EIE_0	=	0x0098
                           000099   783 G$EIE_1$0$0 == 0x0099
                           000099   784 _EIE_1	=	0x0099
                           00009A   785 G$EIE_2$0$0 == 0x009a
                           00009A   786 _EIE_2	=	0x009a
                           00009B   787 G$EIE_3$0$0 == 0x009b
                           00009B   788 _EIE_3	=	0x009b
                           00009C   789 G$EIE_4$0$0 == 0x009c
                           00009C   790 _EIE_4	=	0x009c
                           00009D   791 G$EIE_5$0$0 == 0x009d
                           00009D   792 _EIE_5	=	0x009d
                           00009E   793 G$EIE_6$0$0 == 0x009e
                           00009E   794 _EIE_6	=	0x009e
                           00009F   795 G$EIE_7$0$0 == 0x009f
                           00009F   796 _EIE_7	=	0x009f
                           0000B0   797 G$EIP_0$0$0 == 0x00b0
                           0000B0   798 _EIP_0	=	0x00b0
                           0000B1   799 G$EIP_1$0$0 == 0x00b1
                           0000B1   800 _EIP_1	=	0x00b1
                           0000B2   801 G$EIP_2$0$0 == 0x00b2
                           0000B2   802 _EIP_2	=	0x00b2
                           0000B3   803 G$EIP_3$0$0 == 0x00b3
                           0000B3   804 _EIP_3	=	0x00b3
                           0000B4   805 G$EIP_4$0$0 == 0x00b4
                           0000B4   806 _EIP_4	=	0x00b4
                           0000B5   807 G$EIP_5$0$0 == 0x00b5
                           0000B5   808 _EIP_5	=	0x00b5
                           0000B6   809 G$EIP_6$0$0 == 0x00b6
                           0000B6   810 _EIP_6	=	0x00b6
                           0000B7   811 G$EIP_7$0$0 == 0x00b7
                           0000B7   812 _EIP_7	=	0x00b7
                           0000A8   813 G$IE_0$0$0 == 0x00a8
                           0000A8   814 _IE_0	=	0x00a8
                           0000A9   815 G$IE_1$0$0 == 0x00a9
                           0000A9   816 _IE_1	=	0x00a9
                           0000AA   817 G$IE_2$0$0 == 0x00aa
                           0000AA   818 _IE_2	=	0x00aa
                           0000AB   819 G$IE_3$0$0 == 0x00ab
                           0000AB   820 _IE_3	=	0x00ab
                           0000AC   821 G$IE_4$0$0 == 0x00ac
                           0000AC   822 _IE_4	=	0x00ac
                           0000AD   823 G$IE_5$0$0 == 0x00ad
                           0000AD   824 _IE_5	=	0x00ad
                           0000AE   825 G$IE_6$0$0 == 0x00ae
                           0000AE   826 _IE_6	=	0x00ae
                           0000AF   827 G$IE_7$0$0 == 0x00af
                           0000AF   828 _IE_7	=	0x00af
                           0000AF   829 G$EA$0$0 == 0x00af
                           0000AF   830 _EA	=	0x00af
                           0000B8   831 G$IP_0$0$0 == 0x00b8
                           0000B8   832 _IP_0	=	0x00b8
                           0000B9   833 G$IP_1$0$0 == 0x00b9
                           0000B9   834 _IP_1	=	0x00b9
                           0000BA   835 G$IP_2$0$0 == 0x00ba
                           0000BA   836 _IP_2	=	0x00ba
                           0000BB   837 G$IP_3$0$0 == 0x00bb
                           0000BB   838 _IP_3	=	0x00bb
                           0000BC   839 G$IP_4$0$0 == 0x00bc
                           0000BC   840 _IP_4	=	0x00bc
                           0000BD   841 G$IP_5$0$0 == 0x00bd
                           0000BD   842 _IP_5	=	0x00bd
                           0000BE   843 G$IP_6$0$0 == 0x00be
                           0000BE   844 _IP_6	=	0x00be
                           0000BF   845 G$IP_7$0$0 == 0x00bf
                           0000BF   846 _IP_7	=	0x00bf
                           0000D0   847 G$P$0$0 == 0x00d0
                           0000D0   848 _P	=	0x00d0
                           0000D1   849 G$F1$0$0 == 0x00d1
                           0000D1   850 _F1	=	0x00d1
                           0000D2   851 G$OV$0$0 == 0x00d2
                           0000D2   852 _OV	=	0x00d2
                           0000D3   853 G$RS0$0$0 == 0x00d3
                           0000D3   854 _RS0	=	0x00d3
                           0000D4   855 G$RS1$0$0 == 0x00d4
                           0000D4   856 _RS1	=	0x00d4
                           0000D5   857 G$F0$0$0 == 0x00d5
                           0000D5   858 _F0	=	0x00d5
                           0000D6   859 G$AC$0$0 == 0x00d6
                           0000D6   860 _AC	=	0x00d6
                           0000D7   861 G$CY$0$0 == 0x00d7
                           0000D7   862 _CY	=	0x00d7
                           0000C8   863 G$PINA_0$0$0 == 0x00c8
                           0000C8   864 _PINA_0	=	0x00c8
                           0000C9   865 G$PINA_1$0$0 == 0x00c9
                           0000C9   866 _PINA_1	=	0x00c9
                           0000CA   867 G$PINA_2$0$0 == 0x00ca
                           0000CA   868 _PINA_2	=	0x00ca
                           0000CB   869 G$PINA_3$0$0 == 0x00cb
                           0000CB   870 _PINA_3	=	0x00cb
                           0000CC   871 G$PINA_4$0$0 == 0x00cc
                           0000CC   872 _PINA_4	=	0x00cc
                           0000CD   873 G$PINA_5$0$0 == 0x00cd
                           0000CD   874 _PINA_5	=	0x00cd
                           0000CE   875 G$PINA_6$0$0 == 0x00ce
                           0000CE   876 _PINA_6	=	0x00ce
                           0000CF   877 G$PINA_7$0$0 == 0x00cf
                           0000CF   878 _PINA_7	=	0x00cf
                           0000E8   879 G$PINB_0$0$0 == 0x00e8
                           0000E8   880 _PINB_0	=	0x00e8
                           0000E9   881 G$PINB_1$0$0 == 0x00e9
                           0000E9   882 _PINB_1	=	0x00e9
                           0000EA   883 G$PINB_2$0$0 == 0x00ea
                           0000EA   884 _PINB_2	=	0x00ea
                           0000EB   885 G$PINB_3$0$0 == 0x00eb
                           0000EB   886 _PINB_3	=	0x00eb
                           0000EC   887 G$PINB_4$0$0 == 0x00ec
                           0000EC   888 _PINB_4	=	0x00ec
                           0000ED   889 G$PINB_5$0$0 == 0x00ed
                           0000ED   890 _PINB_5	=	0x00ed
                           0000EE   891 G$PINB_6$0$0 == 0x00ee
                           0000EE   892 _PINB_6	=	0x00ee
                           0000EF   893 G$PINB_7$0$0 == 0x00ef
                           0000EF   894 _PINB_7	=	0x00ef
                           0000F8   895 G$PINC_0$0$0 == 0x00f8
                           0000F8   896 _PINC_0	=	0x00f8
                           0000F9   897 G$PINC_1$0$0 == 0x00f9
                           0000F9   898 _PINC_1	=	0x00f9
                           0000FA   899 G$PINC_2$0$0 == 0x00fa
                           0000FA   900 _PINC_2	=	0x00fa
                           0000FB   901 G$PINC_3$0$0 == 0x00fb
                           0000FB   902 _PINC_3	=	0x00fb
                           0000FC   903 G$PINC_4$0$0 == 0x00fc
                           0000FC   904 _PINC_4	=	0x00fc
                           0000FD   905 G$PINC_5$0$0 == 0x00fd
                           0000FD   906 _PINC_5	=	0x00fd
                           0000FE   907 G$PINC_6$0$0 == 0x00fe
                           0000FE   908 _PINC_6	=	0x00fe
                           0000FF   909 G$PINC_7$0$0 == 0x00ff
                           0000FF   910 _PINC_7	=	0x00ff
                           000080   911 G$PORTA_0$0$0 == 0x0080
                           000080   912 _PORTA_0	=	0x0080
                           000081   913 G$PORTA_1$0$0 == 0x0081
                           000081   914 _PORTA_1	=	0x0081
                           000082   915 G$PORTA_2$0$0 == 0x0082
                           000082   916 _PORTA_2	=	0x0082
                           000083   917 G$PORTA_3$0$0 == 0x0083
                           000083   918 _PORTA_3	=	0x0083
                           000084   919 G$PORTA_4$0$0 == 0x0084
                           000084   920 _PORTA_4	=	0x0084
                           000085   921 G$PORTA_5$0$0 == 0x0085
                           000085   922 _PORTA_5	=	0x0085
                           000086   923 G$PORTA_6$0$0 == 0x0086
                           000086   924 _PORTA_6	=	0x0086
                           000087   925 G$PORTA_7$0$0 == 0x0087
                           000087   926 _PORTA_7	=	0x0087
                           000088   927 G$PORTB_0$0$0 == 0x0088
                           000088   928 _PORTB_0	=	0x0088
                           000089   929 G$PORTB_1$0$0 == 0x0089
                           000089   930 _PORTB_1	=	0x0089
                           00008A   931 G$PORTB_2$0$0 == 0x008a
                           00008A   932 _PORTB_2	=	0x008a
                           00008B   933 G$PORTB_3$0$0 == 0x008b
                           00008B   934 _PORTB_3	=	0x008b
                           00008C   935 G$PORTB_4$0$0 == 0x008c
                           00008C   936 _PORTB_4	=	0x008c
                           00008D   937 G$PORTB_5$0$0 == 0x008d
                           00008D   938 _PORTB_5	=	0x008d
                           00008E   939 G$PORTB_6$0$0 == 0x008e
                           00008E   940 _PORTB_6	=	0x008e
                           00008F   941 G$PORTB_7$0$0 == 0x008f
                           00008F   942 _PORTB_7	=	0x008f
                           000090   943 G$PORTC_0$0$0 == 0x0090
                           000090   944 _PORTC_0	=	0x0090
                           000091   945 G$PORTC_1$0$0 == 0x0091
                           000091   946 _PORTC_1	=	0x0091
                           000092   947 G$PORTC_2$0$0 == 0x0092
                           000092   948 _PORTC_2	=	0x0092
                           000093   949 G$PORTC_3$0$0 == 0x0093
                           000093   950 _PORTC_3	=	0x0093
                           000094   951 G$PORTC_4$0$0 == 0x0094
                           000094   952 _PORTC_4	=	0x0094
                           000095   953 G$PORTC_5$0$0 == 0x0095
                           000095   954 _PORTC_5	=	0x0095
                           000096   955 G$PORTC_6$0$0 == 0x0096
                           000096   956 _PORTC_6	=	0x0096
                           000097   957 G$PORTC_7$0$0 == 0x0097
                           000097   958 _PORTC_7	=	0x0097
                                    959 ;--------------------------------------------------------
                                    960 ; overlayable register banks
                                    961 ;--------------------------------------------------------
                                    962 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        963 	.ds 8
                                    964 ;--------------------------------------------------------
                                    965 ; internal ram data
                                    966 ;--------------------------------------------------------
                                    967 	.area DSEG    (DATA)
                           000000   968 G$init_synth_only_once$0$0==.
      000022                        969 _init_synth_only_once::
      000022                        970 	.ds 1
                           000001   971 G$pkt_counter$0$0==.
      000023                        972 _pkt_counter::
      000023                        973 	.ds 2
                           000003   974 G$coldstart$0$0==.
      000025                        975 _coldstart::
      000025                        976 	.ds 1
                           000004   977 Lmain.si_write_reg$data$1$404==.
      000026                        978 _si_write_reg_PARM_2:
      000026                        979 	.ds 4
                           000008   980 Lmain.main$saved_button_state$1$436==.
      00002A                        981 _main_saved_button_state_1_436:
      00002A                        982 	.ds 1
                                    983 ;--------------------------------------------------------
                                    984 ; overlayable items in internal ram 
                                    985 ;--------------------------------------------------------
                                    986 	.area	OSEG    (OVR,DATA)
                                    987 ;--------------------------------------------------------
                                    988 ; Stack segment in internal ram 
                                    989 ;--------------------------------------------------------
                                    990 	.area	SSEG
      00003F                        991 __start__stack:
      00003F                        992 	.ds	1
                                    993 
                                    994 ;--------------------------------------------------------
                                    995 ; indirectly addressable internal ram data
                                    996 ;--------------------------------------------------------
                                    997 	.area ISEG    (DATA)
                                    998 ;--------------------------------------------------------
                                    999 ; absolute internal ram data
                                   1000 ;--------------------------------------------------------
                                   1001 	.area IABS    (ABS,DATA)
                                   1002 	.area IABS    (ABS,DATA)
                                   1003 ;--------------------------------------------------------
                                   1004 ; bit data
                                   1005 ;--------------------------------------------------------
                                   1006 	.area BSEG    (BIT)
                           000000  1007 Lmain._sdcc_external_startup$sloc0$1$0==.
      000001                       1008 __sdcc_external_startup_sloc0_1_0:
      000001                       1009 	.ds 1
                                   1010 ;--------------------------------------------------------
                                   1011 ; paged external ram data
                                   1012 ;--------------------------------------------------------
                                   1013 	.area PSEG    (PAG,XDATA)
                                   1014 ;--------------------------------------------------------
                                   1015 ; external ram data
                                   1016 ;--------------------------------------------------------
                                   1017 	.area XSEG    (XDATA)
                           007020  1018 G$ADCCH0VAL0$0$0 == 0x7020
                           007020  1019 _ADCCH0VAL0	=	0x7020
                           007021  1020 G$ADCCH0VAL1$0$0 == 0x7021
                           007021  1021 _ADCCH0VAL1	=	0x7021
                           007020  1022 G$ADCCH0VAL$0$0 == 0x7020
                           007020  1023 _ADCCH0VAL	=	0x7020
                           007022  1024 G$ADCCH1VAL0$0$0 == 0x7022
                           007022  1025 _ADCCH1VAL0	=	0x7022
                           007023  1026 G$ADCCH1VAL1$0$0 == 0x7023
                           007023  1027 _ADCCH1VAL1	=	0x7023
                           007022  1028 G$ADCCH1VAL$0$0 == 0x7022
                           007022  1029 _ADCCH1VAL	=	0x7022
                           007024  1030 G$ADCCH2VAL0$0$0 == 0x7024
                           007024  1031 _ADCCH2VAL0	=	0x7024
                           007025  1032 G$ADCCH2VAL1$0$0 == 0x7025
                           007025  1033 _ADCCH2VAL1	=	0x7025
                           007024  1034 G$ADCCH2VAL$0$0 == 0x7024
                           007024  1035 _ADCCH2VAL	=	0x7024
                           007026  1036 G$ADCCH3VAL0$0$0 == 0x7026
                           007026  1037 _ADCCH3VAL0	=	0x7026
                           007027  1038 G$ADCCH3VAL1$0$0 == 0x7027
                           007027  1039 _ADCCH3VAL1	=	0x7027
                           007026  1040 G$ADCCH3VAL$0$0 == 0x7026
                           007026  1041 _ADCCH3VAL	=	0x7026
                           007028  1042 G$ADCTUNE0$0$0 == 0x7028
                           007028  1043 _ADCTUNE0	=	0x7028
                           007029  1044 G$ADCTUNE1$0$0 == 0x7029
                           007029  1045 _ADCTUNE1	=	0x7029
                           00702A  1046 G$ADCTUNE2$0$0 == 0x702a
                           00702A  1047 _ADCTUNE2	=	0x702a
                           007010  1048 G$DMA0ADDR0$0$0 == 0x7010
                           007010  1049 _DMA0ADDR0	=	0x7010
                           007011  1050 G$DMA0ADDR1$0$0 == 0x7011
                           007011  1051 _DMA0ADDR1	=	0x7011
                           007010  1052 G$DMA0ADDR$0$0 == 0x7010
                           007010  1053 _DMA0ADDR	=	0x7010
                           007014  1054 G$DMA0CONFIG$0$0 == 0x7014
                           007014  1055 _DMA0CONFIG	=	0x7014
                           007012  1056 G$DMA1ADDR0$0$0 == 0x7012
                           007012  1057 _DMA1ADDR0	=	0x7012
                           007013  1058 G$DMA1ADDR1$0$0 == 0x7013
                           007013  1059 _DMA1ADDR1	=	0x7013
                           007012  1060 G$DMA1ADDR$0$0 == 0x7012
                           007012  1061 _DMA1ADDR	=	0x7012
                           007015  1062 G$DMA1CONFIG$0$0 == 0x7015
                           007015  1063 _DMA1CONFIG	=	0x7015
                           007070  1064 G$FRCOSCCONFIG$0$0 == 0x7070
                           007070  1065 _FRCOSCCONFIG	=	0x7070
                           007071  1066 G$FRCOSCCTRL$0$0 == 0x7071
                           007071  1067 _FRCOSCCTRL	=	0x7071
                           007076  1068 G$FRCOSCFREQ0$0$0 == 0x7076
                           007076  1069 _FRCOSCFREQ0	=	0x7076
                           007077  1070 G$FRCOSCFREQ1$0$0 == 0x7077
                           007077  1071 _FRCOSCFREQ1	=	0x7077
                           007076  1072 G$FRCOSCFREQ$0$0 == 0x7076
                           007076  1073 _FRCOSCFREQ	=	0x7076
                           007072  1074 G$FRCOSCKFILT0$0$0 == 0x7072
                           007072  1075 _FRCOSCKFILT0	=	0x7072
                           007073  1076 G$FRCOSCKFILT1$0$0 == 0x7073
                           007073  1077 _FRCOSCKFILT1	=	0x7073
                           007072  1078 G$FRCOSCKFILT$0$0 == 0x7072
                           007072  1079 _FRCOSCKFILT	=	0x7072
                           007078  1080 G$FRCOSCPER0$0$0 == 0x7078
                           007078  1081 _FRCOSCPER0	=	0x7078
                           007079  1082 G$FRCOSCPER1$0$0 == 0x7079
                           007079  1083 _FRCOSCPER1	=	0x7079
                           007078  1084 G$FRCOSCPER$0$0 == 0x7078
                           007078  1085 _FRCOSCPER	=	0x7078
                           007074  1086 G$FRCOSCREF0$0$0 == 0x7074
                           007074  1087 _FRCOSCREF0	=	0x7074
                           007075  1088 G$FRCOSCREF1$0$0 == 0x7075
                           007075  1089 _FRCOSCREF1	=	0x7075
                           007074  1090 G$FRCOSCREF$0$0 == 0x7074
                           007074  1091 _FRCOSCREF	=	0x7074
                           007007  1092 G$ANALOGA$0$0 == 0x7007
                           007007  1093 _ANALOGA	=	0x7007
                           00700C  1094 G$GPIOENABLE$0$0 == 0x700c
                           00700C  1095 _GPIOENABLE	=	0x700c
                           007003  1096 G$EXTIRQ$0$0 == 0x7003
                           007003  1097 _EXTIRQ	=	0x7003
                           007000  1098 G$INTCHGA$0$0 == 0x7000
                           007000  1099 _INTCHGA	=	0x7000
                           007001  1100 G$INTCHGB$0$0 == 0x7001
                           007001  1101 _INTCHGB	=	0x7001
                           007002  1102 G$INTCHGC$0$0 == 0x7002
                           007002  1103 _INTCHGC	=	0x7002
                           007008  1104 G$PALTA$0$0 == 0x7008
                           007008  1105 _PALTA	=	0x7008
                           007009  1106 G$PALTB$0$0 == 0x7009
                           007009  1107 _PALTB	=	0x7009
                           00700A  1108 G$PALTC$0$0 == 0x700a
                           00700A  1109 _PALTC	=	0x700a
                           007046  1110 G$PALTRADIO$0$0 == 0x7046
                           007046  1111 _PALTRADIO	=	0x7046
                           007004  1112 G$PINCHGA$0$0 == 0x7004
                           007004  1113 _PINCHGA	=	0x7004
                           007005  1114 G$PINCHGB$0$0 == 0x7005
                           007005  1115 _PINCHGB	=	0x7005
                           007006  1116 G$PINCHGC$0$0 == 0x7006
                           007006  1117 _PINCHGC	=	0x7006
                           00700B  1118 G$PINSEL$0$0 == 0x700b
                           00700B  1119 _PINSEL	=	0x700b
                           007060  1120 G$LPOSCCONFIG$0$0 == 0x7060
                           007060  1121 _LPOSCCONFIG	=	0x7060
                           007066  1122 G$LPOSCFREQ0$0$0 == 0x7066
                           007066  1123 _LPOSCFREQ0	=	0x7066
                           007067  1124 G$LPOSCFREQ1$0$0 == 0x7067
                           007067  1125 _LPOSCFREQ1	=	0x7067
                           007066  1126 G$LPOSCFREQ$0$0 == 0x7066
                           007066  1127 _LPOSCFREQ	=	0x7066
                           007062  1128 G$LPOSCKFILT0$0$0 == 0x7062
                           007062  1129 _LPOSCKFILT0	=	0x7062
                           007063  1130 G$LPOSCKFILT1$0$0 == 0x7063
                           007063  1131 _LPOSCKFILT1	=	0x7063
                           007062  1132 G$LPOSCKFILT$0$0 == 0x7062
                           007062  1133 _LPOSCKFILT	=	0x7062
                           007068  1134 G$LPOSCPER0$0$0 == 0x7068
                           007068  1135 _LPOSCPER0	=	0x7068
                           007069  1136 G$LPOSCPER1$0$0 == 0x7069
                           007069  1137 _LPOSCPER1	=	0x7069
                           007068  1138 G$LPOSCPER$0$0 == 0x7068
                           007068  1139 _LPOSCPER	=	0x7068
                           007064  1140 G$LPOSCREF0$0$0 == 0x7064
                           007064  1141 _LPOSCREF0	=	0x7064
                           007065  1142 G$LPOSCREF1$0$0 == 0x7065
                           007065  1143 _LPOSCREF1	=	0x7065
                           007064  1144 G$LPOSCREF$0$0 == 0x7064
                           007064  1145 _LPOSCREF	=	0x7064
                           007054  1146 G$LPXOSCGM$0$0 == 0x7054
                           007054  1147 _LPXOSCGM	=	0x7054
                           007F01  1148 G$MISCCTRL$0$0 == 0x7f01
                           007F01  1149 _MISCCTRL	=	0x7f01
                           007053  1150 G$OSCCALIB$0$0 == 0x7053
                           007053  1151 _OSCCALIB	=	0x7053
                           007050  1152 G$OSCFORCERUN$0$0 == 0x7050
                           007050  1153 _OSCFORCERUN	=	0x7050
                           007052  1154 G$OSCREADY$0$0 == 0x7052
                           007052  1155 _OSCREADY	=	0x7052
                           007051  1156 G$OSCRUN$0$0 == 0x7051
                           007051  1157 _OSCRUN	=	0x7051
                           007040  1158 G$RADIOFDATAADDR0$0$0 == 0x7040
                           007040  1159 _RADIOFDATAADDR0	=	0x7040
                           007041  1160 G$RADIOFDATAADDR1$0$0 == 0x7041
                           007041  1161 _RADIOFDATAADDR1	=	0x7041
                           007040  1162 G$RADIOFDATAADDR$0$0 == 0x7040
                           007040  1163 _RADIOFDATAADDR	=	0x7040
                           007042  1164 G$RADIOFSTATADDR0$0$0 == 0x7042
                           007042  1165 _RADIOFSTATADDR0	=	0x7042
                           007043  1166 G$RADIOFSTATADDR1$0$0 == 0x7043
                           007043  1167 _RADIOFSTATADDR1	=	0x7043
                           007042  1168 G$RADIOFSTATADDR$0$0 == 0x7042
                           007042  1169 _RADIOFSTATADDR	=	0x7042
                           007044  1170 G$RADIOMUX$0$0 == 0x7044
                           007044  1171 _RADIOMUX	=	0x7044
                           007084  1172 G$SCRATCH0$0$0 == 0x7084
                           007084  1173 _SCRATCH0	=	0x7084
                           007085  1174 G$SCRATCH1$0$0 == 0x7085
                           007085  1175 _SCRATCH1	=	0x7085
                           007086  1176 G$SCRATCH2$0$0 == 0x7086
                           007086  1177 _SCRATCH2	=	0x7086
                           007087  1178 G$SCRATCH3$0$0 == 0x7087
                           007087  1179 _SCRATCH3	=	0x7087
                           007F00  1180 G$SILICONREV$0$0 == 0x7f00
                           007F00  1181 _SILICONREV	=	0x7f00
                           007F19  1182 G$XTALAMPL$0$0 == 0x7f19
                           007F19  1183 _XTALAMPL	=	0x7f19
                           007F18  1184 G$XTALOSC$0$0 == 0x7f18
                           007F18  1185 _XTALOSC	=	0x7f18
                           007F1A  1186 G$XTALREADY$0$0 == 0x7f1a
                           007F1A  1187 _XTALREADY	=	0x7f1a
                           00FC06  1188 Fmain$flash_deviceid$0$0 == 0xfc06
                           00FC06  1189 _flash_deviceid	=	0xfc06
                           00FC00  1190 Fmain$flash_calsector$0$0 == 0xfc00
                           00FC00  1191 _flash_calsector	=	0xfc00
                           000000  1192 G$wakeup_desc$0$0==.
      00029E                       1193 _wakeup_desc::
      00029E                       1194 	.ds 8
                           000008  1195 Lmain.transmit_packet$demo_packet_$1$366==.
      0002A6                       1196 _transmit_packet_demo_packet__1_366:
      0002A6                       1197 	.ds 72
                                   1198 ;--------------------------------------------------------
                                   1199 ; absolute external ram data
                                   1200 ;--------------------------------------------------------
                                   1201 	.area XABS    (ABS,XDATA)
                                   1202 ;--------------------------------------------------------
                                   1203 ; external initialized ram data
                                   1204 ;--------------------------------------------------------
                                   1205 	.area XISEG   (XDATA)
                                   1206 	.area HOME    (CODE)
                                   1207 	.area GSINIT0 (CODE)
                                   1208 	.area GSINIT1 (CODE)
                                   1209 	.area GSINIT2 (CODE)
                                   1210 	.area GSINIT3 (CODE)
                                   1211 	.area GSINIT4 (CODE)
                                   1212 	.area GSINIT5 (CODE)
                                   1213 	.area GSINIT  (CODE)
                                   1214 	.area GSFINAL (CODE)
                                   1215 	.area CSEG    (CODE)
                                   1216 ;--------------------------------------------------------
                                   1217 ; interrupt vector 
                                   1218 ;--------------------------------------------------------
                                   1219 	.area HOME    (CODE)
      000000                       1220 __interrupt_vect:
      000000 02 03 11         [24] 1221 	ljmp	__sdcc_gsinit_startup
      000003 32               [24] 1222 	reti
      000004                       1223 	.ds	7
      00000B 02 00 B1         [24] 1224 	ljmp	_wtimer_irq
      00000E                       1225 	.ds	5
      000013 32               [24] 1226 	reti
      000014                       1227 	.ds	7
      00001B 32               [24] 1228 	reti
      00001C                       1229 	.ds	7
      000023 02 11 C7         [24] 1230 	ljmp	_axradio_isr
      000026                       1231 	.ds	5
      00002B 32               [24] 1232 	reti
      00002C                       1233 	.ds	7
      000033 02 3C 4E         [24] 1234 	ljmp	_pwrmgmt_irq
      000036                       1235 	.ds	5
      00003B 32               [24] 1236 	reti
      00003C                       1237 	.ds	7
      000043 32               [24] 1238 	reti
      000044                       1239 	.ds	7
      00004B 32               [24] 1240 	reti
      00004C                       1241 	.ds	7
      000053 02 4A 7E         [24] 1242 	ljmp	_lcd2_irq
      000056                       1243 	.ds	5
      00005B 02 02 A3         [24] 1244 	ljmp	_uart0_irq
      00005E                       1245 	.ds	5
      000063 02 02 DA         [24] 1246 	ljmp	_uart1_irq
      000066                       1247 	.ds	5
      00006B 32               [24] 1248 	reti
      00006C                       1249 	.ds	7
      000073 32               [24] 1250 	reti
      000074                       1251 	.ds	7
      00007B 32               [24] 1252 	reti
      00007C                       1253 	.ds	7
      000083 32               [24] 1254 	reti
      000084                       1255 	.ds	7
      00008B 32               [24] 1256 	reti
      00008C                       1257 	.ds	7
      000093 32               [24] 1258 	reti
      000094                       1259 	.ds	7
      00009B 32               [24] 1260 	reti
      00009C                       1261 	.ds	7
      0000A3 32               [24] 1262 	reti
      0000A4                       1263 	.ds	7
      0000AB 02 02 6C         [24] 1264 	ljmp	_dbglink_irq
                                   1265 ;--------------------------------------------------------
                                   1266 ; global & static initialisations
                                   1267 ;--------------------------------------------------------
                                   1268 	.area HOME    (CODE)
                                   1269 	.area GSINIT  (CODE)
                                   1270 	.area GSFINAL (CODE)
                                   1271 	.area GSINIT  (CODE)
                                   1272 	.globl __sdcc_gsinit_startup
                                   1273 	.globl __sdcc_program_startup
                                   1274 	.globl __start__stack
                                   1275 	.globl __mcs51_genXINIT
                                   1276 	.globl __mcs51_genXRAMCLEAR
                                   1277 	.globl __mcs51_genRAMCLEAR
                                   1278 ;------------------------------------------------------------
                                   1279 ;Allocation info for local variables in function 'main'
                                   1280 ;------------------------------------------------------------
                                   1281 ;saved_button_state        Allocated with name '_main_saved_button_state_1_436'
                                   1282 ;i                         Allocated to registers r7 
                                   1283 ;x                         Allocated to registers r6 
                                   1284 ;flg                       Allocated to registers r6 
                                   1285 ;flg                       Allocated to registers r7 
                                   1286 ;------------------------------------------------------------
                           000000  1287 	G$main$0$0 ==.
                           000000  1288 	C$main.c$368$1$436 ==.
                                   1289 ;	main.c:368: static uint8_t __data saved_button_state = 0xFF;
      00038A 75 2A FF         [24] 1290 	mov	_main_saved_button_state_1_436,#0xff
                           000003  1291 	C$main.c$78$1$436 ==.
                                   1292 ;	main.c:78: uint8_t init_synth_only_once = 1;    /* *.*.*. OreSat */
      00038D 75 22 01         [24] 1293 	mov	_init_synth_only_once,#0x01
                           000006  1294 	C$main.c$80$1$436 ==.
                                   1295 ;	main.c:80: uint16_t __data pkt_counter = 0;
      000390 E4               [12] 1296 	clr	a
      000391 F5 23            [12] 1297 	mov	_pkt_counter,a
      000393 F5 24            [12] 1298 	mov	(_pkt_counter + 1),a
                           00000B  1299 	C$main.c$81$1$436 ==.
                                   1300 ;	main.c:81: uint8_t __data coldstart = 1; /* caution: initialization with 1 is necessary! Variables are initialized upon _sdcc_external_startup returning 0 -> the coldstart value returned from _sdcc_external startup does not survive in the coldstart case */
      000395 75 25 01         [24] 1301 	mov	_coldstart,#0x01
                                   1302 	.area GSFINAL (CODE)
      000398 02 00 AE         [24] 1303 	ljmp	__sdcc_program_startup
                                   1304 ;--------------------------------------------------------
                                   1305 ; Home
                                   1306 ;--------------------------------------------------------
                                   1307 	.area HOME    (CODE)
                                   1308 	.area HOME    (CODE)
      0000AE                       1309 __sdcc_program_startup:
      0000AE 02 3F 5C         [24] 1310 	ljmp	_main
                                   1311 ;	return from main will return to caller
                                   1312 ;--------------------------------------------------------
                                   1313 ; code
                                   1314 ;--------------------------------------------------------
                                   1315 	.area CSEG    (CODE)
                                   1316 ;------------------------------------------------------------
                                   1317 ;Allocation info for local variables in function 'pwrmgmt_irq'
                                   1318 ;------------------------------------------------------------
                                   1319 ;pc                        Allocated to registers r7 
                                   1320 ;------------------------------------------------------------
                           000000  1321 	Fmain$pwrmgmt_irq$0$0 ==.
                           000000  1322 	C$main.c$88$0$0 ==.
                                   1323 ;	main.c:88: static void pwrmgmt_irq(void) __interrupt(INT_POWERMGMT)
                                   1324 ;	-----------------------------------------
                                   1325 ;	 function pwrmgmt_irq
                                   1326 ;	-----------------------------------------
      003C4E                       1327 _pwrmgmt_irq:
                           000007  1328 	ar7 = 0x07
                           000006  1329 	ar6 = 0x06
                           000005  1330 	ar5 = 0x05
                           000004  1331 	ar4 = 0x04
                           000003  1332 	ar3 = 0x03
                           000002  1333 	ar2 = 0x02
                           000001  1334 	ar1 = 0x01
                           000000  1335 	ar0 = 0x00
      003C4E C0 E0            [24] 1336 	push	acc
      003C50 C0 82            [24] 1337 	push	dpl
      003C52 C0 83            [24] 1338 	push	dph
      003C54 C0 07            [24] 1339 	push	ar7
      003C56 C0 D0            [24] 1340 	push	psw
      003C58 75 D0 00         [24] 1341 	mov	psw,#0x00
                           00000D  1342 	C$main.c$90$1$0 ==.
                                   1343 ;	main.c:90: uint8_t pc = PCON;
                           00000D  1344 	C$main.c$92$1$364 ==.
                                   1345 ;	main.c:92: if (!(pc & 0x80))
      003C5B E5 87            [12] 1346 	mov	a,_PCON
      003C5D FF               [12] 1347 	mov	r7,a
      003C5E 20 E7 02         [24] 1348 	jb	acc.7,00102$
                           000013  1349 	C$main.c$93$1$364 ==.
                                   1350 ;	main.c:93: return;
      003C61 80 10            [24] 1351 	sjmp	00106$
      003C63                       1352 00102$:
                           000015  1353 	C$main.c$95$1$364 ==.
                                   1354 ;	main.c:95: GPIOENABLE = 0;
      003C63 90 70 0C         [24] 1355 	mov	dptr,#_GPIOENABLE
      003C66 E4               [12] 1356 	clr	a
      003C67 F0               [24] 1357 	movx	@dptr,a
                           00001A  1358 	C$main.c$96$1$364 ==.
                                   1359 ;	main.c:96: IE = EIE = E2IE = 0;
                                   1360 ;	1-genFromRTrack replaced	mov	_E2IE,#0x00
      003C68 F5 A0            [12] 1361 	mov	_E2IE,a
                                   1362 ;	1-genFromRTrack replaced	mov	_EIE,#0x00
      003C6A F5 98            [12] 1363 	mov	_EIE,a
                                   1364 ;	1-genFromRTrack replaced	mov	_IE,#0x00
      003C6C F5 A8            [12] 1365 	mov	_IE,a
      003C6E                       1366 00104$:
                           000020  1367 	C$main.c$99$1$364 ==.
                                   1368 ;	main.c:99: PCON |= 0x01;
      003C6E 43 87 01         [24] 1369 	orl	_PCON,#0x01
      003C71 80 FB            [24] 1370 	sjmp	00104$
      003C73                       1371 00106$:
      003C73 D0 D0            [24] 1372 	pop	psw
      003C75 D0 07            [24] 1373 	pop	ar7
      003C77 D0 83            [24] 1374 	pop	dph
      003C79 D0 82            [24] 1375 	pop	dpl
      003C7B D0 E0            [24] 1376 	pop	acc
                           00002F  1377 	C$main.c$100$1$364 ==.
                           00002F  1378 	XFmain$pwrmgmt_irq$0$0 ==.
      003C7D 32               [24] 1379 	reti
                                   1380 ;	eliminated unneeded push/pop b
                                   1381 ;------------------------------------------------------------
                                   1382 ;Allocation info for local variables in function 'transmit_packet'
                                   1383 ;------------------------------------------------------------
                                   1384 ;demo_packet_              Allocated with name '_transmit_packet_demo_packet__1_366'
                                   1385 ;------------------------------------------------------------
                           000030  1386 	Fmain$transmit_packet$0$0 ==.
                           000030  1387 	C$main.c$102$1$364 ==.
                                   1388 ;	main.c:102: static void transmit_packet(void)
                                   1389 ;	-----------------------------------------
                                   1390 ;	 function transmit_packet
                                   1391 ;	-----------------------------------------
      003C7E                       1392 _transmit_packet:
                           000030  1393 	C$main.c$106$1$366 ==.
                                   1394 ;	main.c:106: ++pkt_counter;
      003C7E 05 23            [12] 1395 	inc	_pkt_counter
      003C80 E4               [12] 1396 	clr	a
      003C81 B5 23 02         [24] 1397 	cjne	a,_pkt_counter,00108$
      003C84 05 24            [12] 1398 	inc	(_pkt_counter + 1)
      003C86                       1399 00108$:
                           000038  1400 	C$main.c$107$1$366 ==.
                                   1401 ;	main.c:107: memcpy(demo_packet_, demo_packet, sizeof(demo_packet));
      003C86 75 34 7E         [24] 1402 	mov	_memcpy_PARM_2,#_demo_packet
      003C89 75 35 57         [24] 1403 	mov	(_memcpy_PARM_2 + 1),#(_demo_packet >> 8)
      003C8C 75 36 80         [24] 1404 	mov	(_memcpy_PARM_2 + 2),#0x80
      003C8F 75 37 48         [24] 1405 	mov	_memcpy_PARM_3,#0x48
      003C92 75 38 00         [24] 1406 	mov	(_memcpy_PARM_3 + 1),#0x00
      003C95 90 02 A6         [24] 1407 	mov	dptr,#_transmit_packet_demo_packet__1_366
      003C98 75 F0 00         [24] 1408 	mov	b,#0x00
      003C9B 12 46 9D         [24] 1409 	lcall	_memcpy
                           000050  1410 	C$main.c$109$1$366 ==.
                                   1411 ;	main.c:109: if (framing_insert_counter)
      003C9E 90 57 7C         [24] 1412 	mov	dptr,#_framing_insert_counter
      003CA1 E4               [12] 1413 	clr	a
      003CA2 93               [24] 1414 	movc	a,@a+dptr
      003CA3 60 24            [24] 1415 	jz	00102$
                           000057  1416 	C$main.c$111$2$367 ==.
                                   1417 ;	main.c:111: demo_packet_[framing_counter_pos] = pkt_counter & 0xFF ;
      003CA5 90 57 7D         [24] 1418 	mov	dptr,#_framing_counter_pos
      003CA8 E4               [12] 1419 	clr	a
      003CA9 93               [24] 1420 	movc	a,@a+dptr
      003CAA FF               [12] 1421 	mov	r7,a
      003CAB 24 A6            [12] 1422 	add	a,#_transmit_packet_demo_packet__1_366
      003CAD F5 82            [12] 1423 	mov	dpl,a
      003CAF E4               [12] 1424 	clr	a
      003CB0 34 02            [12] 1425 	addc	a,#(_transmit_packet_demo_packet__1_366 >> 8)
      003CB2 F5 83            [12] 1426 	mov	dph,a
      003CB4 AD 23            [24] 1427 	mov	r5,_pkt_counter
      003CB6 7E 00            [12] 1428 	mov	r6,#0x00
      003CB8 ED               [12] 1429 	mov	a,r5
      003CB9 F0               [24] 1430 	movx	@dptr,a
                           00006C  1431 	C$main.c$112$2$367 ==.
                                   1432 ;	main.c:112: demo_packet_[framing_counter_pos+1] = (pkt_counter>>8) & 0xFF;
      003CBA EF               [12] 1433 	mov	a,r7
      003CBB 04               [12] 1434 	inc	a
      003CBC 24 A6            [12] 1435 	add	a,#_transmit_packet_demo_packet__1_366
      003CBE F5 82            [12] 1436 	mov	dpl,a
      003CC0 E4               [12] 1437 	clr	a
      003CC1 34 02            [12] 1438 	addc	a,#(_transmit_packet_demo_packet__1_366 >> 8)
      003CC3 F5 83            [12] 1439 	mov	dph,a
      003CC5 E5 24            [12] 1440 	mov	a,(_pkt_counter + 1)
      003CC7 FF               [12] 1441 	mov	r7,a
      003CC8 F0               [24] 1442 	movx	@dptr,a
      003CC9                       1443 00102$:
                           00007B  1444 	C$main.c$115$1$366 ==.
                                   1445 ;	main.c:115: axradio_transmit(&remoteaddr, demo_packet_, sizeof(demo_packet));
      003CC9 75 15 A6         [24] 1446 	mov	_axradio_transmit_PARM_2,#_transmit_packet_demo_packet__1_366
      003CCC 75 16 02         [24] 1447 	mov	(_axradio_transmit_PARM_2 + 1),#(_transmit_packet_demo_packet__1_366 >> 8)
      003CCF 75 17 00         [24] 1448 	mov	(_axradio_transmit_PARM_2 + 2),#0x00
      003CD2 75 18 48         [24] 1449 	mov	_axradio_transmit_PARM_3,#0x48
      003CD5 75 19 00         [24] 1450 	mov	(_axradio_transmit_PARM_3 + 1),#0x00
      003CD8 90 57 6D         [24] 1451 	mov	dptr,#_remoteaddr
      003CDB 75 F0 80         [24] 1452 	mov	b,#0x80
      003CDE 12 35 CC         [24] 1453 	lcall	_axradio_transmit
                           000093  1454 	C$main.c$116$1$366 ==.
                           000093  1455 	XFmain$transmit_packet$0$0 ==.
      003CE1 22               [24] 1456 	ret
                                   1457 ;------------------------------------------------------------
                                   1458 ;Allocation info for local variables in function 'display_transmit_packet'
                                   1459 ;------------------------------------------------------------
                           000094  1460 	Fmain$display_transmit_packet$0$0 ==.
                           000094  1461 	C$main.c$118$1$366 ==.
                                   1462 ;	main.c:118: static void display_transmit_packet(void)
                                   1463 ;	-----------------------------------------
                                   1464 ;	 function display_transmit_packet
                                   1465 ;	-----------------------------------------
      003CE2                       1466 _display_transmit_packet:
                           000094  1467 	C$main.c$120$1$369 ==.
                                   1468 ;	main.c:120: if (pkt_counter == 1)
      003CE2 74 01            [12] 1469 	mov	a,#0x01
      003CE4 B5 23 06         [24] 1470 	cjne	a,_pkt_counter,00108$
      003CE7 14               [12] 1471 	dec	a
      003CE8 B5 24 02         [24] 1472 	cjne	a,(_pkt_counter + 1),00108$
      003CEB 80 02            [24] 1473 	sjmp	00109$
      003CED                       1474 00108$:
      003CED 80 0F            [24] 1475 	sjmp	00102$
      003CEF                       1476 00109$:
                           0000A1  1477 	C$main.c$122$2$370 ==.
                                   1478 ;	main.c:122: display_setpos(0x40);
      003CEF 75 82 40         [24] 1479 	mov	dpl,#0x40
      003CF2 12 40 CF         [24] 1480 	lcall	_lcd2_setpos
                           0000A7  1481 	C$main.c$123$2$370 ==.
                                   1482 ;	main.c:123: display_writestr("TX    ");
      003CF5 90 58 38         [24] 1483 	mov	dptr,#___str_0
      003CF8 75 F0 80         [24] 1484 	mov	b,#0x80
      003CFB 12 51 0A         [24] 1485 	lcall	_lcd2_writestr
      003CFE                       1486 00102$:
                           0000B0  1487 	C$main.c$132$1$369 ==.
                                   1488 ;	main.c:132: display_setpos(0x4c);
      003CFE 75 82 4C         [24] 1489 	mov	dpl,#0x4c
      003D01 12 40 CF         [24] 1490 	lcall	_lcd2_setpos
                           0000B6  1491 	C$main.c$133$1$369 ==.
                                   1492 ;	main.c:133: display_writehex16(pkt_counter, 4, WRNUM_PADZERO);
      003D04 74 08            [12] 1493 	mov	a,#0x08
      003D06 C0 E0            [24] 1494 	push	acc
      003D08 03               [12] 1495 	rr	a
      003D09 C0 E0            [24] 1496 	push	acc
      003D0B 85 23 82         [24] 1497 	mov	dpl,_pkt_counter
      003D0E 85 24 83         [24] 1498 	mov	dph,(_pkt_counter + 1)
      003D11 12 55 05         [24] 1499 	lcall	_lcd2_writehex16
      003D14 15 81            [12] 1500 	dec	sp
      003D16 15 81            [12] 1501 	dec	sp
                           0000CA  1502 	C$main.c$143$1$369 ==.
                           0000CA  1503 	XFmain$display_transmit_packet$0$0 ==.
      003D18 22               [24] 1504 	ret
                                   1505 ;------------------------------------------------------------
                                   1506 ;Allocation info for local variables in function 'axradio_statuschange'
                                   1507 ;------------------------------------------------------------
                                   1508 ;st                        Allocated to registers r6 r7 
                                   1509 ;------------------------------------------------------------
                           0000CB  1510 	G$axradio_statuschange$0$0 ==.
                           0000CB  1511 	C$main.c$145$1$369 ==.
                                   1512 ;	main.c:145: void axradio_statuschange(struct axradio_status __xdata *st)
                                   1513 ;	-----------------------------------------
                                   1514 ;	 function axradio_statuschange
                                   1515 ;	-----------------------------------------
      003D19                       1516 _axradio_statuschange:
                           0000CB  1517 	C$main.c$158$1$372 ==.
                                   1518 ;	main.c:158: switch (st->status)
      003D19 AE 82            [24] 1519 	mov	r6,dpl
      003D1B AF 83            [24] 1520 	mov  r7,dph
      003D1D E0               [24] 1521 	movx	a,@dptr
      003D1E FD               [12] 1522 	mov	r5,a
      003D1F BD 02 02         [24] 1523 	cjne	r5,#0x02,00199$
      003D22 80 39            [24] 1524 	sjmp	00155$
      003D24                       1525 00199$:
      003D24 BD 03 02         [24] 1526 	cjne	r5,#0x03,00200$
      003D27 80 05            [24] 1527 	sjmp	00105$
      003D29                       1528 00200$:
                           0000DB  1529 	C$main.c$161$2$373 ==.
                                   1530 ;	main.c:161: led0_on();
      003D29 BD 04 4C         [24] 1531 	cjne	r5,#0x04,00173$
      003D2C 80 10            [24] 1532 	sjmp	00120$
      003D2E                       1533 00105$:
      003D2E D2 93            [12] 1534 	setb	_PORTC_3
                           0000E2  1535 	C$main.c$163$2$373 ==.
                                   1536 ;	main.c:163: if (st->error == AXRADIO_ERR_RETRANSMISSION)
      003D30 8E 82            [24] 1537 	mov	dpl,r6
      003D32 8F 83            [24] 1538 	mov	dph,r7
      003D34 A3               [24] 1539 	inc	dptr
      003D35 E0               [24] 1540 	movx	a,@dptr
      003D36 FD               [12] 1541 	mov	r5,a
      003D37 BD 08 3E         [24] 1542 	cjne	r5,#0x08,00173$
                           0000EC  1543 	C$main.c$164$4$377 ==.
                                   1544 ;	main.c:164: led2_on();
      003D3A D2 82            [12] 1545 	setb	_PORTA_2
                           0000EE  1546 	C$main.c$175$2$373 ==.
                                   1547 ;	main.c:175: break;
                           0000EE  1548 	C$main.c$178$2$373 ==.
                                   1549 ;	main.c:178: led0_off();
      003D3C 80 3A            [24] 1550 	sjmp	00173$
      003D3E                       1551 00120$:
      003D3E C2 93            [12] 1552 	clr	_PORTC_3
                           0000F2  1553 	C$main.c$180$2$373 ==.
                                   1554 ;	main.c:180: if (st->error == AXRADIO_ERR_NOERROR)
      003D40 8E 82            [24] 1555 	mov	dpl,r6
      003D42 8F 83            [24] 1556 	mov	dph,r7
      003D44 A3               [24] 1557 	inc	dptr
      003D45 E0               [24] 1558 	movx	a,@dptr
      003D46 FD               [12] 1559 	mov	r5,a
      003D47 70 04            [24] 1560 	jnz	00138$
                           0000FB  1561 	C$main.c$182$5$382 ==.
                                   1562 ;	main.c:182: led2_off();
      003D49 C2 82            [12] 1563 	clr	_PORTA_2
      003D4B 80 05            [24] 1564 	sjmp	00139$
      003D4D                       1565 00138$:
                           0000FF  1566 	C$main.c$197$2$373 ==.
                                   1567 ;	main.c:197: else if (st->error == AXRADIO_ERR_TIMEOUT)
      003D4D BD 03 02         [24] 1568 	cjne	r5,#0x03,00139$
                           000102  1569 	C$main.c$199$5$385 ==.
                                   1570 ;	main.c:199: led2_on();
      003D50 D2 82            [12] 1571 	setb	_PORTA_2
      003D52                       1572 00139$:
                           000104  1573 	C$main.c$212$2$373 ==.
                                   1574 ;	main.c:212: if (st->error == AXRADIO_ERR_BUSY)
      003D52 BD 02 04         [24] 1575 	cjne	r5,#0x02,00149$
                           000107  1576 	C$main.c$213$4$387 ==.
                                   1577 ;	main.c:213: led3_on();
      003D55 D2 85            [12] 1578 	setb	_PORTA_5
                           000109  1579 	C$main.c$215$2$373 ==.
                                   1580 ;	main.c:215: led3_off();
      003D57 80 1F            [24] 1581 	sjmp	00173$
      003D59                       1582 00149$:
      003D59 C2 85            [12] 1583 	clr	_PORTA_5
                           00010D  1584 	C$main.c$217$2$373 ==.
                                   1585 ;	main.c:217: break;
                           00010D  1586 	C$main.c$227$2$373 ==.
                                   1587 ;	main.c:227: case AXRADIO_STAT_CHANNELSTATE:
      003D5B 80 1B            [24] 1588 	sjmp	00173$
      003D5D                       1589 00155$:
                           00010F  1590 	C$main.c$228$2$373 ==.
                                   1591 ;	main.c:228: if (st->u.cs.busy)
      003D5D 74 06            [12] 1592 	mov	a,#0x06
      003D5F 2E               [12] 1593 	add	a,r6
      003D60 FE               [12] 1594 	mov	r6,a
      003D61 E4               [12] 1595 	clr	a
      003D62 3F               [12] 1596 	addc	a,r7
      003D63 FF               [12] 1597 	mov	r7,a
      003D64 74 02            [12] 1598 	mov	a,#0x02
      003D66 2E               [12] 1599 	add	a,r6
      003D67 FE               [12] 1600 	mov	r6,a
      003D68 E4               [12] 1601 	clr	a
      003D69 3F               [12] 1602 	addc	a,r7
      003D6A FF               [12] 1603 	mov	r7,a
      003D6B 8E 82            [24] 1604 	mov	dpl,r6
      003D6D 8F 83            [24] 1605 	mov	dph,r7
      003D6F E0               [24] 1606 	movx	a,@dptr
      003D70 60 04            [24] 1607 	jz	00165$
                           000124  1608 	C$main.c$229$4$391 ==.
                                   1609 ;	main.c:229: led3_on();
      003D72 D2 85            [12] 1610 	setb	_PORTA_5
                           000126  1611 	C$main.c$231$2$373 ==.
                                   1612 ;	main.c:231: led3_off();
      003D74 80 02            [24] 1613 	sjmp	00173$
      003D76                       1614 00165$:
      003D76 C2 85            [12] 1615 	clr	_PORTA_5
                           00012A  1616 	C$main.c$237$1$372 ==.
                                   1617 ;	main.c:237: }
      003D78                       1618 00173$:
                           00012A  1619 	C$main.c$238$1$372 ==.
                           00012A  1620 	XG$axradio_statuschange$0$0 ==.
      003D78 22               [24] 1621 	ret
                                   1622 ;------------------------------------------------------------
                                   1623 ;Allocation info for local variables in function 'enable_radio_interrupt_in_mcu_pin'
                                   1624 ;------------------------------------------------------------
                           00012B  1625 	G$enable_radio_interrupt_in_mcu_pin$0$0 ==.
                           00012B  1626 	C$main.c$240$1$372 ==.
                                   1627 ;	main.c:240: void enable_radio_interrupt_in_mcu_pin(void)
                                   1628 ;	-----------------------------------------
                                   1629 ;	 function enable_radio_interrupt_in_mcu_pin
                                   1630 ;	-----------------------------------------
      003D79                       1631 _enable_radio_interrupt_in_mcu_pin:
                           00012B  1632 	C$main.c$242$1$395 ==.
                                   1633 ;	main.c:242: IE_4 = 1;
      003D79 D2 AC            [12] 1634 	setb	_IE_4
                           00012D  1635 	C$main.c$243$1$395 ==.
                           00012D  1636 	XG$enable_radio_interrupt_in_mcu_pin$0$0 ==.
      003D7B 22               [24] 1637 	ret
                                   1638 ;------------------------------------------------------------
                                   1639 ;Allocation info for local variables in function 'disable_radio_interrupt_in_mcu_pin'
                                   1640 ;------------------------------------------------------------
                           00012E  1641 	G$disable_radio_interrupt_in_mcu_pin$0$0 ==.
                           00012E  1642 	C$main.c$245$1$395 ==.
                                   1643 ;	main.c:245: void disable_radio_interrupt_in_mcu_pin(void)
                                   1644 ;	-----------------------------------------
                                   1645 ;	 function disable_radio_interrupt_in_mcu_pin
                                   1646 ;	-----------------------------------------
      003D7C                       1647 _disable_radio_interrupt_in_mcu_pin:
                           00012E  1648 	C$main.c$247$1$397 ==.
                                   1649 ;	main.c:247: IE_4 = 0;
      003D7C C2 AC            [12] 1650 	clr	_IE_4
                           000130  1651 	C$main.c$248$1$397 ==.
                           000130  1652 	XG$disable_radio_interrupt_in_mcu_pin$0$0 ==.
      003D7E 22               [24] 1653 	ret
                                   1654 ;------------------------------------------------------------
                                   1655 ;Allocation info for local variables in function 'wakeup_callback'
                                   1656 ;------------------------------------------------------------
                                   1657 ;desc                      Allocated to registers 
                                   1658 ;------------------------------------------------------------
                           000131  1659 	Fmain$wakeup_callback$0$0 ==.
                           000131  1660 	C$main.c$250$1$397 ==.
                                   1661 ;	main.c:250: static void wakeup_callback(struct wtimer_desc __xdata *desc)
                                   1662 ;	-----------------------------------------
                                   1663 ;	 function wakeup_callback
                                   1664 ;	-----------------------------------------
      003D7F                       1665 _wakeup_callback:
                           000131  1666 	C$main.c$254$1$399 ==.
                                   1667 ;	main.c:254: wakeup_desc.time += wtimer0_correctinterval(WTIMER0_PERIOD);
      003D7F 90 02 A2         [24] 1668 	mov	dptr,#(_wakeup_desc + 0x0004)
      003D82 E0               [24] 1669 	movx	a,@dptr
      003D83 FC               [12] 1670 	mov	r4,a
      003D84 A3               [24] 1671 	inc	dptr
      003D85 E0               [24] 1672 	movx	a,@dptr
      003D86 FD               [12] 1673 	mov	r5,a
      003D87 A3               [24] 1674 	inc	dptr
      003D88 E0               [24] 1675 	movx	a,@dptr
      003D89 FE               [12] 1676 	mov	r6,a
      003D8A A3               [24] 1677 	inc	dptr
      003D8B E0               [24] 1678 	movx	a,@dptr
      003D8C FF               [12] 1679 	mov	r7,a
      003D8D 90 05 00         [24] 1680 	mov	dptr,#0x0500
      003D90 E4               [12] 1681 	clr	a
      003D91 F5 F0            [12] 1682 	mov	b,a
      003D93 C0 07            [24] 1683 	push	ar7
      003D95 C0 06            [24] 1684 	push	ar6
      003D97 C0 05            [24] 1685 	push	ar5
      003D99 C0 04            [24] 1686 	push	ar4
      003D9B 12 4D 21         [24] 1687 	lcall	_wtimer0_correctinterval
      003D9E A8 82            [24] 1688 	mov	r0,dpl
      003DA0 A9 83            [24] 1689 	mov	r1,dph
      003DA2 AA F0            [24] 1690 	mov	r2,b
      003DA4 FB               [12] 1691 	mov	r3,a
      003DA5 D0 04            [24] 1692 	pop	ar4
      003DA7 D0 05            [24] 1693 	pop	ar5
      003DA9 D0 06            [24] 1694 	pop	ar6
      003DAB D0 07            [24] 1695 	pop	ar7
      003DAD E8               [12] 1696 	mov	a,r0
      003DAE 2C               [12] 1697 	add	a,r4
      003DAF FC               [12] 1698 	mov	r4,a
      003DB0 E9               [12] 1699 	mov	a,r1
      003DB1 3D               [12] 1700 	addc	a,r5
      003DB2 FD               [12] 1701 	mov	r5,a
      003DB3 EA               [12] 1702 	mov	a,r2
      003DB4 3E               [12] 1703 	addc	a,r6
      003DB5 FE               [12] 1704 	mov	r6,a
      003DB6 EB               [12] 1705 	mov	a,r3
      003DB7 3F               [12] 1706 	addc	a,r7
      003DB8 FF               [12] 1707 	mov	r7,a
      003DB9 90 02 A2         [24] 1708 	mov	dptr,#(_wakeup_desc + 0x0004)
      003DBC EC               [12] 1709 	mov	a,r4
      003DBD F0               [24] 1710 	movx	@dptr,a
      003DBE ED               [12] 1711 	mov	a,r5
      003DBF A3               [24] 1712 	inc	dptr
      003DC0 F0               [24] 1713 	movx	@dptr,a
      003DC1 EE               [12] 1714 	mov	a,r6
      003DC2 A3               [24] 1715 	inc	dptr
      003DC3 F0               [24] 1716 	movx	@dptr,a
      003DC4 EF               [12] 1717 	mov	a,r7
      003DC5 A3               [24] 1718 	inc	dptr
      003DC6 F0               [24] 1719 	movx	@dptr,a
                           000179  1720 	C$main.c$255$1$399 ==.
                                   1721 ;	main.c:255: wtimer0_addabsolute(&wakeup_desc);
      003DC7 90 02 9E         [24] 1722 	mov	dptr,#_wakeup_desc
      003DCA 12 48 50         [24] 1723 	lcall	_wtimer0_addabsolute
                           00017F  1724 	C$main.c$256$1$399 ==.
                                   1725 ;	main.c:256: transmit_packet();
      003DCD 12 3C 7E         [24] 1726 	lcall	_transmit_packet
                           000182  1727 	C$main.c$257$1$399 ==.
                                   1728 ;	main.c:257: display_transmit_packet();
      003DD0 12 3C E2         [24] 1729 	lcall	_display_transmit_packet
                           000185  1730 	C$main.c$259$1$399 ==.
                           000185  1731 	XFmain$wakeup_callback$0$0 ==.
      003DD3 22               [24] 1732 	ret
                                   1733 ;------------------------------------------------------------
                                   1734 ;Allocation info for local variables in function '_sdcc_external_startup'
                                   1735 ;------------------------------------------------------------
                                   1736 ;c                         Allocated to registers 
                                   1737 ;p                         Allocated to registers 
                                   1738 ;c                         Allocated to registers 
                                   1739 ;p                         Allocated to registers 
                                   1740 ;------------------------------------------------------------
                           000186  1741 	G$_sdcc_external_startup$0$0 ==.
                           000186  1742 	C$main.c$261$1$399 ==.
                                   1743 ;	main.c:261: uint8_t _sdcc_external_startup(void)
                                   1744 ;	-----------------------------------------
                                   1745 ;	 function _sdcc_external_startup
                                   1746 ;	-----------------------------------------
      003DD4                       1747 __sdcc_external_startup:
                           000186  1748 	C$main.c$263$1$401 ==.
                                   1749 ;	main.c:263: LPXOSCGM = 0x8A;
      003DD4 90 70 54         [24] 1750 	mov	dptr,#_LPXOSCGM
      003DD7 74 8A            [12] 1751 	mov	a,#0x8a
      003DD9 F0               [24] 1752 	movx	@dptr,a
                           00018C  1753 	C$main.c$264$2$402 ==.
                                   1754 ;	main.c:264: wtimer0_setclksrc(WTIMER0_CLKSRC, WTIMER0_PRESCALER);
      003DDA 75 82 09         [24] 1755 	mov	dpl,#0x09
      003DDD 12 43 7C         [24] 1756 	lcall	_wtimer0_setconfig
                           000192  1757 	C$main.c$265$2$403 ==.
                                   1758 ;	main.c:265: wtimer1_setclksrc(CLKSRC_FRCOSC, 7);
      003DE0 75 82 38         [24] 1759 	mov	dpl,#0x38
      003DE3 12 43 96         [24] 1760 	lcall	_wtimer1_setconfig
                           000198  1761 	C$main.c$267$1$401 ==.
                                   1762 ;	main.c:267: LPOSCCONFIG = 0x09; /* Slow, PRESC /1, no cal. Does NOT enable LPOSC. LPOSC is enabled upon configuring WTCFGA (MODE_TX_PERIODIC and receive_ack() ) */
      003DE6 90 70 60         [24] 1763 	mov	dptr,#_LPOSCCONFIG
      003DE9 74 09            [12] 1764 	mov	a,#0x09
      003DEB F0               [24] 1765 	movx	@dptr,a
                           00019E  1766 	C$main.c$269$1$401 ==.
                                   1767 ;	main.c:269: coldstart = !(PCON & 0x40);
      003DEC E5 87            [12] 1768 	mov	a,_PCON
      003DEE A2 E6            [12] 1769 	mov	c,acc[6]
      003DF0 B3               [12] 1770 	cpl	c
      003DF1 92 01            [24] 1771 	mov	__sdcc_external_startup_sloc0_1_0,c
      003DF3 E4               [12] 1772 	clr	a
      003DF4 33               [12] 1773 	rlc	a
      003DF5 F5 25            [12] 1774 	mov	_coldstart,a
                           0001A9  1775 	C$main.c$271$1$401 ==.
                                   1776 ;	main.c:271: ANALOGA = 0x18; /* PA[3,4] LPXOSC, other PA are used as digital pins */
      003DF7 90 70 07         [24] 1777 	mov	dptr,#_ANALOGA
      003DFA 74 18            [12] 1778 	mov	a,#0x18
      003DFC F0               [24] 1779 	movx	@dptr,a
                           0001AF  1780 	C$main.c$272$1$401 ==.
                                   1781 ;	main.c:272: PORTA = 0xC0 | (PINA & 0x25); 	/* pull-up for PA[6,7] which are not bonded, no pull up for PA[3,4] (LPXOSC). Output 0 in PA[0,1,2,5] to prevent current consumption in all DIP switch states */
      003DFD 74 25            [12] 1782 	mov	a,#0x25
      003DFF 55 C8            [12] 1783 	anl	a,_PINA
      003E01 44 C0            [12] 1784 	orl	a,#0xc0
      003E03 F5 80            [12] 1785 	mov	_PORTA,a
                           0001B7  1786 	C$main.c$274$1$401 ==.
                                   1787 ;	main.c:274: PORTB = 0xFE; /*PB[0,1]  (LCD RS, LCD RST) are overwritten by lcd2_portinit(), enable pull-ups for PB[2..7]  (PB[2,3] for buttons, PB[4..7] unused) */
      003E05 75 88 FE         [24] 1788 	mov	_PORTB,#0xfe
                           0001BA  1789 	C$main.c$275$1$401 ==.
                                   1790 ;	main.c:275: PORTC = 0xF3 | (PINC & 0x08); 	/* set PC0 = 1 (LCD SEL), PC1 = 1 (LCD SCK), PC2 = 0 (LCD MOSI), PC3 =0 (LED), enable pull-ups for PC[4..7] which are not bonded Mind: PORTC[0:1] is set to 0x3 by lcd2_portinit() */
      003E08 74 08            [12] 1791 	mov	a,#0x08
      003E0A 55 F8            [12] 1792 	anl	a,_PINC
      003E0C 44 F3            [12] 1793 	orl	a,#0xf3
      003E0E F5 90            [12] 1794 	mov	_PORTC,a
                           0001C2  1795 	C$main.c$277$1$401 ==.
                                   1796 ;	main.c:277: PORTR = 0xCB; /* overwritten by ax504x_reset, ax504x_comminit() */
      003E10 75 8C CB         [24] 1797 	mov	_PORTR,#0xcb
                           0001C5  1798 	C$main.c$279$1$401 ==.
                                   1799 ;	main.c:279: DIRA = 0x27; /* output 0 on PA[0,1,2,5] to prevent current consumption in all DIP switch states. Other PA are inputs, PA[3,4] (LPXOSC) must have disabled digital output drivers */
      003E13 75 89 27         [24] 1800 	mov	_DIRA,#0x27
                           0001C8  1801 	C$main.c$280$1$401 ==.
                                   1802 ;	main.c:280: DIRB = 0x03; /* PB[0,1] are outputs (LCD RS, LCD RST), PB[2..7] are inputs (PB[2,3] for buttons,  PB[4..7]  unused) */
      003E16 75 8A 03         [24] 1803 	mov	_DIRB,#0x03
                           0001CB  1804 	C$main.c$281$1$401 ==.
                                   1805 ;	main.c:281: DIRC = 0x0F; /* PC[0..3] are outputs (LCD SEL, LCD,SCK, LCD MOSI, LED), PC[4..7] are inputs (not bonded). */
      003E19 75 8B 0F         [24] 1806 	mov	_DIRC,#0x0f
                           0001CE  1807 	C$main.c$282$1$401 ==.
                                   1808 ;	main.c:282: DIRR = 0x15; /* overwritten by ax504x_reset, ax504x_comminit() */
      003E1C 75 8E 15         [24] 1809 	mov	_DIRR,#0x15
                           0001D1  1810 	C$main.c$283$1$401 ==.
                                   1811 ;	main.c:283: axradio_setup_pincfg1();
      003E1F 12 06 C4         [24] 1812 	lcall	_axradio_setup_pincfg1
                           0001D4  1813 	C$main.c$284$1$401 ==.
                                   1814 ;	main.c:284: DPS = 0;
      003E22 75 86 00         [24] 1815 	mov	_DPS,#0x00
                           0001D7  1816 	C$main.c$285$1$401 ==.
                                   1817 ;	main.c:285: IE = 0x40;
      003E25 75 A8 40         [24] 1818 	mov	_IE,#0x40
                           0001DA  1819 	C$main.c$286$1$401 ==.
                                   1820 ;	main.c:286: EIE = 0x00;
      003E28 75 98 00         [24] 1821 	mov	_EIE,#0x00
                           0001DD  1822 	C$main.c$287$1$401 ==.
                                   1823 ;	main.c:287: E2IE = 0x00;
      003E2B 75 A0 00         [24] 1824 	mov	_E2IE,#0x00
                           0001E0  1825 	C$main.c$289$1$401 ==.
                                   1826 ;	main.c:289: display_portinit();
      003E2E 12 4B 66         [24] 1827 	lcall	_lcd2_portinit
                           0001E3  1828 	C$main.c$290$1$401 ==.
                                   1829 ;	main.c:290: GPIOENABLE = 1; /* unfreeze GPIO */
      003E31 90 70 0C         [24] 1830 	mov	dptr,#_GPIOENABLE
      003E34 74 01            [12] 1831 	mov	a,#0x01
      003E36 F0               [24] 1832 	movx	@dptr,a
                           0001E9  1833 	C$main.c$291$1$401 ==.
                                   1834 ;	main.c:291: return !coldstart; /* coldstart -> return 0 -> var initialization; start from sleep -> return 1 -> no var initialization */
      003E37 E5 25            [12] 1835 	mov	a,_coldstart
      003E39 B4 01 00         [24] 1836 	cjne	a,#0x01,00109$
      003E3C                       1837 00109$:
      003E3C 92 01            [24] 1838 	mov  __sdcc_external_startup_sloc0_1_0,c
      003E3E E4               [12] 1839 	clr	a
      003E3F 33               [12] 1840 	rlc	a
      003E40 F5 82            [12] 1841 	mov	dpl,a
                           0001F4  1842 	C$main.c$292$1$401 ==.
                           0001F4  1843 	XG$_sdcc_external_startup$0$0 ==.
      003E42 22               [24] 1844 	ret
                                   1845 ;------------------------------------------------------------
                                   1846 ;Allocation info for local variables in function 'si_write_reg'
                                   1847 ;------------------------------------------------------------
                                   1848 ;data                      Allocated with name '_si_write_reg_PARM_2'
                                   1849 ;address                   Allocated to registers r7 
                                   1850 ;i                         Allocated to registers r6 r7 
                                   1851 ;sdata                     Allocated to registers 
                                   1852 ;mask                      Allocated to registers 
                                   1853 ;------------------------------------------------------------
                           0001F5  1854 	Fmain$si_write_reg$0$0 ==.
                           0001F5  1855 	C$main.c$296$1$401 ==.
                                   1856 ;	main.c:296: static void si_write_reg(uint8_t address, uint32_t data)
                                   1857 ;	-----------------------------------------
                                   1858 ;	 function si_write_reg
                                   1859 ;	-----------------------------------------
      003E43                       1860 _si_write_reg:
      003E43 AF 82            [24] 1861 	mov	r7,dpl
                           0001F7  1862 	C$main.c$302$1$405 ==.
                                   1863 ;	main.c:302: data = (data << 14) | (address << 10);
      003E45 AD 27            [24] 1864 	mov	r5,(_si_write_reg_PARM_2 + 1)
      003E47 E5 28            [12] 1865 	mov	a,(_si_write_reg_PARM_2 + 2)
      003E49 54 03            [12] 1866 	anl	a,#0x03
      003E4B A2 E0            [12] 1867 	mov	c,acc.0
      003E4D CD               [12] 1868 	xch	a,r5
      003E4E 13               [12] 1869 	rrc	a
      003E4F CD               [12] 1870 	xch	a,r5
      003E50 13               [12] 1871 	rrc	a
      003E51 A2 E0            [12] 1872 	mov	c,acc.0
      003E53 CD               [12] 1873 	xch	a,r5
      003E54 13               [12] 1874 	rrc	a
      003E55 CD               [12] 1875 	xch	a,r5
      003E56 13               [12] 1876 	rrc	a
      003E57 CD               [12] 1877 	xch	a,r5
      003E58 FE               [12] 1878 	mov	r6,a
      003E59 E5 26            [12] 1879 	mov	a,_si_write_reg_PARM_2
      003E5B 03               [12] 1880 	rr	a
      003E5C 03               [12] 1881 	rr	a
      003E5D 54 C0            [12] 1882 	anl	a,#0xc0
      003E5F FC               [12] 1883 	mov	r4,a
      003E60 E5 26            [12] 1884 	mov	a,_si_write_reg_PARM_2
      003E62 03               [12] 1885 	rr	a
      003E63 03               [12] 1886 	rr	a
      003E64 54 3F            [12] 1887 	anl	a,#0x3f
      003E66 4D               [12] 1888 	orl	a,r5
      003E67 FD               [12] 1889 	mov	r5,a
      003E68 E4               [12] 1890 	clr	a
      003E69 FB               [12] 1891 	mov	r3,a
      003E6A EF               [12] 1892 	mov	a,r7
      003E6B 2F               [12] 1893 	add	a,r7
      003E6C 25 E0            [12] 1894 	add	a,acc
      003E6E FA               [12] 1895 	mov	r2,a
      003E6F 7F 00            [12] 1896 	mov	r7,#0x00
      003E71 8F 00            [24] 1897 	mov	ar0,r7
      003E73 EA               [12] 1898 	mov	a,r2
      003E74 F9               [12] 1899 	mov	r1,a
      003E75 33               [12] 1900 	rlc	a
      003E76 95 E0            [12] 1901 	subb	a,acc
      003E78 FA               [12] 1902 	mov	r2,a
      003E79 FF               [12] 1903 	mov	r7,a
      003E7A E8               [12] 1904 	mov	a,r0
      003E7B 4B               [12] 1905 	orl	a,r3
      003E7C F5 26            [12] 1906 	mov	_si_write_reg_PARM_2,a
      003E7E E9               [12] 1907 	mov	a,r1
      003E7F 4C               [12] 1908 	orl	a,r4
      003E80 F5 27            [12] 1909 	mov	(_si_write_reg_PARM_2 + 1),a
      003E82 EA               [12] 1910 	mov	a,r2
      003E83 4D               [12] 1911 	orl	a,r5
      003E84 F5 28            [12] 1912 	mov	(_si_write_reg_PARM_2 + 2),a
      003E86 EF               [12] 1913 	mov	a,r7
      003E87 4E               [12] 1914 	orl	a,r6
      003E88 F5 29            [12] 1915 	mov	(_si_write_reg_PARM_2 + 3),a
                           00023C  1916 	C$main.c$307$3$407 ==.
                                   1917 ;	main.c:307: led2_off(); //palClearLine(LINE_SI_SENB);
      003E8A C2 82            [12] 1918 	clr	_PORTA_2
                           00023E  1919 	C$main.c$311$1$405 ==.
                                   1920 ;	main.c:311: led1_off(); //palClearLine(LINE_SI_SCLK);
      003E8C 7E 00            [12] 1921 	mov	r6,#0x00
      003E8E 7F 00            [12] 1922 	mov	r7,#0x00
      003E90                       1923 00110$:
      003E90 C2 80            [12] 1924 	clr	_PORTA_0
                           000244  1925 	C$main.c$312$2$408 ==.
                                   1926 ;	main.c:312: delay_ms(1);
      003E92 90 00 01         [24] 1927 	mov	dptr,#0x0001
      003E95 C0 07            [24] 1928 	push	ar7
      003E97 C0 06            [24] 1929 	push	ar6
      003E99 12 3A E9         [24] 1930 	lcall	_delay_ms
      003E9C D0 06            [24] 1931 	pop	ar6
      003E9E D0 07            [24] 1932 	pop	ar7
                           000252  1933 	C$main.c$313$2$408 ==.
                                   1934 ;	main.c:313: sdata = data & mask;
      003EA0 E5 29            [12] 1935 	mov	a,(_si_write_reg_PARM_2 + 3)
      003EA2 30 E7 04         [24] 1936 	jnb	acc.7,00122$
                           000257  1937 	C$main.c$314$2$408 ==.
                                   1938 ;	main.c:314: if(sdata > 0){
                           000257  1939 	C$main.c$316$5$413 ==.
                                   1940 ;	main.c:316: led3_on(); //palSetLine(LINE_SI_SDATA);
      003EA5 D2 85            [12] 1941 	setb	_PORTA_5
                           000259  1942 	C$main.c$320$3$414 ==.
                                   1943 ;	main.c:320: led3_off(); //palClearLine(LINE_SI_SDATA);
      003EA7 80 02            [24] 1944 	sjmp	00127$
      003EA9                       1945 00122$:
      003EA9 C2 85            [12] 1946 	clr	_PORTA_5
      003EAB                       1947 00127$:
                           00025D  1948 	C$main.c$322$2$408 ==.
                                   1949 ;	main.c:322: delay_ms(1);
      003EAB 90 00 01         [24] 1950 	mov	dptr,#0x0001
      003EAE C0 07            [24] 1951 	push	ar7
      003EB0 C0 06            [24] 1952 	push	ar6
      003EB2 12 3A E9         [24] 1953 	lcall	_delay_ms
                           000267  1954 	C$main.c$323$4$418 ==.
                                   1955 ;	main.c:323: led1_on(); //palSetLine(LINE_SI_SCLK);
      003EB5 D2 80            [12] 1956 	setb	_PORTA_0
                           000269  1957 	C$main.c$324$2$408 ==.
                                   1958 ;	main.c:324: delay_ms(1);
      003EB7 90 00 01         [24] 1959 	mov	dptr,#0x0001
      003EBA 12 3A E9         [24] 1960 	lcall	_delay_ms
                           00026F  1961 	C$main.c$325$2$408 ==.
                                   1962 ;	main.c:325: data = data <<1;
      003EBD E5 26            [12] 1963 	mov	a,_si_write_reg_PARM_2
      003EBF 25 26            [12] 1964 	add	a,_si_write_reg_PARM_2
      003EC1 F5 26            [12] 1965 	mov	_si_write_reg_PARM_2,a
      003EC3 E5 27            [12] 1966 	mov	a,(_si_write_reg_PARM_2 + 1)
      003EC5 33               [12] 1967 	rlc	a
      003EC6 F5 27            [12] 1968 	mov	(_si_write_reg_PARM_2 + 1),a
      003EC8 E5 28            [12] 1969 	mov	a,(_si_write_reg_PARM_2 + 2)
      003ECA 33               [12] 1970 	rlc	a
      003ECB F5 28            [12] 1971 	mov	(_si_write_reg_PARM_2 + 2),a
      003ECD E5 29            [12] 1972 	mov	a,(_si_write_reg_PARM_2 + 3)
      003ECF 33               [12] 1973 	rlc	a
      003ED0 F5 29            [12] 1974 	mov	(_si_write_reg_PARM_2 + 3),a
                           000284  1975 	C$main.c$326$2$408 ==.
                                   1976 ;	main.c:326: delay_ms(1);
      003ED2 90 00 01         [24] 1977 	mov	dptr,#0x0001
      003ED5 12 3A E9         [24] 1978 	lcall	_delay_ms
      003ED8 D0 06            [24] 1979 	pop	ar6
      003EDA D0 07            [24] 1980 	pop	ar7
                           00028E  1981 	C$main.c$309$1$405 ==.
                                   1982 ;	main.c:309: for(i=0; i<22;i++)
      003EDC 0E               [12] 1983 	inc	r6
      003EDD BE 00 01         [24] 1984 	cjne	r6,#0x00,00156$
      003EE0 0F               [12] 1985 	inc	r7
      003EE1                       1986 00156$:
      003EE1 C3               [12] 1987 	clr	c
      003EE2 EE               [12] 1988 	mov	a,r6
      003EE3 94 16            [12] 1989 	subb	a,#0x16
      003EE5 EF               [12] 1990 	mov	a,r7
      003EE6 64 80            [12] 1991 	xrl	a,#0x80
      003EE8 94 80            [12] 1992 	subb	a,#0x80
      003EEA 40 A4            [24] 1993 	jc	00110$
                           00029E  1994 	C$main.c$329$3$420 ==.
                                   1995 ;	main.c:329: led2_on(); //palSetLine(LINE_SI_SENB);
      003EEC D2 82            [12] 1996 	setb	_PORTA_2
                           0002A0  1997 	C$main.c$331$1$405 ==.
                           0002A0  1998 	XFmain$si_write_reg$0$0 ==.
      003EEE 22               [24] 1999 	ret
                                   2000 ;------------------------------------------------------------
                                   2001 ;Allocation info for local variables in function 'synth_init'
                                   2002 ;------------------------------------------------------------
                                   2003 ;freq                      Allocated to registers 
                                   2004 ;phase                     Allocated to registers 
                                   2005 ;pllref                    Allocated to registers 
                                   2006 ;ndiv                      Allocated to registers 
                                   2007 ;rdiv                      Allocated to registers 
                                   2008 ;------------------------------------------------------------
                           0002A1  2009 	Fmain$synth_init$0$0 ==.
                           0002A1  2010 	C$main.c$335$1$405 ==.
                                   2011 ;	main.c:335: static void synth_init(void)
                                   2012 ;	-----------------------------------------
                                   2013 ;	 function synth_init
                                   2014 ;	-----------------------------------------
      003EEF                       2015 _synth_init:
                           0002A1  2016 	C$main.c$349$3$424 ==.
                                   2017 ;	main.c:349: led2_on(); //palSetLine(LINE_SI_SENB);
      003EEF D2 82            [12] 2018 	setb	_PORTA_2
                           0002A3  2019 	C$main.c$350$3$426 ==.
                                   2020 ;	main.c:350: led3_on(); //palSetLine(LINE_SI_SDATA);
      003EF1 D2 85            [12] 2021 	setb	_PORTA_5
                           0002A5  2022 	C$main.c$351$3$428 ==.
                                   2023 ;	main.c:351: led1_on(); //palSetLine(LINE_SI_SCLK);
      003EF3 D2 80            [12] 2024 	setb	_PORTA_0
                           0002A7  2025 	C$main.c$352$1$422 ==.
                                   2026 ;	main.c:352: si_write_reg(SI41XX_REG_MAIN_CONFIG, 0b000011000000000100);
      003EF5 75 26 04         [24] 2027 	mov	_si_write_reg_PARM_2,#0x04
      003EF8 75 27 30         [24] 2028 	mov	(_si_write_reg_PARM_2 + 1),#0x30
      003EFB E4               [12] 2029 	clr	a
      003EFC F5 28            [12] 2030 	mov	(_si_write_reg_PARM_2 + 2),a
      003EFE F5 29            [12] 2031 	mov	(_si_write_reg_PARM_2 + 3),a
      003F00 75 82 00         [24] 2032 	mov	dpl,#0x00
      003F03 12 3E 43         [24] 2033 	lcall	_si_write_reg
                           0002B8  2034 	C$main.c$353$1$422 ==.
                                   2035 ;	main.c:353: si_write_reg(SI41XX_REG_PHASE_GAIN,  0b000000000000000000);
      003F06 E4               [12] 2036 	clr	a
      003F07 F5 26            [12] 2037 	mov	_si_write_reg_PARM_2,a
      003F09 F5 27            [12] 2038 	mov	(_si_write_reg_PARM_2 + 1),a
      003F0B F5 28            [12] 2039 	mov	(_si_write_reg_PARM_2 + 2),a
      003F0D F5 29            [12] 2040 	mov	(_si_write_reg_PARM_2 + 3),a
      003F0F 75 82 01         [24] 2041 	mov	dpl,#0x01
      003F12 12 3E 43         [24] 2042 	lcall	_si_write_reg
                           0002C7  2043 	C$main.c$354$1$422 ==.
                                   2044 ;	main.c:354: si_write_reg(SI41XX_REG_PWRDOWN,     0b000000000000000000);
      003F15 E4               [12] 2045 	clr	a
      003F16 F5 26            [12] 2046 	mov	_si_write_reg_PARM_2,a
      003F18 F5 27            [12] 2047 	mov	(_si_write_reg_PARM_2 + 1),a
      003F1A F5 28            [12] 2048 	mov	(_si_write_reg_PARM_2 + 2),a
      003F1C F5 29            [12] 2049 	mov	(_si_write_reg_PARM_2 + 3),a
      003F1E 75 82 02         [24] 2050 	mov	dpl,#0x02
      003F21 12 3E 43         [24] 2051 	lcall	_si_write_reg
                           0002D6  2052 	C$main.c$355$1$422 ==.
                                   2053 ;	main.c:355: si_write_reg(SI41XX_REG_IF_NDIV, ndiv);
      003F24 75 26 F0         [24] 2054 	mov	_si_write_reg_PARM_2,#0xf0
      003F27 75 27 05         [24] 2055 	mov	(_si_write_reg_PARM_2 + 1),#0x05
      003F2A E4               [12] 2056 	clr	a
      003F2B F5 28            [12] 2057 	mov	(_si_write_reg_PARM_2 + 2),a
      003F2D F5 29            [12] 2058 	mov	(_si_write_reg_PARM_2 + 3),a
      003F2F 75 82 05         [24] 2059 	mov	dpl,#0x05
      003F32 12 3E 43         [24] 2060 	lcall	_si_write_reg
                           0002E7  2061 	C$main.c$356$1$422 ==.
                                   2062 ;	main.c:356: si_write_reg(SI41XX_REG_IF_RDIV, rdiv);
      003F35 75 26 20         [24] 2063 	mov	_si_write_reg_PARM_2,#0x20
      003F38 E4               [12] 2064 	clr	a
      003F39 F5 27            [12] 2065 	mov	(_si_write_reg_PARM_2 + 1),a
      003F3B F5 28            [12] 2066 	mov	(_si_write_reg_PARM_2 + 2),a
      003F3D F5 29            [12] 2067 	mov	(_si_write_reg_PARM_2 + 3),a
      003F3F 75 82 08         [24] 2068 	mov	dpl,#0x08
      003F42 12 3E 43         [24] 2069 	lcall	_si_write_reg
                           0002F7  2070 	C$main.c$357$1$422 ==.
                                   2071 ;	main.c:357: si_write_reg(SI41XX_REG_PWRDOWN,     0b000000000000000010);
      003F45 75 26 02         [24] 2072 	mov	_si_write_reg_PARM_2,#0x02
      003F48 E4               [12] 2073 	clr	a
      003F49 F5 27            [12] 2074 	mov	(_si_write_reg_PARM_2 + 1),a
      003F4B F5 28            [12] 2075 	mov	(_si_write_reg_PARM_2 + 2),a
      003F4D F5 29            [12] 2076 	mov	(_si_write_reg_PARM_2 + 3),a
      003F4F 75 82 02         [24] 2077 	mov	dpl,#0x02
      003F52 12 3E 43         [24] 2078 	lcall	_si_write_reg
                           000307  2079 	C$main.c$358$3$430 ==.
                                   2080 ;	main.c:358: led2_on(); //palSetLine(LINE_SI_SENB);
      003F55 D2 82            [12] 2081 	setb	_PORTA_2
                           000309  2082 	C$main.c$359$3$432 ==.
                                   2083 ;	main.c:359: led3_on(); //palSetLine(LINE_SI_SDATA);
      003F57 D2 85            [12] 2084 	setb	_PORTA_5
                           00030B  2085 	C$main.c$360$3$434 ==.
                                   2086 ;	main.c:360: led1_on(); //palSetLine(LINE_SI_SCLK);
      003F59 D2 80            [12] 2087 	setb	_PORTA_0
                           00030D  2088 	C$main.c$362$1$422 ==.
                           00030D  2089 	XFmain$synth_init$0$0 ==.
      003F5B 22               [24] 2090 	ret
                                   2091 ;------------------------------------------------------------
                                   2092 ;Allocation info for local variables in function 'main'
                                   2093 ;------------------------------------------------------------
                                   2094 ;saved_button_state        Allocated with name '_main_saved_button_state_1_436'
                                   2095 ;i                         Allocated to registers r7 
                                   2096 ;x                         Allocated to registers r6 
                                   2097 ;flg                       Allocated to registers r6 
                                   2098 ;flg                       Allocated to registers r7 
                                   2099 ;------------------------------------------------------------
                           00030E  2100 	G$main$0$0 ==.
                           00030E  2101 	C$main.c$365$1$422 ==.
                                   2102 ;	main.c:365: int main(void)
                                   2103 ;	-----------------------------------------
                                   2104 ;	 function main
                                   2105 ;	-----------------------------------------
      003F5C                       2106 _main:
                           00030E  2107 	C$main.c$372$1$436 ==.
                                   2108 ;	main.c:372: __endasm;
                           000000  2109 	G$_start__stack$0$0	= __start__stack
                                   2110 	.globl	G$_start__stack$0$0
                           00030E  2111 	C$libmftypes.h$368$4$458 ==.
                                   2112 ;	C:/Program Files (x86)/ON Semiconductor/AXSDB/libmf/include/libmftypes.h:368: EA = 1;
      003F5C D2 AF            [12] 2113 	setb	_EA
                           000310  2114 	C$main.c$377$1$436 ==.
                                   2115 ;	main.c:377: flash_apply_calibration();
      003F5E 12 4B 8C         [24] 2116 	lcall	_flash_apply_calibration
                           000313  2117 	C$main.c$378$1$436 ==.
                                   2118 ;	main.c:378: CLKCON = 0x00;
      003F61 75 C6 00         [24] 2119 	mov	_CLKCON,#0x00
                           000316  2120 	C$main.c$379$1$436 ==.
                                   2121 ;	main.c:379: wtimer_init();
      003F64 12 44 45         [24] 2122 	lcall	_wtimer_init
                           000319  2123 	C$main.c$381$1$436 ==.
                                   2124 ;	main.c:381: if (coldstart)
      003F67 E5 25            [12] 2125 	mov	a,_coldstart
      003F69 70 03            [24] 2126 	jnz	00193$
      003F6B 02 40 7B         [24] 2127 	ljmp	00136$
      003F6E                       2128 00193$:
                           000320  2129 	C$main.c$383$4$439 ==.
                                   2130 ;	main.c:383: led0_off();
      003F6E C2 93            [12] 2131 	clr	_PORTC_3
                           000322  2132 	C$main.c$384$4$441 ==.
                                   2133 ;	main.c:384: led1_off();
      003F70 C2 80            [12] 2134 	clr	_PORTA_0
                           000324  2135 	C$main.c$385$4$443 ==.
                                   2136 ;	main.c:385: led2_off();
      003F72 C2 82            [12] 2137 	clr	_PORTA_2
                           000326  2138 	C$main.c$386$4$445 ==.
                                   2139 ;	main.c:386: led3_off();
      003F74 C2 85            [12] 2140 	clr	_PORTA_5
                           000328  2141 	C$main.c$388$2$437 ==.
                                   2142 ;	main.c:388: wakeup_desc.handler = wakeup_callback;
      003F76 90 02 A0         [24] 2143 	mov	dptr,#(_wakeup_desc + 0x0002)
      003F79 74 7F            [12] 2144 	mov	a,#_wakeup_callback
      003F7B F0               [24] 2145 	movx	@dptr,a
      003F7C 74 3D            [12] 2146 	mov	a,#(_wakeup_callback >> 8)
      003F7E A3               [24] 2147 	inc	dptr
      003F7F F0               [24] 2148 	movx	@dptr,a
                           000332  2149 	C$main.c$392$2$437 ==.
                                   2150 ;	main.c:392: display_init();
      003F80 12 4B 00         [24] 2151 	lcall	_lcd2_init
                           000335  2152 	C$main.c$393$2$437 ==.
                                   2153 ;	main.c:393: display_setpos(0);
      003F83 75 82 00         [24] 2154 	mov	dpl,#0x00
      003F86 12 40 CF         [24] 2155 	lcall	_lcd2_setpos
                           00033B  2156 	C$main.c$394$2$437 ==.
                                   2157 ;	main.c:394: i = axradio_init();
      003F89 12 2A 9D         [24] 2158 	lcall	_axradio_init
                           00033E  2159 	C$main.c$396$2$437 ==.
                                   2160 ;	main.c:396: if (i != AXRADIO_ERR_NOERROR)
      003F8C E5 82            [12] 2161 	mov	a,dpl
      003F8E FF               [12] 2162 	mov	r7,a
      003F8F 60 14            [24] 2163 	jz	00128$
                           000343  2164 	C$main.c$398$3$446 ==.
                                   2165 ;	main.c:398: if (i == AXRADIO_ERR_NOCHIP)
      003F91 BF 05 02         [24] 2166 	cjne	r7,#0x05,00195$
      003F94 80 03            [24] 2167 	sjmp	00196$
      003F96                       2168 00195$:
      003F96 02 40 A9         [24] 2169 	ljmp	00142$
      003F99                       2170 00196$:
                           00034B  2171 	C$main.c$400$4$447 ==.
                                   2172 ;	main.c:400: display_writestr(radio_not_found_lcd_display);
      003F99 90 05 12         [24] 2173 	mov	dptr,#_radio_not_found_lcd_display
      003F9C 75 F0 00         [24] 2174 	mov	b,#0x00
      003F9F 12 51 0A         [24] 2175 	lcall	_lcd2_writestr
                           000354  2176 	C$main.c$407$4$447 ==.
                                   2177 ;	main.c:407: goto terminate_error;
      003FA2 02 40 AE         [24] 2178 	ljmp	00153$
                           000357  2179 	C$main.c$410$2$437 ==.
                                   2180 ;	main.c:410: goto terminate_radio_error;
      003FA5                       2181 00128$:
                           000357  2182 	C$main.c$413$2$437 ==.
                                   2183 ;	main.c:413: display_writestr(radio_lcd_display);
      003FA5 90 05 04         [24] 2184 	mov	dptr,#_radio_lcd_display
      003FA8 75 F0 00         [24] 2185 	mov	b,#0x00
      003FAB 12 51 0A         [24] 2186 	lcall	_lcd2_writestr
                           000360  2187 	C$main.c$420$2$437 ==.
                                   2188 ;	main.c:420: axradio_set_local_address(&localaddr);
      003FAE 90 57 72         [24] 2189 	mov	dptr,#_localaddr
      003FB1 75 F0 80         [24] 2190 	mov	b,#0x80
      003FB4 12 35 53         [24] 2191 	lcall	_axradio_set_local_address
                           000369  2192 	C$main.c$421$2$437 ==.
                                   2193 ;	main.c:421: axradio_set_default_remote_address(&remoteaddr);
      003FB7 90 57 6D         [24] 2194 	mov	dptr,#_remoteaddr
      003FBA 75 F0 80         [24] 2195 	mov	b,#0x80
      003FBD 12 35 91         [24] 2196 	lcall	_axradio_set_default_remote_address
                           000372  2197 	C$main.c$435$2$437 ==.
                                   2198 ;	main.c:435: display_writestr("RNG=");
      003FC0 90 58 3F         [24] 2199 	mov	dptr,#___str_1
      003FC3 75 F0 80         [24] 2200 	mov	b,#0x80
      003FC6 12 51 0A         [24] 2201 	lcall	_lcd2_writestr
                           00037B  2202 	C$main.c$436$2$437 ==.
                                   2203 ;	main.c:436: display_writenum16(axradio_get_pllrange(), 2, 0);
      003FC9 12 33 E5         [24] 2204 	lcall	_axradio_get_pllrange
      003FCC E4               [12] 2205 	clr	a
      003FCD C0 E0            [24] 2206 	push	acc
      003FCF 74 02            [12] 2207 	mov	a,#0x02
      003FD1 C0 E0            [24] 2208 	push	acc
      003FD3 12 40 DA         [24] 2209 	lcall	_lcd2_writenum16
      003FD6 15 81            [12] 2210 	dec	sp
      003FD8 15 81            [12] 2211 	dec	sp
                           00038C  2212 	C$main.c$438$3$448 ==.
                                   2213 ;	main.c:438: uint8_t x = axradio_get_pllvcoi();
      003FDA 12 34 04         [24] 2214 	lcall	_axradio_get_pllvcoi
                           00038F  2215 	C$main.c$440$3$448 ==.
                                   2216 ;	main.c:440: if (x & 0x80)
      003FDD E5 82            [12] 2217 	mov	a,dpl
      003FDF FE               [12] 2218 	mov	r6,a
      003FE0 30 E7 20         [24] 2219 	jnb	acc.7,00130$
                           000395  2220 	C$main.c$442$4$449 ==.
                                   2221 ;	main.c:442: display_writestr(" VCOI=");
      003FE3 90 58 44         [24] 2222 	mov	dptr,#___str_2
      003FE6 75 F0 80         [24] 2223 	mov	b,#0x80
      003FE9 C0 06            [24] 2224 	push	ar6
      003FEB 12 51 0A         [24] 2225 	lcall	_lcd2_writestr
      003FEE D0 06            [24] 2226 	pop	ar6
                           0003A2  2227 	C$main.c$443$4$449 ==.
                                   2228 ;	main.c:443: display_writehex16(x, 2, 0);
      003FF0 E4               [12] 2229 	clr	a
      003FF1 FD               [12] 2230 	mov	r5,a
      003FF2 C0 E0            [24] 2231 	push	acc
      003FF4 74 02            [12] 2232 	mov	a,#0x02
      003FF6 C0 E0            [24] 2233 	push	acc
      003FF8 8E 82            [24] 2234 	mov	dpl,r6
      003FFA 8D 83            [24] 2235 	mov	dph,r5
      003FFC 12 55 05         [24] 2236 	lcall	_lcd2_writehex16
      003FFF 15 81            [12] 2237 	dec	sp
      004001 15 81            [12] 2238 	dec	sp
      004003                       2239 00130$:
                           0003B5  2240 	C$main.c$446$2$437 ==.
                                   2241 ;	main.c:446: delay_ms(10000); /* just to show PLL RNG */
      004003 90 27 10         [24] 2242 	mov	dptr,#0x2710
      004006 12 3A E9         [24] 2243 	lcall	_delay_ms
                           0003BB  2244 	C$main.c$447$2$437 ==.
                                   2245 ;	main.c:447: display_clear(0, 16);
      004009 74 10            [12] 2246 	mov	a,#0x10
      00400B C0 E0            [24] 2247 	push	acc
      00400D 75 82 00         [24] 2248 	mov	dpl,#0x00
      004010 12 51 90         [24] 2249 	lcall	_lcd2_clear
      004013 15 81            [12] 2250 	dec	sp
                           0003C7  2251 	C$main.c$448$2$437 ==.
                                   2252 ;	main.c:448: display_clear(0x40, 16);
      004015 74 10            [12] 2253 	mov	a,#0x10
      004017 C0 E0            [24] 2254 	push	acc
      004019 75 82 40         [24] 2255 	mov	dpl,#0x40
      00401C 12 51 90         [24] 2256 	lcall	_lcd2_clear
      00401F 15 81            [12] 2257 	dec	sp
                           0003D3  2258 	C$main.c$449$2$437 ==.
                                   2259 ;	main.c:449: display_setpos(0);
      004021 75 82 00         [24] 2260 	mov	dpl,#0x00
      004024 12 40 CF         [24] 2261 	lcall	_lcd2_setpos
                           0003D9  2262 	C$main.c$450$2$437 ==.
                                   2263 ;	main.c:450: display_writestr("MASTer");
      004027 90 58 4B         [24] 2264 	mov	dptr,#___str_3
      00402A 75 F0 80         [24] 2265 	mov	b,#0x80
      00402D 12 51 0A         [24] 2266 	lcall	_lcd2_writestr
                           0003E2  2267 	C$main.c$471$2$437 ==.
                                   2268 ;	main.c:471: i = axradio_set_mode(RADIO_MODE);
      004030 75 82 10         [24] 2269 	mov	dpl,#0x10
      004033 12 2E A1         [24] 2270 	lcall	_axradio_set_mode
                           0003E8  2271 	C$main.c$473$2$437 ==.
                                   2272 ;	main.c:473: if (i != AXRADIO_ERR_NOERROR)
      004036 E5 82            [12] 2273 	mov	a,dpl
      004038 FF               [12] 2274 	mov	r7,a
      004039 60 03            [24] 2275 	jz	00198$
      00403B 02 40 A9         [24] 2276 	ljmp	00142$
      00403E                       2277 00198$:
                           0003F0  2278 	C$main.c$477$2$437 ==.
                                   2279 ;	main.c:477: wakeup_desc.time = wtimer0_correctinterval(WTIMER0_PERIOD);
      00403E 90 05 00         [24] 2280 	mov	dptr,#0x0500
      004041 E4               [12] 2281 	clr	a
      004042 F5 F0            [12] 2282 	mov	b,a
      004044 12 4D 21         [24] 2283 	lcall	_wtimer0_correctinterval
      004047 AB 82            [24] 2284 	mov	r3,dpl
      004049 AC 83            [24] 2285 	mov	r4,dph
      00404B AD F0            [24] 2286 	mov	r5,b
      00404D FE               [12] 2287 	mov	r6,a
      00404E 90 02 A2         [24] 2288 	mov	dptr,#(_wakeup_desc + 0x0004)
      004051 EB               [12] 2289 	mov	a,r3
      004052 F0               [24] 2290 	movx	@dptr,a
      004053 EC               [12] 2291 	mov	a,r4
      004054 A3               [24] 2292 	inc	dptr
      004055 F0               [24] 2293 	movx	@dptr,a
      004056 ED               [12] 2294 	mov	a,r5
      004057 A3               [24] 2295 	inc	dptr
      004058 F0               [24] 2296 	movx	@dptr,a
      004059 EE               [12] 2297 	mov	a,r6
      00405A A3               [24] 2298 	inc	dptr
      00405B F0               [24] 2299 	movx	@dptr,a
                           00040E  2300 	C$main.c$478$2$437 ==.
                                   2301 ;	main.c:478: wtimer0_addrelative(&wakeup_desc);
      00405C 90 02 9E         [24] 2302 	mov	dptr,#_wakeup_desc
      00405F 12 47 0C         [24] 2303 	lcall	_wtimer0_addrelative
                           000414  2304 	C$main.c$481$2$437 ==.
                                   2305 ;	main.c:481: if (init_synth_only_once == 1)
      004062 74 01            [12] 2306 	mov	a,#0x01
      004064 B5 22 19         [24] 2307 	cjne	a,_init_synth_only_once,00137$
                           000419  2308 	C$main.c$483$3$450 ==.
                                   2309 ;	main.c:483: delay_ms(500);
      004067 90 01 F4         [24] 2310 	mov	dptr,#0x01f4
      00406A 12 3A E9         [24] 2311 	lcall	_delay_ms
                           00041F  2312 	C$main.c$484$3$450 ==.
                                   2313 ;	main.c:484: synth_init(); //initialize synthesizer.
      00406D 12 3E EF         [24] 2314 	lcall	_synth_init
                           000422  2315 	C$main.c$485$3$450 ==.
                                   2316 ;	main.c:485: delay_ms(750);
      004070 90 02 EE         [24] 2317 	mov	dptr,#0x02ee
      004073 12 3A E9         [24] 2318 	lcall	_delay_ms
                           000428  2319 	C$main.c$486$3$450 ==.
                                   2320 ;	main.c:486: init_synth_only_once = 0;
      004076 75 22 00         [24] 2321 	mov	_init_synth_only_once,#0x00
      004079 80 05            [24] 2322 	sjmp	00137$
      00407B                       2323 00136$:
                           00042D  2324 	C$main.c$492$2$451 ==.
                                   2325 ;	main.c:492: axradio_commsleepexit();
      00407B 12 3A 54         [24] 2326 	lcall	_axradio_commsleepexit
                           000430  2327 	C$main.c$493$2$451 ==.
                                   2328 ;	main.c:493: IE_4 = 1; /* enable radio interrupt */
      00407E D2 AC            [12] 2329 	setb	_IE_4
      004080                       2330 00137$:
                           000432  2331 	C$main.c$496$1$436 ==.
                                   2332 ;	main.c:496: axradio_setup_pincfg2();
      004080 12 06 CA         [24] 2333 	lcall	_axradio_setup_pincfg2
      004083                       2334 00151$:
                           000435  2335 	C$main.c$504$2$452 ==.
                                   2336 ;	main.c:504: wtimer_runcallbacks();
      004083 12 45 FD         [24] 2337 	lcall	_wtimer_runcallbacks
                           000438  2338 	C$libmftypes.h$373$5$461 ==.
                                   2339 ;	C:/Program Files (x86)/ON Semiconductor/AXSDB/libmf/include/libmftypes.h:373: EA = 0;
      004086 C2 AF            [12] 2340 	clr	_EA
                           00043A  2341 	C$main.c$533$3$452 ==.
                                   2342 ;	main.c:533: uint8_t flg = WTFLAG_CANSTANDBY;
      004088 7E 02            [12] 2343 	mov	r6,#0x02
                           00043C  2344 	C$main.c$536$3$453 ==.
                                   2345 ;	main.c:536: if (axradio_cansleep()
      00408A C0 06            [24] 2346 	push	ar6
      00408C 12 2E 8F         [24] 2347 	lcall	_axradio_cansleep
      00408F E5 82            [12] 2348 	mov	a,dpl
      004091 D0 06            [24] 2349 	pop	ar6
      004093 60 09            [24] 2350 	jz	00139$
                           000447  2351 	C$main.c$540$3$453 ==.
                                   2352 ;	main.c:540: && display_txidle())
      004095 12 4A F6         [24] 2353 	lcall	_lcd2_txidle
      004098 E5 82            [12] 2354 	mov	a,dpl
      00409A 60 02            [24] 2355 	jz	00139$
                           00044E  2356 	C$main.c$541$3$453 ==.
                                   2357 ;	main.c:541: flg |= WTFLAG_CANSLEEP;
      00409C 7E 03            [12] 2358 	mov	r6,#0x03
      00409E                       2359 00139$:
                           000450  2360 	C$main.c$543$3$453 ==.
                                   2361 ;	main.c:543: wtimer_idle(flg);
      00409E 8E 82            [24] 2362 	mov	dpl,r6
      0040A0 12 45 79         [24] 2363 	lcall	_wtimer_idle
                           000455  2364 	C$main.c$545$2$452 ==.
                                   2365 ;	main.c:545: IE_3 = 0; /* no ISR! */
      0040A3 C2 AB            [12] 2366 	clr	_IE_3
                           000457  2367 	C$libmftypes.h$368$5$464 ==.
                                   2368 ;	C:/Program Files (x86)/ON Semiconductor/AXSDB/libmf/include/libmftypes.h:368: EA = 1;
      0040A5 D2 AF            [12] 2369 	setb	_EA
                           000459  2370 	C$main.c$546$4$463 ==.
                                   2371 ;	main.c:546: __enable_irq();
                           000459  2372 	C$main.c$549$1$436 ==.
                                   2373 ;	main.c:549: terminate_radio_error:
      0040A7 80 DA            [24] 2374 	sjmp	00151$
      0040A9                       2375 00142$:
                           00045B  2376 	C$main.c$550$1$436 ==.
                                   2377 ;	main.c:550: display_radio_error(i);
      0040A9 8F 82            [24] 2378 	mov	dpl,r7
      0040AB 12 3A 77         [24] 2379 	lcall	_lcd2_display_radio_error
                           000460  2380 	C$main.c$554$1$436 ==.
                                   2381 ;	main.c:554: terminate_error:
      0040AE                       2382 00153$:
                           000460  2383 	C$main.c$558$2$454 ==.
                                   2384 ;	main.c:558: wtimer_runcallbacks();
      0040AE 12 45 FD         [24] 2385 	lcall	_wtimer_runcallbacks
                           000463  2386 	C$main.c$560$3$454 ==.
                                   2387 ;	main.c:560: uint8_t flg = WTFLAG_CANSTANDBY;
      0040B1 7F 02            [12] 2388 	mov	r7,#0x02
                           000465  2389 	C$main.c$563$3$455 ==.
                                   2390 ;	main.c:563: if (axradio_cansleep()
      0040B3 C0 07            [24] 2391 	push	ar7
      0040B5 12 2E 8F         [24] 2392 	lcall	_axradio_cansleep
      0040B8 E5 82            [12] 2393 	mov	a,dpl
      0040BA D0 07            [24] 2394 	pop	ar7
      0040BC 60 09            [24] 2395 	jz	00145$
                           000470  2396 	C$main.c$567$3$455 ==.
                                   2397 ;	main.c:567: && display_txidle())
      0040BE 12 4A F6         [24] 2398 	lcall	_lcd2_txidle
      0040C1 E5 82            [12] 2399 	mov	a,dpl
      0040C3 60 02            [24] 2400 	jz	00145$
                           000477  2401 	C$main.c$568$3$455 ==.
                                   2402 ;	main.c:568: flg |= WTFLAG_CANSLEEP;
      0040C5 7F 03            [12] 2403 	mov	r7,#0x03
      0040C7                       2404 00145$:
                           000479  2405 	C$main.c$570$3$455 ==.
                                   2406 ;	main.c:570: wtimer_idle(flg);
      0040C7 8F 82            [24] 2407 	mov	dpl,r7
      0040C9 12 45 79         [24] 2408 	lcall	_wtimer_idle
      0040CC 80 E0            [24] 2409 	sjmp	00153$
                           000480  2410 	C$main.c$573$1$436 ==.
                           000480  2411 	XG$main$0$0 ==.
      0040CE 22               [24] 2412 	ret
                                   2413 	.area CSEG    (CODE)
                                   2414 	.area CONST   (CODE)
                           000000  2415 Fmain$__str_0$0$0 == .
      005838                       2416 ___str_0:
      005838 54 58 20 20 20 20     2417 	.ascii "TX    "
      00583E 00                    2418 	.db 0x00
                           000007  2419 Fmain$__str_1$0$0 == .
      00583F                       2420 ___str_1:
      00583F 52 4E 47 3D           2421 	.ascii "RNG="
      005843 00                    2422 	.db 0x00
                           00000C  2423 Fmain$__str_2$0$0 == .
      005844                       2424 ___str_2:
      005844 20 56 43 4F 49 3D     2425 	.ascii " VCOI="
      00584A 00                    2426 	.db 0x00
                           000013  2427 Fmain$__str_3$0$0 == .
      00584B                       2428 ___str_3:
      00584B 4D 41 53 54 65 72     2429 	.ascii "MASTer"
      005851 00                    2430 	.db 0x00
                                   2431 	.area XINIT   (CODE)
                                   2432 	.area CABS    (ABS,CODE)
