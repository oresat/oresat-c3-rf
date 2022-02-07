                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module configmaster
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _lpxosc_settlingtime
                                     12 	.globl _demo_packet
                                     13 	.globl _framing_counter_pos
                                     14 	.globl _framing_insert_counter
                                     15 	.globl _localaddr
                                     16 	.globl _remoteaddr
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
                                    373 ;--------------------------------------------------------
                                    374 ; special function registers
                                    375 ;--------------------------------------------------------
                                    376 	.area RSEG    (ABS,DATA)
      000000                        377 	.org 0x0000
                           0000E0   378 G$ACC$0$0 == 0x00e0
                           0000E0   379 _ACC	=	0x00e0
                           0000F0   380 G$B$0$0 == 0x00f0
                           0000F0   381 _B	=	0x00f0
                           000083   382 G$DPH$0$0 == 0x0083
                           000083   383 _DPH	=	0x0083
                           000085   384 G$DPH1$0$0 == 0x0085
                           000085   385 _DPH1	=	0x0085
                           000082   386 G$DPL$0$0 == 0x0082
                           000082   387 _DPL	=	0x0082
                           000084   388 G$DPL1$0$0 == 0x0084
                           000084   389 _DPL1	=	0x0084
                           008382   390 G$DPTR0$0$0 == 0x8382
                           008382   391 _DPTR0	=	0x8382
                           008584   392 G$DPTR1$0$0 == 0x8584
                           008584   393 _DPTR1	=	0x8584
                           000086   394 G$DPS$0$0 == 0x0086
                           000086   395 _DPS	=	0x0086
                           0000A0   396 G$E2IE$0$0 == 0x00a0
                           0000A0   397 _E2IE	=	0x00a0
                           0000C0   398 G$E2IP$0$0 == 0x00c0
                           0000C0   399 _E2IP	=	0x00c0
                           000098   400 G$EIE$0$0 == 0x0098
                           000098   401 _EIE	=	0x0098
                           0000B0   402 G$EIP$0$0 == 0x00b0
                           0000B0   403 _EIP	=	0x00b0
                           0000A8   404 G$IE$0$0 == 0x00a8
                           0000A8   405 _IE	=	0x00a8
                           0000B8   406 G$IP$0$0 == 0x00b8
                           0000B8   407 _IP	=	0x00b8
                           000087   408 G$PCON$0$0 == 0x0087
                           000087   409 _PCON	=	0x0087
                           0000D0   410 G$PSW$0$0 == 0x00d0
                           0000D0   411 _PSW	=	0x00d0
                           000081   412 G$SP$0$0 == 0x0081
                           000081   413 _SP	=	0x0081
                           0000D9   414 G$XPAGE$0$0 == 0x00d9
                           0000D9   415 _XPAGE	=	0x00d9
                           0000D9   416 G$_XPAGE$0$0 == 0x00d9
                           0000D9   417 __XPAGE	=	0x00d9
                           0000CA   418 G$ADCCH0CONFIG$0$0 == 0x00ca
                           0000CA   419 _ADCCH0CONFIG	=	0x00ca
                           0000CB   420 G$ADCCH1CONFIG$0$0 == 0x00cb
                           0000CB   421 _ADCCH1CONFIG	=	0x00cb
                           0000D2   422 G$ADCCH2CONFIG$0$0 == 0x00d2
                           0000D2   423 _ADCCH2CONFIG	=	0x00d2
                           0000D3   424 G$ADCCH3CONFIG$0$0 == 0x00d3
                           0000D3   425 _ADCCH3CONFIG	=	0x00d3
                           0000D1   426 G$ADCCLKSRC$0$0 == 0x00d1
                           0000D1   427 _ADCCLKSRC	=	0x00d1
                           0000C9   428 G$ADCCONV$0$0 == 0x00c9
                           0000C9   429 _ADCCONV	=	0x00c9
                           0000E1   430 G$ANALOGCOMP$0$0 == 0x00e1
                           0000E1   431 _ANALOGCOMP	=	0x00e1
                           0000C6   432 G$CLKCON$0$0 == 0x00c6
                           0000C6   433 _CLKCON	=	0x00c6
                           0000C7   434 G$CLKSTAT$0$0 == 0x00c7
                           0000C7   435 _CLKSTAT	=	0x00c7
                           000097   436 G$CODECONFIG$0$0 == 0x0097
                           000097   437 _CODECONFIG	=	0x0097
                           0000E3   438 G$DBGLNKBUF$0$0 == 0x00e3
                           0000E3   439 _DBGLNKBUF	=	0x00e3
                           0000E2   440 G$DBGLNKSTAT$0$0 == 0x00e2
                           0000E2   441 _DBGLNKSTAT	=	0x00e2
                           000089   442 G$DIRA$0$0 == 0x0089
                           000089   443 _DIRA	=	0x0089
                           00008A   444 G$DIRB$0$0 == 0x008a
                           00008A   445 _DIRB	=	0x008a
                           00008B   446 G$DIRC$0$0 == 0x008b
                           00008B   447 _DIRC	=	0x008b
                           00008E   448 G$DIRR$0$0 == 0x008e
                           00008E   449 _DIRR	=	0x008e
                           0000C8   450 G$PINA$0$0 == 0x00c8
                           0000C8   451 _PINA	=	0x00c8
                           0000E8   452 G$PINB$0$0 == 0x00e8
                           0000E8   453 _PINB	=	0x00e8
                           0000F8   454 G$PINC$0$0 == 0x00f8
                           0000F8   455 _PINC	=	0x00f8
                           00008D   456 G$PINR$0$0 == 0x008d
                           00008D   457 _PINR	=	0x008d
                           000080   458 G$PORTA$0$0 == 0x0080
                           000080   459 _PORTA	=	0x0080
                           000088   460 G$PORTB$0$0 == 0x0088
                           000088   461 _PORTB	=	0x0088
                           000090   462 G$PORTC$0$0 == 0x0090
                           000090   463 _PORTC	=	0x0090
                           00008C   464 G$PORTR$0$0 == 0x008c
                           00008C   465 _PORTR	=	0x008c
                           0000CE   466 G$IC0CAPT0$0$0 == 0x00ce
                           0000CE   467 _IC0CAPT0	=	0x00ce
                           0000CF   468 G$IC0CAPT1$0$0 == 0x00cf
                           0000CF   469 _IC0CAPT1	=	0x00cf
                           00CFCE   470 G$IC0CAPT$0$0 == 0xcfce
                           00CFCE   471 _IC0CAPT	=	0xcfce
                           0000CC   472 G$IC0MODE$0$0 == 0x00cc
                           0000CC   473 _IC0MODE	=	0x00cc
                           0000CD   474 G$IC0STATUS$0$0 == 0x00cd
                           0000CD   475 _IC0STATUS	=	0x00cd
                           0000D6   476 G$IC1CAPT0$0$0 == 0x00d6
                           0000D6   477 _IC1CAPT0	=	0x00d6
                           0000D7   478 G$IC1CAPT1$0$0 == 0x00d7
                           0000D7   479 _IC1CAPT1	=	0x00d7
                           00D7D6   480 G$IC1CAPT$0$0 == 0xd7d6
                           00D7D6   481 _IC1CAPT	=	0xd7d6
                           0000D4   482 G$IC1MODE$0$0 == 0x00d4
                           0000D4   483 _IC1MODE	=	0x00d4
                           0000D5   484 G$IC1STATUS$0$0 == 0x00d5
                           0000D5   485 _IC1STATUS	=	0x00d5
                           000092   486 G$NVADDR0$0$0 == 0x0092
                           000092   487 _NVADDR0	=	0x0092
                           000093   488 G$NVADDR1$0$0 == 0x0093
                           000093   489 _NVADDR1	=	0x0093
                           009392   490 G$NVADDR$0$0 == 0x9392
                           009392   491 _NVADDR	=	0x9392
                           000094   492 G$NVDATA0$0$0 == 0x0094
                           000094   493 _NVDATA0	=	0x0094
                           000095   494 G$NVDATA1$0$0 == 0x0095
                           000095   495 _NVDATA1	=	0x0095
                           009594   496 G$NVDATA$0$0 == 0x9594
                           009594   497 _NVDATA	=	0x9594
                           000096   498 G$NVKEY$0$0 == 0x0096
                           000096   499 _NVKEY	=	0x0096
                           000091   500 G$NVSTATUS$0$0 == 0x0091
                           000091   501 _NVSTATUS	=	0x0091
                           0000BC   502 G$OC0COMP0$0$0 == 0x00bc
                           0000BC   503 _OC0COMP0	=	0x00bc
                           0000BD   504 G$OC0COMP1$0$0 == 0x00bd
                           0000BD   505 _OC0COMP1	=	0x00bd
                           00BDBC   506 G$OC0COMP$0$0 == 0xbdbc
                           00BDBC   507 _OC0COMP	=	0xbdbc
                           0000B9   508 G$OC0MODE$0$0 == 0x00b9
                           0000B9   509 _OC0MODE	=	0x00b9
                           0000BA   510 G$OC0PIN$0$0 == 0x00ba
                           0000BA   511 _OC0PIN	=	0x00ba
                           0000BB   512 G$OC0STATUS$0$0 == 0x00bb
                           0000BB   513 _OC0STATUS	=	0x00bb
                           0000C4   514 G$OC1COMP0$0$0 == 0x00c4
                           0000C4   515 _OC1COMP0	=	0x00c4
                           0000C5   516 G$OC1COMP1$0$0 == 0x00c5
                           0000C5   517 _OC1COMP1	=	0x00c5
                           00C5C4   518 G$OC1COMP$0$0 == 0xc5c4
                           00C5C4   519 _OC1COMP	=	0xc5c4
                           0000C1   520 G$OC1MODE$0$0 == 0x00c1
                           0000C1   521 _OC1MODE	=	0x00c1
                           0000C2   522 G$OC1PIN$0$0 == 0x00c2
                           0000C2   523 _OC1PIN	=	0x00c2
                           0000C3   524 G$OC1STATUS$0$0 == 0x00c3
                           0000C3   525 _OC1STATUS	=	0x00c3
                           0000B1   526 G$RADIOACC$0$0 == 0x00b1
                           0000B1   527 _RADIOACC	=	0x00b1
                           0000B3   528 G$RADIOADDR0$0$0 == 0x00b3
                           0000B3   529 _RADIOADDR0	=	0x00b3
                           0000B2   530 G$RADIOADDR1$0$0 == 0x00b2
                           0000B2   531 _RADIOADDR1	=	0x00b2
                           00B2B3   532 G$RADIOADDR$0$0 == 0xb2b3
                           00B2B3   533 _RADIOADDR	=	0xb2b3
                           0000B7   534 G$RADIODATA0$0$0 == 0x00b7
                           0000B7   535 _RADIODATA0	=	0x00b7
                           0000B6   536 G$RADIODATA1$0$0 == 0x00b6
                           0000B6   537 _RADIODATA1	=	0x00b6
                           0000B5   538 G$RADIODATA2$0$0 == 0x00b5
                           0000B5   539 _RADIODATA2	=	0x00b5
                           0000B4   540 G$RADIODATA3$0$0 == 0x00b4
                           0000B4   541 _RADIODATA3	=	0x00b4
                           B4B5B6B7   542 G$RADIODATA$0$0 == 0xb4b5b6b7
                           B4B5B6B7   543 _RADIODATA	=	0xb4b5b6b7
                           0000BE   544 G$RADIOSTAT0$0$0 == 0x00be
                           0000BE   545 _RADIOSTAT0	=	0x00be
                           0000BF   546 G$RADIOSTAT1$0$0 == 0x00bf
                           0000BF   547 _RADIOSTAT1	=	0x00bf
                           00BFBE   548 G$RADIOSTAT$0$0 == 0xbfbe
                           00BFBE   549 _RADIOSTAT	=	0xbfbe
                           0000DF   550 G$SPCLKSRC$0$0 == 0x00df
                           0000DF   551 _SPCLKSRC	=	0x00df
                           0000DC   552 G$SPMODE$0$0 == 0x00dc
                           0000DC   553 _SPMODE	=	0x00dc
                           0000DE   554 G$SPSHREG$0$0 == 0x00de
                           0000DE   555 _SPSHREG	=	0x00de
                           0000DD   556 G$SPSTATUS$0$0 == 0x00dd
                           0000DD   557 _SPSTATUS	=	0x00dd
                           00009A   558 G$T0CLKSRC$0$0 == 0x009a
                           00009A   559 _T0CLKSRC	=	0x009a
                           00009C   560 G$T0CNT0$0$0 == 0x009c
                           00009C   561 _T0CNT0	=	0x009c
                           00009D   562 G$T0CNT1$0$0 == 0x009d
                           00009D   563 _T0CNT1	=	0x009d
                           009D9C   564 G$T0CNT$0$0 == 0x9d9c
                           009D9C   565 _T0CNT	=	0x9d9c
                           000099   566 G$T0MODE$0$0 == 0x0099
                           000099   567 _T0MODE	=	0x0099
                           00009E   568 G$T0PERIOD0$0$0 == 0x009e
                           00009E   569 _T0PERIOD0	=	0x009e
                           00009F   570 G$T0PERIOD1$0$0 == 0x009f
                           00009F   571 _T0PERIOD1	=	0x009f
                           009F9E   572 G$T0PERIOD$0$0 == 0x9f9e
                           009F9E   573 _T0PERIOD	=	0x9f9e
                           00009B   574 G$T0STATUS$0$0 == 0x009b
                           00009B   575 _T0STATUS	=	0x009b
                           0000A2   576 G$T1CLKSRC$0$0 == 0x00a2
                           0000A2   577 _T1CLKSRC	=	0x00a2
                           0000A4   578 G$T1CNT0$0$0 == 0x00a4
                           0000A4   579 _T1CNT0	=	0x00a4
                           0000A5   580 G$T1CNT1$0$0 == 0x00a5
                           0000A5   581 _T1CNT1	=	0x00a5
                           00A5A4   582 G$T1CNT$0$0 == 0xa5a4
                           00A5A4   583 _T1CNT	=	0xa5a4
                           0000A1   584 G$T1MODE$0$0 == 0x00a1
                           0000A1   585 _T1MODE	=	0x00a1
                           0000A6   586 G$T1PERIOD0$0$0 == 0x00a6
                           0000A6   587 _T1PERIOD0	=	0x00a6
                           0000A7   588 G$T1PERIOD1$0$0 == 0x00a7
                           0000A7   589 _T1PERIOD1	=	0x00a7
                           00A7A6   590 G$T1PERIOD$0$0 == 0xa7a6
                           00A7A6   591 _T1PERIOD	=	0xa7a6
                           0000A3   592 G$T1STATUS$0$0 == 0x00a3
                           0000A3   593 _T1STATUS	=	0x00a3
                           0000AA   594 G$T2CLKSRC$0$0 == 0x00aa
                           0000AA   595 _T2CLKSRC	=	0x00aa
                           0000AC   596 G$T2CNT0$0$0 == 0x00ac
                           0000AC   597 _T2CNT0	=	0x00ac
                           0000AD   598 G$T2CNT1$0$0 == 0x00ad
                           0000AD   599 _T2CNT1	=	0x00ad
                           00ADAC   600 G$T2CNT$0$0 == 0xadac
                           00ADAC   601 _T2CNT	=	0xadac
                           0000A9   602 G$T2MODE$0$0 == 0x00a9
                           0000A9   603 _T2MODE	=	0x00a9
                           0000AE   604 G$T2PERIOD0$0$0 == 0x00ae
                           0000AE   605 _T2PERIOD0	=	0x00ae
                           0000AF   606 G$T2PERIOD1$0$0 == 0x00af
                           0000AF   607 _T2PERIOD1	=	0x00af
                           00AFAE   608 G$T2PERIOD$0$0 == 0xafae
                           00AFAE   609 _T2PERIOD	=	0xafae
                           0000AB   610 G$T2STATUS$0$0 == 0x00ab
                           0000AB   611 _T2STATUS	=	0x00ab
                           0000E4   612 G$U0CTRL$0$0 == 0x00e4
                           0000E4   613 _U0CTRL	=	0x00e4
                           0000E7   614 G$U0MODE$0$0 == 0x00e7
                           0000E7   615 _U0MODE	=	0x00e7
                           0000E6   616 G$U0SHREG$0$0 == 0x00e6
                           0000E6   617 _U0SHREG	=	0x00e6
                           0000E5   618 G$U0STATUS$0$0 == 0x00e5
                           0000E5   619 _U0STATUS	=	0x00e5
                           0000EC   620 G$U1CTRL$0$0 == 0x00ec
                           0000EC   621 _U1CTRL	=	0x00ec
                           0000EF   622 G$U1MODE$0$0 == 0x00ef
                           0000EF   623 _U1MODE	=	0x00ef
                           0000EE   624 G$U1SHREG$0$0 == 0x00ee
                           0000EE   625 _U1SHREG	=	0x00ee
                           0000ED   626 G$U1STATUS$0$0 == 0x00ed
                           0000ED   627 _U1STATUS	=	0x00ed
                           0000DA   628 G$WDTCFG$0$0 == 0x00da
                           0000DA   629 _WDTCFG	=	0x00da
                           0000DB   630 G$WDTRESET$0$0 == 0x00db
                           0000DB   631 _WDTRESET	=	0x00db
                           0000F1   632 G$WTCFGA$0$0 == 0x00f1
                           0000F1   633 _WTCFGA	=	0x00f1
                           0000F9   634 G$WTCFGB$0$0 == 0x00f9
                           0000F9   635 _WTCFGB	=	0x00f9
                           0000F2   636 G$WTCNTA0$0$0 == 0x00f2
                           0000F2   637 _WTCNTA0	=	0x00f2
                           0000F3   638 G$WTCNTA1$0$0 == 0x00f3
                           0000F3   639 _WTCNTA1	=	0x00f3
                           00F3F2   640 G$WTCNTA$0$0 == 0xf3f2
                           00F3F2   641 _WTCNTA	=	0xf3f2
                           0000FA   642 G$WTCNTB0$0$0 == 0x00fa
                           0000FA   643 _WTCNTB0	=	0x00fa
                           0000FB   644 G$WTCNTB1$0$0 == 0x00fb
                           0000FB   645 _WTCNTB1	=	0x00fb
                           00FBFA   646 G$WTCNTB$0$0 == 0xfbfa
                           00FBFA   647 _WTCNTB	=	0xfbfa
                           0000EB   648 G$WTCNTR1$0$0 == 0x00eb
                           0000EB   649 _WTCNTR1	=	0x00eb
                           0000F4   650 G$WTEVTA0$0$0 == 0x00f4
                           0000F4   651 _WTEVTA0	=	0x00f4
                           0000F5   652 G$WTEVTA1$0$0 == 0x00f5
                           0000F5   653 _WTEVTA1	=	0x00f5
                           00F5F4   654 G$WTEVTA$0$0 == 0xf5f4
                           00F5F4   655 _WTEVTA	=	0xf5f4
                           0000F6   656 G$WTEVTB0$0$0 == 0x00f6
                           0000F6   657 _WTEVTB0	=	0x00f6
                           0000F7   658 G$WTEVTB1$0$0 == 0x00f7
                           0000F7   659 _WTEVTB1	=	0x00f7
                           00F7F6   660 G$WTEVTB$0$0 == 0xf7f6
                           00F7F6   661 _WTEVTB	=	0xf7f6
                           0000FC   662 G$WTEVTC0$0$0 == 0x00fc
                           0000FC   663 _WTEVTC0	=	0x00fc
                           0000FD   664 G$WTEVTC1$0$0 == 0x00fd
                           0000FD   665 _WTEVTC1	=	0x00fd
                           00FDFC   666 G$WTEVTC$0$0 == 0xfdfc
                           00FDFC   667 _WTEVTC	=	0xfdfc
                           0000FE   668 G$WTEVTD0$0$0 == 0x00fe
                           0000FE   669 _WTEVTD0	=	0x00fe
                           0000FF   670 G$WTEVTD1$0$0 == 0x00ff
                           0000FF   671 _WTEVTD1	=	0x00ff
                           00FFFE   672 G$WTEVTD$0$0 == 0xfffe
                           00FFFE   673 _WTEVTD	=	0xfffe
                           0000E9   674 G$WTIRQEN$0$0 == 0x00e9
                           0000E9   675 _WTIRQEN	=	0x00e9
                           0000EA   676 G$WTSTAT$0$0 == 0x00ea
                           0000EA   677 _WTSTAT	=	0x00ea
                                    678 ;--------------------------------------------------------
                                    679 ; special function bits
                                    680 ;--------------------------------------------------------
                                    681 	.area RSEG    (ABS,DATA)
      000000                        682 	.org 0x0000
                           0000E0   683 G$ACC_0$0$0 == 0x00e0
                           0000E0   684 _ACC_0	=	0x00e0
                           0000E1   685 G$ACC_1$0$0 == 0x00e1
                           0000E1   686 _ACC_1	=	0x00e1
                           0000E2   687 G$ACC_2$0$0 == 0x00e2
                           0000E2   688 _ACC_2	=	0x00e2
                           0000E3   689 G$ACC_3$0$0 == 0x00e3
                           0000E3   690 _ACC_3	=	0x00e3
                           0000E4   691 G$ACC_4$0$0 == 0x00e4
                           0000E4   692 _ACC_4	=	0x00e4
                           0000E5   693 G$ACC_5$0$0 == 0x00e5
                           0000E5   694 _ACC_5	=	0x00e5
                           0000E6   695 G$ACC_6$0$0 == 0x00e6
                           0000E6   696 _ACC_6	=	0x00e6
                           0000E7   697 G$ACC_7$0$0 == 0x00e7
                           0000E7   698 _ACC_7	=	0x00e7
                           0000F0   699 G$B_0$0$0 == 0x00f0
                           0000F0   700 _B_0	=	0x00f0
                           0000F1   701 G$B_1$0$0 == 0x00f1
                           0000F1   702 _B_1	=	0x00f1
                           0000F2   703 G$B_2$0$0 == 0x00f2
                           0000F2   704 _B_2	=	0x00f2
                           0000F3   705 G$B_3$0$0 == 0x00f3
                           0000F3   706 _B_3	=	0x00f3
                           0000F4   707 G$B_4$0$0 == 0x00f4
                           0000F4   708 _B_4	=	0x00f4
                           0000F5   709 G$B_5$0$0 == 0x00f5
                           0000F5   710 _B_5	=	0x00f5
                           0000F6   711 G$B_6$0$0 == 0x00f6
                           0000F6   712 _B_6	=	0x00f6
                           0000F7   713 G$B_7$0$0 == 0x00f7
                           0000F7   714 _B_7	=	0x00f7
                           0000A0   715 G$E2IE_0$0$0 == 0x00a0
                           0000A0   716 _E2IE_0	=	0x00a0
                           0000A1   717 G$E2IE_1$0$0 == 0x00a1
                           0000A1   718 _E2IE_1	=	0x00a1
                           0000A2   719 G$E2IE_2$0$0 == 0x00a2
                           0000A2   720 _E2IE_2	=	0x00a2
                           0000A3   721 G$E2IE_3$0$0 == 0x00a3
                           0000A3   722 _E2IE_3	=	0x00a3
                           0000A4   723 G$E2IE_4$0$0 == 0x00a4
                           0000A4   724 _E2IE_4	=	0x00a4
                           0000A5   725 G$E2IE_5$0$0 == 0x00a5
                           0000A5   726 _E2IE_5	=	0x00a5
                           0000A6   727 G$E2IE_6$0$0 == 0x00a6
                           0000A6   728 _E2IE_6	=	0x00a6
                           0000A7   729 G$E2IE_7$0$0 == 0x00a7
                           0000A7   730 _E2IE_7	=	0x00a7
                           0000C0   731 G$E2IP_0$0$0 == 0x00c0
                           0000C0   732 _E2IP_0	=	0x00c0
                           0000C1   733 G$E2IP_1$0$0 == 0x00c1
                           0000C1   734 _E2IP_1	=	0x00c1
                           0000C2   735 G$E2IP_2$0$0 == 0x00c2
                           0000C2   736 _E2IP_2	=	0x00c2
                           0000C3   737 G$E2IP_3$0$0 == 0x00c3
                           0000C3   738 _E2IP_3	=	0x00c3
                           0000C4   739 G$E2IP_4$0$0 == 0x00c4
                           0000C4   740 _E2IP_4	=	0x00c4
                           0000C5   741 G$E2IP_5$0$0 == 0x00c5
                           0000C5   742 _E2IP_5	=	0x00c5
                           0000C6   743 G$E2IP_6$0$0 == 0x00c6
                           0000C6   744 _E2IP_6	=	0x00c6
                           0000C7   745 G$E2IP_7$0$0 == 0x00c7
                           0000C7   746 _E2IP_7	=	0x00c7
                           000098   747 G$EIE_0$0$0 == 0x0098
                           000098   748 _EIE_0	=	0x0098
                           000099   749 G$EIE_1$0$0 == 0x0099
                           000099   750 _EIE_1	=	0x0099
                           00009A   751 G$EIE_2$0$0 == 0x009a
                           00009A   752 _EIE_2	=	0x009a
                           00009B   753 G$EIE_3$0$0 == 0x009b
                           00009B   754 _EIE_3	=	0x009b
                           00009C   755 G$EIE_4$0$0 == 0x009c
                           00009C   756 _EIE_4	=	0x009c
                           00009D   757 G$EIE_5$0$0 == 0x009d
                           00009D   758 _EIE_5	=	0x009d
                           00009E   759 G$EIE_6$0$0 == 0x009e
                           00009E   760 _EIE_6	=	0x009e
                           00009F   761 G$EIE_7$0$0 == 0x009f
                           00009F   762 _EIE_7	=	0x009f
                           0000B0   763 G$EIP_0$0$0 == 0x00b0
                           0000B0   764 _EIP_0	=	0x00b0
                           0000B1   765 G$EIP_1$0$0 == 0x00b1
                           0000B1   766 _EIP_1	=	0x00b1
                           0000B2   767 G$EIP_2$0$0 == 0x00b2
                           0000B2   768 _EIP_2	=	0x00b2
                           0000B3   769 G$EIP_3$0$0 == 0x00b3
                           0000B3   770 _EIP_3	=	0x00b3
                           0000B4   771 G$EIP_4$0$0 == 0x00b4
                           0000B4   772 _EIP_4	=	0x00b4
                           0000B5   773 G$EIP_5$0$0 == 0x00b5
                           0000B5   774 _EIP_5	=	0x00b5
                           0000B6   775 G$EIP_6$0$0 == 0x00b6
                           0000B6   776 _EIP_6	=	0x00b6
                           0000B7   777 G$EIP_7$0$0 == 0x00b7
                           0000B7   778 _EIP_7	=	0x00b7
                           0000A8   779 G$IE_0$0$0 == 0x00a8
                           0000A8   780 _IE_0	=	0x00a8
                           0000A9   781 G$IE_1$0$0 == 0x00a9
                           0000A9   782 _IE_1	=	0x00a9
                           0000AA   783 G$IE_2$0$0 == 0x00aa
                           0000AA   784 _IE_2	=	0x00aa
                           0000AB   785 G$IE_3$0$0 == 0x00ab
                           0000AB   786 _IE_3	=	0x00ab
                           0000AC   787 G$IE_4$0$0 == 0x00ac
                           0000AC   788 _IE_4	=	0x00ac
                           0000AD   789 G$IE_5$0$0 == 0x00ad
                           0000AD   790 _IE_5	=	0x00ad
                           0000AE   791 G$IE_6$0$0 == 0x00ae
                           0000AE   792 _IE_6	=	0x00ae
                           0000AF   793 G$IE_7$0$0 == 0x00af
                           0000AF   794 _IE_7	=	0x00af
                           0000AF   795 G$EA$0$0 == 0x00af
                           0000AF   796 _EA	=	0x00af
                           0000B8   797 G$IP_0$0$0 == 0x00b8
                           0000B8   798 _IP_0	=	0x00b8
                           0000B9   799 G$IP_1$0$0 == 0x00b9
                           0000B9   800 _IP_1	=	0x00b9
                           0000BA   801 G$IP_2$0$0 == 0x00ba
                           0000BA   802 _IP_2	=	0x00ba
                           0000BB   803 G$IP_3$0$0 == 0x00bb
                           0000BB   804 _IP_3	=	0x00bb
                           0000BC   805 G$IP_4$0$0 == 0x00bc
                           0000BC   806 _IP_4	=	0x00bc
                           0000BD   807 G$IP_5$0$0 == 0x00bd
                           0000BD   808 _IP_5	=	0x00bd
                           0000BE   809 G$IP_6$0$0 == 0x00be
                           0000BE   810 _IP_6	=	0x00be
                           0000BF   811 G$IP_7$0$0 == 0x00bf
                           0000BF   812 _IP_7	=	0x00bf
                           0000D0   813 G$P$0$0 == 0x00d0
                           0000D0   814 _P	=	0x00d0
                           0000D1   815 G$F1$0$0 == 0x00d1
                           0000D1   816 _F1	=	0x00d1
                           0000D2   817 G$OV$0$0 == 0x00d2
                           0000D2   818 _OV	=	0x00d2
                           0000D3   819 G$RS0$0$0 == 0x00d3
                           0000D3   820 _RS0	=	0x00d3
                           0000D4   821 G$RS1$0$0 == 0x00d4
                           0000D4   822 _RS1	=	0x00d4
                           0000D5   823 G$F0$0$0 == 0x00d5
                           0000D5   824 _F0	=	0x00d5
                           0000D6   825 G$AC$0$0 == 0x00d6
                           0000D6   826 _AC	=	0x00d6
                           0000D7   827 G$CY$0$0 == 0x00d7
                           0000D7   828 _CY	=	0x00d7
                           0000C8   829 G$PINA_0$0$0 == 0x00c8
                           0000C8   830 _PINA_0	=	0x00c8
                           0000C9   831 G$PINA_1$0$0 == 0x00c9
                           0000C9   832 _PINA_1	=	0x00c9
                           0000CA   833 G$PINA_2$0$0 == 0x00ca
                           0000CA   834 _PINA_2	=	0x00ca
                           0000CB   835 G$PINA_3$0$0 == 0x00cb
                           0000CB   836 _PINA_3	=	0x00cb
                           0000CC   837 G$PINA_4$0$0 == 0x00cc
                           0000CC   838 _PINA_4	=	0x00cc
                           0000CD   839 G$PINA_5$0$0 == 0x00cd
                           0000CD   840 _PINA_5	=	0x00cd
                           0000CE   841 G$PINA_6$0$0 == 0x00ce
                           0000CE   842 _PINA_6	=	0x00ce
                           0000CF   843 G$PINA_7$0$0 == 0x00cf
                           0000CF   844 _PINA_7	=	0x00cf
                           0000E8   845 G$PINB_0$0$0 == 0x00e8
                           0000E8   846 _PINB_0	=	0x00e8
                           0000E9   847 G$PINB_1$0$0 == 0x00e9
                           0000E9   848 _PINB_1	=	0x00e9
                           0000EA   849 G$PINB_2$0$0 == 0x00ea
                           0000EA   850 _PINB_2	=	0x00ea
                           0000EB   851 G$PINB_3$0$0 == 0x00eb
                           0000EB   852 _PINB_3	=	0x00eb
                           0000EC   853 G$PINB_4$0$0 == 0x00ec
                           0000EC   854 _PINB_4	=	0x00ec
                           0000ED   855 G$PINB_5$0$0 == 0x00ed
                           0000ED   856 _PINB_5	=	0x00ed
                           0000EE   857 G$PINB_6$0$0 == 0x00ee
                           0000EE   858 _PINB_6	=	0x00ee
                           0000EF   859 G$PINB_7$0$0 == 0x00ef
                           0000EF   860 _PINB_7	=	0x00ef
                           0000F8   861 G$PINC_0$0$0 == 0x00f8
                           0000F8   862 _PINC_0	=	0x00f8
                           0000F9   863 G$PINC_1$0$0 == 0x00f9
                           0000F9   864 _PINC_1	=	0x00f9
                           0000FA   865 G$PINC_2$0$0 == 0x00fa
                           0000FA   866 _PINC_2	=	0x00fa
                           0000FB   867 G$PINC_3$0$0 == 0x00fb
                           0000FB   868 _PINC_3	=	0x00fb
                           0000FC   869 G$PINC_4$0$0 == 0x00fc
                           0000FC   870 _PINC_4	=	0x00fc
                           0000FD   871 G$PINC_5$0$0 == 0x00fd
                           0000FD   872 _PINC_5	=	0x00fd
                           0000FE   873 G$PINC_6$0$0 == 0x00fe
                           0000FE   874 _PINC_6	=	0x00fe
                           0000FF   875 G$PINC_7$0$0 == 0x00ff
                           0000FF   876 _PINC_7	=	0x00ff
                           000080   877 G$PORTA_0$0$0 == 0x0080
                           000080   878 _PORTA_0	=	0x0080
                           000081   879 G$PORTA_1$0$0 == 0x0081
                           000081   880 _PORTA_1	=	0x0081
                           000082   881 G$PORTA_2$0$0 == 0x0082
                           000082   882 _PORTA_2	=	0x0082
                           000083   883 G$PORTA_3$0$0 == 0x0083
                           000083   884 _PORTA_3	=	0x0083
                           000084   885 G$PORTA_4$0$0 == 0x0084
                           000084   886 _PORTA_4	=	0x0084
                           000085   887 G$PORTA_5$0$0 == 0x0085
                           000085   888 _PORTA_5	=	0x0085
                           000086   889 G$PORTA_6$0$0 == 0x0086
                           000086   890 _PORTA_6	=	0x0086
                           000087   891 G$PORTA_7$0$0 == 0x0087
                           000087   892 _PORTA_7	=	0x0087
                           000088   893 G$PORTB_0$0$0 == 0x0088
                           000088   894 _PORTB_0	=	0x0088
                           000089   895 G$PORTB_1$0$0 == 0x0089
                           000089   896 _PORTB_1	=	0x0089
                           00008A   897 G$PORTB_2$0$0 == 0x008a
                           00008A   898 _PORTB_2	=	0x008a
                           00008B   899 G$PORTB_3$0$0 == 0x008b
                           00008B   900 _PORTB_3	=	0x008b
                           00008C   901 G$PORTB_4$0$0 == 0x008c
                           00008C   902 _PORTB_4	=	0x008c
                           00008D   903 G$PORTB_5$0$0 == 0x008d
                           00008D   904 _PORTB_5	=	0x008d
                           00008E   905 G$PORTB_6$0$0 == 0x008e
                           00008E   906 _PORTB_6	=	0x008e
                           00008F   907 G$PORTB_7$0$0 == 0x008f
                           00008F   908 _PORTB_7	=	0x008f
                           000090   909 G$PORTC_0$0$0 == 0x0090
                           000090   910 _PORTC_0	=	0x0090
                           000091   911 G$PORTC_1$0$0 == 0x0091
                           000091   912 _PORTC_1	=	0x0091
                           000092   913 G$PORTC_2$0$0 == 0x0092
                           000092   914 _PORTC_2	=	0x0092
                           000093   915 G$PORTC_3$0$0 == 0x0093
                           000093   916 _PORTC_3	=	0x0093
                           000094   917 G$PORTC_4$0$0 == 0x0094
                           000094   918 _PORTC_4	=	0x0094
                           000095   919 G$PORTC_5$0$0 == 0x0095
                           000095   920 _PORTC_5	=	0x0095
                           000096   921 G$PORTC_6$0$0 == 0x0096
                           000096   922 _PORTC_6	=	0x0096
                           000097   923 G$PORTC_7$0$0 == 0x0097
                           000097   924 _PORTC_7	=	0x0097
                                    925 ;--------------------------------------------------------
                                    926 ; overlayable register banks
                                    927 ;--------------------------------------------------------
                                    928 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        929 	.ds 8
                                    930 ;--------------------------------------------------------
                                    931 ; internal ram data
                                    932 ;--------------------------------------------------------
                                    933 	.area DSEG    (DATA)
                                    934 ;--------------------------------------------------------
                                    935 ; overlayable items in internal ram 
                                    936 ;--------------------------------------------------------
                                    937 ;--------------------------------------------------------
                                    938 ; indirectly addressable internal ram data
                                    939 ;--------------------------------------------------------
                                    940 	.area ISEG    (DATA)
                                    941 ;--------------------------------------------------------
                                    942 ; absolute internal ram data
                                    943 ;--------------------------------------------------------
                                    944 	.area IABS    (ABS,DATA)
                                    945 	.area IABS    (ABS,DATA)
                                    946 ;--------------------------------------------------------
                                    947 ; bit data
                                    948 ;--------------------------------------------------------
                                    949 	.area BSEG    (BIT)
                                    950 ;--------------------------------------------------------
                                    951 ; paged external ram data
                                    952 ;--------------------------------------------------------
                                    953 	.area PSEG    (PAG,XDATA)
                                    954 ;--------------------------------------------------------
                                    955 ; external ram data
                                    956 ;--------------------------------------------------------
                                    957 	.area XSEG    (XDATA)
                           007020   958 G$ADCCH0VAL0$0$0 == 0x7020
                           007020   959 _ADCCH0VAL0	=	0x7020
                           007021   960 G$ADCCH0VAL1$0$0 == 0x7021
                           007021   961 _ADCCH0VAL1	=	0x7021
                           007020   962 G$ADCCH0VAL$0$0 == 0x7020
                           007020   963 _ADCCH0VAL	=	0x7020
                           007022   964 G$ADCCH1VAL0$0$0 == 0x7022
                           007022   965 _ADCCH1VAL0	=	0x7022
                           007023   966 G$ADCCH1VAL1$0$0 == 0x7023
                           007023   967 _ADCCH1VAL1	=	0x7023
                           007022   968 G$ADCCH1VAL$0$0 == 0x7022
                           007022   969 _ADCCH1VAL	=	0x7022
                           007024   970 G$ADCCH2VAL0$0$0 == 0x7024
                           007024   971 _ADCCH2VAL0	=	0x7024
                           007025   972 G$ADCCH2VAL1$0$0 == 0x7025
                           007025   973 _ADCCH2VAL1	=	0x7025
                           007024   974 G$ADCCH2VAL$0$0 == 0x7024
                           007024   975 _ADCCH2VAL	=	0x7024
                           007026   976 G$ADCCH3VAL0$0$0 == 0x7026
                           007026   977 _ADCCH3VAL0	=	0x7026
                           007027   978 G$ADCCH3VAL1$0$0 == 0x7027
                           007027   979 _ADCCH3VAL1	=	0x7027
                           007026   980 G$ADCCH3VAL$0$0 == 0x7026
                           007026   981 _ADCCH3VAL	=	0x7026
                           007028   982 G$ADCTUNE0$0$0 == 0x7028
                           007028   983 _ADCTUNE0	=	0x7028
                           007029   984 G$ADCTUNE1$0$0 == 0x7029
                           007029   985 _ADCTUNE1	=	0x7029
                           00702A   986 G$ADCTUNE2$0$0 == 0x702a
                           00702A   987 _ADCTUNE2	=	0x702a
                           007010   988 G$DMA0ADDR0$0$0 == 0x7010
                           007010   989 _DMA0ADDR0	=	0x7010
                           007011   990 G$DMA0ADDR1$0$0 == 0x7011
                           007011   991 _DMA0ADDR1	=	0x7011
                           007010   992 G$DMA0ADDR$0$0 == 0x7010
                           007010   993 _DMA0ADDR	=	0x7010
                           007014   994 G$DMA0CONFIG$0$0 == 0x7014
                           007014   995 _DMA0CONFIG	=	0x7014
                           007012   996 G$DMA1ADDR0$0$0 == 0x7012
                           007012   997 _DMA1ADDR0	=	0x7012
                           007013   998 G$DMA1ADDR1$0$0 == 0x7013
                           007013   999 _DMA1ADDR1	=	0x7013
                           007012  1000 G$DMA1ADDR$0$0 == 0x7012
                           007012  1001 _DMA1ADDR	=	0x7012
                           007015  1002 G$DMA1CONFIG$0$0 == 0x7015
                           007015  1003 _DMA1CONFIG	=	0x7015
                           007070  1004 G$FRCOSCCONFIG$0$0 == 0x7070
                           007070  1005 _FRCOSCCONFIG	=	0x7070
                           007071  1006 G$FRCOSCCTRL$0$0 == 0x7071
                           007071  1007 _FRCOSCCTRL	=	0x7071
                           007076  1008 G$FRCOSCFREQ0$0$0 == 0x7076
                           007076  1009 _FRCOSCFREQ0	=	0x7076
                           007077  1010 G$FRCOSCFREQ1$0$0 == 0x7077
                           007077  1011 _FRCOSCFREQ1	=	0x7077
                           007076  1012 G$FRCOSCFREQ$0$0 == 0x7076
                           007076  1013 _FRCOSCFREQ	=	0x7076
                           007072  1014 G$FRCOSCKFILT0$0$0 == 0x7072
                           007072  1015 _FRCOSCKFILT0	=	0x7072
                           007073  1016 G$FRCOSCKFILT1$0$0 == 0x7073
                           007073  1017 _FRCOSCKFILT1	=	0x7073
                           007072  1018 G$FRCOSCKFILT$0$0 == 0x7072
                           007072  1019 _FRCOSCKFILT	=	0x7072
                           007078  1020 G$FRCOSCPER0$0$0 == 0x7078
                           007078  1021 _FRCOSCPER0	=	0x7078
                           007079  1022 G$FRCOSCPER1$0$0 == 0x7079
                           007079  1023 _FRCOSCPER1	=	0x7079
                           007078  1024 G$FRCOSCPER$0$0 == 0x7078
                           007078  1025 _FRCOSCPER	=	0x7078
                           007074  1026 G$FRCOSCREF0$0$0 == 0x7074
                           007074  1027 _FRCOSCREF0	=	0x7074
                           007075  1028 G$FRCOSCREF1$0$0 == 0x7075
                           007075  1029 _FRCOSCREF1	=	0x7075
                           007074  1030 G$FRCOSCREF$0$0 == 0x7074
                           007074  1031 _FRCOSCREF	=	0x7074
                           007007  1032 G$ANALOGA$0$0 == 0x7007
                           007007  1033 _ANALOGA	=	0x7007
                           00700C  1034 G$GPIOENABLE$0$0 == 0x700c
                           00700C  1035 _GPIOENABLE	=	0x700c
                           007003  1036 G$EXTIRQ$0$0 == 0x7003
                           007003  1037 _EXTIRQ	=	0x7003
                           007000  1038 G$INTCHGA$0$0 == 0x7000
                           007000  1039 _INTCHGA	=	0x7000
                           007001  1040 G$INTCHGB$0$0 == 0x7001
                           007001  1041 _INTCHGB	=	0x7001
                           007002  1042 G$INTCHGC$0$0 == 0x7002
                           007002  1043 _INTCHGC	=	0x7002
                           007008  1044 G$PALTA$0$0 == 0x7008
                           007008  1045 _PALTA	=	0x7008
                           007009  1046 G$PALTB$0$0 == 0x7009
                           007009  1047 _PALTB	=	0x7009
                           00700A  1048 G$PALTC$0$0 == 0x700a
                           00700A  1049 _PALTC	=	0x700a
                           007046  1050 G$PALTRADIO$0$0 == 0x7046
                           007046  1051 _PALTRADIO	=	0x7046
                           007004  1052 G$PINCHGA$0$0 == 0x7004
                           007004  1053 _PINCHGA	=	0x7004
                           007005  1054 G$PINCHGB$0$0 == 0x7005
                           007005  1055 _PINCHGB	=	0x7005
                           007006  1056 G$PINCHGC$0$0 == 0x7006
                           007006  1057 _PINCHGC	=	0x7006
                           00700B  1058 G$PINSEL$0$0 == 0x700b
                           00700B  1059 _PINSEL	=	0x700b
                           007060  1060 G$LPOSCCONFIG$0$0 == 0x7060
                           007060  1061 _LPOSCCONFIG	=	0x7060
                           007066  1062 G$LPOSCFREQ0$0$0 == 0x7066
                           007066  1063 _LPOSCFREQ0	=	0x7066
                           007067  1064 G$LPOSCFREQ1$0$0 == 0x7067
                           007067  1065 _LPOSCFREQ1	=	0x7067
                           007066  1066 G$LPOSCFREQ$0$0 == 0x7066
                           007066  1067 _LPOSCFREQ	=	0x7066
                           007062  1068 G$LPOSCKFILT0$0$0 == 0x7062
                           007062  1069 _LPOSCKFILT0	=	0x7062
                           007063  1070 G$LPOSCKFILT1$0$0 == 0x7063
                           007063  1071 _LPOSCKFILT1	=	0x7063
                           007062  1072 G$LPOSCKFILT$0$0 == 0x7062
                           007062  1073 _LPOSCKFILT	=	0x7062
                           007068  1074 G$LPOSCPER0$0$0 == 0x7068
                           007068  1075 _LPOSCPER0	=	0x7068
                           007069  1076 G$LPOSCPER1$0$0 == 0x7069
                           007069  1077 _LPOSCPER1	=	0x7069
                           007068  1078 G$LPOSCPER$0$0 == 0x7068
                           007068  1079 _LPOSCPER	=	0x7068
                           007064  1080 G$LPOSCREF0$0$0 == 0x7064
                           007064  1081 _LPOSCREF0	=	0x7064
                           007065  1082 G$LPOSCREF1$0$0 == 0x7065
                           007065  1083 _LPOSCREF1	=	0x7065
                           007064  1084 G$LPOSCREF$0$0 == 0x7064
                           007064  1085 _LPOSCREF	=	0x7064
                           007054  1086 G$LPXOSCGM$0$0 == 0x7054
                           007054  1087 _LPXOSCGM	=	0x7054
                           007F01  1088 G$MISCCTRL$0$0 == 0x7f01
                           007F01  1089 _MISCCTRL	=	0x7f01
                           007053  1090 G$OSCCALIB$0$0 == 0x7053
                           007053  1091 _OSCCALIB	=	0x7053
                           007050  1092 G$OSCFORCERUN$0$0 == 0x7050
                           007050  1093 _OSCFORCERUN	=	0x7050
                           007052  1094 G$OSCREADY$0$0 == 0x7052
                           007052  1095 _OSCREADY	=	0x7052
                           007051  1096 G$OSCRUN$0$0 == 0x7051
                           007051  1097 _OSCRUN	=	0x7051
                           007040  1098 G$RADIOFDATAADDR0$0$0 == 0x7040
                           007040  1099 _RADIOFDATAADDR0	=	0x7040
                           007041  1100 G$RADIOFDATAADDR1$0$0 == 0x7041
                           007041  1101 _RADIOFDATAADDR1	=	0x7041
                           007040  1102 G$RADIOFDATAADDR$0$0 == 0x7040
                           007040  1103 _RADIOFDATAADDR	=	0x7040
                           007042  1104 G$RADIOFSTATADDR0$0$0 == 0x7042
                           007042  1105 _RADIOFSTATADDR0	=	0x7042
                           007043  1106 G$RADIOFSTATADDR1$0$0 == 0x7043
                           007043  1107 _RADIOFSTATADDR1	=	0x7043
                           007042  1108 G$RADIOFSTATADDR$0$0 == 0x7042
                           007042  1109 _RADIOFSTATADDR	=	0x7042
                           007044  1110 G$RADIOMUX$0$0 == 0x7044
                           007044  1111 _RADIOMUX	=	0x7044
                           007084  1112 G$SCRATCH0$0$0 == 0x7084
                           007084  1113 _SCRATCH0	=	0x7084
                           007085  1114 G$SCRATCH1$0$0 == 0x7085
                           007085  1115 _SCRATCH1	=	0x7085
                           007086  1116 G$SCRATCH2$0$0 == 0x7086
                           007086  1117 _SCRATCH2	=	0x7086
                           007087  1118 G$SCRATCH3$0$0 == 0x7087
                           007087  1119 _SCRATCH3	=	0x7087
                           007F00  1120 G$SILICONREV$0$0 == 0x7f00
                           007F00  1121 _SILICONREV	=	0x7f00
                           007F19  1122 G$XTALAMPL$0$0 == 0x7f19
                           007F19  1123 _XTALAMPL	=	0x7f19
                           007F18  1124 G$XTALOSC$0$0 == 0x7f18
                           007F18  1125 _XTALOSC	=	0x7f18
                           007F1A  1126 G$XTALREADY$0$0 == 0x7f1a
                           007F1A  1127 _XTALREADY	=	0x7f1a
                                   1128 ;--------------------------------------------------------
                                   1129 ; absolute external ram data
                                   1130 ;--------------------------------------------------------
                                   1131 	.area XABS    (ABS,XDATA)
                                   1132 ;--------------------------------------------------------
                                   1133 ; external initialized ram data
                                   1134 ;--------------------------------------------------------
                                   1135 	.area XISEG   (XDATA)
                                   1136 	.area HOME    (CODE)
                                   1137 	.area GSINIT0 (CODE)
                                   1138 	.area GSINIT1 (CODE)
                                   1139 	.area GSINIT2 (CODE)
                                   1140 	.area GSINIT3 (CODE)
                                   1141 	.area GSINIT4 (CODE)
                                   1142 	.area GSINIT5 (CODE)
                                   1143 	.area GSINIT  (CODE)
                                   1144 	.area GSFINAL (CODE)
                                   1145 	.area CSEG    (CODE)
                                   1146 ;--------------------------------------------------------
                                   1147 ; global & static initialisations
                                   1148 ;--------------------------------------------------------
                                   1149 	.area HOME    (CODE)
                                   1150 	.area GSINIT  (CODE)
                                   1151 	.area GSFINAL (CODE)
                                   1152 	.area GSINIT  (CODE)
                                   1153 ;--------------------------------------------------------
                                   1154 ; Home
                                   1155 ;--------------------------------------------------------
                                   1156 	.area HOME    (CODE)
                                   1157 	.area HOME    (CODE)
                                   1158 ;--------------------------------------------------------
                                   1159 ; code
                                   1160 ;--------------------------------------------------------
                                   1161 	.area CSEG    (CODE)
                                   1162 	.area CSEG    (CODE)
                                   1163 	.area CONST   (CODE)
                           000000  1164 G$remoteaddr$0$0 == .
      005630                       1165 _remoteaddr:
      005630 33                    1166 	.db #0x33	; 51	'3'
      005631 34                    1167 	.db #0x34	; 52	'4'
      005632 00                    1168 	.db #0x00	; 0
      005633 00                    1169 	.db #0x00	; 0
      005634 00                    1170 	.db 0x00
                           000005  1171 G$localaddr$0$0 == .
      005635                       1172 _localaddr:
      005635 32                    1173 	.db #0x32	; 50	'2'
      005636 34                    1174 	.db #0x34	; 52	'4'
      005637 00                    1175 	.db #0x00	; 0
      005638 00                    1176 	.db #0x00	; 0
      005639 00                    1177 	.db 0x00
      00563A 00                    1178 	.db #0x00	; 0
      00563B 00                    1179 	.db #0x00	; 0
      00563C 00                    1180 	.db #0x00	; 0
      00563D 00                    1181 	.db #0x00	; 0
      00563E 00                    1182 	.db 0x00
                           00000F  1183 G$framing_insert_counter$0$0 == .
      00563F                       1184 _framing_insert_counter:
      00563F 00                    1185 	.db #0x00	; 0
                           000010  1186 G$framing_counter_pos$0$0 == .
      005640                       1187 _framing_counter_pos:
      005640 00                    1188 	.db #0x00	; 0
                           000011  1189 G$demo_packet$0$0 == .
      005641                       1190 _demo_packet:
      005641 C4                    1191 	.db #0xc4	; 196
      005642 F5                    1192 	.db #0xf5	; 245
      005643 38                    1193 	.db #0x38	; 56	'8'
      005644 00                    1194 	.db #0x00	; 0
      005645 00                    1195 	.db #0x00	; 0
      005646 0E                    1196 	.db #0x0e	; 14
      005647 00                    1197 	.db #0x00	; 0
      005648 E5                    1198 	.db #0xe5	; 229
      005649 00                    1199 	.db #0x00	; 0
      00564A 01                    1200 	.db #0x01	; 1
                           00001B  1201 G$lpxosc_settlingtime$0$0 == .
      00564B                       1202 _lpxosc_settlingtime:
      00564B B8 0B                 1203 	.byte #0xb8,#0x0b	; 3000
                                   1204 	.area XINIT   (CODE)
                                   1205 	.area CABS    (ABS,CODE)
