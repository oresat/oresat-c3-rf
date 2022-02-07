                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module display_com0
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _PORTC_7
                                     12 	.globl _PORTC_6
                                     13 	.globl _PORTC_5
                                     14 	.globl _PORTC_4
                                     15 	.globl _PORTC_3
                                     16 	.globl _PORTC_2
                                     17 	.globl _PORTC_1
                                     18 	.globl _PORTC_0
                                     19 	.globl _PORTB_7
                                     20 	.globl _PORTB_6
                                     21 	.globl _PORTB_5
                                     22 	.globl _PORTB_4
                                     23 	.globl _PORTB_3
                                     24 	.globl _PORTB_2
                                     25 	.globl _PORTB_1
                                     26 	.globl _PORTB_0
                                     27 	.globl _PORTA_7
                                     28 	.globl _PORTA_6
                                     29 	.globl _PORTA_5
                                     30 	.globl _PORTA_4
                                     31 	.globl _PORTA_3
                                     32 	.globl _PORTA_2
                                     33 	.globl _PORTA_1
                                     34 	.globl _PORTA_0
                                     35 	.globl _PINC_7
                                     36 	.globl _PINC_6
                                     37 	.globl _PINC_5
                                     38 	.globl _PINC_4
                                     39 	.globl _PINC_3
                                     40 	.globl _PINC_2
                                     41 	.globl _PINC_1
                                     42 	.globl _PINC_0
                                     43 	.globl _PINB_7
                                     44 	.globl _PINB_6
                                     45 	.globl _PINB_5
                                     46 	.globl _PINB_4
                                     47 	.globl _PINB_3
                                     48 	.globl _PINB_2
                                     49 	.globl _PINB_1
                                     50 	.globl _PINB_0
                                     51 	.globl _PINA_7
                                     52 	.globl _PINA_6
                                     53 	.globl _PINA_5
                                     54 	.globl _PINA_4
                                     55 	.globl _PINA_3
                                     56 	.globl _PINA_2
                                     57 	.globl _PINA_1
                                     58 	.globl _PINA_0
                                     59 	.globl _CY
                                     60 	.globl _AC
                                     61 	.globl _F0
                                     62 	.globl _RS1
                                     63 	.globl _RS0
                                     64 	.globl _OV
                                     65 	.globl _F1
                                     66 	.globl _P
                                     67 	.globl _IP_7
                                     68 	.globl _IP_6
                                     69 	.globl _IP_5
                                     70 	.globl _IP_4
                                     71 	.globl _IP_3
                                     72 	.globl _IP_2
                                     73 	.globl _IP_1
                                     74 	.globl _IP_0
                                     75 	.globl _EA
                                     76 	.globl _IE_7
                                     77 	.globl _IE_6
                                     78 	.globl _IE_5
                                     79 	.globl _IE_4
                                     80 	.globl _IE_3
                                     81 	.globl _IE_2
                                     82 	.globl _IE_1
                                     83 	.globl _IE_0
                                     84 	.globl _EIP_7
                                     85 	.globl _EIP_6
                                     86 	.globl _EIP_5
                                     87 	.globl _EIP_4
                                     88 	.globl _EIP_3
                                     89 	.globl _EIP_2
                                     90 	.globl _EIP_1
                                     91 	.globl _EIP_0
                                     92 	.globl _EIE_7
                                     93 	.globl _EIE_6
                                     94 	.globl _EIE_5
                                     95 	.globl _EIE_4
                                     96 	.globl _EIE_3
                                     97 	.globl _EIE_2
                                     98 	.globl _EIE_1
                                     99 	.globl _EIE_0
                                    100 	.globl _E2IP_7
                                    101 	.globl _E2IP_6
                                    102 	.globl _E2IP_5
                                    103 	.globl _E2IP_4
                                    104 	.globl _E2IP_3
                                    105 	.globl _E2IP_2
                                    106 	.globl _E2IP_1
                                    107 	.globl _E2IP_0
                                    108 	.globl _E2IE_7
                                    109 	.globl _E2IE_6
                                    110 	.globl _E2IE_5
                                    111 	.globl _E2IE_4
                                    112 	.globl _E2IE_3
                                    113 	.globl _E2IE_2
                                    114 	.globl _E2IE_1
                                    115 	.globl _E2IE_0
                                    116 	.globl _B_7
                                    117 	.globl _B_6
                                    118 	.globl _B_5
                                    119 	.globl _B_4
                                    120 	.globl _B_3
                                    121 	.globl _B_2
                                    122 	.globl _B_1
                                    123 	.globl _B_0
                                    124 	.globl _ACC_7
                                    125 	.globl _ACC_6
                                    126 	.globl _ACC_5
                                    127 	.globl _ACC_4
                                    128 	.globl _ACC_3
                                    129 	.globl _ACC_2
                                    130 	.globl _ACC_1
                                    131 	.globl _ACC_0
                                    132 	.globl _WTSTAT
                                    133 	.globl _WTIRQEN
                                    134 	.globl _WTEVTD
                                    135 	.globl _WTEVTD1
                                    136 	.globl _WTEVTD0
                                    137 	.globl _WTEVTC
                                    138 	.globl _WTEVTC1
                                    139 	.globl _WTEVTC0
                                    140 	.globl _WTEVTB
                                    141 	.globl _WTEVTB1
                                    142 	.globl _WTEVTB0
                                    143 	.globl _WTEVTA
                                    144 	.globl _WTEVTA1
                                    145 	.globl _WTEVTA0
                                    146 	.globl _WTCNTR1
                                    147 	.globl _WTCNTB
                                    148 	.globl _WTCNTB1
                                    149 	.globl _WTCNTB0
                                    150 	.globl _WTCNTA
                                    151 	.globl _WTCNTA1
                                    152 	.globl _WTCNTA0
                                    153 	.globl _WTCFGB
                                    154 	.globl _WTCFGA
                                    155 	.globl _WDTRESET
                                    156 	.globl _WDTCFG
                                    157 	.globl _U1STATUS
                                    158 	.globl _U1SHREG
                                    159 	.globl _U1MODE
                                    160 	.globl _U1CTRL
                                    161 	.globl _U0STATUS
                                    162 	.globl _U0SHREG
                                    163 	.globl _U0MODE
                                    164 	.globl _U0CTRL
                                    165 	.globl _T2STATUS
                                    166 	.globl _T2PERIOD
                                    167 	.globl _T2PERIOD1
                                    168 	.globl _T2PERIOD0
                                    169 	.globl _T2MODE
                                    170 	.globl _T2CNT
                                    171 	.globl _T2CNT1
                                    172 	.globl _T2CNT0
                                    173 	.globl _T2CLKSRC
                                    174 	.globl _T1STATUS
                                    175 	.globl _T1PERIOD
                                    176 	.globl _T1PERIOD1
                                    177 	.globl _T1PERIOD0
                                    178 	.globl _T1MODE
                                    179 	.globl _T1CNT
                                    180 	.globl _T1CNT1
                                    181 	.globl _T1CNT0
                                    182 	.globl _T1CLKSRC
                                    183 	.globl _T0STATUS
                                    184 	.globl _T0PERIOD
                                    185 	.globl _T0PERIOD1
                                    186 	.globl _T0PERIOD0
                                    187 	.globl _T0MODE
                                    188 	.globl _T0CNT
                                    189 	.globl _T0CNT1
                                    190 	.globl _T0CNT0
                                    191 	.globl _T0CLKSRC
                                    192 	.globl _SPSTATUS
                                    193 	.globl _SPSHREG
                                    194 	.globl _SPMODE
                                    195 	.globl _SPCLKSRC
                                    196 	.globl _RADIOSTAT
                                    197 	.globl _RADIOSTAT1
                                    198 	.globl _RADIOSTAT0
                                    199 	.globl _RADIODATA
                                    200 	.globl _RADIODATA3
                                    201 	.globl _RADIODATA2
                                    202 	.globl _RADIODATA1
                                    203 	.globl _RADIODATA0
                                    204 	.globl _RADIOADDR
                                    205 	.globl _RADIOADDR1
                                    206 	.globl _RADIOADDR0
                                    207 	.globl _RADIOACC
                                    208 	.globl _OC1STATUS
                                    209 	.globl _OC1PIN
                                    210 	.globl _OC1MODE
                                    211 	.globl _OC1COMP
                                    212 	.globl _OC1COMP1
                                    213 	.globl _OC1COMP0
                                    214 	.globl _OC0STATUS
                                    215 	.globl _OC0PIN
                                    216 	.globl _OC0MODE
                                    217 	.globl _OC0COMP
                                    218 	.globl _OC0COMP1
                                    219 	.globl _OC0COMP0
                                    220 	.globl _NVSTATUS
                                    221 	.globl _NVKEY
                                    222 	.globl _NVDATA
                                    223 	.globl _NVDATA1
                                    224 	.globl _NVDATA0
                                    225 	.globl _NVADDR
                                    226 	.globl _NVADDR1
                                    227 	.globl _NVADDR0
                                    228 	.globl _IC1STATUS
                                    229 	.globl _IC1MODE
                                    230 	.globl _IC1CAPT
                                    231 	.globl _IC1CAPT1
                                    232 	.globl _IC1CAPT0
                                    233 	.globl _IC0STATUS
                                    234 	.globl _IC0MODE
                                    235 	.globl _IC0CAPT
                                    236 	.globl _IC0CAPT1
                                    237 	.globl _IC0CAPT0
                                    238 	.globl _PORTR
                                    239 	.globl _PORTC
                                    240 	.globl _PORTB
                                    241 	.globl _PORTA
                                    242 	.globl _PINR
                                    243 	.globl _PINC
                                    244 	.globl _PINB
                                    245 	.globl _PINA
                                    246 	.globl _DIRR
                                    247 	.globl _DIRC
                                    248 	.globl _DIRB
                                    249 	.globl _DIRA
                                    250 	.globl _DBGLNKSTAT
                                    251 	.globl _DBGLNKBUF
                                    252 	.globl _CODECONFIG
                                    253 	.globl _CLKSTAT
                                    254 	.globl _CLKCON
                                    255 	.globl _ANALOGCOMP
                                    256 	.globl _ADCCONV
                                    257 	.globl _ADCCLKSRC
                                    258 	.globl _ADCCH3CONFIG
                                    259 	.globl _ADCCH2CONFIG
                                    260 	.globl _ADCCH1CONFIG
                                    261 	.globl _ADCCH0CONFIG
                                    262 	.globl __XPAGE
                                    263 	.globl _XPAGE
                                    264 	.globl _SP
                                    265 	.globl _PSW
                                    266 	.globl _PCON
                                    267 	.globl _IP
                                    268 	.globl _IE
                                    269 	.globl _EIP
                                    270 	.globl _EIE
                                    271 	.globl _E2IP
                                    272 	.globl _E2IE
                                    273 	.globl _DPS
                                    274 	.globl _DPTR1
                                    275 	.globl _DPTR0
                                    276 	.globl _DPL1
                                    277 	.globl _DPL
                                    278 	.globl _DPH1
                                    279 	.globl _DPH
                                    280 	.globl _B
                                    281 	.globl _ACC
                                    282 	.globl _XTALREADY
                                    283 	.globl _XTALOSC
                                    284 	.globl _XTALAMPL
                                    285 	.globl _SILICONREV
                                    286 	.globl _SCRATCH3
                                    287 	.globl _SCRATCH2
                                    288 	.globl _SCRATCH1
                                    289 	.globl _SCRATCH0
                                    290 	.globl _RADIOMUX
                                    291 	.globl _RADIOFSTATADDR
                                    292 	.globl _RADIOFSTATADDR1
                                    293 	.globl _RADIOFSTATADDR0
                                    294 	.globl _RADIOFDATAADDR
                                    295 	.globl _RADIOFDATAADDR1
                                    296 	.globl _RADIOFDATAADDR0
                                    297 	.globl _OSCRUN
                                    298 	.globl _OSCREADY
                                    299 	.globl _OSCFORCERUN
                                    300 	.globl _OSCCALIB
                                    301 	.globl _MISCCTRL
                                    302 	.globl _LPXOSCGM
                                    303 	.globl _LPOSCREF
                                    304 	.globl _LPOSCREF1
                                    305 	.globl _LPOSCREF0
                                    306 	.globl _LPOSCPER
                                    307 	.globl _LPOSCPER1
                                    308 	.globl _LPOSCPER0
                                    309 	.globl _LPOSCKFILT
                                    310 	.globl _LPOSCKFILT1
                                    311 	.globl _LPOSCKFILT0
                                    312 	.globl _LPOSCFREQ
                                    313 	.globl _LPOSCFREQ1
                                    314 	.globl _LPOSCFREQ0
                                    315 	.globl _LPOSCCONFIG
                                    316 	.globl _PINSEL
                                    317 	.globl _PINCHGC
                                    318 	.globl _PINCHGB
                                    319 	.globl _PINCHGA
                                    320 	.globl _PALTRADIO
                                    321 	.globl _PALTC
                                    322 	.globl _PALTB
                                    323 	.globl _PALTA
                                    324 	.globl _INTCHGC
                                    325 	.globl _INTCHGB
                                    326 	.globl _INTCHGA
                                    327 	.globl _EXTIRQ
                                    328 	.globl _GPIOENABLE
                                    329 	.globl _ANALOGA
                                    330 	.globl _FRCOSCREF
                                    331 	.globl _FRCOSCREF1
                                    332 	.globl _FRCOSCREF0
                                    333 	.globl _FRCOSCPER
                                    334 	.globl _FRCOSCPER1
                                    335 	.globl _FRCOSCPER0
                                    336 	.globl _FRCOSCKFILT
                                    337 	.globl _FRCOSCKFILT1
                                    338 	.globl _FRCOSCKFILT0
                                    339 	.globl _FRCOSCFREQ
                                    340 	.globl _FRCOSCFREQ1
                                    341 	.globl _FRCOSCFREQ0
                                    342 	.globl _FRCOSCCTRL
                                    343 	.globl _FRCOSCCONFIG
                                    344 	.globl _DMA1CONFIG
                                    345 	.globl _DMA1ADDR
                                    346 	.globl _DMA1ADDR1
                                    347 	.globl _DMA1ADDR0
                                    348 	.globl _DMA0CONFIG
                                    349 	.globl _DMA0ADDR
                                    350 	.globl _DMA0ADDR1
                                    351 	.globl _DMA0ADDR0
                                    352 	.globl _ADCTUNE2
                                    353 	.globl _ADCTUNE1
                                    354 	.globl _ADCTUNE0
                                    355 	.globl _ADCCH3VAL
                                    356 	.globl _ADCCH3VAL1
                                    357 	.globl _ADCCH3VAL0
                                    358 	.globl _ADCCH2VAL
                                    359 	.globl _ADCCH2VAL1
                                    360 	.globl _ADCCH2VAL0
                                    361 	.globl _ADCCH1VAL
                                    362 	.globl _ADCCH1VAL1
                                    363 	.globl _ADCCH1VAL0
                                    364 	.globl _ADCCH0VAL
                                    365 	.globl _ADCCH0VAL1
                                    366 	.globl _ADCCH0VAL0
                                    367 ;--------------------------------------------------------
                                    368 ; special function registers
                                    369 ;--------------------------------------------------------
                                    370 	.area RSEG    (ABS,DATA)
      000000                        371 	.org 0x0000
                           0000E0   372 G$ACC$0$0 == 0x00e0
                           0000E0   373 _ACC	=	0x00e0
                           0000F0   374 G$B$0$0 == 0x00f0
                           0000F0   375 _B	=	0x00f0
                           000083   376 G$DPH$0$0 == 0x0083
                           000083   377 _DPH	=	0x0083
                           000085   378 G$DPH1$0$0 == 0x0085
                           000085   379 _DPH1	=	0x0085
                           000082   380 G$DPL$0$0 == 0x0082
                           000082   381 _DPL	=	0x0082
                           000084   382 G$DPL1$0$0 == 0x0084
                           000084   383 _DPL1	=	0x0084
                           008382   384 G$DPTR0$0$0 == 0x8382
                           008382   385 _DPTR0	=	0x8382
                           008584   386 G$DPTR1$0$0 == 0x8584
                           008584   387 _DPTR1	=	0x8584
                           000086   388 G$DPS$0$0 == 0x0086
                           000086   389 _DPS	=	0x0086
                           0000A0   390 G$E2IE$0$0 == 0x00a0
                           0000A0   391 _E2IE	=	0x00a0
                           0000C0   392 G$E2IP$0$0 == 0x00c0
                           0000C0   393 _E2IP	=	0x00c0
                           000098   394 G$EIE$0$0 == 0x0098
                           000098   395 _EIE	=	0x0098
                           0000B0   396 G$EIP$0$0 == 0x00b0
                           0000B0   397 _EIP	=	0x00b0
                           0000A8   398 G$IE$0$0 == 0x00a8
                           0000A8   399 _IE	=	0x00a8
                           0000B8   400 G$IP$0$0 == 0x00b8
                           0000B8   401 _IP	=	0x00b8
                           000087   402 G$PCON$0$0 == 0x0087
                           000087   403 _PCON	=	0x0087
                           0000D0   404 G$PSW$0$0 == 0x00d0
                           0000D0   405 _PSW	=	0x00d0
                           000081   406 G$SP$0$0 == 0x0081
                           000081   407 _SP	=	0x0081
                           0000D9   408 G$XPAGE$0$0 == 0x00d9
                           0000D9   409 _XPAGE	=	0x00d9
                           0000D9   410 G$_XPAGE$0$0 == 0x00d9
                           0000D9   411 __XPAGE	=	0x00d9
                           0000CA   412 G$ADCCH0CONFIG$0$0 == 0x00ca
                           0000CA   413 _ADCCH0CONFIG	=	0x00ca
                           0000CB   414 G$ADCCH1CONFIG$0$0 == 0x00cb
                           0000CB   415 _ADCCH1CONFIG	=	0x00cb
                           0000D2   416 G$ADCCH2CONFIG$0$0 == 0x00d2
                           0000D2   417 _ADCCH2CONFIG	=	0x00d2
                           0000D3   418 G$ADCCH3CONFIG$0$0 == 0x00d3
                           0000D3   419 _ADCCH3CONFIG	=	0x00d3
                           0000D1   420 G$ADCCLKSRC$0$0 == 0x00d1
                           0000D1   421 _ADCCLKSRC	=	0x00d1
                           0000C9   422 G$ADCCONV$0$0 == 0x00c9
                           0000C9   423 _ADCCONV	=	0x00c9
                           0000E1   424 G$ANALOGCOMP$0$0 == 0x00e1
                           0000E1   425 _ANALOGCOMP	=	0x00e1
                           0000C6   426 G$CLKCON$0$0 == 0x00c6
                           0000C6   427 _CLKCON	=	0x00c6
                           0000C7   428 G$CLKSTAT$0$0 == 0x00c7
                           0000C7   429 _CLKSTAT	=	0x00c7
                           000097   430 G$CODECONFIG$0$0 == 0x0097
                           000097   431 _CODECONFIG	=	0x0097
                           0000E3   432 G$DBGLNKBUF$0$0 == 0x00e3
                           0000E3   433 _DBGLNKBUF	=	0x00e3
                           0000E2   434 G$DBGLNKSTAT$0$0 == 0x00e2
                           0000E2   435 _DBGLNKSTAT	=	0x00e2
                           000089   436 G$DIRA$0$0 == 0x0089
                           000089   437 _DIRA	=	0x0089
                           00008A   438 G$DIRB$0$0 == 0x008a
                           00008A   439 _DIRB	=	0x008a
                           00008B   440 G$DIRC$0$0 == 0x008b
                           00008B   441 _DIRC	=	0x008b
                           00008E   442 G$DIRR$0$0 == 0x008e
                           00008E   443 _DIRR	=	0x008e
                           0000C8   444 G$PINA$0$0 == 0x00c8
                           0000C8   445 _PINA	=	0x00c8
                           0000E8   446 G$PINB$0$0 == 0x00e8
                           0000E8   447 _PINB	=	0x00e8
                           0000F8   448 G$PINC$0$0 == 0x00f8
                           0000F8   449 _PINC	=	0x00f8
                           00008D   450 G$PINR$0$0 == 0x008d
                           00008D   451 _PINR	=	0x008d
                           000080   452 G$PORTA$0$0 == 0x0080
                           000080   453 _PORTA	=	0x0080
                           000088   454 G$PORTB$0$0 == 0x0088
                           000088   455 _PORTB	=	0x0088
                           000090   456 G$PORTC$0$0 == 0x0090
                           000090   457 _PORTC	=	0x0090
                           00008C   458 G$PORTR$0$0 == 0x008c
                           00008C   459 _PORTR	=	0x008c
                           0000CE   460 G$IC0CAPT0$0$0 == 0x00ce
                           0000CE   461 _IC0CAPT0	=	0x00ce
                           0000CF   462 G$IC0CAPT1$0$0 == 0x00cf
                           0000CF   463 _IC0CAPT1	=	0x00cf
                           00CFCE   464 G$IC0CAPT$0$0 == 0xcfce
                           00CFCE   465 _IC0CAPT	=	0xcfce
                           0000CC   466 G$IC0MODE$0$0 == 0x00cc
                           0000CC   467 _IC0MODE	=	0x00cc
                           0000CD   468 G$IC0STATUS$0$0 == 0x00cd
                           0000CD   469 _IC0STATUS	=	0x00cd
                           0000D6   470 G$IC1CAPT0$0$0 == 0x00d6
                           0000D6   471 _IC1CAPT0	=	0x00d6
                           0000D7   472 G$IC1CAPT1$0$0 == 0x00d7
                           0000D7   473 _IC1CAPT1	=	0x00d7
                           00D7D6   474 G$IC1CAPT$0$0 == 0xd7d6
                           00D7D6   475 _IC1CAPT	=	0xd7d6
                           0000D4   476 G$IC1MODE$0$0 == 0x00d4
                           0000D4   477 _IC1MODE	=	0x00d4
                           0000D5   478 G$IC1STATUS$0$0 == 0x00d5
                           0000D5   479 _IC1STATUS	=	0x00d5
                           000092   480 G$NVADDR0$0$0 == 0x0092
                           000092   481 _NVADDR0	=	0x0092
                           000093   482 G$NVADDR1$0$0 == 0x0093
                           000093   483 _NVADDR1	=	0x0093
                           009392   484 G$NVADDR$0$0 == 0x9392
                           009392   485 _NVADDR	=	0x9392
                           000094   486 G$NVDATA0$0$0 == 0x0094
                           000094   487 _NVDATA0	=	0x0094
                           000095   488 G$NVDATA1$0$0 == 0x0095
                           000095   489 _NVDATA1	=	0x0095
                           009594   490 G$NVDATA$0$0 == 0x9594
                           009594   491 _NVDATA	=	0x9594
                           000096   492 G$NVKEY$0$0 == 0x0096
                           000096   493 _NVKEY	=	0x0096
                           000091   494 G$NVSTATUS$0$0 == 0x0091
                           000091   495 _NVSTATUS	=	0x0091
                           0000BC   496 G$OC0COMP0$0$0 == 0x00bc
                           0000BC   497 _OC0COMP0	=	0x00bc
                           0000BD   498 G$OC0COMP1$0$0 == 0x00bd
                           0000BD   499 _OC0COMP1	=	0x00bd
                           00BDBC   500 G$OC0COMP$0$0 == 0xbdbc
                           00BDBC   501 _OC0COMP	=	0xbdbc
                           0000B9   502 G$OC0MODE$0$0 == 0x00b9
                           0000B9   503 _OC0MODE	=	0x00b9
                           0000BA   504 G$OC0PIN$0$0 == 0x00ba
                           0000BA   505 _OC0PIN	=	0x00ba
                           0000BB   506 G$OC0STATUS$0$0 == 0x00bb
                           0000BB   507 _OC0STATUS	=	0x00bb
                           0000C4   508 G$OC1COMP0$0$0 == 0x00c4
                           0000C4   509 _OC1COMP0	=	0x00c4
                           0000C5   510 G$OC1COMP1$0$0 == 0x00c5
                           0000C5   511 _OC1COMP1	=	0x00c5
                           00C5C4   512 G$OC1COMP$0$0 == 0xc5c4
                           00C5C4   513 _OC1COMP	=	0xc5c4
                           0000C1   514 G$OC1MODE$0$0 == 0x00c1
                           0000C1   515 _OC1MODE	=	0x00c1
                           0000C2   516 G$OC1PIN$0$0 == 0x00c2
                           0000C2   517 _OC1PIN	=	0x00c2
                           0000C3   518 G$OC1STATUS$0$0 == 0x00c3
                           0000C3   519 _OC1STATUS	=	0x00c3
                           0000B1   520 G$RADIOACC$0$0 == 0x00b1
                           0000B1   521 _RADIOACC	=	0x00b1
                           0000B3   522 G$RADIOADDR0$0$0 == 0x00b3
                           0000B3   523 _RADIOADDR0	=	0x00b3
                           0000B2   524 G$RADIOADDR1$0$0 == 0x00b2
                           0000B2   525 _RADIOADDR1	=	0x00b2
                           00B2B3   526 G$RADIOADDR$0$0 == 0xb2b3
                           00B2B3   527 _RADIOADDR	=	0xb2b3
                           0000B7   528 G$RADIODATA0$0$0 == 0x00b7
                           0000B7   529 _RADIODATA0	=	0x00b7
                           0000B6   530 G$RADIODATA1$0$0 == 0x00b6
                           0000B6   531 _RADIODATA1	=	0x00b6
                           0000B5   532 G$RADIODATA2$0$0 == 0x00b5
                           0000B5   533 _RADIODATA2	=	0x00b5
                           0000B4   534 G$RADIODATA3$0$0 == 0x00b4
                           0000B4   535 _RADIODATA3	=	0x00b4
                           B4B5B6B7   536 G$RADIODATA$0$0 == 0xb4b5b6b7
                           B4B5B6B7   537 _RADIODATA	=	0xb4b5b6b7
                           0000BE   538 G$RADIOSTAT0$0$0 == 0x00be
                           0000BE   539 _RADIOSTAT0	=	0x00be
                           0000BF   540 G$RADIOSTAT1$0$0 == 0x00bf
                           0000BF   541 _RADIOSTAT1	=	0x00bf
                           00BFBE   542 G$RADIOSTAT$0$0 == 0xbfbe
                           00BFBE   543 _RADIOSTAT	=	0xbfbe
                           0000DF   544 G$SPCLKSRC$0$0 == 0x00df
                           0000DF   545 _SPCLKSRC	=	0x00df
                           0000DC   546 G$SPMODE$0$0 == 0x00dc
                           0000DC   547 _SPMODE	=	0x00dc
                           0000DE   548 G$SPSHREG$0$0 == 0x00de
                           0000DE   549 _SPSHREG	=	0x00de
                           0000DD   550 G$SPSTATUS$0$0 == 0x00dd
                           0000DD   551 _SPSTATUS	=	0x00dd
                           00009A   552 G$T0CLKSRC$0$0 == 0x009a
                           00009A   553 _T0CLKSRC	=	0x009a
                           00009C   554 G$T0CNT0$0$0 == 0x009c
                           00009C   555 _T0CNT0	=	0x009c
                           00009D   556 G$T0CNT1$0$0 == 0x009d
                           00009D   557 _T0CNT1	=	0x009d
                           009D9C   558 G$T0CNT$0$0 == 0x9d9c
                           009D9C   559 _T0CNT	=	0x9d9c
                           000099   560 G$T0MODE$0$0 == 0x0099
                           000099   561 _T0MODE	=	0x0099
                           00009E   562 G$T0PERIOD0$0$0 == 0x009e
                           00009E   563 _T0PERIOD0	=	0x009e
                           00009F   564 G$T0PERIOD1$0$0 == 0x009f
                           00009F   565 _T0PERIOD1	=	0x009f
                           009F9E   566 G$T0PERIOD$0$0 == 0x9f9e
                           009F9E   567 _T0PERIOD	=	0x9f9e
                           00009B   568 G$T0STATUS$0$0 == 0x009b
                           00009B   569 _T0STATUS	=	0x009b
                           0000A2   570 G$T1CLKSRC$0$0 == 0x00a2
                           0000A2   571 _T1CLKSRC	=	0x00a2
                           0000A4   572 G$T1CNT0$0$0 == 0x00a4
                           0000A4   573 _T1CNT0	=	0x00a4
                           0000A5   574 G$T1CNT1$0$0 == 0x00a5
                           0000A5   575 _T1CNT1	=	0x00a5
                           00A5A4   576 G$T1CNT$0$0 == 0xa5a4
                           00A5A4   577 _T1CNT	=	0xa5a4
                           0000A1   578 G$T1MODE$0$0 == 0x00a1
                           0000A1   579 _T1MODE	=	0x00a1
                           0000A6   580 G$T1PERIOD0$0$0 == 0x00a6
                           0000A6   581 _T1PERIOD0	=	0x00a6
                           0000A7   582 G$T1PERIOD1$0$0 == 0x00a7
                           0000A7   583 _T1PERIOD1	=	0x00a7
                           00A7A6   584 G$T1PERIOD$0$0 == 0xa7a6
                           00A7A6   585 _T1PERIOD	=	0xa7a6
                           0000A3   586 G$T1STATUS$0$0 == 0x00a3
                           0000A3   587 _T1STATUS	=	0x00a3
                           0000AA   588 G$T2CLKSRC$0$0 == 0x00aa
                           0000AA   589 _T2CLKSRC	=	0x00aa
                           0000AC   590 G$T2CNT0$0$0 == 0x00ac
                           0000AC   591 _T2CNT0	=	0x00ac
                           0000AD   592 G$T2CNT1$0$0 == 0x00ad
                           0000AD   593 _T2CNT1	=	0x00ad
                           00ADAC   594 G$T2CNT$0$0 == 0xadac
                           00ADAC   595 _T2CNT	=	0xadac
                           0000A9   596 G$T2MODE$0$0 == 0x00a9
                           0000A9   597 _T2MODE	=	0x00a9
                           0000AE   598 G$T2PERIOD0$0$0 == 0x00ae
                           0000AE   599 _T2PERIOD0	=	0x00ae
                           0000AF   600 G$T2PERIOD1$0$0 == 0x00af
                           0000AF   601 _T2PERIOD1	=	0x00af
                           00AFAE   602 G$T2PERIOD$0$0 == 0xafae
                           00AFAE   603 _T2PERIOD	=	0xafae
                           0000AB   604 G$T2STATUS$0$0 == 0x00ab
                           0000AB   605 _T2STATUS	=	0x00ab
                           0000E4   606 G$U0CTRL$0$0 == 0x00e4
                           0000E4   607 _U0CTRL	=	0x00e4
                           0000E7   608 G$U0MODE$0$0 == 0x00e7
                           0000E7   609 _U0MODE	=	0x00e7
                           0000E6   610 G$U0SHREG$0$0 == 0x00e6
                           0000E6   611 _U0SHREG	=	0x00e6
                           0000E5   612 G$U0STATUS$0$0 == 0x00e5
                           0000E5   613 _U0STATUS	=	0x00e5
                           0000EC   614 G$U1CTRL$0$0 == 0x00ec
                           0000EC   615 _U1CTRL	=	0x00ec
                           0000EF   616 G$U1MODE$0$0 == 0x00ef
                           0000EF   617 _U1MODE	=	0x00ef
                           0000EE   618 G$U1SHREG$0$0 == 0x00ee
                           0000EE   619 _U1SHREG	=	0x00ee
                           0000ED   620 G$U1STATUS$0$0 == 0x00ed
                           0000ED   621 _U1STATUS	=	0x00ed
                           0000DA   622 G$WDTCFG$0$0 == 0x00da
                           0000DA   623 _WDTCFG	=	0x00da
                           0000DB   624 G$WDTRESET$0$0 == 0x00db
                           0000DB   625 _WDTRESET	=	0x00db
                           0000F1   626 G$WTCFGA$0$0 == 0x00f1
                           0000F1   627 _WTCFGA	=	0x00f1
                           0000F9   628 G$WTCFGB$0$0 == 0x00f9
                           0000F9   629 _WTCFGB	=	0x00f9
                           0000F2   630 G$WTCNTA0$0$0 == 0x00f2
                           0000F2   631 _WTCNTA0	=	0x00f2
                           0000F3   632 G$WTCNTA1$0$0 == 0x00f3
                           0000F3   633 _WTCNTA1	=	0x00f3
                           00F3F2   634 G$WTCNTA$0$0 == 0xf3f2
                           00F3F2   635 _WTCNTA	=	0xf3f2
                           0000FA   636 G$WTCNTB0$0$0 == 0x00fa
                           0000FA   637 _WTCNTB0	=	0x00fa
                           0000FB   638 G$WTCNTB1$0$0 == 0x00fb
                           0000FB   639 _WTCNTB1	=	0x00fb
                           00FBFA   640 G$WTCNTB$0$0 == 0xfbfa
                           00FBFA   641 _WTCNTB	=	0xfbfa
                           0000EB   642 G$WTCNTR1$0$0 == 0x00eb
                           0000EB   643 _WTCNTR1	=	0x00eb
                           0000F4   644 G$WTEVTA0$0$0 == 0x00f4
                           0000F4   645 _WTEVTA0	=	0x00f4
                           0000F5   646 G$WTEVTA1$0$0 == 0x00f5
                           0000F5   647 _WTEVTA1	=	0x00f5
                           00F5F4   648 G$WTEVTA$0$0 == 0xf5f4
                           00F5F4   649 _WTEVTA	=	0xf5f4
                           0000F6   650 G$WTEVTB0$0$0 == 0x00f6
                           0000F6   651 _WTEVTB0	=	0x00f6
                           0000F7   652 G$WTEVTB1$0$0 == 0x00f7
                           0000F7   653 _WTEVTB1	=	0x00f7
                           00F7F6   654 G$WTEVTB$0$0 == 0xf7f6
                           00F7F6   655 _WTEVTB	=	0xf7f6
                           0000FC   656 G$WTEVTC0$0$0 == 0x00fc
                           0000FC   657 _WTEVTC0	=	0x00fc
                           0000FD   658 G$WTEVTC1$0$0 == 0x00fd
                           0000FD   659 _WTEVTC1	=	0x00fd
                           00FDFC   660 G$WTEVTC$0$0 == 0xfdfc
                           00FDFC   661 _WTEVTC	=	0xfdfc
                           0000FE   662 G$WTEVTD0$0$0 == 0x00fe
                           0000FE   663 _WTEVTD0	=	0x00fe
                           0000FF   664 G$WTEVTD1$0$0 == 0x00ff
                           0000FF   665 _WTEVTD1	=	0x00ff
                           00FFFE   666 G$WTEVTD$0$0 == 0xfffe
                           00FFFE   667 _WTEVTD	=	0xfffe
                           0000E9   668 G$WTIRQEN$0$0 == 0x00e9
                           0000E9   669 _WTIRQEN	=	0x00e9
                           0000EA   670 G$WTSTAT$0$0 == 0x00ea
                           0000EA   671 _WTSTAT	=	0x00ea
                                    672 ;--------------------------------------------------------
                                    673 ; special function bits
                                    674 ;--------------------------------------------------------
                                    675 	.area RSEG    (ABS,DATA)
      000000                        676 	.org 0x0000
                           0000E0   677 G$ACC_0$0$0 == 0x00e0
                           0000E0   678 _ACC_0	=	0x00e0
                           0000E1   679 G$ACC_1$0$0 == 0x00e1
                           0000E1   680 _ACC_1	=	0x00e1
                           0000E2   681 G$ACC_2$0$0 == 0x00e2
                           0000E2   682 _ACC_2	=	0x00e2
                           0000E3   683 G$ACC_3$0$0 == 0x00e3
                           0000E3   684 _ACC_3	=	0x00e3
                           0000E4   685 G$ACC_4$0$0 == 0x00e4
                           0000E4   686 _ACC_4	=	0x00e4
                           0000E5   687 G$ACC_5$0$0 == 0x00e5
                           0000E5   688 _ACC_5	=	0x00e5
                           0000E6   689 G$ACC_6$0$0 == 0x00e6
                           0000E6   690 _ACC_6	=	0x00e6
                           0000E7   691 G$ACC_7$0$0 == 0x00e7
                           0000E7   692 _ACC_7	=	0x00e7
                           0000F0   693 G$B_0$0$0 == 0x00f0
                           0000F0   694 _B_0	=	0x00f0
                           0000F1   695 G$B_1$0$0 == 0x00f1
                           0000F1   696 _B_1	=	0x00f1
                           0000F2   697 G$B_2$0$0 == 0x00f2
                           0000F2   698 _B_2	=	0x00f2
                           0000F3   699 G$B_3$0$0 == 0x00f3
                           0000F3   700 _B_3	=	0x00f3
                           0000F4   701 G$B_4$0$0 == 0x00f4
                           0000F4   702 _B_4	=	0x00f4
                           0000F5   703 G$B_5$0$0 == 0x00f5
                           0000F5   704 _B_5	=	0x00f5
                           0000F6   705 G$B_6$0$0 == 0x00f6
                           0000F6   706 _B_6	=	0x00f6
                           0000F7   707 G$B_7$0$0 == 0x00f7
                           0000F7   708 _B_7	=	0x00f7
                           0000A0   709 G$E2IE_0$0$0 == 0x00a0
                           0000A0   710 _E2IE_0	=	0x00a0
                           0000A1   711 G$E2IE_1$0$0 == 0x00a1
                           0000A1   712 _E2IE_1	=	0x00a1
                           0000A2   713 G$E2IE_2$0$0 == 0x00a2
                           0000A2   714 _E2IE_2	=	0x00a2
                           0000A3   715 G$E2IE_3$0$0 == 0x00a3
                           0000A3   716 _E2IE_3	=	0x00a3
                           0000A4   717 G$E2IE_4$0$0 == 0x00a4
                           0000A4   718 _E2IE_4	=	0x00a4
                           0000A5   719 G$E2IE_5$0$0 == 0x00a5
                           0000A5   720 _E2IE_5	=	0x00a5
                           0000A6   721 G$E2IE_6$0$0 == 0x00a6
                           0000A6   722 _E2IE_6	=	0x00a6
                           0000A7   723 G$E2IE_7$0$0 == 0x00a7
                           0000A7   724 _E2IE_7	=	0x00a7
                           0000C0   725 G$E2IP_0$0$0 == 0x00c0
                           0000C0   726 _E2IP_0	=	0x00c0
                           0000C1   727 G$E2IP_1$0$0 == 0x00c1
                           0000C1   728 _E2IP_1	=	0x00c1
                           0000C2   729 G$E2IP_2$0$0 == 0x00c2
                           0000C2   730 _E2IP_2	=	0x00c2
                           0000C3   731 G$E2IP_3$0$0 == 0x00c3
                           0000C3   732 _E2IP_3	=	0x00c3
                           0000C4   733 G$E2IP_4$0$0 == 0x00c4
                           0000C4   734 _E2IP_4	=	0x00c4
                           0000C5   735 G$E2IP_5$0$0 == 0x00c5
                           0000C5   736 _E2IP_5	=	0x00c5
                           0000C6   737 G$E2IP_6$0$0 == 0x00c6
                           0000C6   738 _E2IP_6	=	0x00c6
                           0000C7   739 G$E2IP_7$0$0 == 0x00c7
                           0000C7   740 _E2IP_7	=	0x00c7
                           000098   741 G$EIE_0$0$0 == 0x0098
                           000098   742 _EIE_0	=	0x0098
                           000099   743 G$EIE_1$0$0 == 0x0099
                           000099   744 _EIE_1	=	0x0099
                           00009A   745 G$EIE_2$0$0 == 0x009a
                           00009A   746 _EIE_2	=	0x009a
                           00009B   747 G$EIE_3$0$0 == 0x009b
                           00009B   748 _EIE_3	=	0x009b
                           00009C   749 G$EIE_4$0$0 == 0x009c
                           00009C   750 _EIE_4	=	0x009c
                           00009D   751 G$EIE_5$0$0 == 0x009d
                           00009D   752 _EIE_5	=	0x009d
                           00009E   753 G$EIE_6$0$0 == 0x009e
                           00009E   754 _EIE_6	=	0x009e
                           00009F   755 G$EIE_7$0$0 == 0x009f
                           00009F   756 _EIE_7	=	0x009f
                           0000B0   757 G$EIP_0$0$0 == 0x00b0
                           0000B0   758 _EIP_0	=	0x00b0
                           0000B1   759 G$EIP_1$0$0 == 0x00b1
                           0000B1   760 _EIP_1	=	0x00b1
                           0000B2   761 G$EIP_2$0$0 == 0x00b2
                           0000B2   762 _EIP_2	=	0x00b2
                           0000B3   763 G$EIP_3$0$0 == 0x00b3
                           0000B3   764 _EIP_3	=	0x00b3
                           0000B4   765 G$EIP_4$0$0 == 0x00b4
                           0000B4   766 _EIP_4	=	0x00b4
                           0000B5   767 G$EIP_5$0$0 == 0x00b5
                           0000B5   768 _EIP_5	=	0x00b5
                           0000B6   769 G$EIP_6$0$0 == 0x00b6
                           0000B6   770 _EIP_6	=	0x00b6
                           0000B7   771 G$EIP_7$0$0 == 0x00b7
                           0000B7   772 _EIP_7	=	0x00b7
                           0000A8   773 G$IE_0$0$0 == 0x00a8
                           0000A8   774 _IE_0	=	0x00a8
                           0000A9   775 G$IE_1$0$0 == 0x00a9
                           0000A9   776 _IE_1	=	0x00a9
                           0000AA   777 G$IE_2$0$0 == 0x00aa
                           0000AA   778 _IE_2	=	0x00aa
                           0000AB   779 G$IE_3$0$0 == 0x00ab
                           0000AB   780 _IE_3	=	0x00ab
                           0000AC   781 G$IE_4$0$0 == 0x00ac
                           0000AC   782 _IE_4	=	0x00ac
                           0000AD   783 G$IE_5$0$0 == 0x00ad
                           0000AD   784 _IE_5	=	0x00ad
                           0000AE   785 G$IE_6$0$0 == 0x00ae
                           0000AE   786 _IE_6	=	0x00ae
                           0000AF   787 G$IE_7$0$0 == 0x00af
                           0000AF   788 _IE_7	=	0x00af
                           0000AF   789 G$EA$0$0 == 0x00af
                           0000AF   790 _EA	=	0x00af
                           0000B8   791 G$IP_0$0$0 == 0x00b8
                           0000B8   792 _IP_0	=	0x00b8
                           0000B9   793 G$IP_1$0$0 == 0x00b9
                           0000B9   794 _IP_1	=	0x00b9
                           0000BA   795 G$IP_2$0$0 == 0x00ba
                           0000BA   796 _IP_2	=	0x00ba
                           0000BB   797 G$IP_3$0$0 == 0x00bb
                           0000BB   798 _IP_3	=	0x00bb
                           0000BC   799 G$IP_4$0$0 == 0x00bc
                           0000BC   800 _IP_4	=	0x00bc
                           0000BD   801 G$IP_5$0$0 == 0x00bd
                           0000BD   802 _IP_5	=	0x00bd
                           0000BE   803 G$IP_6$0$0 == 0x00be
                           0000BE   804 _IP_6	=	0x00be
                           0000BF   805 G$IP_7$0$0 == 0x00bf
                           0000BF   806 _IP_7	=	0x00bf
                           0000D0   807 G$P$0$0 == 0x00d0
                           0000D0   808 _P	=	0x00d0
                           0000D1   809 G$F1$0$0 == 0x00d1
                           0000D1   810 _F1	=	0x00d1
                           0000D2   811 G$OV$0$0 == 0x00d2
                           0000D2   812 _OV	=	0x00d2
                           0000D3   813 G$RS0$0$0 == 0x00d3
                           0000D3   814 _RS0	=	0x00d3
                           0000D4   815 G$RS1$0$0 == 0x00d4
                           0000D4   816 _RS1	=	0x00d4
                           0000D5   817 G$F0$0$0 == 0x00d5
                           0000D5   818 _F0	=	0x00d5
                           0000D6   819 G$AC$0$0 == 0x00d6
                           0000D6   820 _AC	=	0x00d6
                           0000D7   821 G$CY$0$0 == 0x00d7
                           0000D7   822 _CY	=	0x00d7
                           0000C8   823 G$PINA_0$0$0 == 0x00c8
                           0000C8   824 _PINA_0	=	0x00c8
                           0000C9   825 G$PINA_1$0$0 == 0x00c9
                           0000C9   826 _PINA_1	=	0x00c9
                           0000CA   827 G$PINA_2$0$0 == 0x00ca
                           0000CA   828 _PINA_2	=	0x00ca
                           0000CB   829 G$PINA_3$0$0 == 0x00cb
                           0000CB   830 _PINA_3	=	0x00cb
                           0000CC   831 G$PINA_4$0$0 == 0x00cc
                           0000CC   832 _PINA_4	=	0x00cc
                           0000CD   833 G$PINA_5$0$0 == 0x00cd
                           0000CD   834 _PINA_5	=	0x00cd
                           0000CE   835 G$PINA_6$0$0 == 0x00ce
                           0000CE   836 _PINA_6	=	0x00ce
                           0000CF   837 G$PINA_7$0$0 == 0x00cf
                           0000CF   838 _PINA_7	=	0x00cf
                           0000E8   839 G$PINB_0$0$0 == 0x00e8
                           0000E8   840 _PINB_0	=	0x00e8
                           0000E9   841 G$PINB_1$0$0 == 0x00e9
                           0000E9   842 _PINB_1	=	0x00e9
                           0000EA   843 G$PINB_2$0$0 == 0x00ea
                           0000EA   844 _PINB_2	=	0x00ea
                           0000EB   845 G$PINB_3$0$0 == 0x00eb
                           0000EB   846 _PINB_3	=	0x00eb
                           0000EC   847 G$PINB_4$0$0 == 0x00ec
                           0000EC   848 _PINB_4	=	0x00ec
                           0000ED   849 G$PINB_5$0$0 == 0x00ed
                           0000ED   850 _PINB_5	=	0x00ed
                           0000EE   851 G$PINB_6$0$0 == 0x00ee
                           0000EE   852 _PINB_6	=	0x00ee
                           0000EF   853 G$PINB_7$0$0 == 0x00ef
                           0000EF   854 _PINB_7	=	0x00ef
                           0000F8   855 G$PINC_0$0$0 == 0x00f8
                           0000F8   856 _PINC_0	=	0x00f8
                           0000F9   857 G$PINC_1$0$0 == 0x00f9
                           0000F9   858 _PINC_1	=	0x00f9
                           0000FA   859 G$PINC_2$0$0 == 0x00fa
                           0000FA   860 _PINC_2	=	0x00fa
                           0000FB   861 G$PINC_3$0$0 == 0x00fb
                           0000FB   862 _PINC_3	=	0x00fb
                           0000FC   863 G$PINC_4$0$0 == 0x00fc
                           0000FC   864 _PINC_4	=	0x00fc
                           0000FD   865 G$PINC_5$0$0 == 0x00fd
                           0000FD   866 _PINC_5	=	0x00fd
                           0000FE   867 G$PINC_6$0$0 == 0x00fe
                           0000FE   868 _PINC_6	=	0x00fe
                           0000FF   869 G$PINC_7$0$0 == 0x00ff
                           0000FF   870 _PINC_7	=	0x00ff
                           000080   871 G$PORTA_0$0$0 == 0x0080
                           000080   872 _PORTA_0	=	0x0080
                           000081   873 G$PORTA_1$0$0 == 0x0081
                           000081   874 _PORTA_1	=	0x0081
                           000082   875 G$PORTA_2$0$0 == 0x0082
                           000082   876 _PORTA_2	=	0x0082
                           000083   877 G$PORTA_3$0$0 == 0x0083
                           000083   878 _PORTA_3	=	0x0083
                           000084   879 G$PORTA_4$0$0 == 0x0084
                           000084   880 _PORTA_4	=	0x0084
                           000085   881 G$PORTA_5$0$0 == 0x0085
                           000085   882 _PORTA_5	=	0x0085
                           000086   883 G$PORTA_6$0$0 == 0x0086
                           000086   884 _PORTA_6	=	0x0086
                           000087   885 G$PORTA_7$0$0 == 0x0087
                           000087   886 _PORTA_7	=	0x0087
                           000088   887 G$PORTB_0$0$0 == 0x0088
                           000088   888 _PORTB_0	=	0x0088
                           000089   889 G$PORTB_1$0$0 == 0x0089
                           000089   890 _PORTB_1	=	0x0089
                           00008A   891 G$PORTB_2$0$0 == 0x008a
                           00008A   892 _PORTB_2	=	0x008a
                           00008B   893 G$PORTB_3$0$0 == 0x008b
                           00008B   894 _PORTB_3	=	0x008b
                           00008C   895 G$PORTB_4$0$0 == 0x008c
                           00008C   896 _PORTB_4	=	0x008c
                           00008D   897 G$PORTB_5$0$0 == 0x008d
                           00008D   898 _PORTB_5	=	0x008d
                           00008E   899 G$PORTB_6$0$0 == 0x008e
                           00008E   900 _PORTB_6	=	0x008e
                           00008F   901 G$PORTB_7$0$0 == 0x008f
                           00008F   902 _PORTB_7	=	0x008f
                           000090   903 G$PORTC_0$0$0 == 0x0090
                           000090   904 _PORTC_0	=	0x0090
                           000091   905 G$PORTC_1$0$0 == 0x0091
                           000091   906 _PORTC_1	=	0x0091
                           000092   907 G$PORTC_2$0$0 == 0x0092
                           000092   908 _PORTC_2	=	0x0092
                           000093   909 G$PORTC_3$0$0 == 0x0093
                           000093   910 _PORTC_3	=	0x0093
                           000094   911 G$PORTC_4$0$0 == 0x0094
                           000094   912 _PORTC_4	=	0x0094
                           000095   913 G$PORTC_5$0$0 == 0x0095
                           000095   914 _PORTC_5	=	0x0095
                           000096   915 G$PORTC_6$0$0 == 0x0096
                           000096   916 _PORTC_6	=	0x0096
                           000097   917 G$PORTC_7$0$0 == 0x0097
                           000097   918 _PORTC_7	=	0x0097
                                    919 ;--------------------------------------------------------
                                    920 ; overlayable register banks
                                    921 ;--------------------------------------------------------
                                    922 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        923 	.ds 8
                                    924 ;--------------------------------------------------------
                                    925 ; internal ram data
                                    926 ;--------------------------------------------------------
                                    927 	.area DSEG    (DATA)
                                    928 ;--------------------------------------------------------
                                    929 ; overlayable items in internal ram 
                                    930 ;--------------------------------------------------------
                                    931 ;--------------------------------------------------------
                                    932 ; indirectly addressable internal ram data
                                    933 ;--------------------------------------------------------
                                    934 	.area ISEG    (DATA)
                                    935 ;--------------------------------------------------------
                                    936 ; absolute internal ram data
                                    937 ;--------------------------------------------------------
                                    938 	.area IABS    (ABS,DATA)
                                    939 	.area IABS    (ABS,DATA)
                                    940 ;--------------------------------------------------------
                                    941 ; bit data
                                    942 ;--------------------------------------------------------
                                    943 	.area BSEG    (BIT)
                                    944 ;--------------------------------------------------------
                                    945 ; paged external ram data
                                    946 ;--------------------------------------------------------
                                    947 	.area PSEG    (PAG,XDATA)
                                    948 ;--------------------------------------------------------
                                    949 ; external ram data
                                    950 ;--------------------------------------------------------
                                    951 	.area XSEG    (XDATA)
                           007020   952 G$ADCCH0VAL0$0$0 == 0x7020
                           007020   953 _ADCCH0VAL0	=	0x7020
                           007021   954 G$ADCCH0VAL1$0$0 == 0x7021
                           007021   955 _ADCCH0VAL1	=	0x7021
                           007020   956 G$ADCCH0VAL$0$0 == 0x7020
                           007020   957 _ADCCH0VAL	=	0x7020
                           007022   958 G$ADCCH1VAL0$0$0 == 0x7022
                           007022   959 _ADCCH1VAL0	=	0x7022
                           007023   960 G$ADCCH1VAL1$0$0 == 0x7023
                           007023   961 _ADCCH1VAL1	=	0x7023
                           007022   962 G$ADCCH1VAL$0$0 == 0x7022
                           007022   963 _ADCCH1VAL	=	0x7022
                           007024   964 G$ADCCH2VAL0$0$0 == 0x7024
                           007024   965 _ADCCH2VAL0	=	0x7024
                           007025   966 G$ADCCH2VAL1$0$0 == 0x7025
                           007025   967 _ADCCH2VAL1	=	0x7025
                           007024   968 G$ADCCH2VAL$0$0 == 0x7024
                           007024   969 _ADCCH2VAL	=	0x7024
                           007026   970 G$ADCCH3VAL0$0$0 == 0x7026
                           007026   971 _ADCCH3VAL0	=	0x7026
                           007027   972 G$ADCCH3VAL1$0$0 == 0x7027
                           007027   973 _ADCCH3VAL1	=	0x7027
                           007026   974 G$ADCCH3VAL$0$0 == 0x7026
                           007026   975 _ADCCH3VAL	=	0x7026
                           007028   976 G$ADCTUNE0$0$0 == 0x7028
                           007028   977 _ADCTUNE0	=	0x7028
                           007029   978 G$ADCTUNE1$0$0 == 0x7029
                           007029   979 _ADCTUNE1	=	0x7029
                           00702A   980 G$ADCTUNE2$0$0 == 0x702a
                           00702A   981 _ADCTUNE2	=	0x702a
                           007010   982 G$DMA0ADDR0$0$0 == 0x7010
                           007010   983 _DMA0ADDR0	=	0x7010
                           007011   984 G$DMA0ADDR1$0$0 == 0x7011
                           007011   985 _DMA0ADDR1	=	0x7011
                           007010   986 G$DMA0ADDR$0$0 == 0x7010
                           007010   987 _DMA0ADDR	=	0x7010
                           007014   988 G$DMA0CONFIG$0$0 == 0x7014
                           007014   989 _DMA0CONFIG	=	0x7014
                           007012   990 G$DMA1ADDR0$0$0 == 0x7012
                           007012   991 _DMA1ADDR0	=	0x7012
                           007013   992 G$DMA1ADDR1$0$0 == 0x7013
                           007013   993 _DMA1ADDR1	=	0x7013
                           007012   994 G$DMA1ADDR$0$0 == 0x7012
                           007012   995 _DMA1ADDR	=	0x7012
                           007015   996 G$DMA1CONFIG$0$0 == 0x7015
                           007015   997 _DMA1CONFIG	=	0x7015
                           007070   998 G$FRCOSCCONFIG$0$0 == 0x7070
                           007070   999 _FRCOSCCONFIG	=	0x7070
                           007071  1000 G$FRCOSCCTRL$0$0 == 0x7071
                           007071  1001 _FRCOSCCTRL	=	0x7071
                           007076  1002 G$FRCOSCFREQ0$0$0 == 0x7076
                           007076  1003 _FRCOSCFREQ0	=	0x7076
                           007077  1004 G$FRCOSCFREQ1$0$0 == 0x7077
                           007077  1005 _FRCOSCFREQ1	=	0x7077
                           007076  1006 G$FRCOSCFREQ$0$0 == 0x7076
                           007076  1007 _FRCOSCFREQ	=	0x7076
                           007072  1008 G$FRCOSCKFILT0$0$0 == 0x7072
                           007072  1009 _FRCOSCKFILT0	=	0x7072
                           007073  1010 G$FRCOSCKFILT1$0$0 == 0x7073
                           007073  1011 _FRCOSCKFILT1	=	0x7073
                           007072  1012 G$FRCOSCKFILT$0$0 == 0x7072
                           007072  1013 _FRCOSCKFILT	=	0x7072
                           007078  1014 G$FRCOSCPER0$0$0 == 0x7078
                           007078  1015 _FRCOSCPER0	=	0x7078
                           007079  1016 G$FRCOSCPER1$0$0 == 0x7079
                           007079  1017 _FRCOSCPER1	=	0x7079
                           007078  1018 G$FRCOSCPER$0$0 == 0x7078
                           007078  1019 _FRCOSCPER	=	0x7078
                           007074  1020 G$FRCOSCREF0$0$0 == 0x7074
                           007074  1021 _FRCOSCREF0	=	0x7074
                           007075  1022 G$FRCOSCREF1$0$0 == 0x7075
                           007075  1023 _FRCOSCREF1	=	0x7075
                           007074  1024 G$FRCOSCREF$0$0 == 0x7074
                           007074  1025 _FRCOSCREF	=	0x7074
                           007007  1026 G$ANALOGA$0$0 == 0x7007
                           007007  1027 _ANALOGA	=	0x7007
                           00700C  1028 G$GPIOENABLE$0$0 == 0x700c
                           00700C  1029 _GPIOENABLE	=	0x700c
                           007003  1030 G$EXTIRQ$0$0 == 0x7003
                           007003  1031 _EXTIRQ	=	0x7003
                           007000  1032 G$INTCHGA$0$0 == 0x7000
                           007000  1033 _INTCHGA	=	0x7000
                           007001  1034 G$INTCHGB$0$0 == 0x7001
                           007001  1035 _INTCHGB	=	0x7001
                           007002  1036 G$INTCHGC$0$0 == 0x7002
                           007002  1037 _INTCHGC	=	0x7002
                           007008  1038 G$PALTA$0$0 == 0x7008
                           007008  1039 _PALTA	=	0x7008
                           007009  1040 G$PALTB$0$0 == 0x7009
                           007009  1041 _PALTB	=	0x7009
                           00700A  1042 G$PALTC$0$0 == 0x700a
                           00700A  1043 _PALTC	=	0x700a
                           007046  1044 G$PALTRADIO$0$0 == 0x7046
                           007046  1045 _PALTRADIO	=	0x7046
                           007004  1046 G$PINCHGA$0$0 == 0x7004
                           007004  1047 _PINCHGA	=	0x7004
                           007005  1048 G$PINCHGB$0$0 == 0x7005
                           007005  1049 _PINCHGB	=	0x7005
                           007006  1050 G$PINCHGC$0$0 == 0x7006
                           007006  1051 _PINCHGC	=	0x7006
                           00700B  1052 G$PINSEL$0$0 == 0x700b
                           00700B  1053 _PINSEL	=	0x700b
                           007060  1054 G$LPOSCCONFIG$0$0 == 0x7060
                           007060  1055 _LPOSCCONFIG	=	0x7060
                           007066  1056 G$LPOSCFREQ0$0$0 == 0x7066
                           007066  1057 _LPOSCFREQ0	=	0x7066
                           007067  1058 G$LPOSCFREQ1$0$0 == 0x7067
                           007067  1059 _LPOSCFREQ1	=	0x7067
                           007066  1060 G$LPOSCFREQ$0$0 == 0x7066
                           007066  1061 _LPOSCFREQ	=	0x7066
                           007062  1062 G$LPOSCKFILT0$0$0 == 0x7062
                           007062  1063 _LPOSCKFILT0	=	0x7062
                           007063  1064 G$LPOSCKFILT1$0$0 == 0x7063
                           007063  1065 _LPOSCKFILT1	=	0x7063
                           007062  1066 G$LPOSCKFILT$0$0 == 0x7062
                           007062  1067 _LPOSCKFILT	=	0x7062
                           007068  1068 G$LPOSCPER0$0$0 == 0x7068
                           007068  1069 _LPOSCPER0	=	0x7068
                           007069  1070 G$LPOSCPER1$0$0 == 0x7069
                           007069  1071 _LPOSCPER1	=	0x7069
                           007068  1072 G$LPOSCPER$0$0 == 0x7068
                           007068  1073 _LPOSCPER	=	0x7068
                           007064  1074 G$LPOSCREF0$0$0 == 0x7064
                           007064  1075 _LPOSCREF0	=	0x7064
                           007065  1076 G$LPOSCREF1$0$0 == 0x7065
                           007065  1077 _LPOSCREF1	=	0x7065
                           007064  1078 G$LPOSCREF$0$0 == 0x7064
                           007064  1079 _LPOSCREF	=	0x7064
                           007054  1080 G$LPXOSCGM$0$0 == 0x7054
                           007054  1081 _LPXOSCGM	=	0x7054
                           007F01  1082 G$MISCCTRL$0$0 == 0x7f01
                           007F01  1083 _MISCCTRL	=	0x7f01
                           007053  1084 G$OSCCALIB$0$0 == 0x7053
                           007053  1085 _OSCCALIB	=	0x7053
                           007050  1086 G$OSCFORCERUN$0$0 == 0x7050
                           007050  1087 _OSCFORCERUN	=	0x7050
                           007052  1088 G$OSCREADY$0$0 == 0x7052
                           007052  1089 _OSCREADY	=	0x7052
                           007051  1090 G$OSCRUN$0$0 == 0x7051
                           007051  1091 _OSCRUN	=	0x7051
                           007040  1092 G$RADIOFDATAADDR0$0$0 == 0x7040
                           007040  1093 _RADIOFDATAADDR0	=	0x7040
                           007041  1094 G$RADIOFDATAADDR1$0$0 == 0x7041
                           007041  1095 _RADIOFDATAADDR1	=	0x7041
                           007040  1096 G$RADIOFDATAADDR$0$0 == 0x7040
                           007040  1097 _RADIOFDATAADDR	=	0x7040
                           007042  1098 G$RADIOFSTATADDR0$0$0 == 0x7042
                           007042  1099 _RADIOFSTATADDR0	=	0x7042
                           007043  1100 G$RADIOFSTATADDR1$0$0 == 0x7043
                           007043  1101 _RADIOFSTATADDR1	=	0x7043
                           007042  1102 G$RADIOFSTATADDR$0$0 == 0x7042
                           007042  1103 _RADIOFSTATADDR	=	0x7042
                           007044  1104 G$RADIOMUX$0$0 == 0x7044
                           007044  1105 _RADIOMUX	=	0x7044
                           007084  1106 G$SCRATCH0$0$0 == 0x7084
                           007084  1107 _SCRATCH0	=	0x7084
                           007085  1108 G$SCRATCH1$0$0 == 0x7085
                           007085  1109 _SCRATCH1	=	0x7085
                           007086  1110 G$SCRATCH2$0$0 == 0x7086
                           007086  1111 _SCRATCH2	=	0x7086
                           007087  1112 G$SCRATCH3$0$0 == 0x7087
                           007087  1113 _SCRATCH3	=	0x7087
                           007F00  1114 G$SILICONREV$0$0 == 0x7f00
                           007F00  1115 _SILICONREV	=	0x7f00
                           007F19  1116 G$XTALAMPL$0$0 == 0x7f19
                           007F19  1117 _XTALAMPL	=	0x7f19
                           007F18  1118 G$XTALOSC$0$0 == 0x7f18
                           007F18  1119 _XTALOSC	=	0x7f18
                           007F1A  1120 G$XTALREADY$0$0 == 0x7f1a
                           007F1A  1121 _XTALREADY	=	0x7f1a
                           00FC06  1122 Fdisplay_com0$flash_deviceid$0$0 == 0xfc06
                           00FC06  1123 _flash_deviceid	=	0xfc06
                           00FC00  1124 Fdisplay_com0$flash_calsector$0$0 == 0xfc00
                           00FC00  1125 _flash_calsector	=	0xfc00
                                   1126 ;--------------------------------------------------------
                                   1127 ; absolute external ram data
                                   1128 ;--------------------------------------------------------
                                   1129 	.area XABS    (ABS,XDATA)
                                   1130 ;--------------------------------------------------------
                                   1131 ; external initialized ram data
                                   1132 ;--------------------------------------------------------
                                   1133 	.area XISEG   (XDATA)
                                   1134 	.area HOME    (CODE)
                                   1135 	.area GSINIT0 (CODE)
                                   1136 	.area GSINIT1 (CODE)
                                   1137 	.area GSINIT2 (CODE)
                                   1138 	.area GSINIT3 (CODE)
                                   1139 	.area GSINIT4 (CODE)
                                   1140 	.area GSINIT5 (CODE)
                                   1141 	.area GSINIT  (CODE)
                                   1142 	.area GSFINAL (CODE)
                                   1143 	.area CSEG    (CODE)
                                   1144 ;--------------------------------------------------------
                                   1145 ; global & static initialisations
                                   1146 ;--------------------------------------------------------
                                   1147 	.area HOME    (CODE)
                                   1148 	.area GSINIT  (CODE)
                                   1149 	.area GSFINAL (CODE)
                                   1150 	.area GSINIT  (CODE)
                                   1151 ;--------------------------------------------------------
                                   1152 ; Home
                                   1153 ;--------------------------------------------------------
                                   1154 	.area HOME    (CODE)
                                   1155 	.area HOME    (CODE)
                                   1156 ;--------------------------------------------------------
                                   1157 ; code
                                   1158 ;--------------------------------------------------------
                                   1159 	.area CSEG    (CODE)
                                   1160 	.area CSEG    (CODE)
                                   1161 	.area CONST   (CODE)
                                   1162 	.area XINIT   (CODE)
                                   1163 	.area CABS    (ABS,CODE)
