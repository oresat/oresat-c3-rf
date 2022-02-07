                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module misc
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _lcd2_writestr
                                     12 	.globl _lcd2_setpos
                                     13 	.globl _wtimer_remove
                                     14 	.globl _wtimer1_addrelative
                                     15 	.globl _wtimer_runcallbacks
                                     16 	.globl _wtimer_idle
                                     17 	.globl _PORTC_7
                                     18 	.globl _PORTC_6
                                     19 	.globl _PORTC_5
                                     20 	.globl _PORTC_4
                                     21 	.globl _PORTC_3
                                     22 	.globl _PORTC_2
                                     23 	.globl _PORTC_1
                                     24 	.globl _PORTC_0
                                     25 	.globl _PORTB_7
                                     26 	.globl _PORTB_6
                                     27 	.globl _PORTB_5
                                     28 	.globl _PORTB_4
                                     29 	.globl _PORTB_3
                                     30 	.globl _PORTB_2
                                     31 	.globl _PORTB_1
                                     32 	.globl _PORTB_0
                                     33 	.globl _PORTA_7
                                     34 	.globl _PORTA_6
                                     35 	.globl _PORTA_5
                                     36 	.globl _PORTA_4
                                     37 	.globl _PORTA_3
                                     38 	.globl _PORTA_2
                                     39 	.globl _PORTA_1
                                     40 	.globl _PORTA_0
                                     41 	.globl _PINC_7
                                     42 	.globl _PINC_6
                                     43 	.globl _PINC_5
                                     44 	.globl _PINC_4
                                     45 	.globl _PINC_3
                                     46 	.globl _PINC_2
                                     47 	.globl _PINC_1
                                     48 	.globl _PINC_0
                                     49 	.globl _PINB_7
                                     50 	.globl _PINB_6
                                     51 	.globl _PINB_5
                                     52 	.globl _PINB_4
                                     53 	.globl _PINB_3
                                     54 	.globl _PINB_2
                                     55 	.globl _PINB_1
                                     56 	.globl _PINB_0
                                     57 	.globl _PINA_7
                                     58 	.globl _PINA_6
                                     59 	.globl _PINA_5
                                     60 	.globl _PINA_4
                                     61 	.globl _PINA_3
                                     62 	.globl _PINA_2
                                     63 	.globl _PINA_1
                                     64 	.globl _PINA_0
                                     65 	.globl _CY
                                     66 	.globl _AC
                                     67 	.globl _F0
                                     68 	.globl _RS1
                                     69 	.globl _RS0
                                     70 	.globl _OV
                                     71 	.globl _F1
                                     72 	.globl _P
                                     73 	.globl _IP_7
                                     74 	.globl _IP_6
                                     75 	.globl _IP_5
                                     76 	.globl _IP_4
                                     77 	.globl _IP_3
                                     78 	.globl _IP_2
                                     79 	.globl _IP_1
                                     80 	.globl _IP_0
                                     81 	.globl _EA
                                     82 	.globl _IE_7
                                     83 	.globl _IE_6
                                     84 	.globl _IE_5
                                     85 	.globl _IE_4
                                     86 	.globl _IE_3
                                     87 	.globl _IE_2
                                     88 	.globl _IE_1
                                     89 	.globl _IE_0
                                     90 	.globl _EIP_7
                                     91 	.globl _EIP_6
                                     92 	.globl _EIP_5
                                     93 	.globl _EIP_4
                                     94 	.globl _EIP_3
                                     95 	.globl _EIP_2
                                     96 	.globl _EIP_1
                                     97 	.globl _EIP_0
                                     98 	.globl _EIE_7
                                     99 	.globl _EIE_6
                                    100 	.globl _EIE_5
                                    101 	.globl _EIE_4
                                    102 	.globl _EIE_3
                                    103 	.globl _EIE_2
                                    104 	.globl _EIE_1
                                    105 	.globl _EIE_0
                                    106 	.globl _E2IP_7
                                    107 	.globl _E2IP_6
                                    108 	.globl _E2IP_5
                                    109 	.globl _E2IP_4
                                    110 	.globl _E2IP_3
                                    111 	.globl _E2IP_2
                                    112 	.globl _E2IP_1
                                    113 	.globl _E2IP_0
                                    114 	.globl _E2IE_7
                                    115 	.globl _E2IE_6
                                    116 	.globl _E2IE_5
                                    117 	.globl _E2IE_4
                                    118 	.globl _E2IE_3
                                    119 	.globl _E2IE_2
                                    120 	.globl _E2IE_1
                                    121 	.globl _E2IE_0
                                    122 	.globl _B_7
                                    123 	.globl _B_6
                                    124 	.globl _B_5
                                    125 	.globl _B_4
                                    126 	.globl _B_3
                                    127 	.globl _B_2
                                    128 	.globl _B_1
                                    129 	.globl _B_0
                                    130 	.globl _ACC_7
                                    131 	.globl _ACC_6
                                    132 	.globl _ACC_5
                                    133 	.globl _ACC_4
                                    134 	.globl _ACC_3
                                    135 	.globl _ACC_2
                                    136 	.globl _ACC_1
                                    137 	.globl _ACC_0
                                    138 	.globl _WTSTAT
                                    139 	.globl _WTIRQEN
                                    140 	.globl _WTEVTD
                                    141 	.globl _WTEVTD1
                                    142 	.globl _WTEVTD0
                                    143 	.globl _WTEVTC
                                    144 	.globl _WTEVTC1
                                    145 	.globl _WTEVTC0
                                    146 	.globl _WTEVTB
                                    147 	.globl _WTEVTB1
                                    148 	.globl _WTEVTB0
                                    149 	.globl _WTEVTA
                                    150 	.globl _WTEVTA1
                                    151 	.globl _WTEVTA0
                                    152 	.globl _WTCNTR1
                                    153 	.globl _WTCNTB
                                    154 	.globl _WTCNTB1
                                    155 	.globl _WTCNTB0
                                    156 	.globl _WTCNTA
                                    157 	.globl _WTCNTA1
                                    158 	.globl _WTCNTA0
                                    159 	.globl _WTCFGB
                                    160 	.globl _WTCFGA
                                    161 	.globl _WDTRESET
                                    162 	.globl _WDTCFG
                                    163 	.globl _U1STATUS
                                    164 	.globl _U1SHREG
                                    165 	.globl _U1MODE
                                    166 	.globl _U1CTRL
                                    167 	.globl _U0STATUS
                                    168 	.globl _U0SHREG
                                    169 	.globl _U0MODE
                                    170 	.globl _U0CTRL
                                    171 	.globl _T2STATUS
                                    172 	.globl _T2PERIOD
                                    173 	.globl _T2PERIOD1
                                    174 	.globl _T2PERIOD0
                                    175 	.globl _T2MODE
                                    176 	.globl _T2CNT
                                    177 	.globl _T2CNT1
                                    178 	.globl _T2CNT0
                                    179 	.globl _T2CLKSRC
                                    180 	.globl _T1STATUS
                                    181 	.globl _T1PERIOD
                                    182 	.globl _T1PERIOD1
                                    183 	.globl _T1PERIOD0
                                    184 	.globl _T1MODE
                                    185 	.globl _T1CNT
                                    186 	.globl _T1CNT1
                                    187 	.globl _T1CNT0
                                    188 	.globl _T1CLKSRC
                                    189 	.globl _T0STATUS
                                    190 	.globl _T0PERIOD
                                    191 	.globl _T0PERIOD1
                                    192 	.globl _T0PERIOD0
                                    193 	.globl _T0MODE
                                    194 	.globl _T0CNT
                                    195 	.globl _T0CNT1
                                    196 	.globl _T0CNT0
                                    197 	.globl _T0CLKSRC
                                    198 	.globl _SPSTATUS
                                    199 	.globl _SPSHREG
                                    200 	.globl _SPMODE
                                    201 	.globl _SPCLKSRC
                                    202 	.globl _RADIOSTAT
                                    203 	.globl _RADIOSTAT1
                                    204 	.globl _RADIOSTAT0
                                    205 	.globl _RADIODATA
                                    206 	.globl _RADIODATA3
                                    207 	.globl _RADIODATA2
                                    208 	.globl _RADIODATA1
                                    209 	.globl _RADIODATA0
                                    210 	.globl _RADIOADDR
                                    211 	.globl _RADIOADDR1
                                    212 	.globl _RADIOADDR0
                                    213 	.globl _RADIOACC
                                    214 	.globl _OC1STATUS
                                    215 	.globl _OC1PIN
                                    216 	.globl _OC1MODE
                                    217 	.globl _OC1COMP
                                    218 	.globl _OC1COMP1
                                    219 	.globl _OC1COMP0
                                    220 	.globl _OC0STATUS
                                    221 	.globl _OC0PIN
                                    222 	.globl _OC0MODE
                                    223 	.globl _OC0COMP
                                    224 	.globl _OC0COMP1
                                    225 	.globl _OC0COMP0
                                    226 	.globl _NVSTATUS
                                    227 	.globl _NVKEY
                                    228 	.globl _NVDATA
                                    229 	.globl _NVDATA1
                                    230 	.globl _NVDATA0
                                    231 	.globl _NVADDR
                                    232 	.globl _NVADDR1
                                    233 	.globl _NVADDR0
                                    234 	.globl _IC1STATUS
                                    235 	.globl _IC1MODE
                                    236 	.globl _IC1CAPT
                                    237 	.globl _IC1CAPT1
                                    238 	.globl _IC1CAPT0
                                    239 	.globl _IC0STATUS
                                    240 	.globl _IC0MODE
                                    241 	.globl _IC0CAPT
                                    242 	.globl _IC0CAPT1
                                    243 	.globl _IC0CAPT0
                                    244 	.globl _PORTR
                                    245 	.globl _PORTC
                                    246 	.globl _PORTB
                                    247 	.globl _PORTA
                                    248 	.globl _PINR
                                    249 	.globl _PINC
                                    250 	.globl _PINB
                                    251 	.globl _PINA
                                    252 	.globl _DIRR
                                    253 	.globl _DIRC
                                    254 	.globl _DIRB
                                    255 	.globl _DIRA
                                    256 	.globl _DBGLNKSTAT
                                    257 	.globl _DBGLNKBUF
                                    258 	.globl _CODECONFIG
                                    259 	.globl _CLKSTAT
                                    260 	.globl _CLKCON
                                    261 	.globl _ANALOGCOMP
                                    262 	.globl _ADCCONV
                                    263 	.globl _ADCCLKSRC
                                    264 	.globl _ADCCH3CONFIG
                                    265 	.globl _ADCCH2CONFIG
                                    266 	.globl _ADCCH1CONFIG
                                    267 	.globl _ADCCH0CONFIG
                                    268 	.globl __XPAGE
                                    269 	.globl _XPAGE
                                    270 	.globl _SP
                                    271 	.globl _PSW
                                    272 	.globl _PCON
                                    273 	.globl _IP
                                    274 	.globl _IE
                                    275 	.globl _EIP
                                    276 	.globl _EIE
                                    277 	.globl _E2IP
                                    278 	.globl _E2IE
                                    279 	.globl _DPS
                                    280 	.globl _DPTR1
                                    281 	.globl _DPTR0
                                    282 	.globl _DPL1
                                    283 	.globl _DPL
                                    284 	.globl _DPH1
                                    285 	.globl _DPH
                                    286 	.globl _B
                                    287 	.globl _ACC
                                    288 	.globl _XTALREADY
                                    289 	.globl _XTALOSC
                                    290 	.globl _XTALAMPL
                                    291 	.globl _SILICONREV
                                    292 	.globl _SCRATCH3
                                    293 	.globl _SCRATCH2
                                    294 	.globl _SCRATCH1
                                    295 	.globl _SCRATCH0
                                    296 	.globl _RADIOMUX
                                    297 	.globl _RADIOFSTATADDR
                                    298 	.globl _RADIOFSTATADDR1
                                    299 	.globl _RADIOFSTATADDR0
                                    300 	.globl _RADIOFDATAADDR
                                    301 	.globl _RADIOFDATAADDR1
                                    302 	.globl _RADIOFDATAADDR0
                                    303 	.globl _OSCRUN
                                    304 	.globl _OSCREADY
                                    305 	.globl _OSCFORCERUN
                                    306 	.globl _OSCCALIB
                                    307 	.globl _MISCCTRL
                                    308 	.globl _LPXOSCGM
                                    309 	.globl _LPOSCREF
                                    310 	.globl _LPOSCREF1
                                    311 	.globl _LPOSCREF0
                                    312 	.globl _LPOSCPER
                                    313 	.globl _LPOSCPER1
                                    314 	.globl _LPOSCPER0
                                    315 	.globl _LPOSCKFILT
                                    316 	.globl _LPOSCKFILT1
                                    317 	.globl _LPOSCKFILT0
                                    318 	.globl _LPOSCFREQ
                                    319 	.globl _LPOSCFREQ1
                                    320 	.globl _LPOSCFREQ0
                                    321 	.globl _LPOSCCONFIG
                                    322 	.globl _PINSEL
                                    323 	.globl _PINCHGC
                                    324 	.globl _PINCHGB
                                    325 	.globl _PINCHGA
                                    326 	.globl _PALTRADIO
                                    327 	.globl _PALTC
                                    328 	.globl _PALTB
                                    329 	.globl _PALTA
                                    330 	.globl _INTCHGC
                                    331 	.globl _INTCHGB
                                    332 	.globl _INTCHGA
                                    333 	.globl _EXTIRQ
                                    334 	.globl _GPIOENABLE
                                    335 	.globl _ANALOGA
                                    336 	.globl _FRCOSCREF
                                    337 	.globl _FRCOSCREF1
                                    338 	.globl _FRCOSCREF0
                                    339 	.globl _FRCOSCPER
                                    340 	.globl _FRCOSCPER1
                                    341 	.globl _FRCOSCPER0
                                    342 	.globl _FRCOSCKFILT
                                    343 	.globl _FRCOSCKFILT1
                                    344 	.globl _FRCOSCKFILT0
                                    345 	.globl _FRCOSCFREQ
                                    346 	.globl _FRCOSCFREQ1
                                    347 	.globl _FRCOSCFREQ0
                                    348 	.globl _FRCOSCCTRL
                                    349 	.globl _FRCOSCCONFIG
                                    350 	.globl _DMA1CONFIG
                                    351 	.globl _DMA1ADDR
                                    352 	.globl _DMA1ADDR1
                                    353 	.globl _DMA1ADDR0
                                    354 	.globl _DMA0CONFIG
                                    355 	.globl _DMA0ADDR
                                    356 	.globl _DMA0ADDR1
                                    357 	.globl _DMA0ADDR0
                                    358 	.globl _ADCTUNE2
                                    359 	.globl _ADCTUNE1
                                    360 	.globl _ADCTUNE0
                                    361 	.globl _ADCCH3VAL
                                    362 	.globl _ADCCH3VAL1
                                    363 	.globl _ADCCH3VAL0
                                    364 	.globl _ADCCH2VAL
                                    365 	.globl _ADCCH2VAL1
                                    366 	.globl _ADCCH2VAL0
                                    367 	.globl _ADCCH1VAL
                                    368 	.globl _ADCCH1VAL1
                                    369 	.globl _ADCCH1VAL0
                                    370 	.globl _ADCCH0VAL
                                    371 	.globl _ADCCH0VAL1
                                    372 	.globl _ADCCH0VAL0
                                    373 	.globl _lcd2_display_radio_error
                                    374 	.globl _dbglink_display_radio_error
                                    375 	.globl _delay_ms
                                    376 ;--------------------------------------------------------
                                    377 ; special function registers
                                    378 ;--------------------------------------------------------
                                    379 	.area RSEG    (ABS,DATA)
      000000                        380 	.org 0x0000
                           0000E0   381 G$ACC$0$0 == 0x00e0
                           0000E0   382 _ACC	=	0x00e0
                           0000F0   383 G$B$0$0 == 0x00f0
                           0000F0   384 _B	=	0x00f0
                           000083   385 G$DPH$0$0 == 0x0083
                           000083   386 _DPH	=	0x0083
                           000085   387 G$DPH1$0$0 == 0x0085
                           000085   388 _DPH1	=	0x0085
                           000082   389 G$DPL$0$0 == 0x0082
                           000082   390 _DPL	=	0x0082
                           000084   391 G$DPL1$0$0 == 0x0084
                           000084   392 _DPL1	=	0x0084
                           008382   393 G$DPTR0$0$0 == 0x8382
                           008382   394 _DPTR0	=	0x8382
                           008584   395 G$DPTR1$0$0 == 0x8584
                           008584   396 _DPTR1	=	0x8584
                           000086   397 G$DPS$0$0 == 0x0086
                           000086   398 _DPS	=	0x0086
                           0000A0   399 G$E2IE$0$0 == 0x00a0
                           0000A0   400 _E2IE	=	0x00a0
                           0000C0   401 G$E2IP$0$0 == 0x00c0
                           0000C0   402 _E2IP	=	0x00c0
                           000098   403 G$EIE$0$0 == 0x0098
                           000098   404 _EIE	=	0x0098
                           0000B0   405 G$EIP$0$0 == 0x00b0
                           0000B0   406 _EIP	=	0x00b0
                           0000A8   407 G$IE$0$0 == 0x00a8
                           0000A8   408 _IE	=	0x00a8
                           0000B8   409 G$IP$0$0 == 0x00b8
                           0000B8   410 _IP	=	0x00b8
                           000087   411 G$PCON$0$0 == 0x0087
                           000087   412 _PCON	=	0x0087
                           0000D0   413 G$PSW$0$0 == 0x00d0
                           0000D0   414 _PSW	=	0x00d0
                           000081   415 G$SP$0$0 == 0x0081
                           000081   416 _SP	=	0x0081
                           0000D9   417 G$XPAGE$0$0 == 0x00d9
                           0000D9   418 _XPAGE	=	0x00d9
                           0000D9   419 G$_XPAGE$0$0 == 0x00d9
                           0000D9   420 __XPAGE	=	0x00d9
                           0000CA   421 G$ADCCH0CONFIG$0$0 == 0x00ca
                           0000CA   422 _ADCCH0CONFIG	=	0x00ca
                           0000CB   423 G$ADCCH1CONFIG$0$0 == 0x00cb
                           0000CB   424 _ADCCH1CONFIG	=	0x00cb
                           0000D2   425 G$ADCCH2CONFIG$0$0 == 0x00d2
                           0000D2   426 _ADCCH2CONFIG	=	0x00d2
                           0000D3   427 G$ADCCH3CONFIG$0$0 == 0x00d3
                           0000D3   428 _ADCCH3CONFIG	=	0x00d3
                           0000D1   429 G$ADCCLKSRC$0$0 == 0x00d1
                           0000D1   430 _ADCCLKSRC	=	0x00d1
                           0000C9   431 G$ADCCONV$0$0 == 0x00c9
                           0000C9   432 _ADCCONV	=	0x00c9
                           0000E1   433 G$ANALOGCOMP$0$0 == 0x00e1
                           0000E1   434 _ANALOGCOMP	=	0x00e1
                           0000C6   435 G$CLKCON$0$0 == 0x00c6
                           0000C6   436 _CLKCON	=	0x00c6
                           0000C7   437 G$CLKSTAT$0$0 == 0x00c7
                           0000C7   438 _CLKSTAT	=	0x00c7
                           000097   439 G$CODECONFIG$0$0 == 0x0097
                           000097   440 _CODECONFIG	=	0x0097
                           0000E3   441 G$DBGLNKBUF$0$0 == 0x00e3
                           0000E3   442 _DBGLNKBUF	=	0x00e3
                           0000E2   443 G$DBGLNKSTAT$0$0 == 0x00e2
                           0000E2   444 _DBGLNKSTAT	=	0x00e2
                           000089   445 G$DIRA$0$0 == 0x0089
                           000089   446 _DIRA	=	0x0089
                           00008A   447 G$DIRB$0$0 == 0x008a
                           00008A   448 _DIRB	=	0x008a
                           00008B   449 G$DIRC$0$0 == 0x008b
                           00008B   450 _DIRC	=	0x008b
                           00008E   451 G$DIRR$0$0 == 0x008e
                           00008E   452 _DIRR	=	0x008e
                           0000C8   453 G$PINA$0$0 == 0x00c8
                           0000C8   454 _PINA	=	0x00c8
                           0000E8   455 G$PINB$0$0 == 0x00e8
                           0000E8   456 _PINB	=	0x00e8
                           0000F8   457 G$PINC$0$0 == 0x00f8
                           0000F8   458 _PINC	=	0x00f8
                           00008D   459 G$PINR$0$0 == 0x008d
                           00008D   460 _PINR	=	0x008d
                           000080   461 G$PORTA$0$0 == 0x0080
                           000080   462 _PORTA	=	0x0080
                           000088   463 G$PORTB$0$0 == 0x0088
                           000088   464 _PORTB	=	0x0088
                           000090   465 G$PORTC$0$0 == 0x0090
                           000090   466 _PORTC	=	0x0090
                           00008C   467 G$PORTR$0$0 == 0x008c
                           00008C   468 _PORTR	=	0x008c
                           0000CE   469 G$IC0CAPT0$0$0 == 0x00ce
                           0000CE   470 _IC0CAPT0	=	0x00ce
                           0000CF   471 G$IC0CAPT1$0$0 == 0x00cf
                           0000CF   472 _IC0CAPT1	=	0x00cf
                           00CFCE   473 G$IC0CAPT$0$0 == 0xcfce
                           00CFCE   474 _IC0CAPT	=	0xcfce
                           0000CC   475 G$IC0MODE$0$0 == 0x00cc
                           0000CC   476 _IC0MODE	=	0x00cc
                           0000CD   477 G$IC0STATUS$0$0 == 0x00cd
                           0000CD   478 _IC0STATUS	=	0x00cd
                           0000D6   479 G$IC1CAPT0$0$0 == 0x00d6
                           0000D6   480 _IC1CAPT0	=	0x00d6
                           0000D7   481 G$IC1CAPT1$0$0 == 0x00d7
                           0000D7   482 _IC1CAPT1	=	0x00d7
                           00D7D6   483 G$IC1CAPT$0$0 == 0xd7d6
                           00D7D6   484 _IC1CAPT	=	0xd7d6
                           0000D4   485 G$IC1MODE$0$0 == 0x00d4
                           0000D4   486 _IC1MODE	=	0x00d4
                           0000D5   487 G$IC1STATUS$0$0 == 0x00d5
                           0000D5   488 _IC1STATUS	=	0x00d5
                           000092   489 G$NVADDR0$0$0 == 0x0092
                           000092   490 _NVADDR0	=	0x0092
                           000093   491 G$NVADDR1$0$0 == 0x0093
                           000093   492 _NVADDR1	=	0x0093
                           009392   493 G$NVADDR$0$0 == 0x9392
                           009392   494 _NVADDR	=	0x9392
                           000094   495 G$NVDATA0$0$0 == 0x0094
                           000094   496 _NVDATA0	=	0x0094
                           000095   497 G$NVDATA1$0$0 == 0x0095
                           000095   498 _NVDATA1	=	0x0095
                           009594   499 G$NVDATA$0$0 == 0x9594
                           009594   500 _NVDATA	=	0x9594
                           000096   501 G$NVKEY$0$0 == 0x0096
                           000096   502 _NVKEY	=	0x0096
                           000091   503 G$NVSTATUS$0$0 == 0x0091
                           000091   504 _NVSTATUS	=	0x0091
                           0000BC   505 G$OC0COMP0$0$0 == 0x00bc
                           0000BC   506 _OC0COMP0	=	0x00bc
                           0000BD   507 G$OC0COMP1$0$0 == 0x00bd
                           0000BD   508 _OC0COMP1	=	0x00bd
                           00BDBC   509 G$OC0COMP$0$0 == 0xbdbc
                           00BDBC   510 _OC0COMP	=	0xbdbc
                           0000B9   511 G$OC0MODE$0$0 == 0x00b9
                           0000B9   512 _OC0MODE	=	0x00b9
                           0000BA   513 G$OC0PIN$0$0 == 0x00ba
                           0000BA   514 _OC0PIN	=	0x00ba
                           0000BB   515 G$OC0STATUS$0$0 == 0x00bb
                           0000BB   516 _OC0STATUS	=	0x00bb
                           0000C4   517 G$OC1COMP0$0$0 == 0x00c4
                           0000C4   518 _OC1COMP0	=	0x00c4
                           0000C5   519 G$OC1COMP1$0$0 == 0x00c5
                           0000C5   520 _OC1COMP1	=	0x00c5
                           00C5C4   521 G$OC1COMP$0$0 == 0xc5c4
                           00C5C4   522 _OC1COMP	=	0xc5c4
                           0000C1   523 G$OC1MODE$0$0 == 0x00c1
                           0000C1   524 _OC1MODE	=	0x00c1
                           0000C2   525 G$OC1PIN$0$0 == 0x00c2
                           0000C2   526 _OC1PIN	=	0x00c2
                           0000C3   527 G$OC1STATUS$0$0 == 0x00c3
                           0000C3   528 _OC1STATUS	=	0x00c3
                           0000B1   529 G$RADIOACC$0$0 == 0x00b1
                           0000B1   530 _RADIOACC	=	0x00b1
                           0000B3   531 G$RADIOADDR0$0$0 == 0x00b3
                           0000B3   532 _RADIOADDR0	=	0x00b3
                           0000B2   533 G$RADIOADDR1$0$0 == 0x00b2
                           0000B2   534 _RADIOADDR1	=	0x00b2
                           00B2B3   535 G$RADIOADDR$0$0 == 0xb2b3
                           00B2B3   536 _RADIOADDR	=	0xb2b3
                           0000B7   537 G$RADIODATA0$0$0 == 0x00b7
                           0000B7   538 _RADIODATA0	=	0x00b7
                           0000B6   539 G$RADIODATA1$0$0 == 0x00b6
                           0000B6   540 _RADIODATA1	=	0x00b6
                           0000B5   541 G$RADIODATA2$0$0 == 0x00b5
                           0000B5   542 _RADIODATA2	=	0x00b5
                           0000B4   543 G$RADIODATA3$0$0 == 0x00b4
                           0000B4   544 _RADIODATA3	=	0x00b4
                           B4B5B6B7   545 G$RADIODATA$0$0 == 0xb4b5b6b7
                           B4B5B6B7   546 _RADIODATA	=	0xb4b5b6b7
                           0000BE   547 G$RADIOSTAT0$0$0 == 0x00be
                           0000BE   548 _RADIOSTAT0	=	0x00be
                           0000BF   549 G$RADIOSTAT1$0$0 == 0x00bf
                           0000BF   550 _RADIOSTAT1	=	0x00bf
                           00BFBE   551 G$RADIOSTAT$0$0 == 0xbfbe
                           00BFBE   552 _RADIOSTAT	=	0xbfbe
                           0000DF   553 G$SPCLKSRC$0$0 == 0x00df
                           0000DF   554 _SPCLKSRC	=	0x00df
                           0000DC   555 G$SPMODE$0$0 == 0x00dc
                           0000DC   556 _SPMODE	=	0x00dc
                           0000DE   557 G$SPSHREG$0$0 == 0x00de
                           0000DE   558 _SPSHREG	=	0x00de
                           0000DD   559 G$SPSTATUS$0$0 == 0x00dd
                           0000DD   560 _SPSTATUS	=	0x00dd
                           00009A   561 G$T0CLKSRC$0$0 == 0x009a
                           00009A   562 _T0CLKSRC	=	0x009a
                           00009C   563 G$T0CNT0$0$0 == 0x009c
                           00009C   564 _T0CNT0	=	0x009c
                           00009D   565 G$T0CNT1$0$0 == 0x009d
                           00009D   566 _T0CNT1	=	0x009d
                           009D9C   567 G$T0CNT$0$0 == 0x9d9c
                           009D9C   568 _T0CNT	=	0x9d9c
                           000099   569 G$T0MODE$0$0 == 0x0099
                           000099   570 _T0MODE	=	0x0099
                           00009E   571 G$T0PERIOD0$0$0 == 0x009e
                           00009E   572 _T0PERIOD0	=	0x009e
                           00009F   573 G$T0PERIOD1$0$0 == 0x009f
                           00009F   574 _T0PERIOD1	=	0x009f
                           009F9E   575 G$T0PERIOD$0$0 == 0x9f9e
                           009F9E   576 _T0PERIOD	=	0x9f9e
                           00009B   577 G$T0STATUS$0$0 == 0x009b
                           00009B   578 _T0STATUS	=	0x009b
                           0000A2   579 G$T1CLKSRC$0$0 == 0x00a2
                           0000A2   580 _T1CLKSRC	=	0x00a2
                           0000A4   581 G$T1CNT0$0$0 == 0x00a4
                           0000A4   582 _T1CNT0	=	0x00a4
                           0000A5   583 G$T1CNT1$0$0 == 0x00a5
                           0000A5   584 _T1CNT1	=	0x00a5
                           00A5A4   585 G$T1CNT$0$0 == 0xa5a4
                           00A5A4   586 _T1CNT	=	0xa5a4
                           0000A1   587 G$T1MODE$0$0 == 0x00a1
                           0000A1   588 _T1MODE	=	0x00a1
                           0000A6   589 G$T1PERIOD0$0$0 == 0x00a6
                           0000A6   590 _T1PERIOD0	=	0x00a6
                           0000A7   591 G$T1PERIOD1$0$0 == 0x00a7
                           0000A7   592 _T1PERIOD1	=	0x00a7
                           00A7A6   593 G$T1PERIOD$0$0 == 0xa7a6
                           00A7A6   594 _T1PERIOD	=	0xa7a6
                           0000A3   595 G$T1STATUS$0$0 == 0x00a3
                           0000A3   596 _T1STATUS	=	0x00a3
                           0000AA   597 G$T2CLKSRC$0$0 == 0x00aa
                           0000AA   598 _T2CLKSRC	=	0x00aa
                           0000AC   599 G$T2CNT0$0$0 == 0x00ac
                           0000AC   600 _T2CNT0	=	0x00ac
                           0000AD   601 G$T2CNT1$0$0 == 0x00ad
                           0000AD   602 _T2CNT1	=	0x00ad
                           00ADAC   603 G$T2CNT$0$0 == 0xadac
                           00ADAC   604 _T2CNT	=	0xadac
                           0000A9   605 G$T2MODE$0$0 == 0x00a9
                           0000A9   606 _T2MODE	=	0x00a9
                           0000AE   607 G$T2PERIOD0$0$0 == 0x00ae
                           0000AE   608 _T2PERIOD0	=	0x00ae
                           0000AF   609 G$T2PERIOD1$0$0 == 0x00af
                           0000AF   610 _T2PERIOD1	=	0x00af
                           00AFAE   611 G$T2PERIOD$0$0 == 0xafae
                           00AFAE   612 _T2PERIOD	=	0xafae
                           0000AB   613 G$T2STATUS$0$0 == 0x00ab
                           0000AB   614 _T2STATUS	=	0x00ab
                           0000E4   615 G$U0CTRL$0$0 == 0x00e4
                           0000E4   616 _U0CTRL	=	0x00e4
                           0000E7   617 G$U0MODE$0$0 == 0x00e7
                           0000E7   618 _U0MODE	=	0x00e7
                           0000E6   619 G$U0SHREG$0$0 == 0x00e6
                           0000E6   620 _U0SHREG	=	0x00e6
                           0000E5   621 G$U0STATUS$0$0 == 0x00e5
                           0000E5   622 _U0STATUS	=	0x00e5
                           0000EC   623 G$U1CTRL$0$0 == 0x00ec
                           0000EC   624 _U1CTRL	=	0x00ec
                           0000EF   625 G$U1MODE$0$0 == 0x00ef
                           0000EF   626 _U1MODE	=	0x00ef
                           0000EE   627 G$U1SHREG$0$0 == 0x00ee
                           0000EE   628 _U1SHREG	=	0x00ee
                           0000ED   629 G$U1STATUS$0$0 == 0x00ed
                           0000ED   630 _U1STATUS	=	0x00ed
                           0000DA   631 G$WDTCFG$0$0 == 0x00da
                           0000DA   632 _WDTCFG	=	0x00da
                           0000DB   633 G$WDTRESET$0$0 == 0x00db
                           0000DB   634 _WDTRESET	=	0x00db
                           0000F1   635 G$WTCFGA$0$0 == 0x00f1
                           0000F1   636 _WTCFGA	=	0x00f1
                           0000F9   637 G$WTCFGB$0$0 == 0x00f9
                           0000F9   638 _WTCFGB	=	0x00f9
                           0000F2   639 G$WTCNTA0$0$0 == 0x00f2
                           0000F2   640 _WTCNTA0	=	0x00f2
                           0000F3   641 G$WTCNTA1$0$0 == 0x00f3
                           0000F3   642 _WTCNTA1	=	0x00f3
                           00F3F2   643 G$WTCNTA$0$0 == 0xf3f2
                           00F3F2   644 _WTCNTA	=	0xf3f2
                           0000FA   645 G$WTCNTB0$0$0 == 0x00fa
                           0000FA   646 _WTCNTB0	=	0x00fa
                           0000FB   647 G$WTCNTB1$0$0 == 0x00fb
                           0000FB   648 _WTCNTB1	=	0x00fb
                           00FBFA   649 G$WTCNTB$0$0 == 0xfbfa
                           00FBFA   650 _WTCNTB	=	0xfbfa
                           0000EB   651 G$WTCNTR1$0$0 == 0x00eb
                           0000EB   652 _WTCNTR1	=	0x00eb
                           0000F4   653 G$WTEVTA0$0$0 == 0x00f4
                           0000F4   654 _WTEVTA0	=	0x00f4
                           0000F5   655 G$WTEVTA1$0$0 == 0x00f5
                           0000F5   656 _WTEVTA1	=	0x00f5
                           00F5F4   657 G$WTEVTA$0$0 == 0xf5f4
                           00F5F4   658 _WTEVTA	=	0xf5f4
                           0000F6   659 G$WTEVTB0$0$0 == 0x00f6
                           0000F6   660 _WTEVTB0	=	0x00f6
                           0000F7   661 G$WTEVTB1$0$0 == 0x00f7
                           0000F7   662 _WTEVTB1	=	0x00f7
                           00F7F6   663 G$WTEVTB$0$0 == 0xf7f6
                           00F7F6   664 _WTEVTB	=	0xf7f6
                           0000FC   665 G$WTEVTC0$0$0 == 0x00fc
                           0000FC   666 _WTEVTC0	=	0x00fc
                           0000FD   667 G$WTEVTC1$0$0 == 0x00fd
                           0000FD   668 _WTEVTC1	=	0x00fd
                           00FDFC   669 G$WTEVTC$0$0 == 0xfdfc
                           00FDFC   670 _WTEVTC	=	0xfdfc
                           0000FE   671 G$WTEVTD0$0$0 == 0x00fe
                           0000FE   672 _WTEVTD0	=	0x00fe
                           0000FF   673 G$WTEVTD1$0$0 == 0x00ff
                           0000FF   674 _WTEVTD1	=	0x00ff
                           00FFFE   675 G$WTEVTD$0$0 == 0xfffe
                           00FFFE   676 _WTEVTD	=	0xfffe
                           0000E9   677 G$WTIRQEN$0$0 == 0x00e9
                           0000E9   678 _WTIRQEN	=	0x00e9
                           0000EA   679 G$WTSTAT$0$0 == 0x00ea
                           0000EA   680 _WTSTAT	=	0x00ea
                                    681 ;--------------------------------------------------------
                                    682 ; special function bits
                                    683 ;--------------------------------------------------------
                                    684 	.area RSEG    (ABS,DATA)
      000000                        685 	.org 0x0000
                           0000E0   686 G$ACC_0$0$0 == 0x00e0
                           0000E0   687 _ACC_0	=	0x00e0
                           0000E1   688 G$ACC_1$0$0 == 0x00e1
                           0000E1   689 _ACC_1	=	0x00e1
                           0000E2   690 G$ACC_2$0$0 == 0x00e2
                           0000E2   691 _ACC_2	=	0x00e2
                           0000E3   692 G$ACC_3$0$0 == 0x00e3
                           0000E3   693 _ACC_3	=	0x00e3
                           0000E4   694 G$ACC_4$0$0 == 0x00e4
                           0000E4   695 _ACC_4	=	0x00e4
                           0000E5   696 G$ACC_5$0$0 == 0x00e5
                           0000E5   697 _ACC_5	=	0x00e5
                           0000E6   698 G$ACC_6$0$0 == 0x00e6
                           0000E6   699 _ACC_6	=	0x00e6
                           0000E7   700 G$ACC_7$0$0 == 0x00e7
                           0000E7   701 _ACC_7	=	0x00e7
                           0000F0   702 G$B_0$0$0 == 0x00f0
                           0000F0   703 _B_0	=	0x00f0
                           0000F1   704 G$B_1$0$0 == 0x00f1
                           0000F1   705 _B_1	=	0x00f1
                           0000F2   706 G$B_2$0$0 == 0x00f2
                           0000F2   707 _B_2	=	0x00f2
                           0000F3   708 G$B_3$0$0 == 0x00f3
                           0000F3   709 _B_3	=	0x00f3
                           0000F4   710 G$B_4$0$0 == 0x00f4
                           0000F4   711 _B_4	=	0x00f4
                           0000F5   712 G$B_5$0$0 == 0x00f5
                           0000F5   713 _B_5	=	0x00f5
                           0000F6   714 G$B_6$0$0 == 0x00f6
                           0000F6   715 _B_6	=	0x00f6
                           0000F7   716 G$B_7$0$0 == 0x00f7
                           0000F7   717 _B_7	=	0x00f7
                           0000A0   718 G$E2IE_0$0$0 == 0x00a0
                           0000A0   719 _E2IE_0	=	0x00a0
                           0000A1   720 G$E2IE_1$0$0 == 0x00a1
                           0000A1   721 _E2IE_1	=	0x00a1
                           0000A2   722 G$E2IE_2$0$0 == 0x00a2
                           0000A2   723 _E2IE_2	=	0x00a2
                           0000A3   724 G$E2IE_3$0$0 == 0x00a3
                           0000A3   725 _E2IE_3	=	0x00a3
                           0000A4   726 G$E2IE_4$0$0 == 0x00a4
                           0000A4   727 _E2IE_4	=	0x00a4
                           0000A5   728 G$E2IE_5$0$0 == 0x00a5
                           0000A5   729 _E2IE_5	=	0x00a5
                           0000A6   730 G$E2IE_6$0$0 == 0x00a6
                           0000A6   731 _E2IE_6	=	0x00a6
                           0000A7   732 G$E2IE_7$0$0 == 0x00a7
                           0000A7   733 _E2IE_7	=	0x00a7
                           0000C0   734 G$E2IP_0$0$0 == 0x00c0
                           0000C0   735 _E2IP_0	=	0x00c0
                           0000C1   736 G$E2IP_1$0$0 == 0x00c1
                           0000C1   737 _E2IP_1	=	0x00c1
                           0000C2   738 G$E2IP_2$0$0 == 0x00c2
                           0000C2   739 _E2IP_2	=	0x00c2
                           0000C3   740 G$E2IP_3$0$0 == 0x00c3
                           0000C3   741 _E2IP_3	=	0x00c3
                           0000C4   742 G$E2IP_4$0$0 == 0x00c4
                           0000C4   743 _E2IP_4	=	0x00c4
                           0000C5   744 G$E2IP_5$0$0 == 0x00c5
                           0000C5   745 _E2IP_5	=	0x00c5
                           0000C6   746 G$E2IP_6$0$0 == 0x00c6
                           0000C6   747 _E2IP_6	=	0x00c6
                           0000C7   748 G$E2IP_7$0$0 == 0x00c7
                           0000C7   749 _E2IP_7	=	0x00c7
                           000098   750 G$EIE_0$0$0 == 0x0098
                           000098   751 _EIE_0	=	0x0098
                           000099   752 G$EIE_1$0$0 == 0x0099
                           000099   753 _EIE_1	=	0x0099
                           00009A   754 G$EIE_2$0$0 == 0x009a
                           00009A   755 _EIE_2	=	0x009a
                           00009B   756 G$EIE_3$0$0 == 0x009b
                           00009B   757 _EIE_3	=	0x009b
                           00009C   758 G$EIE_4$0$0 == 0x009c
                           00009C   759 _EIE_4	=	0x009c
                           00009D   760 G$EIE_5$0$0 == 0x009d
                           00009D   761 _EIE_5	=	0x009d
                           00009E   762 G$EIE_6$0$0 == 0x009e
                           00009E   763 _EIE_6	=	0x009e
                           00009F   764 G$EIE_7$0$0 == 0x009f
                           00009F   765 _EIE_7	=	0x009f
                           0000B0   766 G$EIP_0$0$0 == 0x00b0
                           0000B0   767 _EIP_0	=	0x00b0
                           0000B1   768 G$EIP_1$0$0 == 0x00b1
                           0000B1   769 _EIP_1	=	0x00b1
                           0000B2   770 G$EIP_2$0$0 == 0x00b2
                           0000B2   771 _EIP_2	=	0x00b2
                           0000B3   772 G$EIP_3$0$0 == 0x00b3
                           0000B3   773 _EIP_3	=	0x00b3
                           0000B4   774 G$EIP_4$0$0 == 0x00b4
                           0000B4   775 _EIP_4	=	0x00b4
                           0000B5   776 G$EIP_5$0$0 == 0x00b5
                           0000B5   777 _EIP_5	=	0x00b5
                           0000B6   778 G$EIP_6$0$0 == 0x00b6
                           0000B6   779 _EIP_6	=	0x00b6
                           0000B7   780 G$EIP_7$0$0 == 0x00b7
                           0000B7   781 _EIP_7	=	0x00b7
                           0000A8   782 G$IE_0$0$0 == 0x00a8
                           0000A8   783 _IE_0	=	0x00a8
                           0000A9   784 G$IE_1$0$0 == 0x00a9
                           0000A9   785 _IE_1	=	0x00a9
                           0000AA   786 G$IE_2$0$0 == 0x00aa
                           0000AA   787 _IE_2	=	0x00aa
                           0000AB   788 G$IE_3$0$0 == 0x00ab
                           0000AB   789 _IE_3	=	0x00ab
                           0000AC   790 G$IE_4$0$0 == 0x00ac
                           0000AC   791 _IE_4	=	0x00ac
                           0000AD   792 G$IE_5$0$0 == 0x00ad
                           0000AD   793 _IE_5	=	0x00ad
                           0000AE   794 G$IE_6$0$0 == 0x00ae
                           0000AE   795 _IE_6	=	0x00ae
                           0000AF   796 G$IE_7$0$0 == 0x00af
                           0000AF   797 _IE_7	=	0x00af
                           0000AF   798 G$EA$0$0 == 0x00af
                           0000AF   799 _EA	=	0x00af
                           0000B8   800 G$IP_0$0$0 == 0x00b8
                           0000B8   801 _IP_0	=	0x00b8
                           0000B9   802 G$IP_1$0$0 == 0x00b9
                           0000B9   803 _IP_1	=	0x00b9
                           0000BA   804 G$IP_2$0$0 == 0x00ba
                           0000BA   805 _IP_2	=	0x00ba
                           0000BB   806 G$IP_3$0$0 == 0x00bb
                           0000BB   807 _IP_3	=	0x00bb
                           0000BC   808 G$IP_4$0$0 == 0x00bc
                           0000BC   809 _IP_4	=	0x00bc
                           0000BD   810 G$IP_5$0$0 == 0x00bd
                           0000BD   811 _IP_5	=	0x00bd
                           0000BE   812 G$IP_6$0$0 == 0x00be
                           0000BE   813 _IP_6	=	0x00be
                           0000BF   814 G$IP_7$0$0 == 0x00bf
                           0000BF   815 _IP_7	=	0x00bf
                           0000D0   816 G$P$0$0 == 0x00d0
                           0000D0   817 _P	=	0x00d0
                           0000D1   818 G$F1$0$0 == 0x00d1
                           0000D1   819 _F1	=	0x00d1
                           0000D2   820 G$OV$0$0 == 0x00d2
                           0000D2   821 _OV	=	0x00d2
                           0000D3   822 G$RS0$0$0 == 0x00d3
                           0000D3   823 _RS0	=	0x00d3
                           0000D4   824 G$RS1$0$0 == 0x00d4
                           0000D4   825 _RS1	=	0x00d4
                           0000D5   826 G$F0$0$0 == 0x00d5
                           0000D5   827 _F0	=	0x00d5
                           0000D6   828 G$AC$0$0 == 0x00d6
                           0000D6   829 _AC	=	0x00d6
                           0000D7   830 G$CY$0$0 == 0x00d7
                           0000D7   831 _CY	=	0x00d7
                           0000C8   832 G$PINA_0$0$0 == 0x00c8
                           0000C8   833 _PINA_0	=	0x00c8
                           0000C9   834 G$PINA_1$0$0 == 0x00c9
                           0000C9   835 _PINA_1	=	0x00c9
                           0000CA   836 G$PINA_2$0$0 == 0x00ca
                           0000CA   837 _PINA_2	=	0x00ca
                           0000CB   838 G$PINA_3$0$0 == 0x00cb
                           0000CB   839 _PINA_3	=	0x00cb
                           0000CC   840 G$PINA_4$0$0 == 0x00cc
                           0000CC   841 _PINA_4	=	0x00cc
                           0000CD   842 G$PINA_5$0$0 == 0x00cd
                           0000CD   843 _PINA_5	=	0x00cd
                           0000CE   844 G$PINA_6$0$0 == 0x00ce
                           0000CE   845 _PINA_6	=	0x00ce
                           0000CF   846 G$PINA_7$0$0 == 0x00cf
                           0000CF   847 _PINA_7	=	0x00cf
                           0000E8   848 G$PINB_0$0$0 == 0x00e8
                           0000E8   849 _PINB_0	=	0x00e8
                           0000E9   850 G$PINB_1$0$0 == 0x00e9
                           0000E9   851 _PINB_1	=	0x00e9
                           0000EA   852 G$PINB_2$0$0 == 0x00ea
                           0000EA   853 _PINB_2	=	0x00ea
                           0000EB   854 G$PINB_3$0$0 == 0x00eb
                           0000EB   855 _PINB_3	=	0x00eb
                           0000EC   856 G$PINB_4$0$0 == 0x00ec
                           0000EC   857 _PINB_4	=	0x00ec
                           0000ED   858 G$PINB_5$0$0 == 0x00ed
                           0000ED   859 _PINB_5	=	0x00ed
                           0000EE   860 G$PINB_6$0$0 == 0x00ee
                           0000EE   861 _PINB_6	=	0x00ee
                           0000EF   862 G$PINB_7$0$0 == 0x00ef
                           0000EF   863 _PINB_7	=	0x00ef
                           0000F8   864 G$PINC_0$0$0 == 0x00f8
                           0000F8   865 _PINC_0	=	0x00f8
                           0000F9   866 G$PINC_1$0$0 == 0x00f9
                           0000F9   867 _PINC_1	=	0x00f9
                           0000FA   868 G$PINC_2$0$0 == 0x00fa
                           0000FA   869 _PINC_2	=	0x00fa
                           0000FB   870 G$PINC_3$0$0 == 0x00fb
                           0000FB   871 _PINC_3	=	0x00fb
                           0000FC   872 G$PINC_4$0$0 == 0x00fc
                           0000FC   873 _PINC_4	=	0x00fc
                           0000FD   874 G$PINC_5$0$0 == 0x00fd
                           0000FD   875 _PINC_5	=	0x00fd
                           0000FE   876 G$PINC_6$0$0 == 0x00fe
                           0000FE   877 _PINC_6	=	0x00fe
                           0000FF   878 G$PINC_7$0$0 == 0x00ff
                           0000FF   879 _PINC_7	=	0x00ff
                           000080   880 G$PORTA_0$0$0 == 0x0080
                           000080   881 _PORTA_0	=	0x0080
                           000081   882 G$PORTA_1$0$0 == 0x0081
                           000081   883 _PORTA_1	=	0x0081
                           000082   884 G$PORTA_2$0$0 == 0x0082
                           000082   885 _PORTA_2	=	0x0082
                           000083   886 G$PORTA_3$0$0 == 0x0083
                           000083   887 _PORTA_3	=	0x0083
                           000084   888 G$PORTA_4$0$0 == 0x0084
                           000084   889 _PORTA_4	=	0x0084
                           000085   890 G$PORTA_5$0$0 == 0x0085
                           000085   891 _PORTA_5	=	0x0085
                           000086   892 G$PORTA_6$0$0 == 0x0086
                           000086   893 _PORTA_6	=	0x0086
                           000087   894 G$PORTA_7$0$0 == 0x0087
                           000087   895 _PORTA_7	=	0x0087
                           000088   896 G$PORTB_0$0$0 == 0x0088
                           000088   897 _PORTB_0	=	0x0088
                           000089   898 G$PORTB_1$0$0 == 0x0089
                           000089   899 _PORTB_1	=	0x0089
                           00008A   900 G$PORTB_2$0$0 == 0x008a
                           00008A   901 _PORTB_2	=	0x008a
                           00008B   902 G$PORTB_3$0$0 == 0x008b
                           00008B   903 _PORTB_3	=	0x008b
                           00008C   904 G$PORTB_4$0$0 == 0x008c
                           00008C   905 _PORTB_4	=	0x008c
                           00008D   906 G$PORTB_5$0$0 == 0x008d
                           00008D   907 _PORTB_5	=	0x008d
                           00008E   908 G$PORTB_6$0$0 == 0x008e
                           00008E   909 _PORTB_6	=	0x008e
                           00008F   910 G$PORTB_7$0$0 == 0x008f
                           00008F   911 _PORTB_7	=	0x008f
                           000090   912 G$PORTC_0$0$0 == 0x0090
                           000090   913 _PORTC_0	=	0x0090
                           000091   914 G$PORTC_1$0$0 == 0x0091
                           000091   915 _PORTC_1	=	0x0091
                           000092   916 G$PORTC_2$0$0 == 0x0092
                           000092   917 _PORTC_2	=	0x0092
                           000093   918 G$PORTC_3$0$0 == 0x0093
                           000093   919 _PORTC_3	=	0x0093
                           000094   920 G$PORTC_4$0$0 == 0x0094
                           000094   921 _PORTC_4	=	0x0094
                           000095   922 G$PORTC_5$0$0 == 0x0095
                           000095   923 _PORTC_5	=	0x0095
                           000096   924 G$PORTC_6$0$0 == 0x0096
                           000096   925 _PORTC_6	=	0x0096
                           000097   926 G$PORTC_7$0$0 == 0x0097
                           000097   927 _PORTC_7	=	0x0097
                                    928 ;--------------------------------------------------------
                                    929 ; overlayable register banks
                                    930 ;--------------------------------------------------------
                                    931 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        932 	.ds 8
                                    933 ;--------------------------------------------------------
                                    934 ; internal ram data
                                    935 ;--------------------------------------------------------
                                    936 	.area DSEG    (DATA)
                                    937 ;--------------------------------------------------------
                                    938 ; overlayable items in internal ram 
                                    939 ;--------------------------------------------------------
                                    940 	.area	OSEG    (OVR,DATA)
                                    941 	.area	OSEG    (OVR,DATA)
                                    942 ;--------------------------------------------------------
                                    943 ; indirectly addressable internal ram data
                                    944 ;--------------------------------------------------------
                                    945 	.area ISEG    (DATA)
                                    946 ;--------------------------------------------------------
                                    947 ; absolute internal ram data
                                    948 ;--------------------------------------------------------
                                    949 	.area IABS    (ABS,DATA)
                                    950 	.area IABS    (ABS,DATA)
                                    951 ;--------------------------------------------------------
                                    952 ; bit data
                                    953 ;--------------------------------------------------------
                                    954 	.area BSEG    (BIT)
                                    955 ;--------------------------------------------------------
                                    956 ; paged external ram data
                                    957 ;--------------------------------------------------------
                                    958 	.area PSEG    (PAG,XDATA)
                                    959 ;--------------------------------------------------------
                                    960 ; external ram data
                                    961 ;--------------------------------------------------------
                                    962 	.area XSEG    (XDATA)
                           007020   963 G$ADCCH0VAL0$0$0 == 0x7020
                           007020   964 _ADCCH0VAL0	=	0x7020
                           007021   965 G$ADCCH0VAL1$0$0 == 0x7021
                           007021   966 _ADCCH0VAL1	=	0x7021
                           007020   967 G$ADCCH0VAL$0$0 == 0x7020
                           007020   968 _ADCCH0VAL	=	0x7020
                           007022   969 G$ADCCH1VAL0$0$0 == 0x7022
                           007022   970 _ADCCH1VAL0	=	0x7022
                           007023   971 G$ADCCH1VAL1$0$0 == 0x7023
                           007023   972 _ADCCH1VAL1	=	0x7023
                           007022   973 G$ADCCH1VAL$0$0 == 0x7022
                           007022   974 _ADCCH1VAL	=	0x7022
                           007024   975 G$ADCCH2VAL0$0$0 == 0x7024
                           007024   976 _ADCCH2VAL0	=	0x7024
                           007025   977 G$ADCCH2VAL1$0$0 == 0x7025
                           007025   978 _ADCCH2VAL1	=	0x7025
                           007024   979 G$ADCCH2VAL$0$0 == 0x7024
                           007024   980 _ADCCH2VAL	=	0x7024
                           007026   981 G$ADCCH3VAL0$0$0 == 0x7026
                           007026   982 _ADCCH3VAL0	=	0x7026
                           007027   983 G$ADCCH3VAL1$0$0 == 0x7027
                           007027   984 _ADCCH3VAL1	=	0x7027
                           007026   985 G$ADCCH3VAL$0$0 == 0x7026
                           007026   986 _ADCCH3VAL	=	0x7026
                           007028   987 G$ADCTUNE0$0$0 == 0x7028
                           007028   988 _ADCTUNE0	=	0x7028
                           007029   989 G$ADCTUNE1$0$0 == 0x7029
                           007029   990 _ADCTUNE1	=	0x7029
                           00702A   991 G$ADCTUNE2$0$0 == 0x702a
                           00702A   992 _ADCTUNE2	=	0x702a
                           007010   993 G$DMA0ADDR0$0$0 == 0x7010
                           007010   994 _DMA0ADDR0	=	0x7010
                           007011   995 G$DMA0ADDR1$0$0 == 0x7011
                           007011   996 _DMA0ADDR1	=	0x7011
                           007010   997 G$DMA0ADDR$0$0 == 0x7010
                           007010   998 _DMA0ADDR	=	0x7010
                           007014   999 G$DMA0CONFIG$0$0 == 0x7014
                           007014  1000 _DMA0CONFIG	=	0x7014
                           007012  1001 G$DMA1ADDR0$0$0 == 0x7012
                           007012  1002 _DMA1ADDR0	=	0x7012
                           007013  1003 G$DMA1ADDR1$0$0 == 0x7013
                           007013  1004 _DMA1ADDR1	=	0x7013
                           007012  1005 G$DMA1ADDR$0$0 == 0x7012
                           007012  1006 _DMA1ADDR	=	0x7012
                           007015  1007 G$DMA1CONFIG$0$0 == 0x7015
                           007015  1008 _DMA1CONFIG	=	0x7015
                           007070  1009 G$FRCOSCCONFIG$0$0 == 0x7070
                           007070  1010 _FRCOSCCONFIG	=	0x7070
                           007071  1011 G$FRCOSCCTRL$0$0 == 0x7071
                           007071  1012 _FRCOSCCTRL	=	0x7071
                           007076  1013 G$FRCOSCFREQ0$0$0 == 0x7076
                           007076  1014 _FRCOSCFREQ0	=	0x7076
                           007077  1015 G$FRCOSCFREQ1$0$0 == 0x7077
                           007077  1016 _FRCOSCFREQ1	=	0x7077
                           007076  1017 G$FRCOSCFREQ$0$0 == 0x7076
                           007076  1018 _FRCOSCFREQ	=	0x7076
                           007072  1019 G$FRCOSCKFILT0$0$0 == 0x7072
                           007072  1020 _FRCOSCKFILT0	=	0x7072
                           007073  1021 G$FRCOSCKFILT1$0$0 == 0x7073
                           007073  1022 _FRCOSCKFILT1	=	0x7073
                           007072  1023 G$FRCOSCKFILT$0$0 == 0x7072
                           007072  1024 _FRCOSCKFILT	=	0x7072
                           007078  1025 G$FRCOSCPER0$0$0 == 0x7078
                           007078  1026 _FRCOSCPER0	=	0x7078
                           007079  1027 G$FRCOSCPER1$0$0 == 0x7079
                           007079  1028 _FRCOSCPER1	=	0x7079
                           007078  1029 G$FRCOSCPER$0$0 == 0x7078
                           007078  1030 _FRCOSCPER	=	0x7078
                           007074  1031 G$FRCOSCREF0$0$0 == 0x7074
                           007074  1032 _FRCOSCREF0	=	0x7074
                           007075  1033 G$FRCOSCREF1$0$0 == 0x7075
                           007075  1034 _FRCOSCREF1	=	0x7075
                           007074  1035 G$FRCOSCREF$0$0 == 0x7074
                           007074  1036 _FRCOSCREF	=	0x7074
                           007007  1037 G$ANALOGA$0$0 == 0x7007
                           007007  1038 _ANALOGA	=	0x7007
                           00700C  1039 G$GPIOENABLE$0$0 == 0x700c
                           00700C  1040 _GPIOENABLE	=	0x700c
                           007003  1041 G$EXTIRQ$0$0 == 0x7003
                           007003  1042 _EXTIRQ	=	0x7003
                           007000  1043 G$INTCHGA$0$0 == 0x7000
                           007000  1044 _INTCHGA	=	0x7000
                           007001  1045 G$INTCHGB$0$0 == 0x7001
                           007001  1046 _INTCHGB	=	0x7001
                           007002  1047 G$INTCHGC$0$0 == 0x7002
                           007002  1048 _INTCHGC	=	0x7002
                           007008  1049 G$PALTA$0$0 == 0x7008
                           007008  1050 _PALTA	=	0x7008
                           007009  1051 G$PALTB$0$0 == 0x7009
                           007009  1052 _PALTB	=	0x7009
                           00700A  1053 G$PALTC$0$0 == 0x700a
                           00700A  1054 _PALTC	=	0x700a
                           007046  1055 G$PALTRADIO$0$0 == 0x7046
                           007046  1056 _PALTRADIO	=	0x7046
                           007004  1057 G$PINCHGA$0$0 == 0x7004
                           007004  1058 _PINCHGA	=	0x7004
                           007005  1059 G$PINCHGB$0$0 == 0x7005
                           007005  1060 _PINCHGB	=	0x7005
                           007006  1061 G$PINCHGC$0$0 == 0x7006
                           007006  1062 _PINCHGC	=	0x7006
                           00700B  1063 G$PINSEL$0$0 == 0x700b
                           00700B  1064 _PINSEL	=	0x700b
                           007060  1065 G$LPOSCCONFIG$0$0 == 0x7060
                           007060  1066 _LPOSCCONFIG	=	0x7060
                           007066  1067 G$LPOSCFREQ0$0$0 == 0x7066
                           007066  1068 _LPOSCFREQ0	=	0x7066
                           007067  1069 G$LPOSCFREQ1$0$0 == 0x7067
                           007067  1070 _LPOSCFREQ1	=	0x7067
                           007066  1071 G$LPOSCFREQ$0$0 == 0x7066
                           007066  1072 _LPOSCFREQ	=	0x7066
                           007062  1073 G$LPOSCKFILT0$0$0 == 0x7062
                           007062  1074 _LPOSCKFILT0	=	0x7062
                           007063  1075 G$LPOSCKFILT1$0$0 == 0x7063
                           007063  1076 _LPOSCKFILT1	=	0x7063
                           007062  1077 G$LPOSCKFILT$0$0 == 0x7062
                           007062  1078 _LPOSCKFILT	=	0x7062
                           007068  1079 G$LPOSCPER0$0$0 == 0x7068
                           007068  1080 _LPOSCPER0	=	0x7068
                           007069  1081 G$LPOSCPER1$0$0 == 0x7069
                           007069  1082 _LPOSCPER1	=	0x7069
                           007068  1083 G$LPOSCPER$0$0 == 0x7068
                           007068  1084 _LPOSCPER	=	0x7068
                           007064  1085 G$LPOSCREF0$0$0 == 0x7064
                           007064  1086 _LPOSCREF0	=	0x7064
                           007065  1087 G$LPOSCREF1$0$0 == 0x7065
                           007065  1088 _LPOSCREF1	=	0x7065
                           007064  1089 G$LPOSCREF$0$0 == 0x7064
                           007064  1090 _LPOSCREF	=	0x7064
                           007054  1091 G$LPXOSCGM$0$0 == 0x7054
                           007054  1092 _LPXOSCGM	=	0x7054
                           007F01  1093 G$MISCCTRL$0$0 == 0x7f01
                           007F01  1094 _MISCCTRL	=	0x7f01
                           007053  1095 G$OSCCALIB$0$0 == 0x7053
                           007053  1096 _OSCCALIB	=	0x7053
                           007050  1097 G$OSCFORCERUN$0$0 == 0x7050
                           007050  1098 _OSCFORCERUN	=	0x7050
                           007052  1099 G$OSCREADY$0$0 == 0x7052
                           007052  1100 _OSCREADY	=	0x7052
                           007051  1101 G$OSCRUN$0$0 == 0x7051
                           007051  1102 _OSCRUN	=	0x7051
                           007040  1103 G$RADIOFDATAADDR0$0$0 == 0x7040
                           007040  1104 _RADIOFDATAADDR0	=	0x7040
                           007041  1105 G$RADIOFDATAADDR1$0$0 == 0x7041
                           007041  1106 _RADIOFDATAADDR1	=	0x7041
                           007040  1107 G$RADIOFDATAADDR$0$0 == 0x7040
                           007040  1108 _RADIOFDATAADDR	=	0x7040
                           007042  1109 G$RADIOFSTATADDR0$0$0 == 0x7042
                           007042  1110 _RADIOFSTATADDR0	=	0x7042
                           007043  1111 G$RADIOFSTATADDR1$0$0 == 0x7043
                           007043  1112 _RADIOFSTATADDR1	=	0x7043
                           007042  1113 G$RADIOFSTATADDR$0$0 == 0x7042
                           007042  1114 _RADIOFSTATADDR	=	0x7042
                           007044  1115 G$RADIOMUX$0$0 == 0x7044
                           007044  1116 _RADIOMUX	=	0x7044
                           007084  1117 G$SCRATCH0$0$0 == 0x7084
                           007084  1118 _SCRATCH0	=	0x7084
                           007085  1119 G$SCRATCH1$0$0 == 0x7085
                           007085  1120 _SCRATCH1	=	0x7085
                           007086  1121 G$SCRATCH2$0$0 == 0x7086
                           007086  1122 _SCRATCH2	=	0x7086
                           007087  1123 G$SCRATCH3$0$0 == 0x7087
                           007087  1124 _SCRATCH3	=	0x7087
                           007F00  1125 G$SILICONREV$0$0 == 0x7f00
                           007F00  1126 _SILICONREV	=	0x7f00
                           007F19  1127 G$XTALAMPL$0$0 == 0x7f19
                           007F19  1128 _XTALAMPL	=	0x7f19
                           007F18  1129 G$XTALOSC$0$0 == 0x7f18
                           007F18  1130 _XTALOSC	=	0x7f18
                           007F1A  1131 G$XTALREADY$0$0 == 0x7f1a
                           007F1A  1132 _XTALREADY	=	0x7f1a
                           00FC06  1133 Fmisc$flash_deviceid$0$0 == 0xfc06
                           00FC06  1134 _flash_deviceid	=	0xfc06
                           00FC00  1135 Fmisc$flash_calsector$0$0 == 0xfc00
                           00FC00  1136 _flash_calsector	=	0xfc00
                           000000  1137 Fmisc$delaymstimer$0$0==.
      000296                       1138 _delaymstimer:
      000296                       1139 	.ds 8
                                   1140 ;--------------------------------------------------------
                                   1141 ; absolute external ram data
                                   1142 ;--------------------------------------------------------
                                   1143 	.area XABS    (ABS,XDATA)
                                   1144 ;--------------------------------------------------------
                                   1145 ; external initialized ram data
                                   1146 ;--------------------------------------------------------
                                   1147 	.area XISEG   (XDATA)
                                   1148 	.area HOME    (CODE)
                                   1149 	.area GSINIT0 (CODE)
                                   1150 	.area GSINIT1 (CODE)
                                   1151 	.area GSINIT2 (CODE)
                                   1152 	.area GSINIT3 (CODE)
                                   1153 	.area GSINIT4 (CODE)
                                   1154 	.area GSINIT5 (CODE)
                                   1155 	.area GSINIT  (CODE)
                                   1156 	.area GSFINAL (CODE)
                                   1157 	.area CSEG    (CODE)
                                   1158 ;--------------------------------------------------------
                                   1159 ; global & static initialisations
                                   1160 ;--------------------------------------------------------
                                   1161 	.area HOME    (CODE)
                                   1162 	.area GSINIT  (CODE)
                                   1163 	.area GSFINAL (CODE)
                                   1164 	.area GSINIT  (CODE)
                                   1165 ;--------------------------------------------------------
                                   1166 ; Home
                                   1167 ;--------------------------------------------------------
                                   1168 	.area HOME    (CODE)
                                   1169 	.area HOME    (CODE)
                                   1170 ;--------------------------------------------------------
                                   1171 ; code
                                   1172 ;--------------------------------------------------------
                                   1173 	.area CSEG    (CODE)
                                   1174 ;------------------------------------------------------------
                                   1175 ;Allocation info for local variables in function 'lcd2_display_radio_error'
                                   1176 ;------------------------------------------------------------
                                   1177 ;err                       Allocated to registers r7 
                                   1178 ;p                         Allocated to registers r5 r6 
                                   1179 ;------------------------------------------------------------
                           000000  1180 	G$lcd2_display_radio_error$0$0 ==.
                           000000  1181 	C$misc.c$74$0$0 ==.
                                   1182 ;	..\COMMON\misc.c:74: void lcd2_display_radio_error(uint8_t err)
                                   1183 ;	-----------------------------------------
                                   1184 ;	 function lcd2_display_radio_error
                                   1185 ;	-----------------------------------------
      003A6F                       1186 _lcd2_display_radio_error:
                           000007  1187 	ar7 = 0x07
                           000006  1188 	ar6 = 0x06
                           000005  1189 	ar5 = 0x05
                           000004  1190 	ar4 = 0x04
                           000003  1191 	ar3 = 0x03
                           000002  1192 	ar2 = 0x02
                           000001  1193 	ar1 = 0x01
                           000000  1194 	ar0 = 0x00
      003A6F AF 82            [24] 1195 	mov	r7,dpl
                           000002  1196 	C$misc.c$76$1$0 ==.
                                   1197 ;	..\COMMON\misc.c:76: const struct errtbl __code *p = errtbl;
      003A71 7D 3F            [12] 1198 	mov	r5,#_errtbl
      003A73 7E 5C            [12] 1199 	mov	r6,#(_errtbl >> 8)
                           000006  1200 	C$misc.c$77$1$337 ==.
                                   1201 ;	..\COMMON\misc.c:77: do {
      003A75 8D 03            [24] 1202 	mov	ar3,r5
      003A77 8E 04            [24] 1203 	mov	ar4,r6
      003A79                       1204 00103$:
                           00000A  1205 	C$misc.c$78$2$338 ==.
                                   1206 ;	..\COMMON\misc.c:78: if (p->errcode == err) {
      003A79 8B 82            [24] 1207 	mov	dpl,r3
      003A7B 8C 83            [24] 1208 	mov	dph,r4
      003A7D E4               [12] 1209 	clr	a
      003A7E 93               [24] 1210 	movc	a,@a+dptr
      003A7F FA               [12] 1211 	mov	r2,a
      003A80 B5 07 27         [24] 1212 	cjne	a,ar7,00102$
                           000014  1213 	C$misc.c$79$3$339 ==.
                                   1214 ;	..\COMMON\misc.c:79: display_setpos(0);
      003A83 75 82 00         [24] 1215 	mov	dpl,#0x00
      003A86 C0 06            [24] 1216 	push	ar6
      003A88 C0 05            [24] 1217 	push	ar5
      003A8A 12 43 A8         [24] 1218 	lcall	_lcd2_setpos
      003A8D D0 05            [24] 1219 	pop	ar5
      003A8F D0 06            [24] 1220 	pop	ar6
                           000022  1221 	C$misc.c$80$3$339 ==.
                                   1222 ;	..\COMMON\misc.c:80: display_writestr(p->msg);
      003A91 8D 82            [24] 1223 	mov	dpl,r5
      003A93 8E 83            [24] 1224 	mov	dph,r6
      003A95 A3               [24] 1225 	inc	dptr
      003A96 E4               [12] 1226 	clr	a
      003A97 93               [24] 1227 	movc	a,@a+dptr
      003A98 F9               [12] 1228 	mov	r1,a
      003A99 A3               [24] 1229 	inc	dptr
      003A9A E4               [12] 1230 	clr	a
      003A9B 93               [24] 1231 	movc	a,@a+dptr
      003A9C F8               [12] 1232 	mov	r0,a
      003A9D 7A 80            [12] 1233 	mov	r2,#0x80
      003A9F 89 82            [24] 1234 	mov	dpl,r1
      003AA1 88 83            [24] 1235 	mov	dph,r0
      003AA3 8A F0            [24] 1236 	mov	b,r2
      003AA5 12 54 D0         [24] 1237 	lcall	_lcd2_writestr
                           000039  1238 	C$misc.c$81$3$339 ==.
                                   1239 ;	..\COMMON\misc.c:81: return;
      003AA8 80 13            [24] 1240 	sjmp	00106$
      003AAA                       1241 00102$:
                           00003B  1242 	C$misc.c$83$2$338 ==.
                                   1243 ;	..\COMMON\misc.c:83: ++p;
      003AAA 74 03            [12] 1244 	mov	a,#0x03
      003AAC 2B               [12] 1245 	add	a,r3
      003AAD FB               [12] 1246 	mov	r3,a
      003AAE E4               [12] 1247 	clr	a
      003AAF 3C               [12] 1248 	addc	a,r4
      003AB0 FC               [12] 1249 	mov	r4,a
      003AB1 8B 05            [24] 1250 	mov	ar5,r3
      003AB3 8C 06            [24] 1251 	mov	ar6,r4
                           000046  1252 	C$misc.c$84$1$337 ==.
                                   1253 ;	..\COMMON\misc.c:84: } while (p->errcode != AXRADIO_ERR_NOERROR);
      003AB5 8B 82            [24] 1254 	mov	dpl,r3
      003AB7 8C 83            [24] 1255 	mov	dph,r4
      003AB9 E4               [12] 1256 	clr	a
      003ABA 93               [24] 1257 	movc	a,@a+dptr
      003ABB 70 BC            [24] 1258 	jnz	00103$
      003ABD                       1259 00106$:
                           00004E  1260 	C$misc.c$85$1$337 ==.
                           00004E  1261 	XG$lcd2_display_radio_error$0$0 ==.
      003ABD 22               [24] 1262 	ret
                                   1263 ;------------------------------------------------------------
                                   1264 ;Allocation info for local variables in function 'dbglink_display_radio_error'
                                   1265 ;------------------------------------------------------------
                                   1266 ;err                       Allocated to registers 
                                   1267 ;p                         Allocated to registers 
                                   1268 ;------------------------------------------------------------
                           00004F  1269 	G$dbglink_display_radio_error$0$0 ==.
                           00004F  1270 	C$misc.c$102$1$337 ==.
                                   1271 ;	..\COMMON\misc.c:102: void dbglink_display_radio_error(uint8_t err)
                                   1272 ;	-----------------------------------------
                                   1273 ;	 function dbglink_display_radio_error
                                   1274 ;	-----------------------------------------
      003ABE                       1275 _dbglink_display_radio_error:
                           00004F  1276 	C$misc.c$104$1$337 ==.
                                   1277 ;	..\COMMON\misc.c:104: const struct errtbl __code *p = errtbl;
                           00004F  1278 	C$misc.c$105$1$341 ==.
                                   1279 ;	..\COMMON\misc.c:105: if (!(DBGLNKSTAT & 0x10))
      003ABE E5 E2            [12] 1280 	mov	a,_DBGLNKSTAT
      003AC0 20 E4 02         [24] 1281 	jb	acc.4,00109$
                           000054  1282 	C$misc.c$106$1$341 ==.
                                   1283 ;	..\COMMON\misc.c:106: return;
                           000054  1284 	C$misc.c$107$1$341 ==.
                                   1285 ;	..\COMMON\misc.c:107: do {
      003AC3 80 13            [24] 1286 	sjmp	00106$
      003AC5                       1287 00109$:
      003AC5 7E 3F            [12] 1288 	mov	r6,#_errtbl
      003AC7 7F 5C            [12] 1289 	mov	r7,#(_errtbl >> 8)
      003AC9                       1290 00103$:
                           00005A  1291 	C$misc.c$114$2$342 ==.
                                   1292 ;	..\COMMON\misc.c:114: ++p;
      003AC9 74 03            [12] 1293 	mov	a,#0x03
      003ACB 2E               [12] 1294 	add	a,r6
      003ACC FE               [12] 1295 	mov	r6,a
      003ACD E4               [12] 1296 	clr	a
      003ACE 3F               [12] 1297 	addc	a,r7
      003ACF FF               [12] 1298 	mov	r7,a
                           000061  1299 	C$misc.c$115$1$341 ==.
                                   1300 ;	..\COMMON\misc.c:115: } while (p->errcode != AXRADIO_ERR_NOERROR);
      003AD0 8E 82            [24] 1301 	mov	dpl,r6
      003AD2 8F 83            [24] 1302 	mov	dph,r7
      003AD4 E4               [12] 1303 	clr	a
      003AD5 93               [24] 1304 	movc	a,@a+dptr
      003AD6 70 F1            [24] 1305 	jnz	00103$
      003AD8                       1306 00106$:
                           000069  1307 	C$misc.c$116$1$341 ==.
                           000069  1308 	XG$dbglink_display_radio_error$0$0 ==.
      003AD8 22               [24] 1309 	ret
                                   1310 ;------------------------------------------------------------
                                   1311 ;Allocation info for local variables in function 'delayms_callback'
                                   1312 ;------------------------------------------------------------
                                   1313 ;desc                      Allocated to registers 
                                   1314 ;------------------------------------------------------------
                           00006A  1315 	Fmisc$delayms_callback$0$0 ==.
                           00006A  1316 	C$misc.c$121$1$341 ==.
                                   1317 ;	..\COMMON\misc.c:121: static void delayms_callback(struct wtimer_desc __xdata *desc)
                                   1318 ;	-----------------------------------------
                                   1319 ;	 function delayms_callback
                                   1320 ;	-----------------------------------------
      003AD9                       1321 _delayms_callback:
                           00006A  1322 	C$misc.c$124$1$345 ==.
                                   1323 ;	..\COMMON\misc.c:124: delaymstimer.handler = 0;
      003AD9 90 02 98         [24] 1324 	mov	dptr,#(_delaymstimer + 0x0002)
      003ADC E4               [12] 1325 	clr	a
      003ADD F0               [24] 1326 	movx	@dptr,a
      003ADE A3               [24] 1327 	inc	dptr
      003ADF F0               [24] 1328 	movx	@dptr,a
                           000071  1329 	C$misc.c$125$1$345 ==.
                           000071  1330 	XFmisc$delayms_callback$0$0 ==.
      003AE0 22               [24] 1331 	ret
                                   1332 ;------------------------------------------------------------
                                   1333 ;Allocation info for local variables in function 'delay_ms'
                                   1334 ;------------------------------------------------------------
                                   1335 ;ms                        Allocated to registers r6 r7 
                                   1336 ;x                         Allocated to stack - _bp +1
                                   1337 ;------------------------------------------------------------
                           000072  1338 	G$delay_ms$0$0 ==.
                           000072  1339 	C$misc.c$127$1$345 ==.
                                   1340 ;	..\COMMON\misc.c:127: __reentrantb void delay_ms(uint16_t ms) __reentrant
                                   1341 ;	-----------------------------------------
                                   1342 ;	 function delay_ms
                                   1343 ;	-----------------------------------------
      003AE1                       1344 _delay_ms:
      003AE1 C0 3C            [24] 1345 	push	_bp
      003AE3 E5 81            [12] 1346 	mov	a,sp
      003AE5 F5 3C            [12] 1347 	mov	_bp,a
      003AE7 24 04            [12] 1348 	add	a,#0x04
      003AE9 F5 81            [12] 1349 	mov	sp,a
      003AEB AE 82            [24] 1350 	mov	r6,dpl
      003AED AF 83            [24] 1351 	mov	r7,dph
                           000080  1352 	C$misc.c$131$1$347 ==.
                                   1353 ;	..\COMMON\misc.c:131: wtimer_remove(&delaymstimer);
      003AEF 90 02 96         [24] 1354 	mov	dptr,#_delaymstimer
      003AF2 C0 07            [24] 1355 	push	ar7
      003AF4 C0 06            [24] 1356 	push	ar6
      003AF6 12 53 F5         [24] 1357 	lcall	_wtimer_remove
      003AF9 D0 06            [24] 1358 	pop	ar6
      003AFB D0 07            [24] 1359 	pop	ar7
                           00008E  1360 	C$misc.c$132$1$347 ==.
                                   1361 ;	..\COMMON\misc.c:132: x = ms;
      003AFD A8 3C            [24] 1362 	mov	r0,_bp
      003AFF 08               [12] 1363 	inc	r0
      003B00 A6 06            [24] 1364 	mov	@r0,ar6
      003B02 08               [12] 1365 	inc	r0
      003B03 A6 07            [24] 1366 	mov	@r0,ar7
      003B05 08               [12] 1367 	inc	r0
      003B06 76 00            [12] 1368 	mov	@r0,#0x00
      003B08 08               [12] 1369 	inc	r0
      003B09 76 00            [12] 1370 	mov	@r0,#0x00
                           00009C  1371 	C$misc.c$133$1$347 ==.
                                   1372 ;	..\COMMON\misc.c:133: delaymstimer.time = ms >> 1;
      003B0B EF               [12] 1373 	mov	a,r7
      003B0C C3               [12] 1374 	clr	c
      003B0D 13               [12] 1375 	rrc	a
      003B0E CE               [12] 1376 	xch	a,r6
      003B0F 13               [12] 1377 	rrc	a
      003B10 CE               [12] 1378 	xch	a,r6
      003B11 FF               [12] 1379 	mov	r7,a
      003B12 8E 04            [24] 1380 	mov	ar4,r6
      003B14 8F 05            [24] 1381 	mov	ar5,r7
      003B16 7E 00            [12] 1382 	mov	r6,#0x00
      003B18 7F 00            [12] 1383 	mov	r7,#0x00
      003B1A 90 02 9A         [24] 1384 	mov	dptr,#(_delaymstimer + 0x0004)
      003B1D EC               [12] 1385 	mov	a,r4
      003B1E F0               [24] 1386 	movx	@dptr,a
      003B1F ED               [12] 1387 	mov	a,r5
      003B20 A3               [24] 1388 	inc	dptr
      003B21 F0               [24] 1389 	movx	@dptr,a
      003B22 EE               [12] 1390 	mov	a,r6
      003B23 A3               [24] 1391 	inc	dptr
      003B24 F0               [24] 1392 	movx	@dptr,a
      003B25 EF               [12] 1393 	mov	a,r7
      003B26 A3               [24] 1394 	inc	dptr
      003B27 F0               [24] 1395 	movx	@dptr,a
                           0000B9  1396 	C$misc.c$134$1$347 ==.
                                   1397 ;	..\COMMON\misc.c:134: x <<= 3;
      003B28 A8 3C            [24] 1398 	mov	r0,_bp
      003B2A 08               [12] 1399 	inc	r0
      003B2B 08               [12] 1400 	inc	r0
      003B2C 08               [12] 1401 	inc	r0
      003B2D 08               [12] 1402 	inc	r0
      003B2E E6               [12] 1403 	mov	a,@r0
      003B2F 18               [12] 1404 	dec	r0
      003B30 C4               [12] 1405 	swap	a
      003B31 03               [12] 1406 	rr	a
      003B32 54 F8            [12] 1407 	anl	a,#0xf8
      003B34 C6               [12] 1408 	xch	a,@r0
      003B35 C4               [12] 1409 	swap	a
      003B36 03               [12] 1410 	rr	a
      003B37 C6               [12] 1411 	xch	a,@r0
      003B38 66               [12] 1412 	xrl	a,@r0
      003B39 C6               [12] 1413 	xch	a,@r0
      003B3A 54 F8            [12] 1414 	anl	a,#0xf8
      003B3C C6               [12] 1415 	xch	a,@r0
      003B3D 66               [12] 1416 	xrl	a,@r0
      003B3E 08               [12] 1417 	inc	r0
      003B3F F6               [12] 1418 	mov	@r0,a
      003B40 18               [12] 1419 	dec	r0
      003B41 18               [12] 1420 	dec	r0
      003B42 E6               [12] 1421 	mov	a,@r0
      003B43 C4               [12] 1422 	swap	a
      003B44 03               [12] 1423 	rr	a
      003B45 54 07            [12] 1424 	anl	a,#0x07
      003B47 08               [12] 1425 	inc	r0
      003B48 46               [12] 1426 	orl	a,@r0
      003B49 F6               [12] 1427 	mov	@r0,a
      003B4A 18               [12] 1428 	dec	r0
      003B4B E6               [12] 1429 	mov	a,@r0
      003B4C 18               [12] 1430 	dec	r0
      003B4D C4               [12] 1431 	swap	a
      003B4E 03               [12] 1432 	rr	a
      003B4F 54 F8            [12] 1433 	anl	a,#0xf8
      003B51 C6               [12] 1434 	xch	a,@r0
      003B52 C4               [12] 1435 	swap	a
      003B53 03               [12] 1436 	rr	a
      003B54 C6               [12] 1437 	xch	a,@r0
      003B55 66               [12] 1438 	xrl	a,@r0
      003B56 C6               [12] 1439 	xch	a,@r0
      003B57 54 F8            [12] 1440 	anl	a,#0xf8
      003B59 C6               [12] 1441 	xch	a,@r0
      003B5A 66               [12] 1442 	xrl	a,@r0
      003B5B 08               [12] 1443 	inc	r0
      003B5C F6               [12] 1444 	mov	@r0,a
                           0000EE  1445 	C$misc.c$135$1$347 ==.
                                   1446 ;	..\COMMON\misc.c:135: delaymstimer.time -= x;
      003B5D A8 3C            [24] 1447 	mov	r0,_bp
      003B5F 08               [12] 1448 	inc	r0
      003B60 EC               [12] 1449 	mov	a,r4
      003B61 C3               [12] 1450 	clr	c
      003B62 96               [12] 1451 	subb	a,@r0
      003B63 FC               [12] 1452 	mov	r4,a
      003B64 ED               [12] 1453 	mov	a,r5
      003B65 08               [12] 1454 	inc	r0
      003B66 96               [12] 1455 	subb	a,@r0
      003B67 FD               [12] 1456 	mov	r5,a
      003B68 EE               [12] 1457 	mov	a,r6
      003B69 08               [12] 1458 	inc	r0
      003B6A 96               [12] 1459 	subb	a,@r0
      003B6B FE               [12] 1460 	mov	r6,a
      003B6C EF               [12] 1461 	mov	a,r7
      003B6D 08               [12] 1462 	inc	r0
      003B6E 96               [12] 1463 	subb	a,@r0
      003B6F FF               [12] 1464 	mov	r7,a
      003B70 90 02 9A         [24] 1465 	mov	dptr,#(_delaymstimer + 0x0004)
      003B73 EC               [12] 1466 	mov	a,r4
      003B74 F0               [24] 1467 	movx	@dptr,a
      003B75 ED               [12] 1468 	mov	a,r5
      003B76 A3               [24] 1469 	inc	dptr
      003B77 F0               [24] 1470 	movx	@dptr,a
      003B78 EE               [12] 1471 	mov	a,r6
      003B79 A3               [24] 1472 	inc	dptr
      003B7A F0               [24] 1473 	movx	@dptr,a
      003B7B EF               [12] 1474 	mov	a,r7
      003B7C A3               [24] 1475 	inc	dptr
      003B7D F0               [24] 1476 	movx	@dptr,a
                           00010F  1477 	C$misc.c$136$1$347 ==.
                                   1478 ;	..\COMMON\misc.c:136: x <<= 3;
      003B7E A8 3C            [24] 1479 	mov	r0,_bp
      003B80 08               [12] 1480 	inc	r0
      003B81 08               [12] 1481 	inc	r0
      003B82 08               [12] 1482 	inc	r0
      003B83 08               [12] 1483 	inc	r0
      003B84 E6               [12] 1484 	mov	a,@r0
      003B85 18               [12] 1485 	dec	r0
      003B86 C4               [12] 1486 	swap	a
      003B87 03               [12] 1487 	rr	a
      003B88 54 F8            [12] 1488 	anl	a,#0xf8
      003B8A C6               [12] 1489 	xch	a,@r0
      003B8B C4               [12] 1490 	swap	a
      003B8C 03               [12] 1491 	rr	a
      003B8D C6               [12] 1492 	xch	a,@r0
      003B8E 66               [12] 1493 	xrl	a,@r0
      003B8F C6               [12] 1494 	xch	a,@r0
      003B90 54 F8            [12] 1495 	anl	a,#0xf8
      003B92 C6               [12] 1496 	xch	a,@r0
      003B93 66               [12] 1497 	xrl	a,@r0
      003B94 08               [12] 1498 	inc	r0
      003B95 F6               [12] 1499 	mov	@r0,a
      003B96 18               [12] 1500 	dec	r0
      003B97 18               [12] 1501 	dec	r0
      003B98 E6               [12] 1502 	mov	a,@r0
      003B99 C4               [12] 1503 	swap	a
      003B9A 03               [12] 1504 	rr	a
      003B9B 54 07            [12] 1505 	anl	a,#0x07
      003B9D 08               [12] 1506 	inc	r0
      003B9E 46               [12] 1507 	orl	a,@r0
      003B9F F6               [12] 1508 	mov	@r0,a
      003BA0 18               [12] 1509 	dec	r0
      003BA1 E6               [12] 1510 	mov	a,@r0
      003BA2 18               [12] 1511 	dec	r0
      003BA3 C4               [12] 1512 	swap	a
      003BA4 03               [12] 1513 	rr	a
      003BA5 54 F8            [12] 1514 	anl	a,#0xf8
      003BA7 C6               [12] 1515 	xch	a,@r0
      003BA8 C4               [12] 1516 	swap	a
      003BA9 03               [12] 1517 	rr	a
      003BAA C6               [12] 1518 	xch	a,@r0
      003BAB 66               [12] 1519 	xrl	a,@r0
      003BAC C6               [12] 1520 	xch	a,@r0
      003BAD 54 F8            [12] 1521 	anl	a,#0xf8
      003BAF C6               [12] 1522 	xch	a,@r0
      003BB0 66               [12] 1523 	xrl	a,@r0
      003BB1 08               [12] 1524 	inc	r0
      003BB2 F6               [12] 1525 	mov	@r0,a
                           000144  1526 	C$misc.c$137$1$347 ==.
                                   1527 ;	..\COMMON\misc.c:137: delaymstimer.time += x;
      003BB3 A8 3C            [24] 1528 	mov	r0,_bp
      003BB5 08               [12] 1529 	inc	r0
      003BB6 E6               [12] 1530 	mov	a,@r0
      003BB7 2C               [12] 1531 	add	a,r4
      003BB8 FC               [12] 1532 	mov	r4,a
      003BB9 08               [12] 1533 	inc	r0
      003BBA E6               [12] 1534 	mov	a,@r0
      003BBB 3D               [12] 1535 	addc	a,r5
      003BBC FD               [12] 1536 	mov	r5,a
      003BBD 08               [12] 1537 	inc	r0
      003BBE E6               [12] 1538 	mov	a,@r0
      003BBF 3E               [12] 1539 	addc	a,r6
      003BC0 FE               [12] 1540 	mov	r6,a
      003BC1 08               [12] 1541 	inc	r0
      003BC2 E6               [12] 1542 	mov	a,@r0
      003BC3 3F               [12] 1543 	addc	a,r7
      003BC4 FF               [12] 1544 	mov	r7,a
      003BC5 90 02 9A         [24] 1545 	mov	dptr,#(_delaymstimer + 0x0004)
      003BC8 EC               [12] 1546 	mov	a,r4
      003BC9 F0               [24] 1547 	movx	@dptr,a
      003BCA ED               [12] 1548 	mov	a,r5
      003BCB A3               [24] 1549 	inc	dptr
      003BCC F0               [24] 1550 	movx	@dptr,a
      003BCD EE               [12] 1551 	mov	a,r6
      003BCE A3               [24] 1552 	inc	dptr
      003BCF F0               [24] 1553 	movx	@dptr,a
      003BD0 EF               [12] 1554 	mov	a,r7
      003BD1 A3               [24] 1555 	inc	dptr
      003BD2 F0               [24] 1556 	movx	@dptr,a
                           000164  1557 	C$misc.c$138$1$347 ==.
                                   1558 ;	..\COMMON\misc.c:138: x <<= 2;
      003BD3 A8 3C            [24] 1559 	mov	r0,_bp
      003BD5 08               [12] 1560 	inc	r0
      003BD6 E6               [12] 1561 	mov	a,@r0
      003BD7 25 E0            [12] 1562 	add	a,acc
      003BD9 F6               [12] 1563 	mov	@r0,a
      003BDA 08               [12] 1564 	inc	r0
      003BDB E6               [12] 1565 	mov	a,@r0
      003BDC 33               [12] 1566 	rlc	a
      003BDD F6               [12] 1567 	mov	@r0,a
      003BDE 08               [12] 1568 	inc	r0
      003BDF E6               [12] 1569 	mov	a,@r0
      003BE0 33               [12] 1570 	rlc	a
      003BE1 F6               [12] 1571 	mov	@r0,a
      003BE2 08               [12] 1572 	inc	r0
      003BE3 E6               [12] 1573 	mov	a,@r0
      003BE4 33               [12] 1574 	rlc	a
      003BE5 F6               [12] 1575 	mov	@r0,a
      003BE6 18               [12] 1576 	dec	r0
      003BE7 18               [12] 1577 	dec	r0
      003BE8 18               [12] 1578 	dec	r0
      003BE9 E6               [12] 1579 	mov	a,@r0
      003BEA 25 E0            [12] 1580 	add	a,acc
      003BEC F6               [12] 1581 	mov	@r0,a
      003BED 08               [12] 1582 	inc	r0
      003BEE E6               [12] 1583 	mov	a,@r0
      003BEF 33               [12] 1584 	rlc	a
      003BF0 F6               [12] 1585 	mov	@r0,a
      003BF1 08               [12] 1586 	inc	r0
      003BF2 E6               [12] 1587 	mov	a,@r0
      003BF3 33               [12] 1588 	rlc	a
      003BF4 F6               [12] 1589 	mov	@r0,a
      003BF5 08               [12] 1590 	inc	r0
      003BF6 E6               [12] 1591 	mov	a,@r0
      003BF7 33               [12] 1592 	rlc	a
      003BF8 F6               [12] 1593 	mov	@r0,a
                           00018A  1594 	C$misc.c$139$1$347 ==.
                                   1595 ;	..\COMMON\misc.c:139: delaymstimer.time += x;
      003BF9 A8 3C            [24] 1596 	mov	r0,_bp
      003BFB 08               [12] 1597 	inc	r0
      003BFC E6               [12] 1598 	mov	a,@r0
      003BFD 2C               [12] 1599 	add	a,r4
      003BFE FC               [12] 1600 	mov	r4,a
      003BFF 08               [12] 1601 	inc	r0
      003C00 E6               [12] 1602 	mov	a,@r0
      003C01 3D               [12] 1603 	addc	a,r5
      003C02 FD               [12] 1604 	mov	r5,a
      003C03 08               [12] 1605 	inc	r0
      003C04 E6               [12] 1606 	mov	a,@r0
      003C05 3E               [12] 1607 	addc	a,r6
      003C06 FE               [12] 1608 	mov	r6,a
      003C07 08               [12] 1609 	inc	r0
      003C08 E6               [12] 1610 	mov	a,@r0
      003C09 3F               [12] 1611 	addc	a,r7
      003C0A FF               [12] 1612 	mov	r7,a
      003C0B 90 02 9A         [24] 1613 	mov	dptr,#(_delaymstimer + 0x0004)
      003C0E EC               [12] 1614 	mov	a,r4
      003C0F F0               [24] 1615 	movx	@dptr,a
      003C10 ED               [12] 1616 	mov	a,r5
      003C11 A3               [24] 1617 	inc	dptr
      003C12 F0               [24] 1618 	movx	@dptr,a
      003C13 EE               [12] 1619 	mov	a,r6
      003C14 A3               [24] 1620 	inc	dptr
      003C15 F0               [24] 1621 	movx	@dptr,a
      003C16 EF               [12] 1622 	mov	a,r7
      003C17 A3               [24] 1623 	inc	dptr
      003C18 F0               [24] 1624 	movx	@dptr,a
                           0001AA  1625 	C$misc.c$140$1$347 ==.
                                   1626 ;	..\COMMON\misc.c:140: delaymstimer.handler = delayms_callback;
      003C19 90 02 98         [24] 1627 	mov	dptr,#(_delaymstimer + 0x0002)
      003C1C 74 D9            [12] 1628 	mov	a,#_delayms_callback
      003C1E F0               [24] 1629 	movx	@dptr,a
      003C1F 74 3A            [12] 1630 	mov	a,#(_delayms_callback >> 8)
      003C21 A3               [24] 1631 	inc	dptr
      003C22 F0               [24] 1632 	movx	@dptr,a
                           0001B4  1633 	C$misc.c$141$1$347 ==.
                                   1634 ;	..\COMMON\misc.c:141: wtimer1_addrelative(&delaymstimer);
      003C23 90 02 96         [24] 1635 	mov	dptr,#_delaymstimer
      003C26 12 4C 7D         [24] 1636 	lcall	_wtimer1_addrelative
                           0001BA  1637 	C$misc.c$142$1$347 ==.
                                   1638 ;	..\COMMON\misc.c:142: wtimer_runcallbacks();
      003C29 12 4B 27         [24] 1639 	lcall	_wtimer_runcallbacks
                           0001BD  1640 	C$misc.c$143$1$347 ==.
                                   1641 ;	..\COMMON\misc.c:143: do {
      003C2C                       1642 00101$:
                           0001BD  1643 	C$misc.c$144$2$348 ==.
                                   1644 ;	..\COMMON\misc.c:144: wtimer_idle(WTFLAG_CANSTANDBY);
      003C2C 75 82 02         [24] 1645 	mov	dpl,#0x02
      003C2F 12 4A A3         [24] 1646 	lcall	_wtimer_idle
                           0001C3  1647 	C$misc.c$145$2$348 ==.
                                   1648 ;	..\COMMON\misc.c:145: wtimer_runcallbacks();
      003C32 12 4B 27         [24] 1649 	lcall	_wtimer_runcallbacks
                           0001C6  1650 	C$misc.c$146$1$347 ==.
                                   1651 ;	..\COMMON\misc.c:146: } while (delaymstimer.handler);
      003C35 90 02 98         [24] 1652 	mov	dptr,#(_delaymstimer + 0x0002)
      003C38 E0               [24] 1653 	movx	a,@dptr
      003C39 FE               [12] 1654 	mov	r6,a
      003C3A A3               [24] 1655 	inc	dptr
      003C3B E0               [24] 1656 	movx	a,@dptr
      003C3C FF               [12] 1657 	mov	r7,a
      003C3D 4E               [12] 1658 	orl	a,r6
      003C3E 70 EC            [24] 1659 	jnz	00101$
      003C40 85 3C 81         [24] 1660 	mov	sp,_bp
      003C43 D0 3C            [24] 1661 	pop	_bp
                           0001D6  1662 	C$misc.c$147$1$347 ==.
                           0001D6  1663 	XG$delay_ms$0$0 ==.
      003C45 22               [24] 1664 	ret
                                   1665 	.area CSEG    (CODE)
                                   1666 	.area CONST   (CODE)
                           000000  1667 Fmisc$errtbl$0$0 == .
      005C3F                       1668 _errtbl:
      005C3F 01                    1669 	.db #0x01	; 1
      005C40 57 5C                 1670 	.byte __str_0, (__str_0 >> 8)
      005C42 02                    1671 	.db #0x02	; 2
      005C43 68 5C                 1672 	.byte __str_1, (__str_1 >> 8)
      005C45 03                    1673 	.db #0x03	; 3
      005C46 70 5C                 1674 	.byte __str_2, (__str_2 >> 8)
      005C48 04                    1675 	.db #0x04	; 4
      005C49 7B 5C                 1676 	.byte __str_3, (__str_3 >> 8)
      005C4B 05                    1677 	.db #0x05	; 5
      005C4C 86 5C                 1678 	.byte __str_4, (__str_4 >> 8)
      005C4E 06                    1679 	.db #0x06	; 6
      005C4F 97 5C                 1680 	.byte __str_5, (__str_5 >> 8)
      005C51 07                    1681 	.db #0x07	; 7
      005C52 A2 5C                 1682 	.byte __str_6, (__str_6 >> 8)
      005C54 00                    1683 	.db #0x00	; 0
      005C55 00 00                 1684 	.byte #0x00,#0x00
                           000018  1685 Fmisc$__str_0$0$0 == .
      005C57                       1686 __str_0:
      005C57 45 3A 20 6E 6F 74 20  1687 	.ascii "E: not supported"
             73 75 70 70 6F 72 74
             65 64
      005C67 00                    1688 	.db 0x00
                           000029  1689 Fmisc$__str_1$0$0 == .
      005C68                       1690 __str_1:
      005C68 45 3A 20 62 75 73 79  1691 	.ascii "E: busy"
      005C6F 00                    1692 	.db 0x00
                           000031  1693 Fmisc$__str_2$0$0 == .
      005C70                       1694 __str_2:
      005C70 45 3A 20 74 69 6D 65  1695 	.ascii "E: timeout"
             6F 75 74
      005C7A 00                    1696 	.db 0x00
                           00003C  1697 Fmisc$__str_3$0$0 == .
      005C7B                       1698 __str_3:
      005C7B 45 3A 20 69 6E 76 61  1699 	.ascii "E: invalid"
             6C 69 64
      005C85 00                    1700 	.db 0x00
                           000047  1701 Fmisc$__str_4$0$0 == .
      005C86                       1702 __str_4:
      005C86 45 3A 20 6E 6F 20 63  1703 	.ascii "E: no chip found"
             68 69 70 20 66 6F 75
             6E 64
      005C96 00                    1704 	.db 0x00
                           000058  1705 Fmisc$__str_5$0$0 == .
      005C97                       1706 __str_5:
      005C97 45 3A 20 72 61 6E 67  1707 	.ascii "E: ranging"
             69 6E 67
      005CA1 00                    1708 	.db 0x00
                           000063  1709 Fmisc$__str_6$0$0 == .
      005CA2                       1710 __str_6:
      005CA2 45 3A 20 6C 6F 63 6B  1711 	.ascii "E: lock lost"
             20 6C 6F 73 74
      005CAE 00                    1712 	.db 0x00
                                   1713 	.area XINIT   (CODE)
                                   1714 	.area CABS    (ABS,CODE)
