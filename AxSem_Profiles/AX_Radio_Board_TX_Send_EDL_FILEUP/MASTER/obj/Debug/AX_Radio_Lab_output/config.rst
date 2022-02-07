                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module config
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _axradio_fxtal
                                     12 	.globl _axradio_lposckfiltmax
                                     13 	.globl _axradio_sync_slave_rxtimeout
                                     14 	.globl _axradio_sync_slave_rxwindow
                                     15 	.globl _axradio_sync_slave_rxadvance
                                     16 	.globl _axradio_sync_slave_nrrx
                                     17 	.globl _axradio_sync_slave_resyncloss
                                     18 	.globl _axradio_sync_slave_maxperiod
                                     19 	.globl _axradio_sync_slave_syncpause
                                     20 	.globl _axradio_sync_slave_initialsyncwindow
                                     21 	.globl _axradio_sync_slave_syncwindow
                                     22 	.globl _axradio_sync_xoscstartup
                                     23 	.globl _axradio_sync_period
                                     24 	.globl _axradio_wor_period
                                     25 	.globl _axradio_framing_minpayloadlen
                                     26 	.globl _axradio_framing_ack_seqnrpos
                                     27 	.globl _axradio_framing_ack_retransmissions
                                     28 	.globl _axradio_framing_ack_delay
                                     29 	.globl _axradio_framing_ack_timeout
                                     30 	.globl _axradio_framing_enable_sfdcallback
                                     31 	.globl _axradio_framing_syncflags
                                     32 	.globl _axradio_framing_syncword
                                     33 	.globl _axradio_framing_synclen
                                     34 	.globl _axradio_framing_swcrclen
                                     35 	.globl _axradio_framing_lenmask
                                     36 	.globl _axradio_framing_lenoffs
                                     37 	.globl _axradio_framing_lenpos
                                     38 	.globl _axradio_framing_sourceaddrpos
                                     39 	.globl _axradio_framing_destaddrpos
                                     40 	.globl _axradio_framing_addrlen
                                     41 	.globl _axradio_framing_maclen
                                     42 	.globl _axradio_phy_preamble_appendpattern
                                     43 	.globl _axradio_phy_preamble_appendbits
                                     44 	.globl _axradio_phy_preamble_flags
                                     45 	.globl _axradio_phy_preamble_byte
                                     46 	.globl _axradio_phy_preamble_len
                                     47 	.globl _axradio_phy_preamble_longlen
                                     48 	.globl _axradio_phy_preamble_wor_len
                                     49 	.globl _axradio_phy_preamble_wor_longlen
                                     50 	.globl _axradio_phy_lbt_forcetx
                                     51 	.globl _axradio_phy_lbt_retries
                                     52 	.globl _axradio_phy_cs_enabled
                                     53 	.globl _axradio_phy_cs_period
                                     54 	.globl _axradio_phy_channelbusy
                                     55 	.globl _axradio_phy_rssireference
                                     56 	.globl _axradio_phy_rssioffset
                                     57 	.globl _axradio_phy_maxfreqoffset
                                     58 	.globl _axradio_phy_vcocalib
                                     59 	.globl _axradio_phy_chanvcoiinit
                                     60 	.globl _axradio_phy_chanpllrnginit
                                     61 	.globl _axradio_phy_chanfreq
                                     62 	.globl _axradio_phy_nrchannels
                                     63 	.globl _axradio_phy_pn9
                                     64 	.globl _axradio_phy_innerfreqloop
                                     65 	.globl _axradio_byteconv_buffer
                                     66 	.globl _axradio_byteconv
                                     67 	.globl _crc_ccitt
                                     68 	.globl _PORTC_7
                                     69 	.globl _PORTC_6
                                     70 	.globl _PORTC_5
                                     71 	.globl _PORTC_4
                                     72 	.globl _PORTC_3
                                     73 	.globl _PORTC_2
                                     74 	.globl _PORTC_1
                                     75 	.globl _PORTC_0
                                     76 	.globl _PORTB_7
                                     77 	.globl _PORTB_6
                                     78 	.globl _PORTB_5
                                     79 	.globl _PORTB_4
                                     80 	.globl _PORTB_3
                                     81 	.globl _PORTB_2
                                     82 	.globl _PORTB_1
                                     83 	.globl _PORTB_0
                                     84 	.globl _PORTA_7
                                     85 	.globl _PORTA_6
                                     86 	.globl _PORTA_5
                                     87 	.globl _PORTA_4
                                     88 	.globl _PORTA_3
                                     89 	.globl _PORTA_2
                                     90 	.globl _PORTA_1
                                     91 	.globl _PORTA_0
                                     92 	.globl _PINC_7
                                     93 	.globl _PINC_6
                                     94 	.globl _PINC_5
                                     95 	.globl _PINC_4
                                     96 	.globl _PINC_3
                                     97 	.globl _PINC_2
                                     98 	.globl _PINC_1
                                     99 	.globl _PINC_0
                                    100 	.globl _PINB_7
                                    101 	.globl _PINB_6
                                    102 	.globl _PINB_5
                                    103 	.globl _PINB_4
                                    104 	.globl _PINB_3
                                    105 	.globl _PINB_2
                                    106 	.globl _PINB_1
                                    107 	.globl _PINB_0
                                    108 	.globl _PINA_7
                                    109 	.globl _PINA_6
                                    110 	.globl _PINA_5
                                    111 	.globl _PINA_4
                                    112 	.globl _PINA_3
                                    113 	.globl _PINA_2
                                    114 	.globl _PINA_1
                                    115 	.globl _PINA_0
                                    116 	.globl _CY
                                    117 	.globl _AC
                                    118 	.globl _F0
                                    119 	.globl _RS1
                                    120 	.globl _RS0
                                    121 	.globl _OV
                                    122 	.globl _F1
                                    123 	.globl _P
                                    124 	.globl _IP_7
                                    125 	.globl _IP_6
                                    126 	.globl _IP_5
                                    127 	.globl _IP_4
                                    128 	.globl _IP_3
                                    129 	.globl _IP_2
                                    130 	.globl _IP_1
                                    131 	.globl _IP_0
                                    132 	.globl _EA
                                    133 	.globl _IE_7
                                    134 	.globl _IE_6
                                    135 	.globl _IE_5
                                    136 	.globl _IE_4
                                    137 	.globl _IE_3
                                    138 	.globl _IE_2
                                    139 	.globl _IE_1
                                    140 	.globl _IE_0
                                    141 	.globl _EIP_7
                                    142 	.globl _EIP_6
                                    143 	.globl _EIP_5
                                    144 	.globl _EIP_4
                                    145 	.globl _EIP_3
                                    146 	.globl _EIP_2
                                    147 	.globl _EIP_1
                                    148 	.globl _EIP_0
                                    149 	.globl _EIE_7
                                    150 	.globl _EIE_6
                                    151 	.globl _EIE_5
                                    152 	.globl _EIE_4
                                    153 	.globl _EIE_3
                                    154 	.globl _EIE_2
                                    155 	.globl _EIE_1
                                    156 	.globl _EIE_0
                                    157 	.globl _E2IP_7
                                    158 	.globl _E2IP_6
                                    159 	.globl _E2IP_5
                                    160 	.globl _E2IP_4
                                    161 	.globl _E2IP_3
                                    162 	.globl _E2IP_2
                                    163 	.globl _E2IP_1
                                    164 	.globl _E2IP_0
                                    165 	.globl _E2IE_7
                                    166 	.globl _E2IE_6
                                    167 	.globl _E2IE_5
                                    168 	.globl _E2IE_4
                                    169 	.globl _E2IE_3
                                    170 	.globl _E2IE_2
                                    171 	.globl _E2IE_1
                                    172 	.globl _E2IE_0
                                    173 	.globl _B_7
                                    174 	.globl _B_6
                                    175 	.globl _B_5
                                    176 	.globl _B_4
                                    177 	.globl _B_3
                                    178 	.globl _B_2
                                    179 	.globl _B_1
                                    180 	.globl _B_0
                                    181 	.globl _ACC_7
                                    182 	.globl _ACC_6
                                    183 	.globl _ACC_5
                                    184 	.globl _ACC_4
                                    185 	.globl _ACC_3
                                    186 	.globl _ACC_2
                                    187 	.globl _ACC_1
                                    188 	.globl _ACC_0
                                    189 	.globl _WTSTAT
                                    190 	.globl _WTIRQEN
                                    191 	.globl _WTEVTD
                                    192 	.globl _WTEVTD1
                                    193 	.globl _WTEVTD0
                                    194 	.globl _WTEVTC
                                    195 	.globl _WTEVTC1
                                    196 	.globl _WTEVTC0
                                    197 	.globl _WTEVTB
                                    198 	.globl _WTEVTB1
                                    199 	.globl _WTEVTB0
                                    200 	.globl _WTEVTA
                                    201 	.globl _WTEVTA1
                                    202 	.globl _WTEVTA0
                                    203 	.globl _WTCNTR1
                                    204 	.globl _WTCNTB
                                    205 	.globl _WTCNTB1
                                    206 	.globl _WTCNTB0
                                    207 	.globl _WTCNTA
                                    208 	.globl _WTCNTA1
                                    209 	.globl _WTCNTA0
                                    210 	.globl _WTCFGB
                                    211 	.globl _WTCFGA
                                    212 	.globl _WDTRESET
                                    213 	.globl _WDTCFG
                                    214 	.globl _U1STATUS
                                    215 	.globl _U1SHREG
                                    216 	.globl _U1MODE
                                    217 	.globl _U1CTRL
                                    218 	.globl _U0STATUS
                                    219 	.globl _U0SHREG
                                    220 	.globl _U0MODE
                                    221 	.globl _U0CTRL
                                    222 	.globl _T2STATUS
                                    223 	.globl _T2PERIOD
                                    224 	.globl _T2PERIOD1
                                    225 	.globl _T2PERIOD0
                                    226 	.globl _T2MODE
                                    227 	.globl _T2CNT
                                    228 	.globl _T2CNT1
                                    229 	.globl _T2CNT0
                                    230 	.globl _T2CLKSRC
                                    231 	.globl _T1STATUS
                                    232 	.globl _T1PERIOD
                                    233 	.globl _T1PERIOD1
                                    234 	.globl _T1PERIOD0
                                    235 	.globl _T1MODE
                                    236 	.globl _T1CNT
                                    237 	.globl _T1CNT1
                                    238 	.globl _T1CNT0
                                    239 	.globl _T1CLKSRC
                                    240 	.globl _T0STATUS
                                    241 	.globl _T0PERIOD
                                    242 	.globl _T0PERIOD1
                                    243 	.globl _T0PERIOD0
                                    244 	.globl _T0MODE
                                    245 	.globl _T0CNT
                                    246 	.globl _T0CNT1
                                    247 	.globl _T0CNT0
                                    248 	.globl _T0CLKSRC
                                    249 	.globl _SPSTATUS
                                    250 	.globl _SPSHREG
                                    251 	.globl _SPMODE
                                    252 	.globl _SPCLKSRC
                                    253 	.globl _RADIOSTAT
                                    254 	.globl _RADIOSTAT1
                                    255 	.globl _RADIOSTAT0
                                    256 	.globl _RADIODATA
                                    257 	.globl _RADIODATA3
                                    258 	.globl _RADIODATA2
                                    259 	.globl _RADIODATA1
                                    260 	.globl _RADIODATA0
                                    261 	.globl _RADIOADDR
                                    262 	.globl _RADIOADDR1
                                    263 	.globl _RADIOADDR0
                                    264 	.globl _RADIOACC
                                    265 	.globl _OC1STATUS
                                    266 	.globl _OC1PIN
                                    267 	.globl _OC1MODE
                                    268 	.globl _OC1COMP
                                    269 	.globl _OC1COMP1
                                    270 	.globl _OC1COMP0
                                    271 	.globl _OC0STATUS
                                    272 	.globl _OC0PIN
                                    273 	.globl _OC0MODE
                                    274 	.globl _OC0COMP
                                    275 	.globl _OC0COMP1
                                    276 	.globl _OC0COMP0
                                    277 	.globl _NVSTATUS
                                    278 	.globl _NVKEY
                                    279 	.globl _NVDATA
                                    280 	.globl _NVDATA1
                                    281 	.globl _NVDATA0
                                    282 	.globl _NVADDR
                                    283 	.globl _NVADDR1
                                    284 	.globl _NVADDR0
                                    285 	.globl _IC1STATUS
                                    286 	.globl _IC1MODE
                                    287 	.globl _IC1CAPT
                                    288 	.globl _IC1CAPT1
                                    289 	.globl _IC1CAPT0
                                    290 	.globl _IC0STATUS
                                    291 	.globl _IC0MODE
                                    292 	.globl _IC0CAPT
                                    293 	.globl _IC0CAPT1
                                    294 	.globl _IC0CAPT0
                                    295 	.globl _PORTR
                                    296 	.globl _PORTC
                                    297 	.globl _PORTB
                                    298 	.globl _PORTA
                                    299 	.globl _PINR
                                    300 	.globl _PINC
                                    301 	.globl _PINB
                                    302 	.globl _PINA
                                    303 	.globl _DIRR
                                    304 	.globl _DIRC
                                    305 	.globl _DIRB
                                    306 	.globl _DIRA
                                    307 	.globl _DBGLNKSTAT
                                    308 	.globl _DBGLNKBUF
                                    309 	.globl _CODECONFIG
                                    310 	.globl _CLKSTAT
                                    311 	.globl _CLKCON
                                    312 	.globl _ANALOGCOMP
                                    313 	.globl _ADCCONV
                                    314 	.globl _ADCCLKSRC
                                    315 	.globl _ADCCH3CONFIG
                                    316 	.globl _ADCCH2CONFIG
                                    317 	.globl _ADCCH1CONFIG
                                    318 	.globl _ADCCH0CONFIG
                                    319 	.globl __XPAGE
                                    320 	.globl _XPAGE
                                    321 	.globl _SP
                                    322 	.globl _PSW
                                    323 	.globl _PCON
                                    324 	.globl _IP
                                    325 	.globl _IE
                                    326 	.globl _EIP
                                    327 	.globl _EIE
                                    328 	.globl _E2IP
                                    329 	.globl _E2IE
                                    330 	.globl _DPS
                                    331 	.globl _DPTR1
                                    332 	.globl _DPTR0
                                    333 	.globl _DPL1
                                    334 	.globl _DPL
                                    335 	.globl _DPH1
                                    336 	.globl _DPH
                                    337 	.globl _B
                                    338 	.globl _ACC
                                    339 	.globl _axradio_phy_chanvcoi
                                    340 	.globl _axradio_phy_chanpllrng
                                    341 	.globl _AX5043_TIMEGAIN3NB
                                    342 	.globl _AX5043_TIMEGAIN2NB
                                    343 	.globl _AX5043_TIMEGAIN1NB
                                    344 	.globl _AX5043_TIMEGAIN0NB
                                    345 	.globl _AX5043_RXPARAMSETSNB
                                    346 	.globl _AX5043_RXPARAMCURSETNB
                                    347 	.globl _AX5043_PKTMAXLENNB
                                    348 	.globl _AX5043_PKTLENOFFSETNB
                                    349 	.globl _AX5043_PKTLENCFGNB
                                    350 	.globl _AX5043_PKTADDRMASK3NB
                                    351 	.globl _AX5043_PKTADDRMASK2NB
                                    352 	.globl _AX5043_PKTADDRMASK1NB
                                    353 	.globl _AX5043_PKTADDRMASK0NB
                                    354 	.globl _AX5043_PKTADDRCFGNB
                                    355 	.globl _AX5043_PKTADDR3NB
                                    356 	.globl _AX5043_PKTADDR2NB
                                    357 	.globl _AX5043_PKTADDR1NB
                                    358 	.globl _AX5043_PKTADDR0NB
                                    359 	.globl _AX5043_PHASEGAIN3NB
                                    360 	.globl _AX5043_PHASEGAIN2NB
                                    361 	.globl _AX5043_PHASEGAIN1NB
                                    362 	.globl _AX5043_PHASEGAIN0NB
                                    363 	.globl _AX5043_FREQUENCYLEAKNB
                                    364 	.globl _AX5043_FREQUENCYGAIND3NB
                                    365 	.globl _AX5043_FREQUENCYGAIND2NB
                                    366 	.globl _AX5043_FREQUENCYGAIND1NB
                                    367 	.globl _AX5043_FREQUENCYGAIND0NB
                                    368 	.globl _AX5043_FREQUENCYGAINC3NB
                                    369 	.globl _AX5043_FREQUENCYGAINC2NB
                                    370 	.globl _AX5043_FREQUENCYGAINC1NB
                                    371 	.globl _AX5043_FREQUENCYGAINC0NB
                                    372 	.globl _AX5043_FREQUENCYGAINB3NB
                                    373 	.globl _AX5043_FREQUENCYGAINB2NB
                                    374 	.globl _AX5043_FREQUENCYGAINB1NB
                                    375 	.globl _AX5043_FREQUENCYGAINB0NB
                                    376 	.globl _AX5043_FREQUENCYGAINA3NB
                                    377 	.globl _AX5043_FREQUENCYGAINA2NB
                                    378 	.globl _AX5043_FREQUENCYGAINA1NB
                                    379 	.globl _AX5043_FREQUENCYGAINA0NB
                                    380 	.globl _AX5043_FREQDEV13NB
                                    381 	.globl _AX5043_FREQDEV12NB
                                    382 	.globl _AX5043_FREQDEV11NB
                                    383 	.globl _AX5043_FREQDEV10NB
                                    384 	.globl _AX5043_FREQDEV03NB
                                    385 	.globl _AX5043_FREQDEV02NB
                                    386 	.globl _AX5043_FREQDEV01NB
                                    387 	.globl _AX5043_FREQDEV00NB
                                    388 	.globl _AX5043_FOURFSK3NB
                                    389 	.globl _AX5043_FOURFSK2NB
                                    390 	.globl _AX5043_FOURFSK1NB
                                    391 	.globl _AX5043_FOURFSK0NB
                                    392 	.globl _AX5043_DRGAIN3NB
                                    393 	.globl _AX5043_DRGAIN2NB
                                    394 	.globl _AX5043_DRGAIN1NB
                                    395 	.globl _AX5043_DRGAIN0NB
                                    396 	.globl _AX5043_BBOFFSRES3NB
                                    397 	.globl _AX5043_BBOFFSRES2NB
                                    398 	.globl _AX5043_BBOFFSRES1NB
                                    399 	.globl _AX5043_BBOFFSRES0NB
                                    400 	.globl _AX5043_AMPLITUDEGAIN3NB
                                    401 	.globl _AX5043_AMPLITUDEGAIN2NB
                                    402 	.globl _AX5043_AMPLITUDEGAIN1NB
                                    403 	.globl _AX5043_AMPLITUDEGAIN0NB
                                    404 	.globl _AX5043_AGCTARGET3NB
                                    405 	.globl _AX5043_AGCTARGET2NB
                                    406 	.globl _AX5043_AGCTARGET1NB
                                    407 	.globl _AX5043_AGCTARGET0NB
                                    408 	.globl _AX5043_AGCMINMAX3NB
                                    409 	.globl _AX5043_AGCMINMAX2NB
                                    410 	.globl _AX5043_AGCMINMAX1NB
                                    411 	.globl _AX5043_AGCMINMAX0NB
                                    412 	.globl _AX5043_AGCGAIN3NB
                                    413 	.globl _AX5043_AGCGAIN2NB
                                    414 	.globl _AX5043_AGCGAIN1NB
                                    415 	.globl _AX5043_AGCGAIN0NB
                                    416 	.globl _AX5043_AGCAHYST3NB
                                    417 	.globl _AX5043_AGCAHYST2NB
                                    418 	.globl _AX5043_AGCAHYST1NB
                                    419 	.globl _AX5043_AGCAHYST0NB
                                    420 	.globl _AX5043_0xF44NB
                                    421 	.globl _AX5043_0xF35NB
                                    422 	.globl _AX5043_0xF34NB
                                    423 	.globl _AX5043_0xF33NB
                                    424 	.globl _AX5043_0xF32NB
                                    425 	.globl _AX5043_0xF31NB
                                    426 	.globl _AX5043_0xF30NB
                                    427 	.globl _AX5043_0xF26NB
                                    428 	.globl _AX5043_0xF23NB
                                    429 	.globl _AX5043_0xF22NB
                                    430 	.globl _AX5043_0xF21NB
                                    431 	.globl _AX5043_0xF1CNB
                                    432 	.globl _AX5043_0xF18NB
                                    433 	.globl _AX5043_0xF0CNB
                                    434 	.globl _AX5043_0xF00NB
                                    435 	.globl _AX5043_XTALSTATUSNB
                                    436 	.globl _AX5043_XTALOSCNB
                                    437 	.globl _AX5043_XTALCAPNB
                                    438 	.globl _AX5043_XTALAMPLNB
                                    439 	.globl _AX5043_WAKEUPXOEARLYNB
                                    440 	.globl _AX5043_WAKEUPTIMER1NB
                                    441 	.globl _AX5043_WAKEUPTIMER0NB
                                    442 	.globl _AX5043_WAKEUPFREQ1NB
                                    443 	.globl _AX5043_WAKEUPFREQ0NB
                                    444 	.globl _AX5043_WAKEUP1NB
                                    445 	.globl _AX5043_WAKEUP0NB
                                    446 	.globl _AX5043_TXRATE2NB
                                    447 	.globl _AX5043_TXRATE1NB
                                    448 	.globl _AX5043_TXRATE0NB
                                    449 	.globl _AX5043_TXPWRCOEFFE1NB
                                    450 	.globl _AX5043_TXPWRCOEFFE0NB
                                    451 	.globl _AX5043_TXPWRCOEFFD1NB
                                    452 	.globl _AX5043_TXPWRCOEFFD0NB
                                    453 	.globl _AX5043_TXPWRCOEFFC1NB
                                    454 	.globl _AX5043_TXPWRCOEFFC0NB
                                    455 	.globl _AX5043_TXPWRCOEFFB1NB
                                    456 	.globl _AX5043_TXPWRCOEFFB0NB
                                    457 	.globl _AX5043_TXPWRCOEFFA1NB
                                    458 	.globl _AX5043_TXPWRCOEFFA0NB
                                    459 	.globl _AX5043_TRKRFFREQ2NB
                                    460 	.globl _AX5043_TRKRFFREQ1NB
                                    461 	.globl _AX5043_TRKRFFREQ0NB
                                    462 	.globl _AX5043_TRKPHASE1NB
                                    463 	.globl _AX5043_TRKPHASE0NB
                                    464 	.globl _AX5043_TRKFSKDEMOD1NB
                                    465 	.globl _AX5043_TRKFSKDEMOD0NB
                                    466 	.globl _AX5043_TRKFREQ1NB
                                    467 	.globl _AX5043_TRKFREQ0NB
                                    468 	.globl _AX5043_TRKDATARATE2NB
                                    469 	.globl _AX5043_TRKDATARATE1NB
                                    470 	.globl _AX5043_TRKDATARATE0NB
                                    471 	.globl _AX5043_TRKAMPLITUDE1NB
                                    472 	.globl _AX5043_TRKAMPLITUDE0NB
                                    473 	.globl _AX5043_TRKAFSKDEMOD1NB
                                    474 	.globl _AX5043_TRKAFSKDEMOD0NB
                                    475 	.globl _AX5043_TMGTXSETTLENB
                                    476 	.globl _AX5043_TMGTXBOOSTNB
                                    477 	.globl _AX5043_TMGRXSETTLENB
                                    478 	.globl _AX5043_TMGRXRSSINB
                                    479 	.globl _AX5043_TMGRXPREAMBLE3NB
                                    480 	.globl _AX5043_TMGRXPREAMBLE2NB
                                    481 	.globl _AX5043_TMGRXPREAMBLE1NB
                                    482 	.globl _AX5043_TMGRXOFFSACQNB
                                    483 	.globl _AX5043_TMGRXCOARSEAGCNB
                                    484 	.globl _AX5043_TMGRXBOOSTNB
                                    485 	.globl _AX5043_TMGRXAGCNB
                                    486 	.globl _AX5043_TIMER2NB
                                    487 	.globl _AX5043_TIMER1NB
                                    488 	.globl _AX5043_TIMER0NB
                                    489 	.globl _AX5043_SILICONREVISIONNB
                                    490 	.globl _AX5043_SCRATCHNB
                                    491 	.globl _AX5043_RXDATARATE2NB
                                    492 	.globl _AX5043_RXDATARATE1NB
                                    493 	.globl _AX5043_RXDATARATE0NB
                                    494 	.globl _AX5043_RSSIREFERENCENB
                                    495 	.globl _AX5043_RSSIABSTHRNB
                                    496 	.globl _AX5043_RSSINB
                                    497 	.globl _AX5043_REFNB
                                    498 	.globl _AX5043_RADIOSTATENB
                                    499 	.globl _AX5043_RADIOEVENTREQ1NB
                                    500 	.globl _AX5043_RADIOEVENTREQ0NB
                                    501 	.globl _AX5043_RADIOEVENTMASK1NB
                                    502 	.globl _AX5043_RADIOEVENTMASK0NB
                                    503 	.globl _AX5043_PWRMODENB
                                    504 	.globl _AX5043_PWRAMPNB
                                    505 	.globl _AX5043_POWSTICKYSTATNB
                                    506 	.globl _AX5043_POWSTATNB
                                    507 	.globl _AX5043_POWIRQMASKNB
                                    508 	.globl _AX5043_POWCTRL1NB
                                    509 	.globl _AX5043_PLLVCOIRNB
                                    510 	.globl _AX5043_PLLVCOINB
                                    511 	.globl _AX5043_PLLVCODIVNB
                                    512 	.globl _AX5043_PLLRNGCLKNB
                                    513 	.globl _AX5043_PLLRANGINGBNB
                                    514 	.globl _AX5043_PLLRANGINGANB
                                    515 	.globl _AX5043_PLLLOOPBOOSTNB
                                    516 	.globl _AX5043_PLLLOOPNB
                                    517 	.globl _AX5043_PLLLOCKDETNB
                                    518 	.globl _AX5043_PLLCPIBOOSTNB
                                    519 	.globl _AX5043_PLLCPINB
                                    520 	.globl _AX5043_PKTSTOREFLAGSNB
                                    521 	.globl _AX5043_PKTMISCFLAGSNB
                                    522 	.globl _AX5043_PKTCHUNKSIZENB
                                    523 	.globl _AX5043_PKTACCEPTFLAGSNB
                                    524 	.globl _AX5043_PINSTATENB
                                    525 	.globl _AX5043_PINFUNCSYSCLKNB
                                    526 	.globl _AX5043_PINFUNCPWRAMPNB
                                    527 	.globl _AX5043_PINFUNCIRQNB
                                    528 	.globl _AX5043_PINFUNCDCLKNB
                                    529 	.globl _AX5043_PINFUNCDATANB
                                    530 	.globl _AX5043_PINFUNCANTSELNB
                                    531 	.globl _AX5043_MODULATIONNB
                                    532 	.globl _AX5043_MODCFGPNB
                                    533 	.globl _AX5043_MODCFGFNB
                                    534 	.globl _AX5043_MODCFGANB
                                    535 	.globl _AX5043_MAXRFOFFSET2NB
                                    536 	.globl _AX5043_MAXRFOFFSET1NB
                                    537 	.globl _AX5043_MAXRFOFFSET0NB
                                    538 	.globl _AX5043_MAXDROFFSET2NB
                                    539 	.globl _AX5043_MAXDROFFSET1NB
                                    540 	.globl _AX5043_MAXDROFFSET0NB
                                    541 	.globl _AX5043_MATCH1PAT1NB
                                    542 	.globl _AX5043_MATCH1PAT0NB
                                    543 	.globl _AX5043_MATCH1MINNB
                                    544 	.globl _AX5043_MATCH1MAXNB
                                    545 	.globl _AX5043_MATCH1LENNB
                                    546 	.globl _AX5043_MATCH0PAT3NB
                                    547 	.globl _AX5043_MATCH0PAT2NB
                                    548 	.globl _AX5043_MATCH0PAT1NB
                                    549 	.globl _AX5043_MATCH0PAT0NB
                                    550 	.globl _AX5043_MATCH0MINNB
                                    551 	.globl _AX5043_MATCH0MAXNB
                                    552 	.globl _AX5043_MATCH0LENNB
                                    553 	.globl _AX5043_LPOSCSTATUSNB
                                    554 	.globl _AX5043_LPOSCREF1NB
                                    555 	.globl _AX5043_LPOSCREF0NB
                                    556 	.globl _AX5043_LPOSCPER1NB
                                    557 	.globl _AX5043_LPOSCPER0NB
                                    558 	.globl _AX5043_LPOSCKFILT1NB
                                    559 	.globl _AX5043_LPOSCKFILT0NB
                                    560 	.globl _AX5043_LPOSCFREQ1NB
                                    561 	.globl _AX5043_LPOSCFREQ0NB
                                    562 	.globl _AX5043_LPOSCCONFIGNB
                                    563 	.globl _AX5043_IRQREQUEST1NB
                                    564 	.globl _AX5043_IRQREQUEST0NB
                                    565 	.globl _AX5043_IRQMASK1NB
                                    566 	.globl _AX5043_IRQMASK0NB
                                    567 	.globl _AX5043_IRQINVERSION1NB
                                    568 	.globl _AX5043_IRQINVERSION0NB
                                    569 	.globl _AX5043_IFFREQ1NB
                                    570 	.globl _AX5043_IFFREQ0NB
                                    571 	.globl _AX5043_GPADCPERIODNB
                                    572 	.globl _AX5043_GPADCCTRLNB
                                    573 	.globl _AX5043_GPADC13VALUE1NB
                                    574 	.globl _AX5043_GPADC13VALUE0NB
                                    575 	.globl _AX5043_FSKDMIN1NB
                                    576 	.globl _AX5043_FSKDMIN0NB
                                    577 	.globl _AX5043_FSKDMAX1NB
                                    578 	.globl _AX5043_FSKDMAX0NB
                                    579 	.globl _AX5043_FSKDEV2NB
                                    580 	.globl _AX5043_FSKDEV1NB
                                    581 	.globl _AX5043_FSKDEV0NB
                                    582 	.globl _AX5043_FREQB3NB
                                    583 	.globl _AX5043_FREQB2NB
                                    584 	.globl _AX5043_FREQB1NB
                                    585 	.globl _AX5043_FREQB0NB
                                    586 	.globl _AX5043_FREQA3NB
                                    587 	.globl _AX5043_FREQA2NB
                                    588 	.globl _AX5043_FREQA1NB
                                    589 	.globl _AX5043_FREQA0NB
                                    590 	.globl _AX5043_FRAMINGNB
                                    591 	.globl _AX5043_FIFOTHRESH1NB
                                    592 	.globl _AX5043_FIFOTHRESH0NB
                                    593 	.globl _AX5043_FIFOSTATNB
                                    594 	.globl _AX5043_FIFOFREE1NB
                                    595 	.globl _AX5043_FIFOFREE0NB
                                    596 	.globl _AX5043_FIFODATANB
                                    597 	.globl _AX5043_FIFOCOUNT1NB
                                    598 	.globl _AX5043_FIFOCOUNT0NB
                                    599 	.globl _AX5043_FECSYNCNB
                                    600 	.globl _AX5043_FECSTATUSNB
                                    601 	.globl _AX5043_FECNB
                                    602 	.globl _AX5043_ENCODINGNB
                                    603 	.globl _AX5043_DIVERSITYNB
                                    604 	.globl _AX5043_DECIMATIONNB
                                    605 	.globl _AX5043_DACVALUE1NB
                                    606 	.globl _AX5043_DACVALUE0NB
                                    607 	.globl _AX5043_DACCONFIGNB
                                    608 	.globl _AX5043_CRCINIT3NB
                                    609 	.globl _AX5043_CRCINIT2NB
                                    610 	.globl _AX5043_CRCINIT1NB
                                    611 	.globl _AX5043_CRCINIT0NB
                                    612 	.globl _AX5043_BGNDRSSITHRNB
                                    613 	.globl _AX5043_BGNDRSSIGAINNB
                                    614 	.globl _AX5043_BGNDRSSINB
                                    615 	.globl _AX5043_BBTUNENB
                                    616 	.globl _AX5043_BBOFFSCAPNB
                                    617 	.globl _AX5043_AMPLFILTERNB
                                    618 	.globl _AX5043_AGCCOUNTERNB
                                    619 	.globl _AX5043_AFSKSPACE1NB
                                    620 	.globl _AX5043_AFSKSPACE0NB
                                    621 	.globl _AX5043_AFSKMARK1NB
                                    622 	.globl _AX5043_AFSKMARK0NB
                                    623 	.globl _AX5043_AFSKCTRLNB
                                    624 	.globl _AX5043_TIMEGAIN3
                                    625 	.globl _AX5043_TIMEGAIN2
                                    626 	.globl _AX5043_TIMEGAIN1
                                    627 	.globl _AX5043_TIMEGAIN0
                                    628 	.globl _AX5043_RXPARAMSETS
                                    629 	.globl _AX5043_RXPARAMCURSET
                                    630 	.globl _AX5043_PKTMAXLEN
                                    631 	.globl _AX5043_PKTLENOFFSET
                                    632 	.globl _AX5043_PKTLENCFG
                                    633 	.globl _AX5043_PKTADDRMASK3
                                    634 	.globl _AX5043_PKTADDRMASK2
                                    635 	.globl _AX5043_PKTADDRMASK1
                                    636 	.globl _AX5043_PKTADDRMASK0
                                    637 	.globl _AX5043_PKTADDRCFG
                                    638 	.globl _AX5043_PKTADDR3
                                    639 	.globl _AX5043_PKTADDR2
                                    640 	.globl _AX5043_PKTADDR1
                                    641 	.globl _AX5043_PKTADDR0
                                    642 	.globl _AX5043_PHASEGAIN3
                                    643 	.globl _AX5043_PHASEGAIN2
                                    644 	.globl _AX5043_PHASEGAIN1
                                    645 	.globl _AX5043_PHASEGAIN0
                                    646 	.globl _AX5043_FREQUENCYLEAK
                                    647 	.globl _AX5043_FREQUENCYGAIND3
                                    648 	.globl _AX5043_FREQUENCYGAIND2
                                    649 	.globl _AX5043_FREQUENCYGAIND1
                                    650 	.globl _AX5043_FREQUENCYGAIND0
                                    651 	.globl _AX5043_FREQUENCYGAINC3
                                    652 	.globl _AX5043_FREQUENCYGAINC2
                                    653 	.globl _AX5043_FREQUENCYGAINC1
                                    654 	.globl _AX5043_FREQUENCYGAINC0
                                    655 	.globl _AX5043_FREQUENCYGAINB3
                                    656 	.globl _AX5043_FREQUENCYGAINB2
                                    657 	.globl _AX5043_FREQUENCYGAINB1
                                    658 	.globl _AX5043_FREQUENCYGAINB0
                                    659 	.globl _AX5043_FREQUENCYGAINA3
                                    660 	.globl _AX5043_FREQUENCYGAINA2
                                    661 	.globl _AX5043_FREQUENCYGAINA1
                                    662 	.globl _AX5043_FREQUENCYGAINA0
                                    663 	.globl _AX5043_FREQDEV13
                                    664 	.globl _AX5043_FREQDEV12
                                    665 	.globl _AX5043_FREQDEV11
                                    666 	.globl _AX5043_FREQDEV10
                                    667 	.globl _AX5043_FREQDEV03
                                    668 	.globl _AX5043_FREQDEV02
                                    669 	.globl _AX5043_FREQDEV01
                                    670 	.globl _AX5043_FREQDEV00
                                    671 	.globl _AX5043_FOURFSK3
                                    672 	.globl _AX5043_FOURFSK2
                                    673 	.globl _AX5043_FOURFSK1
                                    674 	.globl _AX5043_FOURFSK0
                                    675 	.globl _AX5043_DRGAIN3
                                    676 	.globl _AX5043_DRGAIN2
                                    677 	.globl _AX5043_DRGAIN1
                                    678 	.globl _AX5043_DRGAIN0
                                    679 	.globl _AX5043_BBOFFSRES3
                                    680 	.globl _AX5043_BBOFFSRES2
                                    681 	.globl _AX5043_BBOFFSRES1
                                    682 	.globl _AX5043_BBOFFSRES0
                                    683 	.globl _AX5043_AMPLITUDEGAIN3
                                    684 	.globl _AX5043_AMPLITUDEGAIN2
                                    685 	.globl _AX5043_AMPLITUDEGAIN1
                                    686 	.globl _AX5043_AMPLITUDEGAIN0
                                    687 	.globl _AX5043_AGCTARGET3
                                    688 	.globl _AX5043_AGCTARGET2
                                    689 	.globl _AX5043_AGCTARGET1
                                    690 	.globl _AX5043_AGCTARGET0
                                    691 	.globl _AX5043_AGCMINMAX3
                                    692 	.globl _AX5043_AGCMINMAX2
                                    693 	.globl _AX5043_AGCMINMAX1
                                    694 	.globl _AX5043_AGCMINMAX0
                                    695 	.globl _AX5043_AGCGAIN3
                                    696 	.globl _AX5043_AGCGAIN2
                                    697 	.globl _AX5043_AGCGAIN1
                                    698 	.globl _AX5043_AGCGAIN0
                                    699 	.globl _AX5043_AGCAHYST3
                                    700 	.globl _AX5043_AGCAHYST2
                                    701 	.globl _AX5043_AGCAHYST1
                                    702 	.globl _AX5043_AGCAHYST0
                                    703 	.globl _AX5043_0xF44
                                    704 	.globl _AX5043_0xF35
                                    705 	.globl _AX5043_0xF34
                                    706 	.globl _AX5043_0xF33
                                    707 	.globl _AX5043_0xF32
                                    708 	.globl _AX5043_0xF31
                                    709 	.globl _AX5043_0xF30
                                    710 	.globl _AX5043_0xF26
                                    711 	.globl _AX5043_0xF23
                                    712 	.globl _AX5043_0xF22
                                    713 	.globl _AX5043_0xF21
                                    714 	.globl _AX5043_0xF1C
                                    715 	.globl _AX5043_0xF18
                                    716 	.globl _AX5043_0xF0C
                                    717 	.globl _AX5043_0xF00
                                    718 	.globl _AX5043_XTALSTATUS
                                    719 	.globl _AX5043_XTALOSC
                                    720 	.globl _AX5043_XTALCAP
                                    721 	.globl _AX5043_XTALAMPL
                                    722 	.globl _AX5043_WAKEUPXOEARLY
                                    723 	.globl _AX5043_WAKEUPTIMER1
                                    724 	.globl _AX5043_WAKEUPTIMER0
                                    725 	.globl _AX5043_WAKEUPFREQ1
                                    726 	.globl _AX5043_WAKEUPFREQ0
                                    727 	.globl _AX5043_WAKEUP1
                                    728 	.globl _AX5043_WAKEUP0
                                    729 	.globl _AX5043_TXRATE2
                                    730 	.globl _AX5043_TXRATE1
                                    731 	.globl _AX5043_TXRATE0
                                    732 	.globl _AX5043_TXPWRCOEFFE1
                                    733 	.globl _AX5043_TXPWRCOEFFE0
                                    734 	.globl _AX5043_TXPWRCOEFFD1
                                    735 	.globl _AX5043_TXPWRCOEFFD0
                                    736 	.globl _AX5043_TXPWRCOEFFC1
                                    737 	.globl _AX5043_TXPWRCOEFFC0
                                    738 	.globl _AX5043_TXPWRCOEFFB1
                                    739 	.globl _AX5043_TXPWRCOEFFB0
                                    740 	.globl _AX5043_TXPWRCOEFFA1
                                    741 	.globl _AX5043_TXPWRCOEFFA0
                                    742 	.globl _AX5043_TRKRFFREQ2
                                    743 	.globl _AX5043_TRKRFFREQ1
                                    744 	.globl _AX5043_TRKRFFREQ0
                                    745 	.globl _AX5043_TRKPHASE1
                                    746 	.globl _AX5043_TRKPHASE0
                                    747 	.globl _AX5043_TRKFSKDEMOD1
                                    748 	.globl _AX5043_TRKFSKDEMOD0
                                    749 	.globl _AX5043_TRKFREQ1
                                    750 	.globl _AX5043_TRKFREQ0
                                    751 	.globl _AX5043_TRKDATARATE2
                                    752 	.globl _AX5043_TRKDATARATE1
                                    753 	.globl _AX5043_TRKDATARATE0
                                    754 	.globl _AX5043_TRKAMPLITUDE1
                                    755 	.globl _AX5043_TRKAMPLITUDE0
                                    756 	.globl _AX5043_TRKAFSKDEMOD1
                                    757 	.globl _AX5043_TRKAFSKDEMOD0
                                    758 	.globl _AX5043_TMGTXSETTLE
                                    759 	.globl _AX5043_TMGTXBOOST
                                    760 	.globl _AX5043_TMGRXSETTLE
                                    761 	.globl _AX5043_TMGRXRSSI
                                    762 	.globl _AX5043_TMGRXPREAMBLE3
                                    763 	.globl _AX5043_TMGRXPREAMBLE2
                                    764 	.globl _AX5043_TMGRXPREAMBLE1
                                    765 	.globl _AX5043_TMGRXOFFSACQ
                                    766 	.globl _AX5043_TMGRXCOARSEAGC
                                    767 	.globl _AX5043_TMGRXBOOST
                                    768 	.globl _AX5043_TMGRXAGC
                                    769 	.globl _AX5043_TIMER2
                                    770 	.globl _AX5043_TIMER1
                                    771 	.globl _AX5043_TIMER0
                                    772 	.globl _AX5043_SILICONREVISION
                                    773 	.globl _AX5043_SCRATCH
                                    774 	.globl _AX5043_RXDATARATE2
                                    775 	.globl _AX5043_RXDATARATE1
                                    776 	.globl _AX5043_RXDATARATE0
                                    777 	.globl _AX5043_RSSIREFERENCE
                                    778 	.globl _AX5043_RSSIABSTHR
                                    779 	.globl _AX5043_RSSI
                                    780 	.globl _AX5043_REF
                                    781 	.globl _AX5043_RADIOSTATE
                                    782 	.globl _AX5043_RADIOEVENTREQ1
                                    783 	.globl _AX5043_RADIOEVENTREQ0
                                    784 	.globl _AX5043_RADIOEVENTMASK1
                                    785 	.globl _AX5043_RADIOEVENTMASK0
                                    786 	.globl _AX5043_PWRMODE
                                    787 	.globl _AX5043_PWRAMP
                                    788 	.globl _AX5043_POWSTICKYSTAT
                                    789 	.globl _AX5043_POWSTAT
                                    790 	.globl _AX5043_POWIRQMASK
                                    791 	.globl _AX5043_POWCTRL1
                                    792 	.globl _AX5043_PLLVCOIR
                                    793 	.globl _AX5043_PLLVCOI
                                    794 	.globl _AX5043_PLLVCODIV
                                    795 	.globl _AX5043_PLLRNGCLK
                                    796 	.globl _AX5043_PLLRANGINGB
                                    797 	.globl _AX5043_PLLRANGINGA
                                    798 	.globl _AX5043_PLLLOOPBOOST
                                    799 	.globl _AX5043_PLLLOOP
                                    800 	.globl _AX5043_PLLLOCKDET
                                    801 	.globl _AX5043_PLLCPIBOOST
                                    802 	.globl _AX5043_PLLCPI
                                    803 	.globl _AX5043_PKTSTOREFLAGS
                                    804 	.globl _AX5043_PKTMISCFLAGS
                                    805 	.globl _AX5043_PKTCHUNKSIZE
                                    806 	.globl _AX5043_PKTACCEPTFLAGS
                                    807 	.globl _AX5043_PINSTATE
                                    808 	.globl _AX5043_PINFUNCSYSCLK
                                    809 	.globl _AX5043_PINFUNCPWRAMP
                                    810 	.globl _AX5043_PINFUNCIRQ
                                    811 	.globl _AX5043_PINFUNCDCLK
                                    812 	.globl _AX5043_PINFUNCDATA
                                    813 	.globl _AX5043_PINFUNCANTSEL
                                    814 	.globl _AX5043_MODULATION
                                    815 	.globl _AX5043_MODCFGP
                                    816 	.globl _AX5043_MODCFGF
                                    817 	.globl _AX5043_MODCFGA
                                    818 	.globl _AX5043_MAXRFOFFSET2
                                    819 	.globl _AX5043_MAXRFOFFSET1
                                    820 	.globl _AX5043_MAXRFOFFSET0
                                    821 	.globl _AX5043_MAXDROFFSET2
                                    822 	.globl _AX5043_MAXDROFFSET1
                                    823 	.globl _AX5043_MAXDROFFSET0
                                    824 	.globl _AX5043_MATCH1PAT1
                                    825 	.globl _AX5043_MATCH1PAT0
                                    826 	.globl _AX5043_MATCH1MIN
                                    827 	.globl _AX5043_MATCH1MAX
                                    828 	.globl _AX5043_MATCH1LEN
                                    829 	.globl _AX5043_MATCH0PAT3
                                    830 	.globl _AX5043_MATCH0PAT2
                                    831 	.globl _AX5043_MATCH0PAT1
                                    832 	.globl _AX5043_MATCH0PAT0
                                    833 	.globl _AX5043_MATCH0MIN
                                    834 	.globl _AX5043_MATCH0MAX
                                    835 	.globl _AX5043_MATCH0LEN
                                    836 	.globl _AX5043_LPOSCSTATUS
                                    837 	.globl _AX5043_LPOSCREF1
                                    838 	.globl _AX5043_LPOSCREF0
                                    839 	.globl _AX5043_LPOSCPER1
                                    840 	.globl _AX5043_LPOSCPER0
                                    841 	.globl _AX5043_LPOSCKFILT1
                                    842 	.globl _AX5043_LPOSCKFILT0
                                    843 	.globl _AX5043_LPOSCFREQ1
                                    844 	.globl _AX5043_LPOSCFREQ0
                                    845 	.globl _AX5043_LPOSCCONFIG
                                    846 	.globl _AX5043_IRQREQUEST1
                                    847 	.globl _AX5043_IRQREQUEST0
                                    848 	.globl _AX5043_IRQMASK1
                                    849 	.globl _AX5043_IRQMASK0
                                    850 	.globl _AX5043_IRQINVERSION1
                                    851 	.globl _AX5043_IRQINVERSION0
                                    852 	.globl _AX5043_IFFREQ1
                                    853 	.globl _AX5043_IFFREQ0
                                    854 	.globl _AX5043_GPADCPERIOD
                                    855 	.globl _AX5043_GPADCCTRL
                                    856 	.globl _AX5043_GPADC13VALUE1
                                    857 	.globl _AX5043_GPADC13VALUE0
                                    858 	.globl _AX5043_FSKDMIN1
                                    859 	.globl _AX5043_FSKDMIN0
                                    860 	.globl _AX5043_FSKDMAX1
                                    861 	.globl _AX5043_FSKDMAX0
                                    862 	.globl _AX5043_FSKDEV2
                                    863 	.globl _AX5043_FSKDEV1
                                    864 	.globl _AX5043_FSKDEV0
                                    865 	.globl _AX5043_FREQB3
                                    866 	.globl _AX5043_FREQB2
                                    867 	.globl _AX5043_FREQB1
                                    868 	.globl _AX5043_FREQB0
                                    869 	.globl _AX5043_FREQA3
                                    870 	.globl _AX5043_FREQA2
                                    871 	.globl _AX5043_FREQA1
                                    872 	.globl _AX5043_FREQA0
                                    873 	.globl _AX5043_FRAMING
                                    874 	.globl _AX5043_FIFOTHRESH1
                                    875 	.globl _AX5043_FIFOTHRESH0
                                    876 	.globl _AX5043_FIFOSTAT
                                    877 	.globl _AX5043_FIFOFREE1
                                    878 	.globl _AX5043_FIFOFREE0
                                    879 	.globl _AX5043_FIFODATA
                                    880 	.globl _AX5043_FIFOCOUNT1
                                    881 	.globl _AX5043_FIFOCOUNT0
                                    882 	.globl _AX5043_FECSYNC
                                    883 	.globl _AX5043_FECSTATUS
                                    884 	.globl _AX5043_FEC
                                    885 	.globl _AX5043_ENCODING
                                    886 	.globl _AX5043_DIVERSITY
                                    887 	.globl _AX5043_DECIMATION
                                    888 	.globl _AX5043_DACVALUE1
                                    889 	.globl _AX5043_DACVALUE0
                                    890 	.globl _AX5043_DACCONFIG
                                    891 	.globl _AX5043_CRCINIT3
                                    892 	.globl _AX5043_CRCINIT2
                                    893 	.globl _AX5043_CRCINIT1
                                    894 	.globl _AX5043_CRCINIT0
                                    895 	.globl _AX5043_BGNDRSSITHR
                                    896 	.globl _AX5043_BGNDRSSIGAIN
                                    897 	.globl _AX5043_BGNDRSSI
                                    898 	.globl _AX5043_BBTUNE
                                    899 	.globl _AX5043_BBOFFSCAP
                                    900 	.globl _AX5043_AMPLFILTER
                                    901 	.globl _AX5043_AGCCOUNTER
                                    902 	.globl _AX5043_AFSKSPACE1
                                    903 	.globl _AX5043_AFSKSPACE0
                                    904 	.globl _AX5043_AFSKMARK1
                                    905 	.globl _AX5043_AFSKMARK0
                                    906 	.globl _AX5043_AFSKCTRL
                                    907 	.globl _XTALREADY
                                    908 	.globl _XTALOSC
                                    909 	.globl _XTALAMPL
                                    910 	.globl _SILICONREV
                                    911 	.globl _SCRATCH3
                                    912 	.globl _SCRATCH2
                                    913 	.globl _SCRATCH1
                                    914 	.globl _SCRATCH0
                                    915 	.globl _RADIOMUX
                                    916 	.globl _RADIOFSTATADDR
                                    917 	.globl _RADIOFSTATADDR1
                                    918 	.globl _RADIOFSTATADDR0
                                    919 	.globl _RADIOFDATAADDR
                                    920 	.globl _RADIOFDATAADDR1
                                    921 	.globl _RADIOFDATAADDR0
                                    922 	.globl _OSCRUN
                                    923 	.globl _OSCREADY
                                    924 	.globl _OSCFORCERUN
                                    925 	.globl _OSCCALIB
                                    926 	.globl _MISCCTRL
                                    927 	.globl _LPXOSCGM
                                    928 	.globl _LPOSCREF
                                    929 	.globl _LPOSCREF1
                                    930 	.globl _LPOSCREF0
                                    931 	.globl _LPOSCPER
                                    932 	.globl _LPOSCPER1
                                    933 	.globl _LPOSCPER0
                                    934 	.globl _LPOSCKFILT
                                    935 	.globl _LPOSCKFILT1
                                    936 	.globl _LPOSCKFILT0
                                    937 	.globl _LPOSCFREQ
                                    938 	.globl _LPOSCFREQ1
                                    939 	.globl _LPOSCFREQ0
                                    940 	.globl _LPOSCCONFIG
                                    941 	.globl _PINSEL
                                    942 	.globl _PINCHGC
                                    943 	.globl _PINCHGB
                                    944 	.globl _PINCHGA
                                    945 	.globl _PALTRADIO
                                    946 	.globl _PALTC
                                    947 	.globl _PALTB
                                    948 	.globl _PALTA
                                    949 	.globl _INTCHGC
                                    950 	.globl _INTCHGB
                                    951 	.globl _INTCHGA
                                    952 	.globl _EXTIRQ
                                    953 	.globl _GPIOENABLE
                                    954 	.globl _ANALOGA
                                    955 	.globl _FRCOSCREF
                                    956 	.globl _FRCOSCREF1
                                    957 	.globl _FRCOSCREF0
                                    958 	.globl _FRCOSCPER
                                    959 	.globl _FRCOSCPER1
                                    960 	.globl _FRCOSCPER0
                                    961 	.globl _FRCOSCKFILT
                                    962 	.globl _FRCOSCKFILT1
                                    963 	.globl _FRCOSCKFILT0
                                    964 	.globl _FRCOSCFREQ
                                    965 	.globl _FRCOSCFREQ1
                                    966 	.globl _FRCOSCFREQ0
                                    967 	.globl _FRCOSCCTRL
                                    968 	.globl _FRCOSCCONFIG
                                    969 	.globl _DMA1CONFIG
                                    970 	.globl _DMA1ADDR
                                    971 	.globl _DMA1ADDR1
                                    972 	.globl _DMA1ADDR0
                                    973 	.globl _DMA0CONFIG
                                    974 	.globl _DMA0ADDR
                                    975 	.globl _DMA0ADDR1
                                    976 	.globl _DMA0ADDR0
                                    977 	.globl _ADCTUNE2
                                    978 	.globl _ADCTUNE1
                                    979 	.globl _ADCTUNE0
                                    980 	.globl _ADCCH3VAL
                                    981 	.globl _ADCCH3VAL1
                                    982 	.globl _ADCCH3VAL0
                                    983 	.globl _ADCCH2VAL
                                    984 	.globl _ADCCH2VAL1
                                    985 	.globl _ADCCH2VAL0
                                    986 	.globl _ADCCH1VAL
                                    987 	.globl _ADCCH1VAL1
                                    988 	.globl _ADCCH1VAL0
                                    989 	.globl _ADCCH0VAL
                                    990 	.globl _ADCCH0VAL1
                                    991 	.globl _ADCCH0VAL0
                                    992 	.globl _ax5043_set_registers
                                    993 	.globl _ax5043_set_registers_tx
                                    994 	.globl _ax5043_set_registers_rx
                                    995 	.globl _ax5043_set_registers_rxwor
                                    996 	.globl _ax5043_set_registers_rxcont
                                    997 	.globl _ax5043_set_registers_rxcont_singleparamset
                                    998 	.globl _axradio_setup_pincfg1
                                    999 	.globl _axradio_setup_pincfg2
                                   1000 	.globl _axradio_conv_freq_fromhz
                                   1001 	.globl _axradio_conv_freq_tohz
                                   1002 	.globl _axradio_conv_freq_fromreg
                                   1003 	.globl _axradio_conv_timeinterval_totimer0
                                   1004 	.globl _axradio_framing_check_crc
                                   1005 	.globl _axradio_framing_append_crc
                                   1006 ;--------------------------------------------------------
                                   1007 ; special function registers
                                   1008 ;--------------------------------------------------------
                                   1009 	.area RSEG    (ABS,DATA)
      000000                       1010 	.org 0x0000
                           0000E0  1011 G$ACC$0$0 == 0x00e0
                           0000E0  1012 _ACC	=	0x00e0
                           0000F0  1013 G$B$0$0 == 0x00f0
                           0000F0  1014 _B	=	0x00f0
                           000083  1015 G$DPH$0$0 == 0x0083
                           000083  1016 _DPH	=	0x0083
                           000085  1017 G$DPH1$0$0 == 0x0085
                           000085  1018 _DPH1	=	0x0085
                           000082  1019 G$DPL$0$0 == 0x0082
                           000082  1020 _DPL	=	0x0082
                           000084  1021 G$DPL1$0$0 == 0x0084
                           000084  1022 _DPL1	=	0x0084
                           008382  1023 G$DPTR0$0$0 == 0x8382
                           008382  1024 _DPTR0	=	0x8382
                           008584  1025 G$DPTR1$0$0 == 0x8584
                           008584  1026 _DPTR1	=	0x8584
                           000086  1027 G$DPS$0$0 == 0x0086
                           000086  1028 _DPS	=	0x0086
                           0000A0  1029 G$E2IE$0$0 == 0x00a0
                           0000A0  1030 _E2IE	=	0x00a0
                           0000C0  1031 G$E2IP$0$0 == 0x00c0
                           0000C0  1032 _E2IP	=	0x00c0
                           000098  1033 G$EIE$0$0 == 0x0098
                           000098  1034 _EIE	=	0x0098
                           0000B0  1035 G$EIP$0$0 == 0x00b0
                           0000B0  1036 _EIP	=	0x00b0
                           0000A8  1037 G$IE$0$0 == 0x00a8
                           0000A8  1038 _IE	=	0x00a8
                           0000B8  1039 G$IP$0$0 == 0x00b8
                           0000B8  1040 _IP	=	0x00b8
                           000087  1041 G$PCON$0$0 == 0x0087
                           000087  1042 _PCON	=	0x0087
                           0000D0  1043 G$PSW$0$0 == 0x00d0
                           0000D0  1044 _PSW	=	0x00d0
                           000081  1045 G$SP$0$0 == 0x0081
                           000081  1046 _SP	=	0x0081
                           0000D9  1047 G$XPAGE$0$0 == 0x00d9
                           0000D9  1048 _XPAGE	=	0x00d9
                           0000D9  1049 G$_XPAGE$0$0 == 0x00d9
                           0000D9  1050 __XPAGE	=	0x00d9
                           0000CA  1051 G$ADCCH0CONFIG$0$0 == 0x00ca
                           0000CA  1052 _ADCCH0CONFIG	=	0x00ca
                           0000CB  1053 G$ADCCH1CONFIG$0$0 == 0x00cb
                           0000CB  1054 _ADCCH1CONFIG	=	0x00cb
                           0000D2  1055 G$ADCCH2CONFIG$0$0 == 0x00d2
                           0000D2  1056 _ADCCH2CONFIG	=	0x00d2
                           0000D3  1057 G$ADCCH3CONFIG$0$0 == 0x00d3
                           0000D3  1058 _ADCCH3CONFIG	=	0x00d3
                           0000D1  1059 G$ADCCLKSRC$0$0 == 0x00d1
                           0000D1  1060 _ADCCLKSRC	=	0x00d1
                           0000C9  1061 G$ADCCONV$0$0 == 0x00c9
                           0000C9  1062 _ADCCONV	=	0x00c9
                           0000E1  1063 G$ANALOGCOMP$0$0 == 0x00e1
                           0000E1  1064 _ANALOGCOMP	=	0x00e1
                           0000C6  1065 G$CLKCON$0$0 == 0x00c6
                           0000C6  1066 _CLKCON	=	0x00c6
                           0000C7  1067 G$CLKSTAT$0$0 == 0x00c7
                           0000C7  1068 _CLKSTAT	=	0x00c7
                           000097  1069 G$CODECONFIG$0$0 == 0x0097
                           000097  1070 _CODECONFIG	=	0x0097
                           0000E3  1071 G$DBGLNKBUF$0$0 == 0x00e3
                           0000E3  1072 _DBGLNKBUF	=	0x00e3
                           0000E2  1073 G$DBGLNKSTAT$0$0 == 0x00e2
                           0000E2  1074 _DBGLNKSTAT	=	0x00e2
                           000089  1075 G$DIRA$0$0 == 0x0089
                           000089  1076 _DIRA	=	0x0089
                           00008A  1077 G$DIRB$0$0 == 0x008a
                           00008A  1078 _DIRB	=	0x008a
                           00008B  1079 G$DIRC$0$0 == 0x008b
                           00008B  1080 _DIRC	=	0x008b
                           00008E  1081 G$DIRR$0$0 == 0x008e
                           00008E  1082 _DIRR	=	0x008e
                           0000C8  1083 G$PINA$0$0 == 0x00c8
                           0000C8  1084 _PINA	=	0x00c8
                           0000E8  1085 G$PINB$0$0 == 0x00e8
                           0000E8  1086 _PINB	=	0x00e8
                           0000F8  1087 G$PINC$0$0 == 0x00f8
                           0000F8  1088 _PINC	=	0x00f8
                           00008D  1089 G$PINR$0$0 == 0x008d
                           00008D  1090 _PINR	=	0x008d
                           000080  1091 G$PORTA$0$0 == 0x0080
                           000080  1092 _PORTA	=	0x0080
                           000088  1093 G$PORTB$0$0 == 0x0088
                           000088  1094 _PORTB	=	0x0088
                           000090  1095 G$PORTC$0$0 == 0x0090
                           000090  1096 _PORTC	=	0x0090
                           00008C  1097 G$PORTR$0$0 == 0x008c
                           00008C  1098 _PORTR	=	0x008c
                           0000CE  1099 G$IC0CAPT0$0$0 == 0x00ce
                           0000CE  1100 _IC0CAPT0	=	0x00ce
                           0000CF  1101 G$IC0CAPT1$0$0 == 0x00cf
                           0000CF  1102 _IC0CAPT1	=	0x00cf
                           00CFCE  1103 G$IC0CAPT$0$0 == 0xcfce
                           00CFCE  1104 _IC0CAPT	=	0xcfce
                           0000CC  1105 G$IC0MODE$0$0 == 0x00cc
                           0000CC  1106 _IC0MODE	=	0x00cc
                           0000CD  1107 G$IC0STATUS$0$0 == 0x00cd
                           0000CD  1108 _IC0STATUS	=	0x00cd
                           0000D6  1109 G$IC1CAPT0$0$0 == 0x00d6
                           0000D6  1110 _IC1CAPT0	=	0x00d6
                           0000D7  1111 G$IC1CAPT1$0$0 == 0x00d7
                           0000D7  1112 _IC1CAPT1	=	0x00d7
                           00D7D6  1113 G$IC1CAPT$0$0 == 0xd7d6
                           00D7D6  1114 _IC1CAPT	=	0xd7d6
                           0000D4  1115 G$IC1MODE$0$0 == 0x00d4
                           0000D4  1116 _IC1MODE	=	0x00d4
                           0000D5  1117 G$IC1STATUS$0$0 == 0x00d5
                           0000D5  1118 _IC1STATUS	=	0x00d5
                           000092  1119 G$NVADDR0$0$0 == 0x0092
                           000092  1120 _NVADDR0	=	0x0092
                           000093  1121 G$NVADDR1$0$0 == 0x0093
                           000093  1122 _NVADDR1	=	0x0093
                           009392  1123 G$NVADDR$0$0 == 0x9392
                           009392  1124 _NVADDR	=	0x9392
                           000094  1125 G$NVDATA0$0$0 == 0x0094
                           000094  1126 _NVDATA0	=	0x0094
                           000095  1127 G$NVDATA1$0$0 == 0x0095
                           000095  1128 _NVDATA1	=	0x0095
                           009594  1129 G$NVDATA$0$0 == 0x9594
                           009594  1130 _NVDATA	=	0x9594
                           000096  1131 G$NVKEY$0$0 == 0x0096
                           000096  1132 _NVKEY	=	0x0096
                           000091  1133 G$NVSTATUS$0$0 == 0x0091
                           000091  1134 _NVSTATUS	=	0x0091
                           0000BC  1135 G$OC0COMP0$0$0 == 0x00bc
                           0000BC  1136 _OC0COMP0	=	0x00bc
                           0000BD  1137 G$OC0COMP1$0$0 == 0x00bd
                           0000BD  1138 _OC0COMP1	=	0x00bd
                           00BDBC  1139 G$OC0COMP$0$0 == 0xbdbc
                           00BDBC  1140 _OC0COMP	=	0xbdbc
                           0000B9  1141 G$OC0MODE$0$0 == 0x00b9
                           0000B9  1142 _OC0MODE	=	0x00b9
                           0000BA  1143 G$OC0PIN$0$0 == 0x00ba
                           0000BA  1144 _OC0PIN	=	0x00ba
                           0000BB  1145 G$OC0STATUS$0$0 == 0x00bb
                           0000BB  1146 _OC0STATUS	=	0x00bb
                           0000C4  1147 G$OC1COMP0$0$0 == 0x00c4
                           0000C4  1148 _OC1COMP0	=	0x00c4
                           0000C5  1149 G$OC1COMP1$0$0 == 0x00c5
                           0000C5  1150 _OC1COMP1	=	0x00c5
                           00C5C4  1151 G$OC1COMP$0$0 == 0xc5c4
                           00C5C4  1152 _OC1COMP	=	0xc5c4
                           0000C1  1153 G$OC1MODE$0$0 == 0x00c1
                           0000C1  1154 _OC1MODE	=	0x00c1
                           0000C2  1155 G$OC1PIN$0$0 == 0x00c2
                           0000C2  1156 _OC1PIN	=	0x00c2
                           0000C3  1157 G$OC1STATUS$0$0 == 0x00c3
                           0000C3  1158 _OC1STATUS	=	0x00c3
                           0000B1  1159 G$RADIOACC$0$0 == 0x00b1
                           0000B1  1160 _RADIOACC	=	0x00b1
                           0000B3  1161 G$RADIOADDR0$0$0 == 0x00b3
                           0000B3  1162 _RADIOADDR0	=	0x00b3
                           0000B2  1163 G$RADIOADDR1$0$0 == 0x00b2
                           0000B2  1164 _RADIOADDR1	=	0x00b2
                           00B2B3  1165 G$RADIOADDR$0$0 == 0xb2b3
                           00B2B3  1166 _RADIOADDR	=	0xb2b3
                           0000B7  1167 G$RADIODATA0$0$0 == 0x00b7
                           0000B7  1168 _RADIODATA0	=	0x00b7
                           0000B6  1169 G$RADIODATA1$0$0 == 0x00b6
                           0000B6  1170 _RADIODATA1	=	0x00b6
                           0000B5  1171 G$RADIODATA2$0$0 == 0x00b5
                           0000B5  1172 _RADIODATA2	=	0x00b5
                           0000B4  1173 G$RADIODATA3$0$0 == 0x00b4
                           0000B4  1174 _RADIODATA3	=	0x00b4
                           B4B5B6B7  1175 G$RADIODATA$0$0 == 0xb4b5b6b7
                           B4B5B6B7  1176 _RADIODATA	=	0xb4b5b6b7
                           0000BE  1177 G$RADIOSTAT0$0$0 == 0x00be
                           0000BE  1178 _RADIOSTAT0	=	0x00be
                           0000BF  1179 G$RADIOSTAT1$0$0 == 0x00bf
                           0000BF  1180 _RADIOSTAT1	=	0x00bf
                           00BFBE  1181 G$RADIOSTAT$0$0 == 0xbfbe
                           00BFBE  1182 _RADIOSTAT	=	0xbfbe
                           0000DF  1183 G$SPCLKSRC$0$0 == 0x00df
                           0000DF  1184 _SPCLKSRC	=	0x00df
                           0000DC  1185 G$SPMODE$0$0 == 0x00dc
                           0000DC  1186 _SPMODE	=	0x00dc
                           0000DE  1187 G$SPSHREG$0$0 == 0x00de
                           0000DE  1188 _SPSHREG	=	0x00de
                           0000DD  1189 G$SPSTATUS$0$0 == 0x00dd
                           0000DD  1190 _SPSTATUS	=	0x00dd
                           00009A  1191 G$T0CLKSRC$0$0 == 0x009a
                           00009A  1192 _T0CLKSRC	=	0x009a
                           00009C  1193 G$T0CNT0$0$0 == 0x009c
                           00009C  1194 _T0CNT0	=	0x009c
                           00009D  1195 G$T0CNT1$0$0 == 0x009d
                           00009D  1196 _T0CNT1	=	0x009d
                           009D9C  1197 G$T0CNT$0$0 == 0x9d9c
                           009D9C  1198 _T0CNT	=	0x9d9c
                           000099  1199 G$T0MODE$0$0 == 0x0099
                           000099  1200 _T0MODE	=	0x0099
                           00009E  1201 G$T0PERIOD0$0$0 == 0x009e
                           00009E  1202 _T0PERIOD0	=	0x009e
                           00009F  1203 G$T0PERIOD1$0$0 == 0x009f
                           00009F  1204 _T0PERIOD1	=	0x009f
                           009F9E  1205 G$T0PERIOD$0$0 == 0x9f9e
                           009F9E  1206 _T0PERIOD	=	0x9f9e
                           00009B  1207 G$T0STATUS$0$0 == 0x009b
                           00009B  1208 _T0STATUS	=	0x009b
                           0000A2  1209 G$T1CLKSRC$0$0 == 0x00a2
                           0000A2  1210 _T1CLKSRC	=	0x00a2
                           0000A4  1211 G$T1CNT0$0$0 == 0x00a4
                           0000A4  1212 _T1CNT0	=	0x00a4
                           0000A5  1213 G$T1CNT1$0$0 == 0x00a5
                           0000A5  1214 _T1CNT1	=	0x00a5
                           00A5A4  1215 G$T1CNT$0$0 == 0xa5a4
                           00A5A4  1216 _T1CNT	=	0xa5a4
                           0000A1  1217 G$T1MODE$0$0 == 0x00a1
                           0000A1  1218 _T1MODE	=	0x00a1
                           0000A6  1219 G$T1PERIOD0$0$0 == 0x00a6
                           0000A6  1220 _T1PERIOD0	=	0x00a6
                           0000A7  1221 G$T1PERIOD1$0$0 == 0x00a7
                           0000A7  1222 _T1PERIOD1	=	0x00a7
                           00A7A6  1223 G$T1PERIOD$0$0 == 0xa7a6
                           00A7A6  1224 _T1PERIOD	=	0xa7a6
                           0000A3  1225 G$T1STATUS$0$0 == 0x00a3
                           0000A3  1226 _T1STATUS	=	0x00a3
                           0000AA  1227 G$T2CLKSRC$0$0 == 0x00aa
                           0000AA  1228 _T2CLKSRC	=	0x00aa
                           0000AC  1229 G$T2CNT0$0$0 == 0x00ac
                           0000AC  1230 _T2CNT0	=	0x00ac
                           0000AD  1231 G$T2CNT1$0$0 == 0x00ad
                           0000AD  1232 _T2CNT1	=	0x00ad
                           00ADAC  1233 G$T2CNT$0$0 == 0xadac
                           00ADAC  1234 _T2CNT	=	0xadac
                           0000A9  1235 G$T2MODE$0$0 == 0x00a9
                           0000A9  1236 _T2MODE	=	0x00a9
                           0000AE  1237 G$T2PERIOD0$0$0 == 0x00ae
                           0000AE  1238 _T2PERIOD0	=	0x00ae
                           0000AF  1239 G$T2PERIOD1$0$0 == 0x00af
                           0000AF  1240 _T2PERIOD1	=	0x00af
                           00AFAE  1241 G$T2PERIOD$0$0 == 0xafae
                           00AFAE  1242 _T2PERIOD	=	0xafae
                           0000AB  1243 G$T2STATUS$0$0 == 0x00ab
                           0000AB  1244 _T2STATUS	=	0x00ab
                           0000E4  1245 G$U0CTRL$0$0 == 0x00e4
                           0000E4  1246 _U0CTRL	=	0x00e4
                           0000E7  1247 G$U0MODE$0$0 == 0x00e7
                           0000E7  1248 _U0MODE	=	0x00e7
                           0000E6  1249 G$U0SHREG$0$0 == 0x00e6
                           0000E6  1250 _U0SHREG	=	0x00e6
                           0000E5  1251 G$U0STATUS$0$0 == 0x00e5
                           0000E5  1252 _U0STATUS	=	0x00e5
                           0000EC  1253 G$U1CTRL$0$0 == 0x00ec
                           0000EC  1254 _U1CTRL	=	0x00ec
                           0000EF  1255 G$U1MODE$0$0 == 0x00ef
                           0000EF  1256 _U1MODE	=	0x00ef
                           0000EE  1257 G$U1SHREG$0$0 == 0x00ee
                           0000EE  1258 _U1SHREG	=	0x00ee
                           0000ED  1259 G$U1STATUS$0$0 == 0x00ed
                           0000ED  1260 _U1STATUS	=	0x00ed
                           0000DA  1261 G$WDTCFG$0$0 == 0x00da
                           0000DA  1262 _WDTCFG	=	0x00da
                           0000DB  1263 G$WDTRESET$0$0 == 0x00db
                           0000DB  1264 _WDTRESET	=	0x00db
                           0000F1  1265 G$WTCFGA$0$0 == 0x00f1
                           0000F1  1266 _WTCFGA	=	0x00f1
                           0000F9  1267 G$WTCFGB$0$0 == 0x00f9
                           0000F9  1268 _WTCFGB	=	0x00f9
                           0000F2  1269 G$WTCNTA0$0$0 == 0x00f2
                           0000F2  1270 _WTCNTA0	=	0x00f2
                           0000F3  1271 G$WTCNTA1$0$0 == 0x00f3
                           0000F3  1272 _WTCNTA1	=	0x00f3
                           00F3F2  1273 G$WTCNTA$0$0 == 0xf3f2
                           00F3F2  1274 _WTCNTA	=	0xf3f2
                           0000FA  1275 G$WTCNTB0$0$0 == 0x00fa
                           0000FA  1276 _WTCNTB0	=	0x00fa
                           0000FB  1277 G$WTCNTB1$0$0 == 0x00fb
                           0000FB  1278 _WTCNTB1	=	0x00fb
                           00FBFA  1279 G$WTCNTB$0$0 == 0xfbfa
                           00FBFA  1280 _WTCNTB	=	0xfbfa
                           0000EB  1281 G$WTCNTR1$0$0 == 0x00eb
                           0000EB  1282 _WTCNTR1	=	0x00eb
                           0000F4  1283 G$WTEVTA0$0$0 == 0x00f4
                           0000F4  1284 _WTEVTA0	=	0x00f4
                           0000F5  1285 G$WTEVTA1$0$0 == 0x00f5
                           0000F5  1286 _WTEVTA1	=	0x00f5
                           00F5F4  1287 G$WTEVTA$0$0 == 0xf5f4
                           00F5F4  1288 _WTEVTA	=	0xf5f4
                           0000F6  1289 G$WTEVTB0$0$0 == 0x00f6
                           0000F6  1290 _WTEVTB0	=	0x00f6
                           0000F7  1291 G$WTEVTB1$0$0 == 0x00f7
                           0000F7  1292 _WTEVTB1	=	0x00f7
                           00F7F6  1293 G$WTEVTB$0$0 == 0xf7f6
                           00F7F6  1294 _WTEVTB	=	0xf7f6
                           0000FC  1295 G$WTEVTC0$0$0 == 0x00fc
                           0000FC  1296 _WTEVTC0	=	0x00fc
                           0000FD  1297 G$WTEVTC1$0$0 == 0x00fd
                           0000FD  1298 _WTEVTC1	=	0x00fd
                           00FDFC  1299 G$WTEVTC$0$0 == 0xfdfc
                           00FDFC  1300 _WTEVTC	=	0xfdfc
                           0000FE  1301 G$WTEVTD0$0$0 == 0x00fe
                           0000FE  1302 _WTEVTD0	=	0x00fe
                           0000FF  1303 G$WTEVTD1$0$0 == 0x00ff
                           0000FF  1304 _WTEVTD1	=	0x00ff
                           00FFFE  1305 G$WTEVTD$0$0 == 0xfffe
                           00FFFE  1306 _WTEVTD	=	0xfffe
                           0000E9  1307 G$WTIRQEN$0$0 == 0x00e9
                           0000E9  1308 _WTIRQEN	=	0x00e9
                           0000EA  1309 G$WTSTAT$0$0 == 0x00ea
                           0000EA  1310 _WTSTAT	=	0x00ea
                                   1311 ;--------------------------------------------------------
                                   1312 ; special function bits
                                   1313 ;--------------------------------------------------------
                                   1314 	.area RSEG    (ABS,DATA)
      000000                       1315 	.org 0x0000
                           0000E0  1316 G$ACC_0$0$0 == 0x00e0
                           0000E0  1317 _ACC_0	=	0x00e0
                           0000E1  1318 G$ACC_1$0$0 == 0x00e1
                           0000E1  1319 _ACC_1	=	0x00e1
                           0000E2  1320 G$ACC_2$0$0 == 0x00e2
                           0000E2  1321 _ACC_2	=	0x00e2
                           0000E3  1322 G$ACC_3$0$0 == 0x00e3
                           0000E3  1323 _ACC_3	=	0x00e3
                           0000E4  1324 G$ACC_4$0$0 == 0x00e4
                           0000E4  1325 _ACC_4	=	0x00e4
                           0000E5  1326 G$ACC_5$0$0 == 0x00e5
                           0000E5  1327 _ACC_5	=	0x00e5
                           0000E6  1328 G$ACC_6$0$0 == 0x00e6
                           0000E6  1329 _ACC_6	=	0x00e6
                           0000E7  1330 G$ACC_7$0$0 == 0x00e7
                           0000E7  1331 _ACC_7	=	0x00e7
                           0000F0  1332 G$B_0$0$0 == 0x00f0
                           0000F0  1333 _B_0	=	0x00f0
                           0000F1  1334 G$B_1$0$0 == 0x00f1
                           0000F1  1335 _B_1	=	0x00f1
                           0000F2  1336 G$B_2$0$0 == 0x00f2
                           0000F2  1337 _B_2	=	0x00f2
                           0000F3  1338 G$B_3$0$0 == 0x00f3
                           0000F3  1339 _B_3	=	0x00f3
                           0000F4  1340 G$B_4$0$0 == 0x00f4
                           0000F4  1341 _B_4	=	0x00f4
                           0000F5  1342 G$B_5$0$0 == 0x00f5
                           0000F5  1343 _B_5	=	0x00f5
                           0000F6  1344 G$B_6$0$0 == 0x00f6
                           0000F6  1345 _B_6	=	0x00f6
                           0000F7  1346 G$B_7$0$0 == 0x00f7
                           0000F7  1347 _B_7	=	0x00f7
                           0000A0  1348 G$E2IE_0$0$0 == 0x00a0
                           0000A0  1349 _E2IE_0	=	0x00a0
                           0000A1  1350 G$E2IE_1$0$0 == 0x00a1
                           0000A1  1351 _E2IE_1	=	0x00a1
                           0000A2  1352 G$E2IE_2$0$0 == 0x00a2
                           0000A2  1353 _E2IE_2	=	0x00a2
                           0000A3  1354 G$E2IE_3$0$0 == 0x00a3
                           0000A3  1355 _E2IE_3	=	0x00a3
                           0000A4  1356 G$E2IE_4$0$0 == 0x00a4
                           0000A4  1357 _E2IE_4	=	0x00a4
                           0000A5  1358 G$E2IE_5$0$0 == 0x00a5
                           0000A5  1359 _E2IE_5	=	0x00a5
                           0000A6  1360 G$E2IE_6$0$0 == 0x00a6
                           0000A6  1361 _E2IE_6	=	0x00a6
                           0000A7  1362 G$E2IE_7$0$0 == 0x00a7
                           0000A7  1363 _E2IE_7	=	0x00a7
                           0000C0  1364 G$E2IP_0$0$0 == 0x00c0
                           0000C0  1365 _E2IP_0	=	0x00c0
                           0000C1  1366 G$E2IP_1$0$0 == 0x00c1
                           0000C1  1367 _E2IP_1	=	0x00c1
                           0000C2  1368 G$E2IP_2$0$0 == 0x00c2
                           0000C2  1369 _E2IP_2	=	0x00c2
                           0000C3  1370 G$E2IP_3$0$0 == 0x00c3
                           0000C3  1371 _E2IP_3	=	0x00c3
                           0000C4  1372 G$E2IP_4$0$0 == 0x00c4
                           0000C4  1373 _E2IP_4	=	0x00c4
                           0000C5  1374 G$E2IP_5$0$0 == 0x00c5
                           0000C5  1375 _E2IP_5	=	0x00c5
                           0000C6  1376 G$E2IP_6$0$0 == 0x00c6
                           0000C6  1377 _E2IP_6	=	0x00c6
                           0000C7  1378 G$E2IP_7$0$0 == 0x00c7
                           0000C7  1379 _E2IP_7	=	0x00c7
                           000098  1380 G$EIE_0$0$0 == 0x0098
                           000098  1381 _EIE_0	=	0x0098
                           000099  1382 G$EIE_1$0$0 == 0x0099
                           000099  1383 _EIE_1	=	0x0099
                           00009A  1384 G$EIE_2$0$0 == 0x009a
                           00009A  1385 _EIE_2	=	0x009a
                           00009B  1386 G$EIE_3$0$0 == 0x009b
                           00009B  1387 _EIE_3	=	0x009b
                           00009C  1388 G$EIE_4$0$0 == 0x009c
                           00009C  1389 _EIE_4	=	0x009c
                           00009D  1390 G$EIE_5$0$0 == 0x009d
                           00009D  1391 _EIE_5	=	0x009d
                           00009E  1392 G$EIE_6$0$0 == 0x009e
                           00009E  1393 _EIE_6	=	0x009e
                           00009F  1394 G$EIE_7$0$0 == 0x009f
                           00009F  1395 _EIE_7	=	0x009f
                           0000B0  1396 G$EIP_0$0$0 == 0x00b0
                           0000B0  1397 _EIP_0	=	0x00b0
                           0000B1  1398 G$EIP_1$0$0 == 0x00b1
                           0000B1  1399 _EIP_1	=	0x00b1
                           0000B2  1400 G$EIP_2$0$0 == 0x00b2
                           0000B2  1401 _EIP_2	=	0x00b2
                           0000B3  1402 G$EIP_3$0$0 == 0x00b3
                           0000B3  1403 _EIP_3	=	0x00b3
                           0000B4  1404 G$EIP_4$0$0 == 0x00b4
                           0000B4  1405 _EIP_4	=	0x00b4
                           0000B5  1406 G$EIP_5$0$0 == 0x00b5
                           0000B5  1407 _EIP_5	=	0x00b5
                           0000B6  1408 G$EIP_6$0$0 == 0x00b6
                           0000B6  1409 _EIP_6	=	0x00b6
                           0000B7  1410 G$EIP_7$0$0 == 0x00b7
                           0000B7  1411 _EIP_7	=	0x00b7
                           0000A8  1412 G$IE_0$0$0 == 0x00a8
                           0000A8  1413 _IE_0	=	0x00a8
                           0000A9  1414 G$IE_1$0$0 == 0x00a9
                           0000A9  1415 _IE_1	=	0x00a9
                           0000AA  1416 G$IE_2$0$0 == 0x00aa
                           0000AA  1417 _IE_2	=	0x00aa
                           0000AB  1418 G$IE_3$0$0 == 0x00ab
                           0000AB  1419 _IE_3	=	0x00ab
                           0000AC  1420 G$IE_4$0$0 == 0x00ac
                           0000AC  1421 _IE_4	=	0x00ac
                           0000AD  1422 G$IE_5$0$0 == 0x00ad
                           0000AD  1423 _IE_5	=	0x00ad
                           0000AE  1424 G$IE_6$0$0 == 0x00ae
                           0000AE  1425 _IE_6	=	0x00ae
                           0000AF  1426 G$IE_7$0$0 == 0x00af
                           0000AF  1427 _IE_7	=	0x00af
                           0000AF  1428 G$EA$0$0 == 0x00af
                           0000AF  1429 _EA	=	0x00af
                           0000B8  1430 G$IP_0$0$0 == 0x00b8
                           0000B8  1431 _IP_0	=	0x00b8
                           0000B9  1432 G$IP_1$0$0 == 0x00b9
                           0000B9  1433 _IP_1	=	0x00b9
                           0000BA  1434 G$IP_2$0$0 == 0x00ba
                           0000BA  1435 _IP_2	=	0x00ba
                           0000BB  1436 G$IP_3$0$0 == 0x00bb
                           0000BB  1437 _IP_3	=	0x00bb
                           0000BC  1438 G$IP_4$0$0 == 0x00bc
                           0000BC  1439 _IP_4	=	0x00bc
                           0000BD  1440 G$IP_5$0$0 == 0x00bd
                           0000BD  1441 _IP_5	=	0x00bd
                           0000BE  1442 G$IP_6$0$0 == 0x00be
                           0000BE  1443 _IP_6	=	0x00be
                           0000BF  1444 G$IP_7$0$0 == 0x00bf
                           0000BF  1445 _IP_7	=	0x00bf
                           0000D0  1446 G$P$0$0 == 0x00d0
                           0000D0  1447 _P	=	0x00d0
                           0000D1  1448 G$F1$0$0 == 0x00d1
                           0000D1  1449 _F1	=	0x00d1
                           0000D2  1450 G$OV$0$0 == 0x00d2
                           0000D2  1451 _OV	=	0x00d2
                           0000D3  1452 G$RS0$0$0 == 0x00d3
                           0000D3  1453 _RS0	=	0x00d3
                           0000D4  1454 G$RS1$0$0 == 0x00d4
                           0000D4  1455 _RS1	=	0x00d4
                           0000D5  1456 G$F0$0$0 == 0x00d5
                           0000D5  1457 _F0	=	0x00d5
                           0000D6  1458 G$AC$0$0 == 0x00d6
                           0000D6  1459 _AC	=	0x00d6
                           0000D7  1460 G$CY$0$0 == 0x00d7
                           0000D7  1461 _CY	=	0x00d7
                           0000C8  1462 G$PINA_0$0$0 == 0x00c8
                           0000C8  1463 _PINA_0	=	0x00c8
                           0000C9  1464 G$PINA_1$0$0 == 0x00c9
                           0000C9  1465 _PINA_1	=	0x00c9
                           0000CA  1466 G$PINA_2$0$0 == 0x00ca
                           0000CA  1467 _PINA_2	=	0x00ca
                           0000CB  1468 G$PINA_3$0$0 == 0x00cb
                           0000CB  1469 _PINA_3	=	0x00cb
                           0000CC  1470 G$PINA_4$0$0 == 0x00cc
                           0000CC  1471 _PINA_4	=	0x00cc
                           0000CD  1472 G$PINA_5$0$0 == 0x00cd
                           0000CD  1473 _PINA_5	=	0x00cd
                           0000CE  1474 G$PINA_6$0$0 == 0x00ce
                           0000CE  1475 _PINA_6	=	0x00ce
                           0000CF  1476 G$PINA_7$0$0 == 0x00cf
                           0000CF  1477 _PINA_7	=	0x00cf
                           0000E8  1478 G$PINB_0$0$0 == 0x00e8
                           0000E8  1479 _PINB_0	=	0x00e8
                           0000E9  1480 G$PINB_1$0$0 == 0x00e9
                           0000E9  1481 _PINB_1	=	0x00e9
                           0000EA  1482 G$PINB_2$0$0 == 0x00ea
                           0000EA  1483 _PINB_2	=	0x00ea
                           0000EB  1484 G$PINB_3$0$0 == 0x00eb
                           0000EB  1485 _PINB_3	=	0x00eb
                           0000EC  1486 G$PINB_4$0$0 == 0x00ec
                           0000EC  1487 _PINB_4	=	0x00ec
                           0000ED  1488 G$PINB_5$0$0 == 0x00ed
                           0000ED  1489 _PINB_5	=	0x00ed
                           0000EE  1490 G$PINB_6$0$0 == 0x00ee
                           0000EE  1491 _PINB_6	=	0x00ee
                           0000EF  1492 G$PINB_7$0$0 == 0x00ef
                           0000EF  1493 _PINB_7	=	0x00ef
                           0000F8  1494 G$PINC_0$0$0 == 0x00f8
                           0000F8  1495 _PINC_0	=	0x00f8
                           0000F9  1496 G$PINC_1$0$0 == 0x00f9
                           0000F9  1497 _PINC_1	=	0x00f9
                           0000FA  1498 G$PINC_2$0$0 == 0x00fa
                           0000FA  1499 _PINC_2	=	0x00fa
                           0000FB  1500 G$PINC_3$0$0 == 0x00fb
                           0000FB  1501 _PINC_3	=	0x00fb
                           0000FC  1502 G$PINC_4$0$0 == 0x00fc
                           0000FC  1503 _PINC_4	=	0x00fc
                           0000FD  1504 G$PINC_5$0$0 == 0x00fd
                           0000FD  1505 _PINC_5	=	0x00fd
                           0000FE  1506 G$PINC_6$0$0 == 0x00fe
                           0000FE  1507 _PINC_6	=	0x00fe
                           0000FF  1508 G$PINC_7$0$0 == 0x00ff
                           0000FF  1509 _PINC_7	=	0x00ff
                           000080  1510 G$PORTA_0$0$0 == 0x0080
                           000080  1511 _PORTA_0	=	0x0080
                           000081  1512 G$PORTA_1$0$0 == 0x0081
                           000081  1513 _PORTA_1	=	0x0081
                           000082  1514 G$PORTA_2$0$0 == 0x0082
                           000082  1515 _PORTA_2	=	0x0082
                           000083  1516 G$PORTA_3$0$0 == 0x0083
                           000083  1517 _PORTA_3	=	0x0083
                           000084  1518 G$PORTA_4$0$0 == 0x0084
                           000084  1519 _PORTA_4	=	0x0084
                           000085  1520 G$PORTA_5$0$0 == 0x0085
                           000085  1521 _PORTA_5	=	0x0085
                           000086  1522 G$PORTA_6$0$0 == 0x0086
                           000086  1523 _PORTA_6	=	0x0086
                           000087  1524 G$PORTA_7$0$0 == 0x0087
                           000087  1525 _PORTA_7	=	0x0087
                           000088  1526 G$PORTB_0$0$0 == 0x0088
                           000088  1527 _PORTB_0	=	0x0088
                           000089  1528 G$PORTB_1$0$0 == 0x0089
                           000089  1529 _PORTB_1	=	0x0089
                           00008A  1530 G$PORTB_2$0$0 == 0x008a
                           00008A  1531 _PORTB_2	=	0x008a
                           00008B  1532 G$PORTB_3$0$0 == 0x008b
                           00008B  1533 _PORTB_3	=	0x008b
                           00008C  1534 G$PORTB_4$0$0 == 0x008c
                           00008C  1535 _PORTB_4	=	0x008c
                           00008D  1536 G$PORTB_5$0$0 == 0x008d
                           00008D  1537 _PORTB_5	=	0x008d
                           00008E  1538 G$PORTB_6$0$0 == 0x008e
                           00008E  1539 _PORTB_6	=	0x008e
                           00008F  1540 G$PORTB_7$0$0 == 0x008f
                           00008F  1541 _PORTB_7	=	0x008f
                           000090  1542 G$PORTC_0$0$0 == 0x0090
                           000090  1543 _PORTC_0	=	0x0090
                           000091  1544 G$PORTC_1$0$0 == 0x0091
                           000091  1545 _PORTC_1	=	0x0091
                           000092  1546 G$PORTC_2$0$0 == 0x0092
                           000092  1547 _PORTC_2	=	0x0092
                           000093  1548 G$PORTC_3$0$0 == 0x0093
                           000093  1549 _PORTC_3	=	0x0093
                           000094  1550 G$PORTC_4$0$0 == 0x0094
                           000094  1551 _PORTC_4	=	0x0094
                           000095  1552 G$PORTC_5$0$0 == 0x0095
                           000095  1553 _PORTC_5	=	0x0095
                           000096  1554 G$PORTC_6$0$0 == 0x0096
                           000096  1555 _PORTC_6	=	0x0096
                           000097  1556 G$PORTC_7$0$0 == 0x0097
                           000097  1557 _PORTC_7	=	0x0097
                                   1558 ;--------------------------------------------------------
                                   1559 ; overlayable register banks
                                   1560 ;--------------------------------------------------------
                                   1561 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                       1562 	.ds 8
                                   1563 ;--------------------------------------------------------
                                   1564 ; internal ram data
                                   1565 ;--------------------------------------------------------
                                   1566 	.area DSEG    (DATA)
                                   1567 ;--------------------------------------------------------
                                   1568 ; overlayable items in internal ram 
                                   1569 ;--------------------------------------------------------
                                   1570 ;--------------------------------------------------------
                                   1571 ; indirectly addressable internal ram data
                                   1572 ;--------------------------------------------------------
                                   1573 	.area ISEG    (DATA)
                                   1574 ;--------------------------------------------------------
                                   1575 ; absolute internal ram data
                                   1576 ;--------------------------------------------------------
                                   1577 	.area IABS    (ABS,DATA)
                                   1578 	.area IABS    (ABS,DATA)
                                   1579 ;--------------------------------------------------------
                                   1580 ; bit data
                                   1581 ;--------------------------------------------------------
                                   1582 	.area BSEG    (BIT)
                                   1583 ;--------------------------------------------------------
                                   1584 ; paged external ram data
                                   1585 ;--------------------------------------------------------
                                   1586 	.area PSEG    (PAG,XDATA)
                                   1587 ;--------------------------------------------------------
                                   1588 ; external ram data
                                   1589 ;--------------------------------------------------------
                                   1590 	.area XSEG    (XDATA)
                           007020  1591 G$ADCCH0VAL0$0$0 == 0x7020
                           007020  1592 _ADCCH0VAL0	=	0x7020
                           007021  1593 G$ADCCH0VAL1$0$0 == 0x7021
                           007021  1594 _ADCCH0VAL1	=	0x7021
                           007020  1595 G$ADCCH0VAL$0$0 == 0x7020
                           007020  1596 _ADCCH0VAL	=	0x7020
                           007022  1597 G$ADCCH1VAL0$0$0 == 0x7022
                           007022  1598 _ADCCH1VAL0	=	0x7022
                           007023  1599 G$ADCCH1VAL1$0$0 == 0x7023
                           007023  1600 _ADCCH1VAL1	=	0x7023
                           007022  1601 G$ADCCH1VAL$0$0 == 0x7022
                           007022  1602 _ADCCH1VAL	=	0x7022
                           007024  1603 G$ADCCH2VAL0$0$0 == 0x7024
                           007024  1604 _ADCCH2VAL0	=	0x7024
                           007025  1605 G$ADCCH2VAL1$0$0 == 0x7025
                           007025  1606 _ADCCH2VAL1	=	0x7025
                           007024  1607 G$ADCCH2VAL$0$0 == 0x7024
                           007024  1608 _ADCCH2VAL	=	0x7024
                           007026  1609 G$ADCCH3VAL0$0$0 == 0x7026
                           007026  1610 _ADCCH3VAL0	=	0x7026
                           007027  1611 G$ADCCH3VAL1$0$0 == 0x7027
                           007027  1612 _ADCCH3VAL1	=	0x7027
                           007026  1613 G$ADCCH3VAL$0$0 == 0x7026
                           007026  1614 _ADCCH3VAL	=	0x7026
                           007028  1615 G$ADCTUNE0$0$0 == 0x7028
                           007028  1616 _ADCTUNE0	=	0x7028
                           007029  1617 G$ADCTUNE1$0$0 == 0x7029
                           007029  1618 _ADCTUNE1	=	0x7029
                           00702A  1619 G$ADCTUNE2$0$0 == 0x702a
                           00702A  1620 _ADCTUNE2	=	0x702a
                           007010  1621 G$DMA0ADDR0$0$0 == 0x7010
                           007010  1622 _DMA0ADDR0	=	0x7010
                           007011  1623 G$DMA0ADDR1$0$0 == 0x7011
                           007011  1624 _DMA0ADDR1	=	0x7011
                           007010  1625 G$DMA0ADDR$0$0 == 0x7010
                           007010  1626 _DMA0ADDR	=	0x7010
                           007014  1627 G$DMA0CONFIG$0$0 == 0x7014
                           007014  1628 _DMA0CONFIG	=	0x7014
                           007012  1629 G$DMA1ADDR0$0$0 == 0x7012
                           007012  1630 _DMA1ADDR0	=	0x7012
                           007013  1631 G$DMA1ADDR1$0$0 == 0x7013
                           007013  1632 _DMA1ADDR1	=	0x7013
                           007012  1633 G$DMA1ADDR$0$0 == 0x7012
                           007012  1634 _DMA1ADDR	=	0x7012
                           007015  1635 G$DMA1CONFIG$0$0 == 0x7015
                           007015  1636 _DMA1CONFIG	=	0x7015
                           007070  1637 G$FRCOSCCONFIG$0$0 == 0x7070
                           007070  1638 _FRCOSCCONFIG	=	0x7070
                           007071  1639 G$FRCOSCCTRL$0$0 == 0x7071
                           007071  1640 _FRCOSCCTRL	=	0x7071
                           007076  1641 G$FRCOSCFREQ0$0$0 == 0x7076
                           007076  1642 _FRCOSCFREQ0	=	0x7076
                           007077  1643 G$FRCOSCFREQ1$0$0 == 0x7077
                           007077  1644 _FRCOSCFREQ1	=	0x7077
                           007076  1645 G$FRCOSCFREQ$0$0 == 0x7076
                           007076  1646 _FRCOSCFREQ	=	0x7076
                           007072  1647 G$FRCOSCKFILT0$0$0 == 0x7072
                           007072  1648 _FRCOSCKFILT0	=	0x7072
                           007073  1649 G$FRCOSCKFILT1$0$0 == 0x7073
                           007073  1650 _FRCOSCKFILT1	=	0x7073
                           007072  1651 G$FRCOSCKFILT$0$0 == 0x7072
                           007072  1652 _FRCOSCKFILT	=	0x7072
                           007078  1653 G$FRCOSCPER0$0$0 == 0x7078
                           007078  1654 _FRCOSCPER0	=	0x7078
                           007079  1655 G$FRCOSCPER1$0$0 == 0x7079
                           007079  1656 _FRCOSCPER1	=	0x7079
                           007078  1657 G$FRCOSCPER$0$0 == 0x7078
                           007078  1658 _FRCOSCPER	=	0x7078
                           007074  1659 G$FRCOSCREF0$0$0 == 0x7074
                           007074  1660 _FRCOSCREF0	=	0x7074
                           007075  1661 G$FRCOSCREF1$0$0 == 0x7075
                           007075  1662 _FRCOSCREF1	=	0x7075
                           007074  1663 G$FRCOSCREF$0$0 == 0x7074
                           007074  1664 _FRCOSCREF	=	0x7074
                           007007  1665 G$ANALOGA$0$0 == 0x7007
                           007007  1666 _ANALOGA	=	0x7007
                           00700C  1667 G$GPIOENABLE$0$0 == 0x700c
                           00700C  1668 _GPIOENABLE	=	0x700c
                           007003  1669 G$EXTIRQ$0$0 == 0x7003
                           007003  1670 _EXTIRQ	=	0x7003
                           007000  1671 G$INTCHGA$0$0 == 0x7000
                           007000  1672 _INTCHGA	=	0x7000
                           007001  1673 G$INTCHGB$0$0 == 0x7001
                           007001  1674 _INTCHGB	=	0x7001
                           007002  1675 G$INTCHGC$0$0 == 0x7002
                           007002  1676 _INTCHGC	=	0x7002
                           007008  1677 G$PALTA$0$0 == 0x7008
                           007008  1678 _PALTA	=	0x7008
                           007009  1679 G$PALTB$0$0 == 0x7009
                           007009  1680 _PALTB	=	0x7009
                           00700A  1681 G$PALTC$0$0 == 0x700a
                           00700A  1682 _PALTC	=	0x700a
                           007046  1683 G$PALTRADIO$0$0 == 0x7046
                           007046  1684 _PALTRADIO	=	0x7046
                           007004  1685 G$PINCHGA$0$0 == 0x7004
                           007004  1686 _PINCHGA	=	0x7004
                           007005  1687 G$PINCHGB$0$0 == 0x7005
                           007005  1688 _PINCHGB	=	0x7005
                           007006  1689 G$PINCHGC$0$0 == 0x7006
                           007006  1690 _PINCHGC	=	0x7006
                           00700B  1691 G$PINSEL$0$0 == 0x700b
                           00700B  1692 _PINSEL	=	0x700b
                           007060  1693 G$LPOSCCONFIG$0$0 == 0x7060
                           007060  1694 _LPOSCCONFIG	=	0x7060
                           007066  1695 G$LPOSCFREQ0$0$0 == 0x7066
                           007066  1696 _LPOSCFREQ0	=	0x7066
                           007067  1697 G$LPOSCFREQ1$0$0 == 0x7067
                           007067  1698 _LPOSCFREQ1	=	0x7067
                           007066  1699 G$LPOSCFREQ$0$0 == 0x7066
                           007066  1700 _LPOSCFREQ	=	0x7066
                           007062  1701 G$LPOSCKFILT0$0$0 == 0x7062
                           007062  1702 _LPOSCKFILT0	=	0x7062
                           007063  1703 G$LPOSCKFILT1$0$0 == 0x7063
                           007063  1704 _LPOSCKFILT1	=	0x7063
                           007062  1705 G$LPOSCKFILT$0$0 == 0x7062
                           007062  1706 _LPOSCKFILT	=	0x7062
                           007068  1707 G$LPOSCPER0$0$0 == 0x7068
                           007068  1708 _LPOSCPER0	=	0x7068
                           007069  1709 G$LPOSCPER1$0$0 == 0x7069
                           007069  1710 _LPOSCPER1	=	0x7069
                           007068  1711 G$LPOSCPER$0$0 == 0x7068
                           007068  1712 _LPOSCPER	=	0x7068
                           007064  1713 G$LPOSCREF0$0$0 == 0x7064
                           007064  1714 _LPOSCREF0	=	0x7064
                           007065  1715 G$LPOSCREF1$0$0 == 0x7065
                           007065  1716 _LPOSCREF1	=	0x7065
                           007064  1717 G$LPOSCREF$0$0 == 0x7064
                           007064  1718 _LPOSCREF	=	0x7064
                           007054  1719 G$LPXOSCGM$0$0 == 0x7054
                           007054  1720 _LPXOSCGM	=	0x7054
                           007F01  1721 G$MISCCTRL$0$0 == 0x7f01
                           007F01  1722 _MISCCTRL	=	0x7f01
                           007053  1723 G$OSCCALIB$0$0 == 0x7053
                           007053  1724 _OSCCALIB	=	0x7053
                           007050  1725 G$OSCFORCERUN$0$0 == 0x7050
                           007050  1726 _OSCFORCERUN	=	0x7050
                           007052  1727 G$OSCREADY$0$0 == 0x7052
                           007052  1728 _OSCREADY	=	0x7052
                           007051  1729 G$OSCRUN$0$0 == 0x7051
                           007051  1730 _OSCRUN	=	0x7051
                           007040  1731 G$RADIOFDATAADDR0$0$0 == 0x7040
                           007040  1732 _RADIOFDATAADDR0	=	0x7040
                           007041  1733 G$RADIOFDATAADDR1$0$0 == 0x7041
                           007041  1734 _RADIOFDATAADDR1	=	0x7041
                           007040  1735 G$RADIOFDATAADDR$0$0 == 0x7040
                           007040  1736 _RADIOFDATAADDR	=	0x7040
                           007042  1737 G$RADIOFSTATADDR0$0$0 == 0x7042
                           007042  1738 _RADIOFSTATADDR0	=	0x7042
                           007043  1739 G$RADIOFSTATADDR1$0$0 == 0x7043
                           007043  1740 _RADIOFSTATADDR1	=	0x7043
                           007042  1741 G$RADIOFSTATADDR$0$0 == 0x7042
                           007042  1742 _RADIOFSTATADDR	=	0x7042
                           007044  1743 G$RADIOMUX$0$0 == 0x7044
                           007044  1744 _RADIOMUX	=	0x7044
                           007084  1745 G$SCRATCH0$0$0 == 0x7084
                           007084  1746 _SCRATCH0	=	0x7084
                           007085  1747 G$SCRATCH1$0$0 == 0x7085
                           007085  1748 _SCRATCH1	=	0x7085
                           007086  1749 G$SCRATCH2$0$0 == 0x7086
                           007086  1750 _SCRATCH2	=	0x7086
                           007087  1751 G$SCRATCH3$0$0 == 0x7087
                           007087  1752 _SCRATCH3	=	0x7087
                           007F00  1753 G$SILICONREV$0$0 == 0x7f00
                           007F00  1754 _SILICONREV	=	0x7f00
                           007F19  1755 G$XTALAMPL$0$0 == 0x7f19
                           007F19  1756 _XTALAMPL	=	0x7f19
                           007F18  1757 G$XTALOSC$0$0 == 0x7f18
                           007F18  1758 _XTALOSC	=	0x7f18
                           007F1A  1759 G$XTALREADY$0$0 == 0x7f1a
                           007F1A  1760 _XTALREADY	=	0x7f1a
                           004114  1761 G$AX5043_AFSKCTRL$0$0 == 0x4114
                           004114  1762 _AX5043_AFSKCTRL	=	0x4114
                           004113  1763 G$AX5043_AFSKMARK0$0$0 == 0x4113
                           004113  1764 _AX5043_AFSKMARK0	=	0x4113
                           004112  1765 G$AX5043_AFSKMARK1$0$0 == 0x4112
                           004112  1766 _AX5043_AFSKMARK1	=	0x4112
                           004111  1767 G$AX5043_AFSKSPACE0$0$0 == 0x4111
                           004111  1768 _AX5043_AFSKSPACE0	=	0x4111
                           004110  1769 G$AX5043_AFSKSPACE1$0$0 == 0x4110
                           004110  1770 _AX5043_AFSKSPACE1	=	0x4110
                           004043  1771 G$AX5043_AGCCOUNTER$0$0 == 0x4043
                           004043  1772 _AX5043_AGCCOUNTER	=	0x4043
                           004115  1773 G$AX5043_AMPLFILTER$0$0 == 0x4115
                           004115  1774 _AX5043_AMPLFILTER	=	0x4115
                           004189  1775 G$AX5043_BBOFFSCAP$0$0 == 0x4189
                           004189  1776 _AX5043_BBOFFSCAP	=	0x4189
                           004188  1777 G$AX5043_BBTUNE$0$0 == 0x4188
                           004188  1778 _AX5043_BBTUNE	=	0x4188
                           004041  1779 G$AX5043_BGNDRSSI$0$0 == 0x4041
                           004041  1780 _AX5043_BGNDRSSI	=	0x4041
                           00422E  1781 G$AX5043_BGNDRSSIGAIN$0$0 == 0x422e
                           00422E  1782 _AX5043_BGNDRSSIGAIN	=	0x422e
                           00422F  1783 G$AX5043_BGNDRSSITHR$0$0 == 0x422f
                           00422F  1784 _AX5043_BGNDRSSITHR	=	0x422f
                           004017  1785 G$AX5043_CRCINIT0$0$0 == 0x4017
                           004017  1786 _AX5043_CRCINIT0	=	0x4017
                           004016  1787 G$AX5043_CRCINIT1$0$0 == 0x4016
                           004016  1788 _AX5043_CRCINIT1	=	0x4016
                           004015  1789 G$AX5043_CRCINIT2$0$0 == 0x4015
                           004015  1790 _AX5043_CRCINIT2	=	0x4015
                           004014  1791 G$AX5043_CRCINIT3$0$0 == 0x4014
                           004014  1792 _AX5043_CRCINIT3	=	0x4014
                           004332  1793 G$AX5043_DACCONFIG$0$0 == 0x4332
                           004332  1794 _AX5043_DACCONFIG	=	0x4332
                           004331  1795 G$AX5043_DACVALUE0$0$0 == 0x4331
                           004331  1796 _AX5043_DACVALUE0	=	0x4331
                           004330  1797 G$AX5043_DACVALUE1$0$0 == 0x4330
                           004330  1798 _AX5043_DACVALUE1	=	0x4330
                           004102  1799 G$AX5043_DECIMATION$0$0 == 0x4102
                           004102  1800 _AX5043_DECIMATION	=	0x4102
                           004042  1801 G$AX5043_DIVERSITY$0$0 == 0x4042
                           004042  1802 _AX5043_DIVERSITY	=	0x4042
                           004011  1803 G$AX5043_ENCODING$0$0 == 0x4011
                           004011  1804 _AX5043_ENCODING	=	0x4011
                           004018  1805 G$AX5043_FEC$0$0 == 0x4018
                           004018  1806 _AX5043_FEC	=	0x4018
                           00401A  1807 G$AX5043_FECSTATUS$0$0 == 0x401a
                           00401A  1808 _AX5043_FECSTATUS	=	0x401a
                           004019  1809 G$AX5043_FECSYNC$0$0 == 0x4019
                           004019  1810 _AX5043_FECSYNC	=	0x4019
                           00402B  1811 G$AX5043_FIFOCOUNT0$0$0 == 0x402b
                           00402B  1812 _AX5043_FIFOCOUNT0	=	0x402b
                           00402A  1813 G$AX5043_FIFOCOUNT1$0$0 == 0x402a
                           00402A  1814 _AX5043_FIFOCOUNT1	=	0x402a
                           004029  1815 G$AX5043_FIFODATA$0$0 == 0x4029
                           004029  1816 _AX5043_FIFODATA	=	0x4029
                           00402D  1817 G$AX5043_FIFOFREE0$0$0 == 0x402d
                           00402D  1818 _AX5043_FIFOFREE0	=	0x402d
                           00402C  1819 G$AX5043_FIFOFREE1$0$0 == 0x402c
                           00402C  1820 _AX5043_FIFOFREE1	=	0x402c
                           004028  1821 G$AX5043_FIFOSTAT$0$0 == 0x4028
                           004028  1822 _AX5043_FIFOSTAT	=	0x4028
                           00402F  1823 G$AX5043_FIFOTHRESH0$0$0 == 0x402f
                           00402F  1824 _AX5043_FIFOTHRESH0	=	0x402f
                           00402E  1825 G$AX5043_FIFOTHRESH1$0$0 == 0x402e
                           00402E  1826 _AX5043_FIFOTHRESH1	=	0x402e
                           004012  1827 G$AX5043_FRAMING$0$0 == 0x4012
                           004012  1828 _AX5043_FRAMING	=	0x4012
                           004037  1829 G$AX5043_FREQA0$0$0 == 0x4037
                           004037  1830 _AX5043_FREQA0	=	0x4037
                           004036  1831 G$AX5043_FREQA1$0$0 == 0x4036
                           004036  1832 _AX5043_FREQA1	=	0x4036
                           004035  1833 G$AX5043_FREQA2$0$0 == 0x4035
                           004035  1834 _AX5043_FREQA2	=	0x4035
                           004034  1835 G$AX5043_FREQA3$0$0 == 0x4034
                           004034  1836 _AX5043_FREQA3	=	0x4034
                           00403F  1837 G$AX5043_FREQB0$0$0 == 0x403f
                           00403F  1838 _AX5043_FREQB0	=	0x403f
                           00403E  1839 G$AX5043_FREQB1$0$0 == 0x403e
                           00403E  1840 _AX5043_FREQB1	=	0x403e
                           00403D  1841 G$AX5043_FREQB2$0$0 == 0x403d
                           00403D  1842 _AX5043_FREQB2	=	0x403d
                           00403C  1843 G$AX5043_FREQB3$0$0 == 0x403c
                           00403C  1844 _AX5043_FREQB3	=	0x403c
                           004163  1845 G$AX5043_FSKDEV0$0$0 == 0x4163
                           004163  1846 _AX5043_FSKDEV0	=	0x4163
                           004162  1847 G$AX5043_FSKDEV1$0$0 == 0x4162
                           004162  1848 _AX5043_FSKDEV1	=	0x4162
                           004161  1849 G$AX5043_FSKDEV2$0$0 == 0x4161
                           004161  1850 _AX5043_FSKDEV2	=	0x4161
                           00410D  1851 G$AX5043_FSKDMAX0$0$0 == 0x410d
                           00410D  1852 _AX5043_FSKDMAX0	=	0x410d
                           00410C  1853 G$AX5043_FSKDMAX1$0$0 == 0x410c
                           00410C  1854 _AX5043_FSKDMAX1	=	0x410c
                           00410F  1855 G$AX5043_FSKDMIN0$0$0 == 0x410f
                           00410F  1856 _AX5043_FSKDMIN0	=	0x410f
                           00410E  1857 G$AX5043_FSKDMIN1$0$0 == 0x410e
                           00410E  1858 _AX5043_FSKDMIN1	=	0x410e
                           004309  1859 G$AX5043_GPADC13VALUE0$0$0 == 0x4309
                           004309  1860 _AX5043_GPADC13VALUE0	=	0x4309
                           004308  1861 G$AX5043_GPADC13VALUE1$0$0 == 0x4308
                           004308  1862 _AX5043_GPADC13VALUE1	=	0x4308
                           004300  1863 G$AX5043_GPADCCTRL$0$0 == 0x4300
                           004300  1864 _AX5043_GPADCCTRL	=	0x4300
                           004301  1865 G$AX5043_GPADCPERIOD$0$0 == 0x4301
                           004301  1866 _AX5043_GPADCPERIOD	=	0x4301
                           004101  1867 G$AX5043_IFFREQ0$0$0 == 0x4101
                           004101  1868 _AX5043_IFFREQ0	=	0x4101
                           004100  1869 G$AX5043_IFFREQ1$0$0 == 0x4100
                           004100  1870 _AX5043_IFFREQ1	=	0x4100
                           00400B  1871 G$AX5043_IRQINVERSION0$0$0 == 0x400b
                           00400B  1872 _AX5043_IRQINVERSION0	=	0x400b
                           00400A  1873 G$AX5043_IRQINVERSION1$0$0 == 0x400a
                           00400A  1874 _AX5043_IRQINVERSION1	=	0x400a
                           004007  1875 G$AX5043_IRQMASK0$0$0 == 0x4007
                           004007  1876 _AX5043_IRQMASK0	=	0x4007
                           004006  1877 G$AX5043_IRQMASK1$0$0 == 0x4006
                           004006  1878 _AX5043_IRQMASK1	=	0x4006
                           00400D  1879 G$AX5043_IRQREQUEST0$0$0 == 0x400d
                           00400D  1880 _AX5043_IRQREQUEST0	=	0x400d
                           00400C  1881 G$AX5043_IRQREQUEST1$0$0 == 0x400c
                           00400C  1882 _AX5043_IRQREQUEST1	=	0x400c
                           004310  1883 G$AX5043_LPOSCCONFIG$0$0 == 0x4310
                           004310  1884 _AX5043_LPOSCCONFIG	=	0x4310
                           004317  1885 G$AX5043_LPOSCFREQ0$0$0 == 0x4317
                           004317  1886 _AX5043_LPOSCFREQ0	=	0x4317
                           004316  1887 G$AX5043_LPOSCFREQ1$0$0 == 0x4316
                           004316  1888 _AX5043_LPOSCFREQ1	=	0x4316
                           004313  1889 G$AX5043_LPOSCKFILT0$0$0 == 0x4313
                           004313  1890 _AX5043_LPOSCKFILT0	=	0x4313
                           004312  1891 G$AX5043_LPOSCKFILT1$0$0 == 0x4312
                           004312  1892 _AX5043_LPOSCKFILT1	=	0x4312
                           004319  1893 G$AX5043_LPOSCPER0$0$0 == 0x4319
                           004319  1894 _AX5043_LPOSCPER0	=	0x4319
                           004318  1895 G$AX5043_LPOSCPER1$0$0 == 0x4318
                           004318  1896 _AX5043_LPOSCPER1	=	0x4318
                           004315  1897 G$AX5043_LPOSCREF0$0$0 == 0x4315
                           004315  1898 _AX5043_LPOSCREF0	=	0x4315
                           004314  1899 G$AX5043_LPOSCREF1$0$0 == 0x4314
                           004314  1900 _AX5043_LPOSCREF1	=	0x4314
                           004311  1901 G$AX5043_LPOSCSTATUS$0$0 == 0x4311
                           004311  1902 _AX5043_LPOSCSTATUS	=	0x4311
                           004214  1903 G$AX5043_MATCH0LEN$0$0 == 0x4214
                           004214  1904 _AX5043_MATCH0LEN	=	0x4214
                           004216  1905 G$AX5043_MATCH0MAX$0$0 == 0x4216
                           004216  1906 _AX5043_MATCH0MAX	=	0x4216
                           004215  1907 G$AX5043_MATCH0MIN$0$0 == 0x4215
                           004215  1908 _AX5043_MATCH0MIN	=	0x4215
                           004213  1909 G$AX5043_MATCH0PAT0$0$0 == 0x4213
                           004213  1910 _AX5043_MATCH0PAT0	=	0x4213
                           004212  1911 G$AX5043_MATCH0PAT1$0$0 == 0x4212
                           004212  1912 _AX5043_MATCH0PAT1	=	0x4212
                           004211  1913 G$AX5043_MATCH0PAT2$0$0 == 0x4211
                           004211  1914 _AX5043_MATCH0PAT2	=	0x4211
                           004210  1915 G$AX5043_MATCH0PAT3$0$0 == 0x4210
                           004210  1916 _AX5043_MATCH0PAT3	=	0x4210
                           00421C  1917 G$AX5043_MATCH1LEN$0$0 == 0x421c
                           00421C  1918 _AX5043_MATCH1LEN	=	0x421c
                           00421E  1919 G$AX5043_MATCH1MAX$0$0 == 0x421e
                           00421E  1920 _AX5043_MATCH1MAX	=	0x421e
                           00421D  1921 G$AX5043_MATCH1MIN$0$0 == 0x421d
                           00421D  1922 _AX5043_MATCH1MIN	=	0x421d
                           004219  1923 G$AX5043_MATCH1PAT0$0$0 == 0x4219
                           004219  1924 _AX5043_MATCH1PAT0	=	0x4219
                           004218  1925 G$AX5043_MATCH1PAT1$0$0 == 0x4218
                           004218  1926 _AX5043_MATCH1PAT1	=	0x4218
                           004108  1927 G$AX5043_MAXDROFFSET0$0$0 == 0x4108
                           004108  1928 _AX5043_MAXDROFFSET0	=	0x4108
                           004107  1929 G$AX5043_MAXDROFFSET1$0$0 == 0x4107
                           004107  1930 _AX5043_MAXDROFFSET1	=	0x4107
                           004106  1931 G$AX5043_MAXDROFFSET2$0$0 == 0x4106
                           004106  1932 _AX5043_MAXDROFFSET2	=	0x4106
                           00410B  1933 G$AX5043_MAXRFOFFSET0$0$0 == 0x410b
                           00410B  1934 _AX5043_MAXRFOFFSET0	=	0x410b
                           00410A  1935 G$AX5043_MAXRFOFFSET1$0$0 == 0x410a
                           00410A  1936 _AX5043_MAXRFOFFSET1	=	0x410a
                           004109  1937 G$AX5043_MAXRFOFFSET2$0$0 == 0x4109
                           004109  1938 _AX5043_MAXRFOFFSET2	=	0x4109
                           004164  1939 G$AX5043_MODCFGA$0$0 == 0x4164
                           004164  1940 _AX5043_MODCFGA	=	0x4164
                           004160  1941 G$AX5043_MODCFGF$0$0 == 0x4160
                           004160  1942 _AX5043_MODCFGF	=	0x4160
                           004F5F  1943 G$AX5043_MODCFGP$0$0 == 0x4f5f
                           004F5F  1944 _AX5043_MODCFGP	=	0x4f5f
                           004010  1945 G$AX5043_MODULATION$0$0 == 0x4010
                           004010  1946 _AX5043_MODULATION	=	0x4010
                           004025  1947 G$AX5043_PINFUNCANTSEL$0$0 == 0x4025
                           004025  1948 _AX5043_PINFUNCANTSEL	=	0x4025
                           004023  1949 G$AX5043_PINFUNCDATA$0$0 == 0x4023
                           004023  1950 _AX5043_PINFUNCDATA	=	0x4023
                           004022  1951 G$AX5043_PINFUNCDCLK$0$0 == 0x4022
                           004022  1952 _AX5043_PINFUNCDCLK	=	0x4022
                           004024  1953 G$AX5043_PINFUNCIRQ$0$0 == 0x4024
                           004024  1954 _AX5043_PINFUNCIRQ	=	0x4024
                           004026  1955 G$AX5043_PINFUNCPWRAMP$0$0 == 0x4026
                           004026  1956 _AX5043_PINFUNCPWRAMP	=	0x4026
                           004021  1957 G$AX5043_PINFUNCSYSCLK$0$0 == 0x4021
                           004021  1958 _AX5043_PINFUNCSYSCLK	=	0x4021
                           004020  1959 G$AX5043_PINSTATE$0$0 == 0x4020
                           004020  1960 _AX5043_PINSTATE	=	0x4020
                           004233  1961 G$AX5043_PKTACCEPTFLAGS$0$0 == 0x4233
                           004233  1962 _AX5043_PKTACCEPTFLAGS	=	0x4233
                           004230  1963 G$AX5043_PKTCHUNKSIZE$0$0 == 0x4230
                           004230  1964 _AX5043_PKTCHUNKSIZE	=	0x4230
                           004231  1965 G$AX5043_PKTMISCFLAGS$0$0 == 0x4231
                           004231  1966 _AX5043_PKTMISCFLAGS	=	0x4231
                           004232  1967 G$AX5043_PKTSTOREFLAGS$0$0 == 0x4232
                           004232  1968 _AX5043_PKTSTOREFLAGS	=	0x4232
                           004031  1969 G$AX5043_PLLCPI$0$0 == 0x4031
                           004031  1970 _AX5043_PLLCPI	=	0x4031
                           004039  1971 G$AX5043_PLLCPIBOOST$0$0 == 0x4039
                           004039  1972 _AX5043_PLLCPIBOOST	=	0x4039
                           004182  1973 G$AX5043_PLLLOCKDET$0$0 == 0x4182
                           004182  1974 _AX5043_PLLLOCKDET	=	0x4182
                           004030  1975 G$AX5043_PLLLOOP$0$0 == 0x4030
                           004030  1976 _AX5043_PLLLOOP	=	0x4030
                           004038  1977 G$AX5043_PLLLOOPBOOST$0$0 == 0x4038
                           004038  1978 _AX5043_PLLLOOPBOOST	=	0x4038
                           004033  1979 G$AX5043_PLLRANGINGA$0$0 == 0x4033
                           004033  1980 _AX5043_PLLRANGINGA	=	0x4033
                           00403B  1981 G$AX5043_PLLRANGINGB$0$0 == 0x403b
                           00403B  1982 _AX5043_PLLRANGINGB	=	0x403b
                           004183  1983 G$AX5043_PLLRNGCLK$0$0 == 0x4183
                           004183  1984 _AX5043_PLLRNGCLK	=	0x4183
                           004032  1985 G$AX5043_PLLVCODIV$0$0 == 0x4032
                           004032  1986 _AX5043_PLLVCODIV	=	0x4032
                           004180  1987 G$AX5043_PLLVCOI$0$0 == 0x4180
                           004180  1988 _AX5043_PLLVCOI	=	0x4180
                           004181  1989 G$AX5043_PLLVCOIR$0$0 == 0x4181
                           004181  1990 _AX5043_PLLVCOIR	=	0x4181
                           004F08  1991 G$AX5043_POWCTRL1$0$0 == 0x4f08
                           004F08  1992 _AX5043_POWCTRL1	=	0x4f08
                           004005  1993 G$AX5043_POWIRQMASK$0$0 == 0x4005
                           004005  1994 _AX5043_POWIRQMASK	=	0x4005
                           004003  1995 G$AX5043_POWSTAT$0$0 == 0x4003
                           004003  1996 _AX5043_POWSTAT	=	0x4003
                           004004  1997 G$AX5043_POWSTICKYSTAT$0$0 == 0x4004
                           004004  1998 _AX5043_POWSTICKYSTAT	=	0x4004
                           004027  1999 G$AX5043_PWRAMP$0$0 == 0x4027
                           004027  2000 _AX5043_PWRAMP	=	0x4027
                           004002  2001 G$AX5043_PWRMODE$0$0 == 0x4002
                           004002  2002 _AX5043_PWRMODE	=	0x4002
                           004009  2003 G$AX5043_RADIOEVENTMASK0$0$0 == 0x4009
                           004009  2004 _AX5043_RADIOEVENTMASK0	=	0x4009
                           004008  2005 G$AX5043_RADIOEVENTMASK1$0$0 == 0x4008
                           004008  2006 _AX5043_RADIOEVENTMASK1	=	0x4008
                           00400F  2007 G$AX5043_RADIOEVENTREQ0$0$0 == 0x400f
                           00400F  2008 _AX5043_RADIOEVENTREQ0	=	0x400f
                           00400E  2009 G$AX5043_RADIOEVENTREQ1$0$0 == 0x400e
                           00400E  2010 _AX5043_RADIOEVENTREQ1	=	0x400e
                           00401C  2011 G$AX5043_RADIOSTATE$0$0 == 0x401c
                           00401C  2012 _AX5043_RADIOSTATE	=	0x401c
                           004F0D  2013 G$AX5043_REF$0$0 == 0x4f0d
                           004F0D  2014 _AX5043_REF	=	0x4f0d
                           004040  2015 G$AX5043_RSSI$0$0 == 0x4040
                           004040  2016 _AX5043_RSSI	=	0x4040
                           00422D  2017 G$AX5043_RSSIABSTHR$0$0 == 0x422d
                           00422D  2018 _AX5043_RSSIABSTHR	=	0x422d
                           00422C  2019 G$AX5043_RSSIREFERENCE$0$0 == 0x422c
                           00422C  2020 _AX5043_RSSIREFERENCE	=	0x422c
                           004105  2021 G$AX5043_RXDATARATE0$0$0 == 0x4105
                           004105  2022 _AX5043_RXDATARATE0	=	0x4105
                           004104  2023 G$AX5043_RXDATARATE1$0$0 == 0x4104
                           004104  2024 _AX5043_RXDATARATE1	=	0x4104
                           004103  2025 G$AX5043_RXDATARATE2$0$0 == 0x4103
                           004103  2026 _AX5043_RXDATARATE2	=	0x4103
                           004001  2027 G$AX5043_SCRATCH$0$0 == 0x4001
                           004001  2028 _AX5043_SCRATCH	=	0x4001
                           004000  2029 G$AX5043_SILICONREVISION$0$0 == 0x4000
                           004000  2030 _AX5043_SILICONREVISION	=	0x4000
                           00405B  2031 G$AX5043_TIMER0$0$0 == 0x405b
                           00405B  2032 _AX5043_TIMER0	=	0x405b
                           00405A  2033 G$AX5043_TIMER1$0$0 == 0x405a
                           00405A  2034 _AX5043_TIMER1	=	0x405a
                           004059  2035 G$AX5043_TIMER2$0$0 == 0x4059
                           004059  2036 _AX5043_TIMER2	=	0x4059
                           004227  2037 G$AX5043_TMGRXAGC$0$0 == 0x4227
                           004227  2038 _AX5043_TMGRXAGC	=	0x4227
                           004223  2039 G$AX5043_TMGRXBOOST$0$0 == 0x4223
                           004223  2040 _AX5043_TMGRXBOOST	=	0x4223
                           004226  2041 G$AX5043_TMGRXCOARSEAGC$0$0 == 0x4226
                           004226  2042 _AX5043_TMGRXCOARSEAGC	=	0x4226
                           004225  2043 G$AX5043_TMGRXOFFSACQ$0$0 == 0x4225
                           004225  2044 _AX5043_TMGRXOFFSACQ	=	0x4225
                           004229  2045 G$AX5043_TMGRXPREAMBLE1$0$0 == 0x4229
                           004229  2046 _AX5043_TMGRXPREAMBLE1	=	0x4229
                           00422A  2047 G$AX5043_TMGRXPREAMBLE2$0$0 == 0x422a
                           00422A  2048 _AX5043_TMGRXPREAMBLE2	=	0x422a
                           00422B  2049 G$AX5043_TMGRXPREAMBLE3$0$0 == 0x422b
                           00422B  2050 _AX5043_TMGRXPREAMBLE3	=	0x422b
                           004228  2051 G$AX5043_TMGRXRSSI$0$0 == 0x4228
                           004228  2052 _AX5043_TMGRXRSSI	=	0x4228
                           004224  2053 G$AX5043_TMGRXSETTLE$0$0 == 0x4224
                           004224  2054 _AX5043_TMGRXSETTLE	=	0x4224
                           004220  2055 G$AX5043_TMGTXBOOST$0$0 == 0x4220
                           004220  2056 _AX5043_TMGTXBOOST	=	0x4220
                           004221  2057 G$AX5043_TMGTXSETTLE$0$0 == 0x4221
                           004221  2058 _AX5043_TMGTXSETTLE	=	0x4221
                           004055  2059 G$AX5043_TRKAFSKDEMOD0$0$0 == 0x4055
                           004055  2060 _AX5043_TRKAFSKDEMOD0	=	0x4055
                           004054  2061 G$AX5043_TRKAFSKDEMOD1$0$0 == 0x4054
                           004054  2062 _AX5043_TRKAFSKDEMOD1	=	0x4054
                           004049  2063 G$AX5043_TRKAMPLITUDE0$0$0 == 0x4049
                           004049  2064 _AX5043_TRKAMPLITUDE0	=	0x4049
                           004048  2065 G$AX5043_TRKAMPLITUDE1$0$0 == 0x4048
                           004048  2066 _AX5043_TRKAMPLITUDE1	=	0x4048
                           004047  2067 G$AX5043_TRKDATARATE0$0$0 == 0x4047
                           004047  2068 _AX5043_TRKDATARATE0	=	0x4047
                           004046  2069 G$AX5043_TRKDATARATE1$0$0 == 0x4046
                           004046  2070 _AX5043_TRKDATARATE1	=	0x4046
                           004045  2071 G$AX5043_TRKDATARATE2$0$0 == 0x4045
                           004045  2072 _AX5043_TRKDATARATE2	=	0x4045
                           004051  2073 G$AX5043_TRKFREQ0$0$0 == 0x4051
                           004051  2074 _AX5043_TRKFREQ0	=	0x4051
                           004050  2075 G$AX5043_TRKFREQ1$0$0 == 0x4050
                           004050  2076 _AX5043_TRKFREQ1	=	0x4050
                           004053  2077 G$AX5043_TRKFSKDEMOD0$0$0 == 0x4053
                           004053  2078 _AX5043_TRKFSKDEMOD0	=	0x4053
                           004052  2079 G$AX5043_TRKFSKDEMOD1$0$0 == 0x4052
                           004052  2080 _AX5043_TRKFSKDEMOD1	=	0x4052
                           00404B  2081 G$AX5043_TRKPHASE0$0$0 == 0x404b
                           00404B  2082 _AX5043_TRKPHASE0	=	0x404b
                           00404A  2083 G$AX5043_TRKPHASE1$0$0 == 0x404a
                           00404A  2084 _AX5043_TRKPHASE1	=	0x404a
                           00404F  2085 G$AX5043_TRKRFFREQ0$0$0 == 0x404f
                           00404F  2086 _AX5043_TRKRFFREQ0	=	0x404f
                           00404E  2087 G$AX5043_TRKRFFREQ1$0$0 == 0x404e
                           00404E  2088 _AX5043_TRKRFFREQ1	=	0x404e
                           00404D  2089 G$AX5043_TRKRFFREQ2$0$0 == 0x404d
                           00404D  2090 _AX5043_TRKRFFREQ2	=	0x404d
                           004169  2091 G$AX5043_TXPWRCOEFFA0$0$0 == 0x4169
                           004169  2092 _AX5043_TXPWRCOEFFA0	=	0x4169
                           004168  2093 G$AX5043_TXPWRCOEFFA1$0$0 == 0x4168
                           004168  2094 _AX5043_TXPWRCOEFFA1	=	0x4168
                           00416B  2095 G$AX5043_TXPWRCOEFFB0$0$0 == 0x416b
                           00416B  2096 _AX5043_TXPWRCOEFFB0	=	0x416b
                           00416A  2097 G$AX5043_TXPWRCOEFFB1$0$0 == 0x416a
                           00416A  2098 _AX5043_TXPWRCOEFFB1	=	0x416a
                           00416D  2099 G$AX5043_TXPWRCOEFFC0$0$0 == 0x416d
                           00416D  2100 _AX5043_TXPWRCOEFFC0	=	0x416d
                           00416C  2101 G$AX5043_TXPWRCOEFFC1$0$0 == 0x416c
                           00416C  2102 _AX5043_TXPWRCOEFFC1	=	0x416c
                           00416F  2103 G$AX5043_TXPWRCOEFFD0$0$0 == 0x416f
                           00416F  2104 _AX5043_TXPWRCOEFFD0	=	0x416f
                           00416E  2105 G$AX5043_TXPWRCOEFFD1$0$0 == 0x416e
                           00416E  2106 _AX5043_TXPWRCOEFFD1	=	0x416e
                           004171  2107 G$AX5043_TXPWRCOEFFE0$0$0 == 0x4171
                           004171  2108 _AX5043_TXPWRCOEFFE0	=	0x4171
                           004170  2109 G$AX5043_TXPWRCOEFFE1$0$0 == 0x4170
                           004170  2110 _AX5043_TXPWRCOEFFE1	=	0x4170
                           004167  2111 G$AX5043_TXRATE0$0$0 == 0x4167
                           004167  2112 _AX5043_TXRATE0	=	0x4167
                           004166  2113 G$AX5043_TXRATE1$0$0 == 0x4166
                           004166  2114 _AX5043_TXRATE1	=	0x4166
                           004165  2115 G$AX5043_TXRATE2$0$0 == 0x4165
                           004165  2116 _AX5043_TXRATE2	=	0x4165
                           00406B  2117 G$AX5043_WAKEUP0$0$0 == 0x406b
                           00406B  2118 _AX5043_WAKEUP0	=	0x406b
                           00406A  2119 G$AX5043_WAKEUP1$0$0 == 0x406a
                           00406A  2120 _AX5043_WAKEUP1	=	0x406a
                           00406D  2121 G$AX5043_WAKEUPFREQ0$0$0 == 0x406d
                           00406D  2122 _AX5043_WAKEUPFREQ0	=	0x406d
                           00406C  2123 G$AX5043_WAKEUPFREQ1$0$0 == 0x406c
                           00406C  2124 _AX5043_WAKEUPFREQ1	=	0x406c
                           004069  2125 G$AX5043_WAKEUPTIMER0$0$0 == 0x4069
                           004069  2126 _AX5043_WAKEUPTIMER0	=	0x4069
                           004068  2127 G$AX5043_WAKEUPTIMER1$0$0 == 0x4068
                           004068  2128 _AX5043_WAKEUPTIMER1	=	0x4068
                           00406E  2129 G$AX5043_WAKEUPXOEARLY$0$0 == 0x406e
                           00406E  2130 _AX5043_WAKEUPXOEARLY	=	0x406e
                           004F11  2131 G$AX5043_XTALAMPL$0$0 == 0x4f11
                           004F11  2132 _AX5043_XTALAMPL	=	0x4f11
                           004184  2133 G$AX5043_XTALCAP$0$0 == 0x4184
                           004184  2134 _AX5043_XTALCAP	=	0x4184
                           004F10  2135 G$AX5043_XTALOSC$0$0 == 0x4f10
                           004F10  2136 _AX5043_XTALOSC	=	0x4f10
                           00401D  2137 G$AX5043_XTALSTATUS$0$0 == 0x401d
                           00401D  2138 _AX5043_XTALSTATUS	=	0x401d
                           004F00  2139 G$AX5043_0xF00$0$0 == 0x4f00
                           004F00  2140 _AX5043_0xF00	=	0x4f00
                           004F0C  2141 G$AX5043_0xF0C$0$0 == 0x4f0c
                           004F0C  2142 _AX5043_0xF0C	=	0x4f0c
                           004F18  2143 G$AX5043_0xF18$0$0 == 0x4f18
                           004F18  2144 _AX5043_0xF18	=	0x4f18
                           004F1C  2145 G$AX5043_0xF1C$0$0 == 0x4f1c
                           004F1C  2146 _AX5043_0xF1C	=	0x4f1c
                           004F21  2147 G$AX5043_0xF21$0$0 == 0x4f21
                           004F21  2148 _AX5043_0xF21	=	0x4f21
                           004F22  2149 G$AX5043_0xF22$0$0 == 0x4f22
                           004F22  2150 _AX5043_0xF22	=	0x4f22
                           004F23  2151 G$AX5043_0xF23$0$0 == 0x4f23
                           004F23  2152 _AX5043_0xF23	=	0x4f23
                           004F26  2153 G$AX5043_0xF26$0$0 == 0x4f26
                           004F26  2154 _AX5043_0xF26	=	0x4f26
                           004F30  2155 G$AX5043_0xF30$0$0 == 0x4f30
                           004F30  2156 _AX5043_0xF30	=	0x4f30
                           004F31  2157 G$AX5043_0xF31$0$0 == 0x4f31
                           004F31  2158 _AX5043_0xF31	=	0x4f31
                           004F32  2159 G$AX5043_0xF32$0$0 == 0x4f32
                           004F32  2160 _AX5043_0xF32	=	0x4f32
                           004F33  2161 G$AX5043_0xF33$0$0 == 0x4f33
                           004F33  2162 _AX5043_0xF33	=	0x4f33
                           004F34  2163 G$AX5043_0xF34$0$0 == 0x4f34
                           004F34  2164 _AX5043_0xF34	=	0x4f34
                           004F35  2165 G$AX5043_0xF35$0$0 == 0x4f35
                           004F35  2166 _AX5043_0xF35	=	0x4f35
                           004F44  2167 G$AX5043_0xF44$0$0 == 0x4f44
                           004F44  2168 _AX5043_0xF44	=	0x4f44
                           004122  2169 G$AX5043_AGCAHYST0$0$0 == 0x4122
                           004122  2170 _AX5043_AGCAHYST0	=	0x4122
                           004132  2171 G$AX5043_AGCAHYST1$0$0 == 0x4132
                           004132  2172 _AX5043_AGCAHYST1	=	0x4132
                           004142  2173 G$AX5043_AGCAHYST2$0$0 == 0x4142
                           004142  2174 _AX5043_AGCAHYST2	=	0x4142
                           004152  2175 G$AX5043_AGCAHYST3$0$0 == 0x4152
                           004152  2176 _AX5043_AGCAHYST3	=	0x4152
                           004120  2177 G$AX5043_AGCGAIN0$0$0 == 0x4120
                           004120  2178 _AX5043_AGCGAIN0	=	0x4120
                           004130  2179 G$AX5043_AGCGAIN1$0$0 == 0x4130
                           004130  2180 _AX5043_AGCGAIN1	=	0x4130
                           004140  2181 G$AX5043_AGCGAIN2$0$0 == 0x4140
                           004140  2182 _AX5043_AGCGAIN2	=	0x4140
                           004150  2183 G$AX5043_AGCGAIN3$0$0 == 0x4150
                           004150  2184 _AX5043_AGCGAIN3	=	0x4150
                           004123  2185 G$AX5043_AGCMINMAX0$0$0 == 0x4123
                           004123  2186 _AX5043_AGCMINMAX0	=	0x4123
                           004133  2187 G$AX5043_AGCMINMAX1$0$0 == 0x4133
                           004133  2188 _AX5043_AGCMINMAX1	=	0x4133
                           004143  2189 G$AX5043_AGCMINMAX2$0$0 == 0x4143
                           004143  2190 _AX5043_AGCMINMAX2	=	0x4143
                           004153  2191 G$AX5043_AGCMINMAX3$0$0 == 0x4153
                           004153  2192 _AX5043_AGCMINMAX3	=	0x4153
                           004121  2193 G$AX5043_AGCTARGET0$0$0 == 0x4121
                           004121  2194 _AX5043_AGCTARGET0	=	0x4121
                           004131  2195 G$AX5043_AGCTARGET1$0$0 == 0x4131
                           004131  2196 _AX5043_AGCTARGET1	=	0x4131
                           004141  2197 G$AX5043_AGCTARGET2$0$0 == 0x4141
                           004141  2198 _AX5043_AGCTARGET2	=	0x4141
                           004151  2199 G$AX5043_AGCTARGET3$0$0 == 0x4151
                           004151  2200 _AX5043_AGCTARGET3	=	0x4151
                           00412B  2201 G$AX5043_AMPLITUDEGAIN0$0$0 == 0x412b
                           00412B  2202 _AX5043_AMPLITUDEGAIN0	=	0x412b
                           00413B  2203 G$AX5043_AMPLITUDEGAIN1$0$0 == 0x413b
                           00413B  2204 _AX5043_AMPLITUDEGAIN1	=	0x413b
                           00414B  2205 G$AX5043_AMPLITUDEGAIN2$0$0 == 0x414b
                           00414B  2206 _AX5043_AMPLITUDEGAIN2	=	0x414b
                           00415B  2207 G$AX5043_AMPLITUDEGAIN3$0$0 == 0x415b
                           00415B  2208 _AX5043_AMPLITUDEGAIN3	=	0x415b
                           00412F  2209 G$AX5043_BBOFFSRES0$0$0 == 0x412f
                           00412F  2210 _AX5043_BBOFFSRES0	=	0x412f
                           00413F  2211 G$AX5043_BBOFFSRES1$0$0 == 0x413f
                           00413F  2212 _AX5043_BBOFFSRES1	=	0x413f
                           00414F  2213 G$AX5043_BBOFFSRES2$0$0 == 0x414f
                           00414F  2214 _AX5043_BBOFFSRES2	=	0x414f
                           00415F  2215 G$AX5043_BBOFFSRES3$0$0 == 0x415f
                           00415F  2216 _AX5043_BBOFFSRES3	=	0x415f
                           004125  2217 G$AX5043_DRGAIN0$0$0 == 0x4125
                           004125  2218 _AX5043_DRGAIN0	=	0x4125
                           004135  2219 G$AX5043_DRGAIN1$0$0 == 0x4135
                           004135  2220 _AX5043_DRGAIN1	=	0x4135
                           004145  2221 G$AX5043_DRGAIN2$0$0 == 0x4145
                           004145  2222 _AX5043_DRGAIN2	=	0x4145
                           004155  2223 G$AX5043_DRGAIN3$0$0 == 0x4155
                           004155  2224 _AX5043_DRGAIN3	=	0x4155
                           00412E  2225 G$AX5043_FOURFSK0$0$0 == 0x412e
                           00412E  2226 _AX5043_FOURFSK0	=	0x412e
                           00413E  2227 G$AX5043_FOURFSK1$0$0 == 0x413e
                           00413E  2228 _AX5043_FOURFSK1	=	0x413e
                           00414E  2229 G$AX5043_FOURFSK2$0$0 == 0x414e
                           00414E  2230 _AX5043_FOURFSK2	=	0x414e
                           00415E  2231 G$AX5043_FOURFSK3$0$0 == 0x415e
                           00415E  2232 _AX5043_FOURFSK3	=	0x415e
                           00412D  2233 G$AX5043_FREQDEV00$0$0 == 0x412d
                           00412D  2234 _AX5043_FREQDEV00	=	0x412d
                           00413D  2235 G$AX5043_FREQDEV01$0$0 == 0x413d
                           00413D  2236 _AX5043_FREQDEV01	=	0x413d
                           00414D  2237 G$AX5043_FREQDEV02$0$0 == 0x414d
                           00414D  2238 _AX5043_FREQDEV02	=	0x414d
                           00415D  2239 G$AX5043_FREQDEV03$0$0 == 0x415d
                           00415D  2240 _AX5043_FREQDEV03	=	0x415d
                           00412C  2241 G$AX5043_FREQDEV10$0$0 == 0x412c
                           00412C  2242 _AX5043_FREQDEV10	=	0x412c
                           00413C  2243 G$AX5043_FREQDEV11$0$0 == 0x413c
                           00413C  2244 _AX5043_FREQDEV11	=	0x413c
                           00414C  2245 G$AX5043_FREQDEV12$0$0 == 0x414c
                           00414C  2246 _AX5043_FREQDEV12	=	0x414c
                           00415C  2247 G$AX5043_FREQDEV13$0$0 == 0x415c
                           00415C  2248 _AX5043_FREQDEV13	=	0x415c
                           004127  2249 G$AX5043_FREQUENCYGAINA0$0$0 == 0x4127
                           004127  2250 _AX5043_FREQUENCYGAINA0	=	0x4127
                           004137  2251 G$AX5043_FREQUENCYGAINA1$0$0 == 0x4137
                           004137  2252 _AX5043_FREQUENCYGAINA1	=	0x4137
                           004147  2253 G$AX5043_FREQUENCYGAINA2$0$0 == 0x4147
                           004147  2254 _AX5043_FREQUENCYGAINA2	=	0x4147
                           004157  2255 G$AX5043_FREQUENCYGAINA3$0$0 == 0x4157
                           004157  2256 _AX5043_FREQUENCYGAINA3	=	0x4157
                           004128  2257 G$AX5043_FREQUENCYGAINB0$0$0 == 0x4128
                           004128  2258 _AX5043_FREQUENCYGAINB0	=	0x4128
                           004138  2259 G$AX5043_FREQUENCYGAINB1$0$0 == 0x4138
                           004138  2260 _AX5043_FREQUENCYGAINB1	=	0x4138
                           004148  2261 G$AX5043_FREQUENCYGAINB2$0$0 == 0x4148
                           004148  2262 _AX5043_FREQUENCYGAINB2	=	0x4148
                           004158  2263 G$AX5043_FREQUENCYGAINB3$0$0 == 0x4158
                           004158  2264 _AX5043_FREQUENCYGAINB3	=	0x4158
                           004129  2265 G$AX5043_FREQUENCYGAINC0$0$0 == 0x4129
                           004129  2266 _AX5043_FREQUENCYGAINC0	=	0x4129
                           004139  2267 G$AX5043_FREQUENCYGAINC1$0$0 == 0x4139
                           004139  2268 _AX5043_FREQUENCYGAINC1	=	0x4139
                           004149  2269 G$AX5043_FREQUENCYGAINC2$0$0 == 0x4149
                           004149  2270 _AX5043_FREQUENCYGAINC2	=	0x4149
                           004159  2271 G$AX5043_FREQUENCYGAINC3$0$0 == 0x4159
                           004159  2272 _AX5043_FREQUENCYGAINC3	=	0x4159
                           00412A  2273 G$AX5043_FREQUENCYGAIND0$0$0 == 0x412a
                           00412A  2274 _AX5043_FREQUENCYGAIND0	=	0x412a
                           00413A  2275 G$AX5043_FREQUENCYGAIND1$0$0 == 0x413a
                           00413A  2276 _AX5043_FREQUENCYGAIND1	=	0x413a
                           00414A  2277 G$AX5043_FREQUENCYGAIND2$0$0 == 0x414a
                           00414A  2278 _AX5043_FREQUENCYGAIND2	=	0x414a
                           00415A  2279 G$AX5043_FREQUENCYGAIND3$0$0 == 0x415a
                           00415A  2280 _AX5043_FREQUENCYGAIND3	=	0x415a
                           004116  2281 G$AX5043_FREQUENCYLEAK$0$0 == 0x4116
                           004116  2282 _AX5043_FREQUENCYLEAK	=	0x4116
                           004126  2283 G$AX5043_PHASEGAIN0$0$0 == 0x4126
                           004126  2284 _AX5043_PHASEGAIN0	=	0x4126
                           004136  2285 G$AX5043_PHASEGAIN1$0$0 == 0x4136
                           004136  2286 _AX5043_PHASEGAIN1	=	0x4136
                           004146  2287 G$AX5043_PHASEGAIN2$0$0 == 0x4146
                           004146  2288 _AX5043_PHASEGAIN2	=	0x4146
                           004156  2289 G$AX5043_PHASEGAIN3$0$0 == 0x4156
                           004156  2290 _AX5043_PHASEGAIN3	=	0x4156
                           004207  2291 G$AX5043_PKTADDR0$0$0 == 0x4207
                           004207  2292 _AX5043_PKTADDR0	=	0x4207
                           004206  2293 G$AX5043_PKTADDR1$0$0 == 0x4206
                           004206  2294 _AX5043_PKTADDR1	=	0x4206
                           004205  2295 G$AX5043_PKTADDR2$0$0 == 0x4205
                           004205  2296 _AX5043_PKTADDR2	=	0x4205
                           004204  2297 G$AX5043_PKTADDR3$0$0 == 0x4204
                           004204  2298 _AX5043_PKTADDR3	=	0x4204
                           004200  2299 G$AX5043_PKTADDRCFG$0$0 == 0x4200
                           004200  2300 _AX5043_PKTADDRCFG	=	0x4200
                           00420B  2301 G$AX5043_PKTADDRMASK0$0$0 == 0x420b
                           00420B  2302 _AX5043_PKTADDRMASK0	=	0x420b
                           00420A  2303 G$AX5043_PKTADDRMASK1$0$0 == 0x420a
                           00420A  2304 _AX5043_PKTADDRMASK1	=	0x420a
                           004209  2305 G$AX5043_PKTADDRMASK2$0$0 == 0x4209
                           004209  2306 _AX5043_PKTADDRMASK2	=	0x4209
                           004208  2307 G$AX5043_PKTADDRMASK3$0$0 == 0x4208
                           004208  2308 _AX5043_PKTADDRMASK3	=	0x4208
                           004201  2309 G$AX5043_PKTLENCFG$0$0 == 0x4201
                           004201  2310 _AX5043_PKTLENCFG	=	0x4201
                           004202  2311 G$AX5043_PKTLENOFFSET$0$0 == 0x4202
                           004202  2312 _AX5043_PKTLENOFFSET	=	0x4202
                           004203  2313 G$AX5043_PKTMAXLEN$0$0 == 0x4203
                           004203  2314 _AX5043_PKTMAXLEN	=	0x4203
                           004118  2315 G$AX5043_RXPARAMCURSET$0$0 == 0x4118
                           004118  2316 _AX5043_RXPARAMCURSET	=	0x4118
                           004117  2317 G$AX5043_RXPARAMSETS$0$0 == 0x4117
                           004117  2318 _AX5043_RXPARAMSETS	=	0x4117
                           004124  2319 G$AX5043_TIMEGAIN0$0$0 == 0x4124
                           004124  2320 _AX5043_TIMEGAIN0	=	0x4124
                           004134  2321 G$AX5043_TIMEGAIN1$0$0 == 0x4134
                           004134  2322 _AX5043_TIMEGAIN1	=	0x4134
                           004144  2323 G$AX5043_TIMEGAIN2$0$0 == 0x4144
                           004144  2324 _AX5043_TIMEGAIN2	=	0x4144
                           004154  2325 G$AX5043_TIMEGAIN3$0$0 == 0x4154
                           004154  2326 _AX5043_TIMEGAIN3	=	0x4154
                           005114  2327 G$AX5043_AFSKCTRLNB$0$0 == 0x5114
                           005114  2328 _AX5043_AFSKCTRLNB	=	0x5114
                           005113  2329 G$AX5043_AFSKMARK0NB$0$0 == 0x5113
                           005113  2330 _AX5043_AFSKMARK0NB	=	0x5113
                           005112  2331 G$AX5043_AFSKMARK1NB$0$0 == 0x5112
                           005112  2332 _AX5043_AFSKMARK1NB	=	0x5112
                           005111  2333 G$AX5043_AFSKSPACE0NB$0$0 == 0x5111
                           005111  2334 _AX5043_AFSKSPACE0NB	=	0x5111
                           005110  2335 G$AX5043_AFSKSPACE1NB$0$0 == 0x5110
                           005110  2336 _AX5043_AFSKSPACE1NB	=	0x5110
                           005043  2337 G$AX5043_AGCCOUNTERNB$0$0 == 0x5043
                           005043  2338 _AX5043_AGCCOUNTERNB	=	0x5043
                           005115  2339 G$AX5043_AMPLFILTERNB$0$0 == 0x5115
                           005115  2340 _AX5043_AMPLFILTERNB	=	0x5115
                           005189  2341 G$AX5043_BBOFFSCAPNB$0$0 == 0x5189
                           005189  2342 _AX5043_BBOFFSCAPNB	=	0x5189
                           005188  2343 G$AX5043_BBTUNENB$0$0 == 0x5188
                           005188  2344 _AX5043_BBTUNENB	=	0x5188
                           005041  2345 G$AX5043_BGNDRSSINB$0$0 == 0x5041
                           005041  2346 _AX5043_BGNDRSSINB	=	0x5041
                           00522E  2347 G$AX5043_BGNDRSSIGAINNB$0$0 == 0x522e
                           00522E  2348 _AX5043_BGNDRSSIGAINNB	=	0x522e
                           00522F  2349 G$AX5043_BGNDRSSITHRNB$0$0 == 0x522f
                           00522F  2350 _AX5043_BGNDRSSITHRNB	=	0x522f
                           005017  2351 G$AX5043_CRCINIT0NB$0$0 == 0x5017
                           005017  2352 _AX5043_CRCINIT0NB	=	0x5017
                           005016  2353 G$AX5043_CRCINIT1NB$0$0 == 0x5016
                           005016  2354 _AX5043_CRCINIT1NB	=	0x5016
                           005015  2355 G$AX5043_CRCINIT2NB$0$0 == 0x5015
                           005015  2356 _AX5043_CRCINIT2NB	=	0x5015
                           005014  2357 G$AX5043_CRCINIT3NB$0$0 == 0x5014
                           005014  2358 _AX5043_CRCINIT3NB	=	0x5014
                           005332  2359 G$AX5043_DACCONFIGNB$0$0 == 0x5332
                           005332  2360 _AX5043_DACCONFIGNB	=	0x5332
                           005331  2361 G$AX5043_DACVALUE0NB$0$0 == 0x5331
                           005331  2362 _AX5043_DACVALUE0NB	=	0x5331
                           005330  2363 G$AX5043_DACVALUE1NB$0$0 == 0x5330
                           005330  2364 _AX5043_DACVALUE1NB	=	0x5330
                           005102  2365 G$AX5043_DECIMATIONNB$0$0 == 0x5102
                           005102  2366 _AX5043_DECIMATIONNB	=	0x5102
                           005042  2367 G$AX5043_DIVERSITYNB$0$0 == 0x5042
                           005042  2368 _AX5043_DIVERSITYNB	=	0x5042
                           005011  2369 G$AX5043_ENCODINGNB$0$0 == 0x5011
                           005011  2370 _AX5043_ENCODINGNB	=	0x5011
                           005018  2371 G$AX5043_FECNB$0$0 == 0x5018
                           005018  2372 _AX5043_FECNB	=	0x5018
                           00501A  2373 G$AX5043_FECSTATUSNB$0$0 == 0x501a
                           00501A  2374 _AX5043_FECSTATUSNB	=	0x501a
                           005019  2375 G$AX5043_FECSYNCNB$0$0 == 0x5019
                           005019  2376 _AX5043_FECSYNCNB	=	0x5019
                           00502B  2377 G$AX5043_FIFOCOUNT0NB$0$0 == 0x502b
                           00502B  2378 _AX5043_FIFOCOUNT0NB	=	0x502b
                           00502A  2379 G$AX5043_FIFOCOUNT1NB$0$0 == 0x502a
                           00502A  2380 _AX5043_FIFOCOUNT1NB	=	0x502a
                           005029  2381 G$AX5043_FIFODATANB$0$0 == 0x5029
                           005029  2382 _AX5043_FIFODATANB	=	0x5029
                           00502D  2383 G$AX5043_FIFOFREE0NB$0$0 == 0x502d
                           00502D  2384 _AX5043_FIFOFREE0NB	=	0x502d
                           00502C  2385 G$AX5043_FIFOFREE1NB$0$0 == 0x502c
                           00502C  2386 _AX5043_FIFOFREE1NB	=	0x502c
                           005028  2387 G$AX5043_FIFOSTATNB$0$0 == 0x5028
                           005028  2388 _AX5043_FIFOSTATNB	=	0x5028
                           00502F  2389 G$AX5043_FIFOTHRESH0NB$0$0 == 0x502f
                           00502F  2390 _AX5043_FIFOTHRESH0NB	=	0x502f
                           00502E  2391 G$AX5043_FIFOTHRESH1NB$0$0 == 0x502e
                           00502E  2392 _AX5043_FIFOTHRESH1NB	=	0x502e
                           005012  2393 G$AX5043_FRAMINGNB$0$0 == 0x5012
                           005012  2394 _AX5043_FRAMINGNB	=	0x5012
                           005037  2395 G$AX5043_FREQA0NB$0$0 == 0x5037
                           005037  2396 _AX5043_FREQA0NB	=	0x5037
                           005036  2397 G$AX5043_FREQA1NB$0$0 == 0x5036
                           005036  2398 _AX5043_FREQA1NB	=	0x5036
                           005035  2399 G$AX5043_FREQA2NB$0$0 == 0x5035
                           005035  2400 _AX5043_FREQA2NB	=	0x5035
                           005034  2401 G$AX5043_FREQA3NB$0$0 == 0x5034
                           005034  2402 _AX5043_FREQA3NB	=	0x5034
                           00503F  2403 G$AX5043_FREQB0NB$0$0 == 0x503f
                           00503F  2404 _AX5043_FREQB0NB	=	0x503f
                           00503E  2405 G$AX5043_FREQB1NB$0$0 == 0x503e
                           00503E  2406 _AX5043_FREQB1NB	=	0x503e
                           00503D  2407 G$AX5043_FREQB2NB$0$0 == 0x503d
                           00503D  2408 _AX5043_FREQB2NB	=	0x503d
                           00503C  2409 G$AX5043_FREQB3NB$0$0 == 0x503c
                           00503C  2410 _AX5043_FREQB3NB	=	0x503c
                           005163  2411 G$AX5043_FSKDEV0NB$0$0 == 0x5163
                           005163  2412 _AX5043_FSKDEV0NB	=	0x5163
                           005162  2413 G$AX5043_FSKDEV1NB$0$0 == 0x5162
                           005162  2414 _AX5043_FSKDEV1NB	=	0x5162
                           005161  2415 G$AX5043_FSKDEV2NB$0$0 == 0x5161
                           005161  2416 _AX5043_FSKDEV2NB	=	0x5161
                           00510D  2417 G$AX5043_FSKDMAX0NB$0$0 == 0x510d
                           00510D  2418 _AX5043_FSKDMAX0NB	=	0x510d
                           00510C  2419 G$AX5043_FSKDMAX1NB$0$0 == 0x510c
                           00510C  2420 _AX5043_FSKDMAX1NB	=	0x510c
                           00510F  2421 G$AX5043_FSKDMIN0NB$0$0 == 0x510f
                           00510F  2422 _AX5043_FSKDMIN0NB	=	0x510f
                           00510E  2423 G$AX5043_FSKDMIN1NB$0$0 == 0x510e
                           00510E  2424 _AX5043_FSKDMIN1NB	=	0x510e
                           005309  2425 G$AX5043_GPADC13VALUE0NB$0$0 == 0x5309
                           005309  2426 _AX5043_GPADC13VALUE0NB	=	0x5309
                           005308  2427 G$AX5043_GPADC13VALUE1NB$0$0 == 0x5308
                           005308  2428 _AX5043_GPADC13VALUE1NB	=	0x5308
                           005300  2429 G$AX5043_GPADCCTRLNB$0$0 == 0x5300
                           005300  2430 _AX5043_GPADCCTRLNB	=	0x5300
                           005301  2431 G$AX5043_GPADCPERIODNB$0$0 == 0x5301
                           005301  2432 _AX5043_GPADCPERIODNB	=	0x5301
                           005101  2433 G$AX5043_IFFREQ0NB$0$0 == 0x5101
                           005101  2434 _AX5043_IFFREQ0NB	=	0x5101
                           005100  2435 G$AX5043_IFFREQ1NB$0$0 == 0x5100
                           005100  2436 _AX5043_IFFREQ1NB	=	0x5100
                           00500B  2437 G$AX5043_IRQINVERSION0NB$0$0 == 0x500b
                           00500B  2438 _AX5043_IRQINVERSION0NB	=	0x500b
                           00500A  2439 G$AX5043_IRQINVERSION1NB$0$0 == 0x500a
                           00500A  2440 _AX5043_IRQINVERSION1NB	=	0x500a
                           005007  2441 G$AX5043_IRQMASK0NB$0$0 == 0x5007
                           005007  2442 _AX5043_IRQMASK0NB	=	0x5007
                           005006  2443 G$AX5043_IRQMASK1NB$0$0 == 0x5006
                           005006  2444 _AX5043_IRQMASK1NB	=	0x5006
                           00500D  2445 G$AX5043_IRQREQUEST0NB$0$0 == 0x500d
                           00500D  2446 _AX5043_IRQREQUEST0NB	=	0x500d
                           00500C  2447 G$AX5043_IRQREQUEST1NB$0$0 == 0x500c
                           00500C  2448 _AX5043_IRQREQUEST1NB	=	0x500c
                           005310  2449 G$AX5043_LPOSCCONFIGNB$0$0 == 0x5310
                           005310  2450 _AX5043_LPOSCCONFIGNB	=	0x5310
                           005317  2451 G$AX5043_LPOSCFREQ0NB$0$0 == 0x5317
                           005317  2452 _AX5043_LPOSCFREQ0NB	=	0x5317
                           005316  2453 G$AX5043_LPOSCFREQ1NB$0$0 == 0x5316
                           005316  2454 _AX5043_LPOSCFREQ1NB	=	0x5316
                           005313  2455 G$AX5043_LPOSCKFILT0NB$0$0 == 0x5313
                           005313  2456 _AX5043_LPOSCKFILT0NB	=	0x5313
                           005312  2457 G$AX5043_LPOSCKFILT1NB$0$0 == 0x5312
                           005312  2458 _AX5043_LPOSCKFILT1NB	=	0x5312
                           005319  2459 G$AX5043_LPOSCPER0NB$0$0 == 0x5319
                           005319  2460 _AX5043_LPOSCPER0NB	=	0x5319
                           005318  2461 G$AX5043_LPOSCPER1NB$0$0 == 0x5318
                           005318  2462 _AX5043_LPOSCPER1NB	=	0x5318
                           005315  2463 G$AX5043_LPOSCREF0NB$0$0 == 0x5315
                           005315  2464 _AX5043_LPOSCREF0NB	=	0x5315
                           005314  2465 G$AX5043_LPOSCREF1NB$0$0 == 0x5314
                           005314  2466 _AX5043_LPOSCREF1NB	=	0x5314
                           005311  2467 G$AX5043_LPOSCSTATUSNB$0$0 == 0x5311
                           005311  2468 _AX5043_LPOSCSTATUSNB	=	0x5311
                           005214  2469 G$AX5043_MATCH0LENNB$0$0 == 0x5214
                           005214  2470 _AX5043_MATCH0LENNB	=	0x5214
                           005216  2471 G$AX5043_MATCH0MAXNB$0$0 == 0x5216
                           005216  2472 _AX5043_MATCH0MAXNB	=	0x5216
                           005215  2473 G$AX5043_MATCH0MINNB$0$0 == 0x5215
                           005215  2474 _AX5043_MATCH0MINNB	=	0x5215
                           005213  2475 G$AX5043_MATCH0PAT0NB$0$0 == 0x5213
                           005213  2476 _AX5043_MATCH0PAT0NB	=	0x5213
                           005212  2477 G$AX5043_MATCH0PAT1NB$0$0 == 0x5212
                           005212  2478 _AX5043_MATCH0PAT1NB	=	0x5212
                           005211  2479 G$AX5043_MATCH0PAT2NB$0$0 == 0x5211
                           005211  2480 _AX5043_MATCH0PAT2NB	=	0x5211
                           005210  2481 G$AX5043_MATCH0PAT3NB$0$0 == 0x5210
                           005210  2482 _AX5043_MATCH0PAT3NB	=	0x5210
                           00521C  2483 G$AX5043_MATCH1LENNB$0$0 == 0x521c
                           00521C  2484 _AX5043_MATCH1LENNB	=	0x521c
                           00521E  2485 G$AX5043_MATCH1MAXNB$0$0 == 0x521e
                           00521E  2486 _AX5043_MATCH1MAXNB	=	0x521e
                           00521D  2487 G$AX5043_MATCH1MINNB$0$0 == 0x521d
                           00521D  2488 _AX5043_MATCH1MINNB	=	0x521d
                           005219  2489 G$AX5043_MATCH1PAT0NB$0$0 == 0x5219
                           005219  2490 _AX5043_MATCH1PAT0NB	=	0x5219
                           005218  2491 G$AX5043_MATCH1PAT1NB$0$0 == 0x5218
                           005218  2492 _AX5043_MATCH1PAT1NB	=	0x5218
                           005108  2493 G$AX5043_MAXDROFFSET0NB$0$0 == 0x5108
                           005108  2494 _AX5043_MAXDROFFSET0NB	=	0x5108
                           005107  2495 G$AX5043_MAXDROFFSET1NB$0$0 == 0x5107
                           005107  2496 _AX5043_MAXDROFFSET1NB	=	0x5107
                           005106  2497 G$AX5043_MAXDROFFSET2NB$0$0 == 0x5106
                           005106  2498 _AX5043_MAXDROFFSET2NB	=	0x5106
                           00510B  2499 G$AX5043_MAXRFOFFSET0NB$0$0 == 0x510b
                           00510B  2500 _AX5043_MAXRFOFFSET0NB	=	0x510b
                           00510A  2501 G$AX5043_MAXRFOFFSET1NB$0$0 == 0x510a
                           00510A  2502 _AX5043_MAXRFOFFSET1NB	=	0x510a
                           005109  2503 G$AX5043_MAXRFOFFSET2NB$0$0 == 0x5109
                           005109  2504 _AX5043_MAXRFOFFSET2NB	=	0x5109
                           005164  2505 G$AX5043_MODCFGANB$0$0 == 0x5164
                           005164  2506 _AX5043_MODCFGANB	=	0x5164
                           005160  2507 G$AX5043_MODCFGFNB$0$0 == 0x5160
                           005160  2508 _AX5043_MODCFGFNB	=	0x5160
                           005F5F  2509 G$AX5043_MODCFGPNB$0$0 == 0x5f5f
                           005F5F  2510 _AX5043_MODCFGPNB	=	0x5f5f
                           005010  2511 G$AX5043_MODULATIONNB$0$0 == 0x5010
                           005010  2512 _AX5043_MODULATIONNB	=	0x5010
                           005025  2513 G$AX5043_PINFUNCANTSELNB$0$0 == 0x5025
                           005025  2514 _AX5043_PINFUNCANTSELNB	=	0x5025
                           005023  2515 G$AX5043_PINFUNCDATANB$0$0 == 0x5023
                           005023  2516 _AX5043_PINFUNCDATANB	=	0x5023
                           005022  2517 G$AX5043_PINFUNCDCLKNB$0$0 == 0x5022
                           005022  2518 _AX5043_PINFUNCDCLKNB	=	0x5022
                           005024  2519 G$AX5043_PINFUNCIRQNB$0$0 == 0x5024
                           005024  2520 _AX5043_PINFUNCIRQNB	=	0x5024
                           005026  2521 G$AX5043_PINFUNCPWRAMPNB$0$0 == 0x5026
                           005026  2522 _AX5043_PINFUNCPWRAMPNB	=	0x5026
                           005021  2523 G$AX5043_PINFUNCSYSCLKNB$0$0 == 0x5021
                           005021  2524 _AX5043_PINFUNCSYSCLKNB	=	0x5021
                           005020  2525 G$AX5043_PINSTATENB$0$0 == 0x5020
                           005020  2526 _AX5043_PINSTATENB	=	0x5020
                           005233  2527 G$AX5043_PKTACCEPTFLAGSNB$0$0 == 0x5233
                           005233  2528 _AX5043_PKTACCEPTFLAGSNB	=	0x5233
                           005230  2529 G$AX5043_PKTCHUNKSIZENB$0$0 == 0x5230
                           005230  2530 _AX5043_PKTCHUNKSIZENB	=	0x5230
                           005231  2531 G$AX5043_PKTMISCFLAGSNB$0$0 == 0x5231
                           005231  2532 _AX5043_PKTMISCFLAGSNB	=	0x5231
                           005232  2533 G$AX5043_PKTSTOREFLAGSNB$0$0 == 0x5232
                           005232  2534 _AX5043_PKTSTOREFLAGSNB	=	0x5232
                           005031  2535 G$AX5043_PLLCPINB$0$0 == 0x5031
                           005031  2536 _AX5043_PLLCPINB	=	0x5031
                           005039  2537 G$AX5043_PLLCPIBOOSTNB$0$0 == 0x5039
                           005039  2538 _AX5043_PLLCPIBOOSTNB	=	0x5039
                           005182  2539 G$AX5043_PLLLOCKDETNB$0$0 == 0x5182
                           005182  2540 _AX5043_PLLLOCKDETNB	=	0x5182
                           005030  2541 G$AX5043_PLLLOOPNB$0$0 == 0x5030
                           005030  2542 _AX5043_PLLLOOPNB	=	0x5030
                           005038  2543 G$AX5043_PLLLOOPBOOSTNB$0$0 == 0x5038
                           005038  2544 _AX5043_PLLLOOPBOOSTNB	=	0x5038
                           005033  2545 G$AX5043_PLLRANGINGANB$0$0 == 0x5033
                           005033  2546 _AX5043_PLLRANGINGANB	=	0x5033
                           00503B  2547 G$AX5043_PLLRANGINGBNB$0$0 == 0x503b
                           00503B  2548 _AX5043_PLLRANGINGBNB	=	0x503b
                           005183  2549 G$AX5043_PLLRNGCLKNB$0$0 == 0x5183
                           005183  2550 _AX5043_PLLRNGCLKNB	=	0x5183
                           005032  2551 G$AX5043_PLLVCODIVNB$0$0 == 0x5032
                           005032  2552 _AX5043_PLLVCODIVNB	=	0x5032
                           005180  2553 G$AX5043_PLLVCOINB$0$0 == 0x5180
                           005180  2554 _AX5043_PLLVCOINB	=	0x5180
                           005181  2555 G$AX5043_PLLVCOIRNB$0$0 == 0x5181
                           005181  2556 _AX5043_PLLVCOIRNB	=	0x5181
                           005F08  2557 G$AX5043_POWCTRL1NB$0$0 == 0x5f08
                           005F08  2558 _AX5043_POWCTRL1NB	=	0x5f08
                           005005  2559 G$AX5043_POWIRQMASKNB$0$0 == 0x5005
                           005005  2560 _AX5043_POWIRQMASKNB	=	0x5005
                           005003  2561 G$AX5043_POWSTATNB$0$0 == 0x5003
                           005003  2562 _AX5043_POWSTATNB	=	0x5003
                           005004  2563 G$AX5043_POWSTICKYSTATNB$0$0 == 0x5004
                           005004  2564 _AX5043_POWSTICKYSTATNB	=	0x5004
                           005027  2565 G$AX5043_PWRAMPNB$0$0 == 0x5027
                           005027  2566 _AX5043_PWRAMPNB	=	0x5027
                           005002  2567 G$AX5043_PWRMODENB$0$0 == 0x5002
                           005002  2568 _AX5043_PWRMODENB	=	0x5002
                           005009  2569 G$AX5043_RADIOEVENTMASK0NB$0$0 == 0x5009
                           005009  2570 _AX5043_RADIOEVENTMASK0NB	=	0x5009
                           005008  2571 G$AX5043_RADIOEVENTMASK1NB$0$0 == 0x5008
                           005008  2572 _AX5043_RADIOEVENTMASK1NB	=	0x5008
                           00500F  2573 G$AX5043_RADIOEVENTREQ0NB$0$0 == 0x500f
                           00500F  2574 _AX5043_RADIOEVENTREQ0NB	=	0x500f
                           00500E  2575 G$AX5043_RADIOEVENTREQ1NB$0$0 == 0x500e
                           00500E  2576 _AX5043_RADIOEVENTREQ1NB	=	0x500e
                           00501C  2577 G$AX5043_RADIOSTATENB$0$0 == 0x501c
                           00501C  2578 _AX5043_RADIOSTATENB	=	0x501c
                           005F0D  2579 G$AX5043_REFNB$0$0 == 0x5f0d
                           005F0D  2580 _AX5043_REFNB	=	0x5f0d
                           005040  2581 G$AX5043_RSSINB$0$0 == 0x5040
                           005040  2582 _AX5043_RSSINB	=	0x5040
                           00522D  2583 G$AX5043_RSSIABSTHRNB$0$0 == 0x522d
                           00522D  2584 _AX5043_RSSIABSTHRNB	=	0x522d
                           00522C  2585 G$AX5043_RSSIREFERENCENB$0$0 == 0x522c
                           00522C  2586 _AX5043_RSSIREFERENCENB	=	0x522c
                           005105  2587 G$AX5043_RXDATARATE0NB$0$0 == 0x5105
                           005105  2588 _AX5043_RXDATARATE0NB	=	0x5105
                           005104  2589 G$AX5043_RXDATARATE1NB$0$0 == 0x5104
                           005104  2590 _AX5043_RXDATARATE1NB	=	0x5104
                           005103  2591 G$AX5043_RXDATARATE2NB$0$0 == 0x5103
                           005103  2592 _AX5043_RXDATARATE2NB	=	0x5103
                           005001  2593 G$AX5043_SCRATCHNB$0$0 == 0x5001
                           005001  2594 _AX5043_SCRATCHNB	=	0x5001
                           005000  2595 G$AX5043_SILICONREVISIONNB$0$0 == 0x5000
                           005000  2596 _AX5043_SILICONREVISIONNB	=	0x5000
                           00505B  2597 G$AX5043_TIMER0NB$0$0 == 0x505b
                           00505B  2598 _AX5043_TIMER0NB	=	0x505b
                           00505A  2599 G$AX5043_TIMER1NB$0$0 == 0x505a
                           00505A  2600 _AX5043_TIMER1NB	=	0x505a
                           005059  2601 G$AX5043_TIMER2NB$0$0 == 0x5059
                           005059  2602 _AX5043_TIMER2NB	=	0x5059
                           005227  2603 G$AX5043_TMGRXAGCNB$0$0 == 0x5227
                           005227  2604 _AX5043_TMGRXAGCNB	=	0x5227
                           005223  2605 G$AX5043_TMGRXBOOSTNB$0$0 == 0x5223
                           005223  2606 _AX5043_TMGRXBOOSTNB	=	0x5223
                           005226  2607 G$AX5043_TMGRXCOARSEAGCNB$0$0 == 0x5226
                           005226  2608 _AX5043_TMGRXCOARSEAGCNB	=	0x5226
                           005225  2609 G$AX5043_TMGRXOFFSACQNB$0$0 == 0x5225
                           005225  2610 _AX5043_TMGRXOFFSACQNB	=	0x5225
                           005229  2611 G$AX5043_TMGRXPREAMBLE1NB$0$0 == 0x5229
                           005229  2612 _AX5043_TMGRXPREAMBLE1NB	=	0x5229
                           00522A  2613 G$AX5043_TMGRXPREAMBLE2NB$0$0 == 0x522a
                           00522A  2614 _AX5043_TMGRXPREAMBLE2NB	=	0x522a
                           00522B  2615 G$AX5043_TMGRXPREAMBLE3NB$0$0 == 0x522b
                           00522B  2616 _AX5043_TMGRXPREAMBLE3NB	=	0x522b
                           005228  2617 G$AX5043_TMGRXRSSINB$0$0 == 0x5228
                           005228  2618 _AX5043_TMGRXRSSINB	=	0x5228
                           005224  2619 G$AX5043_TMGRXSETTLENB$0$0 == 0x5224
                           005224  2620 _AX5043_TMGRXSETTLENB	=	0x5224
                           005220  2621 G$AX5043_TMGTXBOOSTNB$0$0 == 0x5220
                           005220  2622 _AX5043_TMGTXBOOSTNB	=	0x5220
                           005221  2623 G$AX5043_TMGTXSETTLENB$0$0 == 0x5221
                           005221  2624 _AX5043_TMGTXSETTLENB	=	0x5221
                           005055  2625 G$AX5043_TRKAFSKDEMOD0NB$0$0 == 0x5055
                           005055  2626 _AX5043_TRKAFSKDEMOD0NB	=	0x5055
                           005054  2627 G$AX5043_TRKAFSKDEMOD1NB$0$0 == 0x5054
                           005054  2628 _AX5043_TRKAFSKDEMOD1NB	=	0x5054
                           005049  2629 G$AX5043_TRKAMPLITUDE0NB$0$0 == 0x5049
                           005049  2630 _AX5043_TRKAMPLITUDE0NB	=	0x5049
                           005048  2631 G$AX5043_TRKAMPLITUDE1NB$0$0 == 0x5048
                           005048  2632 _AX5043_TRKAMPLITUDE1NB	=	0x5048
                           005047  2633 G$AX5043_TRKDATARATE0NB$0$0 == 0x5047
                           005047  2634 _AX5043_TRKDATARATE0NB	=	0x5047
                           005046  2635 G$AX5043_TRKDATARATE1NB$0$0 == 0x5046
                           005046  2636 _AX5043_TRKDATARATE1NB	=	0x5046
                           005045  2637 G$AX5043_TRKDATARATE2NB$0$0 == 0x5045
                           005045  2638 _AX5043_TRKDATARATE2NB	=	0x5045
                           005051  2639 G$AX5043_TRKFREQ0NB$0$0 == 0x5051
                           005051  2640 _AX5043_TRKFREQ0NB	=	0x5051
                           005050  2641 G$AX5043_TRKFREQ1NB$0$0 == 0x5050
                           005050  2642 _AX5043_TRKFREQ1NB	=	0x5050
                           005053  2643 G$AX5043_TRKFSKDEMOD0NB$0$0 == 0x5053
                           005053  2644 _AX5043_TRKFSKDEMOD0NB	=	0x5053
                           005052  2645 G$AX5043_TRKFSKDEMOD1NB$0$0 == 0x5052
                           005052  2646 _AX5043_TRKFSKDEMOD1NB	=	0x5052
                           00504B  2647 G$AX5043_TRKPHASE0NB$0$0 == 0x504b
                           00504B  2648 _AX5043_TRKPHASE0NB	=	0x504b
                           00504A  2649 G$AX5043_TRKPHASE1NB$0$0 == 0x504a
                           00504A  2650 _AX5043_TRKPHASE1NB	=	0x504a
                           00504F  2651 G$AX5043_TRKRFFREQ0NB$0$0 == 0x504f
                           00504F  2652 _AX5043_TRKRFFREQ0NB	=	0x504f
                           00504E  2653 G$AX5043_TRKRFFREQ1NB$0$0 == 0x504e
                           00504E  2654 _AX5043_TRKRFFREQ1NB	=	0x504e
                           00504D  2655 G$AX5043_TRKRFFREQ2NB$0$0 == 0x504d
                           00504D  2656 _AX5043_TRKRFFREQ2NB	=	0x504d
                           005169  2657 G$AX5043_TXPWRCOEFFA0NB$0$0 == 0x5169
                           005169  2658 _AX5043_TXPWRCOEFFA0NB	=	0x5169
                           005168  2659 G$AX5043_TXPWRCOEFFA1NB$0$0 == 0x5168
                           005168  2660 _AX5043_TXPWRCOEFFA1NB	=	0x5168
                           00516B  2661 G$AX5043_TXPWRCOEFFB0NB$0$0 == 0x516b
                           00516B  2662 _AX5043_TXPWRCOEFFB0NB	=	0x516b
                           00516A  2663 G$AX5043_TXPWRCOEFFB1NB$0$0 == 0x516a
                           00516A  2664 _AX5043_TXPWRCOEFFB1NB	=	0x516a
                           00516D  2665 G$AX5043_TXPWRCOEFFC0NB$0$0 == 0x516d
                           00516D  2666 _AX5043_TXPWRCOEFFC0NB	=	0x516d
                           00516C  2667 G$AX5043_TXPWRCOEFFC1NB$0$0 == 0x516c
                           00516C  2668 _AX5043_TXPWRCOEFFC1NB	=	0x516c
                           00516F  2669 G$AX5043_TXPWRCOEFFD0NB$0$0 == 0x516f
                           00516F  2670 _AX5043_TXPWRCOEFFD0NB	=	0x516f
                           00516E  2671 G$AX5043_TXPWRCOEFFD1NB$0$0 == 0x516e
                           00516E  2672 _AX5043_TXPWRCOEFFD1NB	=	0x516e
                           005171  2673 G$AX5043_TXPWRCOEFFE0NB$0$0 == 0x5171
                           005171  2674 _AX5043_TXPWRCOEFFE0NB	=	0x5171
                           005170  2675 G$AX5043_TXPWRCOEFFE1NB$0$0 == 0x5170
                           005170  2676 _AX5043_TXPWRCOEFFE1NB	=	0x5170
                           005167  2677 G$AX5043_TXRATE0NB$0$0 == 0x5167
                           005167  2678 _AX5043_TXRATE0NB	=	0x5167
                           005166  2679 G$AX5043_TXRATE1NB$0$0 == 0x5166
                           005166  2680 _AX5043_TXRATE1NB	=	0x5166
                           005165  2681 G$AX5043_TXRATE2NB$0$0 == 0x5165
                           005165  2682 _AX5043_TXRATE2NB	=	0x5165
                           00506B  2683 G$AX5043_WAKEUP0NB$0$0 == 0x506b
                           00506B  2684 _AX5043_WAKEUP0NB	=	0x506b
                           00506A  2685 G$AX5043_WAKEUP1NB$0$0 == 0x506a
                           00506A  2686 _AX5043_WAKEUP1NB	=	0x506a
                           00506D  2687 G$AX5043_WAKEUPFREQ0NB$0$0 == 0x506d
                           00506D  2688 _AX5043_WAKEUPFREQ0NB	=	0x506d
                           00506C  2689 G$AX5043_WAKEUPFREQ1NB$0$0 == 0x506c
                           00506C  2690 _AX5043_WAKEUPFREQ1NB	=	0x506c
                           005069  2691 G$AX5043_WAKEUPTIMER0NB$0$0 == 0x5069
                           005069  2692 _AX5043_WAKEUPTIMER0NB	=	0x5069
                           005068  2693 G$AX5043_WAKEUPTIMER1NB$0$0 == 0x5068
                           005068  2694 _AX5043_WAKEUPTIMER1NB	=	0x5068
                           00506E  2695 G$AX5043_WAKEUPXOEARLYNB$0$0 == 0x506e
                           00506E  2696 _AX5043_WAKEUPXOEARLYNB	=	0x506e
                           005F11  2697 G$AX5043_XTALAMPLNB$0$0 == 0x5f11
                           005F11  2698 _AX5043_XTALAMPLNB	=	0x5f11
                           005184  2699 G$AX5043_XTALCAPNB$0$0 == 0x5184
                           005184  2700 _AX5043_XTALCAPNB	=	0x5184
                           005F10  2701 G$AX5043_XTALOSCNB$0$0 == 0x5f10
                           005F10  2702 _AX5043_XTALOSCNB	=	0x5f10
                           00501D  2703 G$AX5043_XTALSTATUSNB$0$0 == 0x501d
                           00501D  2704 _AX5043_XTALSTATUSNB	=	0x501d
                           005F00  2705 G$AX5043_0xF00NB$0$0 == 0x5f00
                           005F00  2706 _AX5043_0xF00NB	=	0x5f00
                           005F0C  2707 G$AX5043_0xF0CNB$0$0 == 0x5f0c
                           005F0C  2708 _AX5043_0xF0CNB	=	0x5f0c
                           005F18  2709 G$AX5043_0xF18NB$0$0 == 0x5f18
                           005F18  2710 _AX5043_0xF18NB	=	0x5f18
                           005F1C  2711 G$AX5043_0xF1CNB$0$0 == 0x5f1c
                           005F1C  2712 _AX5043_0xF1CNB	=	0x5f1c
                           005F21  2713 G$AX5043_0xF21NB$0$0 == 0x5f21
                           005F21  2714 _AX5043_0xF21NB	=	0x5f21
                           005F22  2715 G$AX5043_0xF22NB$0$0 == 0x5f22
                           005F22  2716 _AX5043_0xF22NB	=	0x5f22
                           005F23  2717 G$AX5043_0xF23NB$0$0 == 0x5f23
                           005F23  2718 _AX5043_0xF23NB	=	0x5f23
                           005F26  2719 G$AX5043_0xF26NB$0$0 == 0x5f26
                           005F26  2720 _AX5043_0xF26NB	=	0x5f26
                           005F30  2721 G$AX5043_0xF30NB$0$0 == 0x5f30
                           005F30  2722 _AX5043_0xF30NB	=	0x5f30
                           005F31  2723 G$AX5043_0xF31NB$0$0 == 0x5f31
                           005F31  2724 _AX5043_0xF31NB	=	0x5f31
                           005F32  2725 G$AX5043_0xF32NB$0$0 == 0x5f32
                           005F32  2726 _AX5043_0xF32NB	=	0x5f32
                           005F33  2727 G$AX5043_0xF33NB$0$0 == 0x5f33
                           005F33  2728 _AX5043_0xF33NB	=	0x5f33
                           005F34  2729 G$AX5043_0xF34NB$0$0 == 0x5f34
                           005F34  2730 _AX5043_0xF34NB	=	0x5f34
                           005F35  2731 G$AX5043_0xF35NB$0$0 == 0x5f35
                           005F35  2732 _AX5043_0xF35NB	=	0x5f35
                           005F44  2733 G$AX5043_0xF44NB$0$0 == 0x5f44
                           005F44  2734 _AX5043_0xF44NB	=	0x5f44
                           005122  2735 G$AX5043_AGCAHYST0NB$0$0 == 0x5122
                           005122  2736 _AX5043_AGCAHYST0NB	=	0x5122
                           005132  2737 G$AX5043_AGCAHYST1NB$0$0 == 0x5132
                           005132  2738 _AX5043_AGCAHYST1NB	=	0x5132
                           005142  2739 G$AX5043_AGCAHYST2NB$0$0 == 0x5142
                           005142  2740 _AX5043_AGCAHYST2NB	=	0x5142
                           005152  2741 G$AX5043_AGCAHYST3NB$0$0 == 0x5152
                           005152  2742 _AX5043_AGCAHYST3NB	=	0x5152
                           005120  2743 G$AX5043_AGCGAIN0NB$0$0 == 0x5120
                           005120  2744 _AX5043_AGCGAIN0NB	=	0x5120
                           005130  2745 G$AX5043_AGCGAIN1NB$0$0 == 0x5130
                           005130  2746 _AX5043_AGCGAIN1NB	=	0x5130
                           005140  2747 G$AX5043_AGCGAIN2NB$0$0 == 0x5140
                           005140  2748 _AX5043_AGCGAIN2NB	=	0x5140
                           005150  2749 G$AX5043_AGCGAIN3NB$0$0 == 0x5150
                           005150  2750 _AX5043_AGCGAIN3NB	=	0x5150
                           005123  2751 G$AX5043_AGCMINMAX0NB$0$0 == 0x5123
                           005123  2752 _AX5043_AGCMINMAX0NB	=	0x5123
                           005133  2753 G$AX5043_AGCMINMAX1NB$0$0 == 0x5133
                           005133  2754 _AX5043_AGCMINMAX1NB	=	0x5133
                           005143  2755 G$AX5043_AGCMINMAX2NB$0$0 == 0x5143
                           005143  2756 _AX5043_AGCMINMAX2NB	=	0x5143
                           005153  2757 G$AX5043_AGCMINMAX3NB$0$0 == 0x5153
                           005153  2758 _AX5043_AGCMINMAX3NB	=	0x5153
                           005121  2759 G$AX5043_AGCTARGET0NB$0$0 == 0x5121
                           005121  2760 _AX5043_AGCTARGET0NB	=	0x5121
                           005131  2761 G$AX5043_AGCTARGET1NB$0$0 == 0x5131
                           005131  2762 _AX5043_AGCTARGET1NB	=	0x5131
                           005141  2763 G$AX5043_AGCTARGET2NB$0$0 == 0x5141
                           005141  2764 _AX5043_AGCTARGET2NB	=	0x5141
                           005151  2765 G$AX5043_AGCTARGET3NB$0$0 == 0x5151
                           005151  2766 _AX5043_AGCTARGET3NB	=	0x5151
                           00512B  2767 G$AX5043_AMPLITUDEGAIN0NB$0$0 == 0x512b
                           00512B  2768 _AX5043_AMPLITUDEGAIN0NB	=	0x512b
                           00513B  2769 G$AX5043_AMPLITUDEGAIN1NB$0$0 == 0x513b
                           00513B  2770 _AX5043_AMPLITUDEGAIN1NB	=	0x513b
                           00514B  2771 G$AX5043_AMPLITUDEGAIN2NB$0$0 == 0x514b
                           00514B  2772 _AX5043_AMPLITUDEGAIN2NB	=	0x514b
                           00515B  2773 G$AX5043_AMPLITUDEGAIN3NB$0$0 == 0x515b
                           00515B  2774 _AX5043_AMPLITUDEGAIN3NB	=	0x515b
                           00512F  2775 G$AX5043_BBOFFSRES0NB$0$0 == 0x512f
                           00512F  2776 _AX5043_BBOFFSRES0NB	=	0x512f
                           00513F  2777 G$AX5043_BBOFFSRES1NB$0$0 == 0x513f
                           00513F  2778 _AX5043_BBOFFSRES1NB	=	0x513f
                           00514F  2779 G$AX5043_BBOFFSRES2NB$0$0 == 0x514f
                           00514F  2780 _AX5043_BBOFFSRES2NB	=	0x514f
                           00515F  2781 G$AX5043_BBOFFSRES3NB$0$0 == 0x515f
                           00515F  2782 _AX5043_BBOFFSRES3NB	=	0x515f
                           005125  2783 G$AX5043_DRGAIN0NB$0$0 == 0x5125
                           005125  2784 _AX5043_DRGAIN0NB	=	0x5125
                           005135  2785 G$AX5043_DRGAIN1NB$0$0 == 0x5135
                           005135  2786 _AX5043_DRGAIN1NB	=	0x5135
                           005145  2787 G$AX5043_DRGAIN2NB$0$0 == 0x5145
                           005145  2788 _AX5043_DRGAIN2NB	=	0x5145
                           005155  2789 G$AX5043_DRGAIN3NB$0$0 == 0x5155
                           005155  2790 _AX5043_DRGAIN3NB	=	0x5155
                           00512E  2791 G$AX5043_FOURFSK0NB$0$0 == 0x512e
                           00512E  2792 _AX5043_FOURFSK0NB	=	0x512e
                           00513E  2793 G$AX5043_FOURFSK1NB$0$0 == 0x513e
                           00513E  2794 _AX5043_FOURFSK1NB	=	0x513e
                           00514E  2795 G$AX5043_FOURFSK2NB$0$0 == 0x514e
                           00514E  2796 _AX5043_FOURFSK2NB	=	0x514e
                           00515E  2797 G$AX5043_FOURFSK3NB$0$0 == 0x515e
                           00515E  2798 _AX5043_FOURFSK3NB	=	0x515e
                           00512D  2799 G$AX5043_FREQDEV00NB$0$0 == 0x512d
                           00512D  2800 _AX5043_FREQDEV00NB	=	0x512d
                           00513D  2801 G$AX5043_FREQDEV01NB$0$0 == 0x513d
                           00513D  2802 _AX5043_FREQDEV01NB	=	0x513d
                           00514D  2803 G$AX5043_FREQDEV02NB$0$0 == 0x514d
                           00514D  2804 _AX5043_FREQDEV02NB	=	0x514d
                           00515D  2805 G$AX5043_FREQDEV03NB$0$0 == 0x515d
                           00515D  2806 _AX5043_FREQDEV03NB	=	0x515d
                           00512C  2807 G$AX5043_FREQDEV10NB$0$0 == 0x512c
                           00512C  2808 _AX5043_FREQDEV10NB	=	0x512c
                           00513C  2809 G$AX5043_FREQDEV11NB$0$0 == 0x513c
                           00513C  2810 _AX5043_FREQDEV11NB	=	0x513c
                           00514C  2811 G$AX5043_FREQDEV12NB$0$0 == 0x514c
                           00514C  2812 _AX5043_FREQDEV12NB	=	0x514c
                           00515C  2813 G$AX5043_FREQDEV13NB$0$0 == 0x515c
                           00515C  2814 _AX5043_FREQDEV13NB	=	0x515c
                           005127  2815 G$AX5043_FREQUENCYGAINA0NB$0$0 == 0x5127
                           005127  2816 _AX5043_FREQUENCYGAINA0NB	=	0x5127
                           005137  2817 G$AX5043_FREQUENCYGAINA1NB$0$0 == 0x5137
                           005137  2818 _AX5043_FREQUENCYGAINA1NB	=	0x5137
                           005147  2819 G$AX5043_FREQUENCYGAINA2NB$0$0 == 0x5147
                           005147  2820 _AX5043_FREQUENCYGAINA2NB	=	0x5147
                           005157  2821 G$AX5043_FREQUENCYGAINA3NB$0$0 == 0x5157
                           005157  2822 _AX5043_FREQUENCYGAINA3NB	=	0x5157
                           005128  2823 G$AX5043_FREQUENCYGAINB0NB$0$0 == 0x5128
                           005128  2824 _AX5043_FREQUENCYGAINB0NB	=	0x5128
                           005138  2825 G$AX5043_FREQUENCYGAINB1NB$0$0 == 0x5138
                           005138  2826 _AX5043_FREQUENCYGAINB1NB	=	0x5138
                           005148  2827 G$AX5043_FREQUENCYGAINB2NB$0$0 == 0x5148
                           005148  2828 _AX5043_FREQUENCYGAINB2NB	=	0x5148
                           005158  2829 G$AX5043_FREQUENCYGAINB3NB$0$0 == 0x5158
                           005158  2830 _AX5043_FREQUENCYGAINB3NB	=	0x5158
                           005129  2831 G$AX5043_FREQUENCYGAINC0NB$0$0 == 0x5129
                           005129  2832 _AX5043_FREQUENCYGAINC0NB	=	0x5129
                           005139  2833 G$AX5043_FREQUENCYGAINC1NB$0$0 == 0x5139
                           005139  2834 _AX5043_FREQUENCYGAINC1NB	=	0x5139
                           005149  2835 G$AX5043_FREQUENCYGAINC2NB$0$0 == 0x5149
                           005149  2836 _AX5043_FREQUENCYGAINC2NB	=	0x5149
                           005159  2837 G$AX5043_FREQUENCYGAINC3NB$0$0 == 0x5159
                           005159  2838 _AX5043_FREQUENCYGAINC3NB	=	0x5159
                           00512A  2839 G$AX5043_FREQUENCYGAIND0NB$0$0 == 0x512a
                           00512A  2840 _AX5043_FREQUENCYGAIND0NB	=	0x512a
                           00513A  2841 G$AX5043_FREQUENCYGAIND1NB$0$0 == 0x513a
                           00513A  2842 _AX5043_FREQUENCYGAIND1NB	=	0x513a
                           00514A  2843 G$AX5043_FREQUENCYGAIND2NB$0$0 == 0x514a
                           00514A  2844 _AX5043_FREQUENCYGAIND2NB	=	0x514a
                           00515A  2845 G$AX5043_FREQUENCYGAIND3NB$0$0 == 0x515a
                           00515A  2846 _AX5043_FREQUENCYGAIND3NB	=	0x515a
                           005116  2847 G$AX5043_FREQUENCYLEAKNB$0$0 == 0x5116
                           005116  2848 _AX5043_FREQUENCYLEAKNB	=	0x5116
                           005126  2849 G$AX5043_PHASEGAIN0NB$0$0 == 0x5126
                           005126  2850 _AX5043_PHASEGAIN0NB	=	0x5126
                           005136  2851 G$AX5043_PHASEGAIN1NB$0$0 == 0x5136
                           005136  2852 _AX5043_PHASEGAIN1NB	=	0x5136
                           005146  2853 G$AX5043_PHASEGAIN2NB$0$0 == 0x5146
                           005146  2854 _AX5043_PHASEGAIN2NB	=	0x5146
                           005156  2855 G$AX5043_PHASEGAIN3NB$0$0 == 0x5156
                           005156  2856 _AX5043_PHASEGAIN3NB	=	0x5156
                           005207  2857 G$AX5043_PKTADDR0NB$0$0 == 0x5207
                           005207  2858 _AX5043_PKTADDR0NB	=	0x5207
                           005206  2859 G$AX5043_PKTADDR1NB$0$0 == 0x5206
                           005206  2860 _AX5043_PKTADDR1NB	=	0x5206
                           005205  2861 G$AX5043_PKTADDR2NB$0$0 == 0x5205
                           005205  2862 _AX5043_PKTADDR2NB	=	0x5205
                           005204  2863 G$AX5043_PKTADDR3NB$0$0 == 0x5204
                           005204  2864 _AX5043_PKTADDR3NB	=	0x5204
                           005200  2865 G$AX5043_PKTADDRCFGNB$0$0 == 0x5200
                           005200  2866 _AX5043_PKTADDRCFGNB	=	0x5200
                           00520B  2867 G$AX5043_PKTADDRMASK0NB$0$0 == 0x520b
                           00520B  2868 _AX5043_PKTADDRMASK0NB	=	0x520b
                           00520A  2869 G$AX5043_PKTADDRMASK1NB$0$0 == 0x520a
                           00520A  2870 _AX5043_PKTADDRMASK1NB	=	0x520a
                           005209  2871 G$AX5043_PKTADDRMASK2NB$0$0 == 0x5209
                           005209  2872 _AX5043_PKTADDRMASK2NB	=	0x5209
                           005208  2873 G$AX5043_PKTADDRMASK3NB$0$0 == 0x5208
                           005208  2874 _AX5043_PKTADDRMASK3NB	=	0x5208
                           005201  2875 G$AX5043_PKTLENCFGNB$0$0 == 0x5201
                           005201  2876 _AX5043_PKTLENCFGNB	=	0x5201
                           005202  2877 G$AX5043_PKTLENOFFSETNB$0$0 == 0x5202
                           005202  2878 _AX5043_PKTLENOFFSETNB	=	0x5202
                           005203  2879 G$AX5043_PKTMAXLENNB$0$0 == 0x5203
                           005203  2880 _AX5043_PKTMAXLENNB	=	0x5203
                           005118  2881 G$AX5043_RXPARAMCURSETNB$0$0 == 0x5118
                           005118  2882 _AX5043_RXPARAMCURSETNB	=	0x5118
                           005117  2883 G$AX5043_RXPARAMSETSNB$0$0 == 0x5117
                           005117  2884 _AX5043_RXPARAMSETSNB	=	0x5117
                           005124  2885 G$AX5043_TIMEGAIN0NB$0$0 == 0x5124
                           005124  2886 _AX5043_TIMEGAIN0NB	=	0x5124
                           005134  2887 G$AX5043_TIMEGAIN1NB$0$0 == 0x5134
                           005134  2888 _AX5043_TIMEGAIN1NB	=	0x5134
                           005144  2889 G$AX5043_TIMEGAIN2NB$0$0 == 0x5144
                           005144  2890 _AX5043_TIMEGAIN2NB	=	0x5144
                           005154  2891 G$AX5043_TIMEGAIN3NB$0$0 == 0x5154
                           005154  2892 _AX5043_TIMEGAIN3NB	=	0x5154
                           000000  2893 G$axradio_phy_chanpllrng$0$0==.
      000001                       2894 _axradio_phy_chanpllrng::
      000001                       2895 	.ds 2
                           000002  2896 G$axradio_phy_chanvcoi$0$0==.
      000003                       2897 _axradio_phy_chanvcoi::
      000003                       2898 	.ds 1
                                   2899 ;--------------------------------------------------------
                                   2900 ; absolute external ram data
                                   2901 ;--------------------------------------------------------
                                   2902 	.area XABS    (ABS,XDATA)
                                   2903 ;--------------------------------------------------------
                                   2904 ; external initialized ram data
                                   2905 ;--------------------------------------------------------
                                   2906 	.area XISEG   (XDATA)
                                   2907 	.area HOME    (CODE)
                                   2908 	.area GSINIT0 (CODE)
                                   2909 	.area GSINIT1 (CODE)
                                   2910 	.area GSINIT2 (CODE)
                                   2911 	.area GSINIT3 (CODE)
                                   2912 	.area GSINIT4 (CODE)
                                   2913 	.area GSINIT5 (CODE)
                                   2914 	.area GSINIT  (CODE)
                                   2915 	.area GSFINAL (CODE)
                                   2916 	.area CSEG    (CODE)
                                   2917 ;--------------------------------------------------------
                                   2918 ; global & static initialisations
                                   2919 ;--------------------------------------------------------
                                   2920 	.area HOME    (CODE)
                                   2921 	.area GSINIT  (CODE)
                                   2922 	.area GSFINAL (CODE)
                                   2923 	.area GSINIT  (CODE)
                                   2924 ;--------------------------------------------------------
                                   2925 ; Home
                                   2926 ;--------------------------------------------------------
                                   2927 	.area HOME    (CODE)
                                   2928 	.area HOME    (CODE)
                                   2929 ;--------------------------------------------------------
                                   2930 ; code
                                   2931 ;--------------------------------------------------------
                                   2932 	.area CSEG    (CODE)
                                   2933 ;------------------------------------------------------------
                                   2934 ;Allocation info for local variables in function 'ax5043_set_registers'
                                   2935 ;------------------------------------------------------------
                           000000  2936 	G$ax5043_set_registers$0$0 ==.
                           000000  2937 	C$config.c$12$0$0 ==.
                                   2938 ;	..\AX_Radio_Lab_output\config.c:12: __reentrantb void ax5043_set_registers(void) __reentrant
                                   2939 ;	-----------------------------------------
                                   2940 ;	 function ax5043_set_registers
                                   2941 ;	-----------------------------------------
      000398                       2942 _ax5043_set_registers:
                           000007  2943 	ar7 = 0x07
                           000006  2944 	ar6 = 0x06
                           000005  2945 	ar5 = 0x05
                           000004  2946 	ar4 = 0x04
                           000003  2947 	ar3 = 0x03
                           000002  2948 	ar2 = 0x02
                           000001  2949 	ar1 = 0x01
                           000000  2950 	ar0 = 0x00
                           000000  2951 	C$config.c$14$2$171 ==.
                                   2952 ;	..\AX_Radio_Lab_output\config.c:14: radio_write8(AX5043_REG_MODULATION     ,                              			0x08);
      000398 90 40 10         [24] 2953 	mov	dptr,#0x4010
      00039B 74 08            [12] 2954 	mov	a,#0x08
      00039D F0               [24] 2955 	movx	@dptr,a
                           000006  2956 	C$config.c$15$2$172 ==.
                                   2957 ;	..\AX_Radio_Lab_output\config.c:15: radio_write8(AX5043_REG_ENCODING       ,                              			0x07);
      00039E 90 40 11         [24] 2958 	mov	dptr,#0x4011
      0003A1 14               [12] 2959 	dec	a
      0003A2 F0               [24] 2960 	movx	@dptr,a
                           00000B  2961 	C$config.c$16$2$173 ==.
                                   2962 ;	..\AX_Radio_Lab_output\config.c:16: radio_write8(AX5043_REG_FRAMING        ,                              			0x14);
      0003A3 90 40 12         [24] 2963 	mov	dptr,#0x4012
      0003A6 74 14            [12] 2964 	mov	a,#0x14
      0003A8 F0               [24] 2965 	movx	@dptr,a
                           000011  2966 	C$config.c$17$2$174 ==.
                                   2967 ;	..\AX_Radio_Lab_output\config.c:17: radio_write8(AX5043_REG_PINFUNCSYSCLK  ,                              			0x04);
      0003A9 90 40 21         [24] 2968 	mov	dptr,#0x4021
      0003AC 74 04            [12] 2969 	mov	a,#0x04
      0003AE F0               [24] 2970 	movx	@dptr,a
                           000017  2971 	C$config.c$18$2$175 ==.
                                   2972 ;	..\AX_Radio_Lab_output\config.c:18: radio_write8(AX5043_REG_PINFUNCDCLK    ,                              			0x00);
      0003AF 90 40 22         [24] 2973 	mov	dptr,#0x4022
      0003B2 E4               [12] 2974 	clr	a
      0003B3 F0               [24] 2975 	movx	@dptr,a
                           00001C  2976 	C$config.c$19$2$176 ==.
                                   2977 ;	..\AX_Radio_Lab_output\config.c:19: radio_write8(AX5043_REG_PINFUNCDATA    ,                              			0x00);
      0003B4 90 40 23         [24] 2978 	mov	dptr,#0x4023
      0003B7 F0               [24] 2979 	movx	@dptr,a
                           000020  2980 	C$config.c$20$2$177 ==.
                                   2981 ;	..\AX_Radio_Lab_output\config.c:20: radio_write8(AX5043_REG_PINFUNCANTSEL  ,                              			0x00);
      0003B8 90 40 25         [24] 2982 	mov	dptr,#0x4025
      0003BB F0               [24] 2983 	movx	@dptr,a
                           000024  2984 	C$config.c$21$2$178 ==.
                                   2985 ;	..\AX_Radio_Lab_output\config.c:21: radio_write8(AX5043_REG_PINFUNCPWRAMP  ,                              			0x00);
      0003BC 90 40 26         [24] 2986 	mov	dptr,#0x4026
      0003BF F0               [24] 2987 	movx	@dptr,a
                           000028  2988 	C$config.c$22$2$179 ==.
                                   2989 ;	..\AX_Radio_Lab_output\config.c:22: radio_write8(AX5043_REG_WAKEUPXOEARLY  ,                              			0x01);
      0003C0 90 40 6E         [24] 2990 	mov	dptr,#0x406e
      0003C3 04               [12] 2991 	inc	a
      0003C4 F0               [24] 2992 	movx	@dptr,a
                           00002D  2993 	C$config.c$23$2$180 ==.
                                   2994 ;	..\AX_Radio_Lab_output\config.c:23: radio_write8(AX5043_REG_IFFREQ1        ,                              			0x0A);
      0003C5 90 41 00         [24] 2995 	mov	dptr,#0x4100
      0003C8 74 0A            [12] 2996 	mov	a,#0x0a
      0003CA F0               [24] 2997 	movx	@dptr,a
                           000033  2998 	C$config.c$24$2$181 ==.
                                   2999 ;	..\AX_Radio_Lab_output\config.c:24: radio_write8(AX5043_REG_IFFREQ0        ,                              			0xE5);
      0003CB 90 41 01         [24] 3000 	mov	dptr,#0x4101
      0003CE 74 E5            [12] 3001 	mov	a,#0xe5
      0003D0 F0               [24] 3002 	movx	@dptr,a
                           000039  3003 	C$config.c$25$2$182 ==.
                                   3004 ;	..\AX_Radio_Lab_output\config.c:25: radio_write8(AX5043_REG_DECIMATION     ,                              			0x02);
      0003D1 90 41 02         [24] 3005 	mov	dptr,#0x4102
      0003D4 74 02            [12] 3006 	mov	a,#0x02
      0003D6 F0               [24] 3007 	movx	@dptr,a
                           00003F  3008 	C$config.c$26$2$183 ==.
                                   3009 ;	..\AX_Radio_Lab_output\config.c:26: radio_write8(AX5043_REG_RXDATARATE2    ,                              			0x00);
      0003D7 90 41 03         [24] 3010 	mov	dptr,#0x4103
      0003DA E4               [12] 3011 	clr	a
      0003DB F0               [24] 3012 	movx	@dptr,a
                           000044  3013 	C$config.c$27$2$184 ==.
                                   3014 ;	..\AX_Radio_Lab_output\config.c:27: radio_write8(AX5043_REG_RXDATARATE1    ,                              			0x3E);
      0003DC 90 41 04         [24] 3015 	mov	dptr,#0x4104
      0003DF 74 3E            [12] 3016 	mov	a,#0x3e
      0003E1 F0               [24] 3017 	movx	@dptr,a
                           00004A  3018 	C$config.c$28$2$185 ==.
                                   3019 ;	..\AX_Radio_Lab_output\config.c:28: radio_write8(AX5043_REG_RXDATARATE0    ,                              			0x80);
      0003E2 90 41 05         [24] 3020 	mov	dptr,#0x4105
      0003E5 74 80            [12] 3021 	mov	a,#0x80
      0003E7 F0               [24] 3022 	movx	@dptr,a
                           000050  3023 	C$config.c$29$2$186 ==.
                                   3024 ;	..\AX_Radio_Lab_output\config.c:29: radio_write8(AX5043_REG_MAXDROFFSET2   ,                              			0x00);
      0003E8 90 41 06         [24] 3025 	mov	dptr,#0x4106
      0003EB E4               [12] 3026 	clr	a
      0003EC F0               [24] 3027 	movx	@dptr,a
                           000055  3028 	C$config.c$30$2$187 ==.
                                   3029 ;	..\AX_Radio_Lab_output\config.c:30: radio_write8(AX5043_REG_MAXDROFFSET1   ,                              			0x00);
      0003ED 90 41 07         [24] 3030 	mov	dptr,#0x4107
      0003F0 F0               [24] 3031 	movx	@dptr,a
                           000059  3032 	C$config.c$31$2$188 ==.
                                   3033 ;	..\AX_Radio_Lab_output\config.c:31: radio_write8(AX5043_REG_MAXDROFFSET0   ,                              			0x00);
      0003F1 90 41 08         [24] 3034 	mov	dptr,#0x4108
      0003F4 F0               [24] 3035 	movx	@dptr,a
                           00005D  3036 	C$config.c$32$2$189 ==.
                                   3037 ;	..\AX_Radio_Lab_output\config.c:32: radio_write8(AX5043_REG_MAXRFOFFSET2   ,                              			0x80);
      0003F5 90 41 09         [24] 3038 	mov	dptr,#0x4109
      0003F8 74 80            [12] 3039 	mov	a,#0x80
      0003FA F0               [24] 3040 	movx	@dptr,a
                           000063  3041 	C$config.c$33$2$190 ==.
                                   3042 ;	..\AX_Radio_Lab_output\config.c:33: radio_write8(AX5043_REG_MAXRFOFFSET1   ,                              			0x01);
      0003FB 90 41 0A         [24] 3043 	mov	dptr,#0x410a
      0003FE 23               [12] 3044 	rl	a
      0003FF F0               [24] 3045 	movx	@dptr,a
                           000068  3046 	C$config.c$34$2$191 ==.
                                   3047 ;	..\AX_Radio_Lab_output\config.c:34: radio_write8(AX5043_REG_MAXRFOFFSET0   ,                              			0x31);
      000400 90 41 0B         [24] 3048 	mov	dptr,#0x410b
      000403 74 31            [12] 3049 	mov	a,#0x31
      000405 F0               [24] 3050 	movx	@dptr,a
                           00006E  3051 	C$config.c$35$2$192 ==.
                                   3052 ;	..\AX_Radio_Lab_output\config.c:35: radio_write8(AX5043_REG_FSKDMAX1       ,                              			0x00);
      000406 90 41 0C         [24] 3053 	mov	dptr,#0x410c
      000409 E4               [12] 3054 	clr	a
      00040A F0               [24] 3055 	movx	@dptr,a
                           000073  3056 	C$config.c$36$2$193 ==.
                                   3057 ;	..\AX_Radio_Lab_output\config.c:36: radio_write8(AX5043_REG_FSKDMAX0       ,                              			0xA6);
      00040B 90 41 0D         [24] 3058 	mov	dptr,#0x410d
      00040E 74 A6            [12] 3059 	mov	a,#0xa6
      000410 F0               [24] 3060 	movx	@dptr,a
                           000079  3061 	C$config.c$37$2$194 ==.
                                   3062 ;	..\AX_Radio_Lab_output\config.c:37: radio_write8(AX5043_REG_FSKDMIN1       ,                              			0xFF);
      000411 90 41 0E         [24] 3063 	mov	dptr,#0x410e
      000414 74 FF            [12] 3064 	mov	a,#0xff
      000416 F0               [24] 3065 	movx	@dptr,a
                           00007F  3066 	C$config.c$38$2$195 ==.
                                   3067 ;	..\AX_Radio_Lab_output\config.c:38: radio_write8(AX5043_REG_FSKDMIN0       ,                              			0x5A);
      000417 90 41 0F         [24] 3068 	mov	dptr,#0x410f
      00041A 74 5A            [12] 3069 	mov	a,#0x5a
      00041C F0               [24] 3070 	movx	@dptr,a
                           000085  3071 	C$config.c$39$2$196 ==.
                                   3072 ;	..\AX_Radio_Lab_output\config.c:39: radio_write8(AX5043_REG_AMPLFILTER     ,                              			0x00);
      00041D 90 41 15         [24] 3073 	mov	dptr,#0x4115
      000420 E4               [12] 3074 	clr	a
      000421 F0               [24] 3075 	movx	@dptr,a
                           00008A  3076 	C$config.c$40$2$197 ==.
                                   3077 ;	..\AX_Radio_Lab_output\config.c:40: radio_write8(AX5043_REG_RXPARAMSETS    ,                              			0xF4);
      000422 90 41 17         [24] 3078 	mov	dptr,#0x4117
      000425 74 F4            [12] 3079 	mov	a,#0xf4
      000427 F0               [24] 3080 	movx	@dptr,a
                           000090  3081 	C$config.c$41$2$198 ==.
                                   3082 ;	..\AX_Radio_Lab_output\config.c:41: radio_write8(AX5043_REG_AGCGAIN0       ,                              			0x83);
      000428 90 41 20         [24] 3083 	mov	dptr,#0x4120
      00042B 74 83            [12] 3084 	mov	a,#0x83
      00042D F0               [24] 3085 	movx	@dptr,a
                           000096  3086 	C$config.c$42$2$199 ==.
                                   3087 ;	..\AX_Radio_Lab_output\config.c:42: radio_write8(AX5043_REG_AGCTARGET0     ,                              			0x84);
      00042E 90 41 21         [24] 3088 	mov	dptr,#0x4121
      000431 04               [12] 3089 	inc	a
      000432 F0               [24] 3090 	movx	@dptr,a
                           00009B  3091 	C$config.c$43$2$200 ==.
                                   3092 ;	..\AX_Radio_Lab_output\config.c:43: radio_write8(AX5043_REG_TIMEGAIN0      ,                              			0xF8);
      000433 90 41 24         [24] 3093 	mov	dptr,#0x4124
      000436 74 F8            [12] 3094 	mov	a,#0xf8
      000438 F0               [24] 3095 	movx	@dptr,a
                           0000A1  3096 	C$config.c$44$2$201 ==.
                                   3097 ;	..\AX_Radio_Lab_output\config.c:44: radio_write8(AX5043_REG_DRGAIN0        ,                              			0xF2);
      000439 90 41 25         [24] 3098 	mov	dptr,#0x4125
      00043C 74 F2            [12] 3099 	mov	a,#0xf2
      00043E F0               [24] 3100 	movx	@dptr,a
                           0000A7  3101 	C$config.c$45$2$202 ==.
                                   3102 ;	..\AX_Radio_Lab_output\config.c:45: radio_write8(AX5043_REG_PHASEGAIN0     ,                              			0xC3);
      00043F 90 41 26         [24] 3103 	mov	dptr,#0x4126
      000442 74 C3            [12] 3104 	mov	a,#0xc3
      000444 F0               [24] 3105 	movx	@dptr,a
                           0000AD  3106 	C$config.c$46$2$203 ==.
                                   3107 ;	..\AX_Radio_Lab_output\config.c:46: radio_write8(AX5043_REG_FREQUENCYGAINA0,                              			0x0F);
      000445 90 41 27         [24] 3108 	mov	dptr,#0x4127
      000448 74 0F            [12] 3109 	mov	a,#0x0f
      00044A F0               [24] 3110 	movx	@dptr,a
                           0000B3  3111 	C$config.c$47$2$204 ==.
                                   3112 ;	..\AX_Radio_Lab_output\config.c:47: radio_write8(AX5043_REG_FREQUENCYGAINB0,                              			0x1F);
      00044B 90 41 28         [24] 3113 	mov	dptr,#0x4128
      00044E 74 1F            [12] 3114 	mov	a,#0x1f
      000450 F0               [24] 3115 	movx	@dptr,a
                           0000B9  3116 	C$config.c$48$2$205 ==.
                                   3117 ;	..\AX_Radio_Lab_output\config.c:48: radio_write8(AX5043_REG_FREQUENCYGAINC0,                              			0x07);
      000451 90 41 29         [24] 3118 	mov	dptr,#0x4129
      000454 74 07            [12] 3119 	mov	a,#0x07
      000456 F0               [24] 3120 	movx	@dptr,a
                           0000BF  3121 	C$config.c$49$2$206 ==.
                                   3122 ;	..\AX_Radio_Lab_output\config.c:49: radio_write8(AX5043_REG_FREQUENCYGAIND0,                              			0x07);
      000457 90 41 2A         [24] 3123 	mov	dptr,#0x412a
      00045A F0               [24] 3124 	movx	@dptr,a
                           0000C3  3125 	C$config.c$50$2$207 ==.
                                   3126 ;	..\AX_Radio_Lab_output\config.c:50: radio_write8(AX5043_REG_AMPLITUDEGAIN0 ,                              			0x06);
      00045B 90 41 2B         [24] 3127 	mov	dptr,#0x412b
      00045E 14               [12] 3128 	dec	a
      00045F F0               [24] 3129 	movx	@dptr,a
                           0000C8  3130 	C$config.c$51$2$208 ==.
                                   3131 ;	..\AX_Radio_Lab_output\config.c:51: radio_write8(AX5043_REG_FREQDEV10      ,                              			0x00);
      000460 90 41 2C         [24] 3132 	mov	dptr,#0x412c
      000463 E4               [12] 3133 	clr	a
      000464 F0               [24] 3134 	movx	@dptr,a
                           0000CD  3135 	C$config.c$52$2$209 ==.
                                   3136 ;	..\AX_Radio_Lab_output\config.c:52: radio_write8(AX5043_REG_FREQDEV00      ,                              			0x00);
      000465 90 41 2D         [24] 3137 	mov	dptr,#0x412d
      000468 F0               [24] 3138 	movx	@dptr,a
                           0000D1  3139 	C$config.c$53$2$210 ==.
                                   3140 ;	..\AX_Radio_Lab_output\config.c:53: radio_write8(AX5043_REG_BBOFFSRES0     ,                              			0x00);
      000469 90 41 2F         [24] 3141 	mov	dptr,#0x412f
      00046C F0               [24] 3142 	movx	@dptr,a
                           0000D5  3143 	C$config.c$54$2$211 ==.
                                   3144 ;	..\AX_Radio_Lab_output\config.c:54: radio_write8(AX5043_REG_AGCGAIN1       ,                              			0x83);
      00046D 90 41 30         [24] 3145 	mov	dptr,#0x4130
      000470 74 83            [12] 3146 	mov	a,#0x83
      000472 F0               [24] 3147 	movx	@dptr,a
                           0000DB  3148 	C$config.c$55$2$212 ==.
                                   3149 ;	..\AX_Radio_Lab_output\config.c:55: radio_write8(AX5043_REG_AGCTARGET1     ,                              			0x84);
      000473 90 41 31         [24] 3150 	mov	dptr,#0x4131
      000476 04               [12] 3151 	inc	a
      000477 F0               [24] 3152 	movx	@dptr,a
                           0000E0  3153 	C$config.c$56$2$213 ==.
                                   3154 ;	..\AX_Radio_Lab_output\config.c:56: radio_write8(AX5043_REG_AGCAHYST1      ,                              			0x00);
      000478 90 41 32         [24] 3155 	mov	dptr,#0x4132
      00047B E4               [12] 3156 	clr	a
      00047C F0               [24] 3157 	movx	@dptr,a
                           0000E5  3158 	C$config.c$57$2$214 ==.
                                   3159 ;	..\AX_Radio_Lab_output\config.c:57: radio_write8(AX5043_REG_AGCMINMAX1     ,                              			0x00);
      00047D 90 41 33         [24] 3160 	mov	dptr,#0x4133
      000480 F0               [24] 3161 	movx	@dptr,a
                           0000E9  3162 	C$config.c$58$2$215 ==.
                                   3163 ;	..\AX_Radio_Lab_output\config.c:58: radio_write8(AX5043_REG_TIMEGAIN1      ,                              			0xF6);
      000481 90 41 34         [24] 3164 	mov	dptr,#0x4134
      000484 74 F6            [12] 3165 	mov	a,#0xf6
      000486 F0               [24] 3166 	movx	@dptr,a
                           0000EF  3167 	C$config.c$59$2$216 ==.
                                   3168 ;	..\AX_Radio_Lab_output\config.c:59: radio_write8(AX5043_REG_DRGAIN1        ,                              			0xF1);
      000487 90 41 35         [24] 3169 	mov	dptr,#0x4135
      00048A 74 F1            [12] 3170 	mov	a,#0xf1
      00048C F0               [24] 3171 	movx	@dptr,a
                           0000F5  3172 	C$config.c$60$2$217 ==.
                                   3173 ;	..\AX_Radio_Lab_output\config.c:60: radio_write8(AX5043_REG_PHASEGAIN1     ,                              			0xC3);
      00048D 90 41 36         [24] 3174 	mov	dptr,#0x4136
      000490 74 C3            [12] 3175 	mov	a,#0xc3
      000492 F0               [24] 3176 	movx	@dptr,a
                           0000FB  3177 	C$config.c$61$2$218 ==.
                                   3178 ;	..\AX_Radio_Lab_output\config.c:61: radio_write8(AX5043_REG_FREQUENCYGAINA1,                              			0x0F);
      000493 90 41 37         [24] 3179 	mov	dptr,#0x4137
      000496 74 0F            [12] 3180 	mov	a,#0x0f
      000498 F0               [24] 3181 	movx	@dptr,a
                           000101  3182 	C$config.c$62$2$219 ==.
                                   3183 ;	..\AX_Radio_Lab_output\config.c:62: radio_write8(AX5043_REG_FREQUENCYGAINB1,                              			0x1F);
      000499 90 41 38         [24] 3184 	mov	dptr,#0x4138
      00049C 74 1F            [12] 3185 	mov	a,#0x1f
      00049E F0               [24] 3186 	movx	@dptr,a
                           000107  3187 	C$config.c$63$2$220 ==.
                                   3188 ;	..\AX_Radio_Lab_output\config.c:63: radio_write8(AX5043_REG_FREQUENCYGAINC1,                              			0x07);
      00049F 90 41 39         [24] 3189 	mov	dptr,#0x4139
      0004A2 74 07            [12] 3190 	mov	a,#0x07
      0004A4 F0               [24] 3191 	movx	@dptr,a
                           00010D  3192 	C$config.c$64$2$221 ==.
                                   3193 ;	..\AX_Radio_Lab_output\config.c:64: radio_write8(AX5043_REG_FREQUENCYGAIND1,                              			0x07);
      0004A5 90 41 3A         [24] 3194 	mov	dptr,#0x413a
      0004A8 F0               [24] 3195 	movx	@dptr,a
                           000111  3196 	C$config.c$65$2$222 ==.
                                   3197 ;	..\AX_Radio_Lab_output\config.c:65: radio_write8(AX5043_REG_AMPLITUDEGAIN1 ,                              			0x06);
      0004A9 90 41 3B         [24] 3198 	mov	dptr,#0x413b
      0004AC 14               [12] 3199 	dec	a
      0004AD F0               [24] 3200 	movx	@dptr,a
                           000116  3201 	C$config.c$66$2$223 ==.
                                   3202 ;	..\AX_Radio_Lab_output\config.c:66: radio_write8(AX5043_REG_FREQDEV11      ,                              			0x00);
      0004AE 90 41 3C         [24] 3203 	mov	dptr,#0x413c
      0004B1 E4               [12] 3204 	clr	a
      0004B2 F0               [24] 3205 	movx	@dptr,a
                           00011B  3206 	C$config.c$67$2$224 ==.
                                   3207 ;	..\AX_Radio_Lab_output\config.c:67: radio_write8(AX5043_REG_FREQDEV01      ,                              			0x32);
      0004B3 90 41 3D         [24] 3208 	mov	dptr,#0x413d
      0004B6 74 32            [12] 3209 	mov	a,#0x32
      0004B8 F0               [24] 3210 	movx	@dptr,a
                           000121  3211 	C$config.c$68$2$225 ==.
                                   3212 ;	..\AX_Radio_Lab_output\config.c:68: radio_write8(AX5043_REG_FOURFSK1       ,                              			0x16);
      0004B9 90 41 3E         [24] 3213 	mov	dptr,#0x413e
      0004BC 74 16            [12] 3214 	mov	a,#0x16
      0004BE F0               [24] 3215 	movx	@dptr,a
                           000127  3216 	C$config.c$69$2$226 ==.
                                   3217 ;	..\AX_Radio_Lab_output\config.c:69: radio_write8(AX5043_REG_BBOFFSRES1     ,                              			0x00);
      0004BF 90 41 3F         [24] 3218 	mov	dptr,#0x413f
      0004C2 E4               [12] 3219 	clr	a
      0004C3 F0               [24] 3220 	movx	@dptr,a
                           00012C  3221 	C$config.c$70$2$227 ==.
                                   3222 ;	..\AX_Radio_Lab_output\config.c:70: radio_write8(AX5043_REG_AGCGAIN3       ,                              			0xFF);
      0004C4 90 41 50         [24] 3223 	mov	dptr,#0x4150
      0004C7 14               [12] 3224 	dec	a
      0004C8 F0               [24] 3225 	movx	@dptr,a
                           000131  3226 	C$config.c$71$2$228 ==.
                                   3227 ;	..\AX_Radio_Lab_output\config.c:71: radio_write8(AX5043_REG_AGCTARGET3     ,                              			0x84);
      0004C9 90 41 51         [24] 3228 	mov	dptr,#0x4151
      0004CC 74 84            [12] 3229 	mov	a,#0x84
      0004CE F0               [24] 3230 	movx	@dptr,a
                           000137  3231 	C$config.c$72$2$229 ==.
                                   3232 ;	..\AX_Radio_Lab_output\config.c:72: radio_write8(AX5043_REG_AGCAHYST3      ,                              			0x00);
      0004CF 90 41 52         [24] 3233 	mov	dptr,#0x4152
      0004D2 E4               [12] 3234 	clr	a
      0004D3 F0               [24] 3235 	movx	@dptr,a
                           00013C  3236 	C$config.c$73$2$230 ==.
                                   3237 ;	..\AX_Radio_Lab_output\config.c:73: radio_write8(AX5043_REG_AGCMINMAX3     ,                              			0x00);
      0004D4 90 41 53         [24] 3238 	mov	dptr,#0x4153
      0004D7 F0               [24] 3239 	movx	@dptr,a
                           000140  3240 	C$config.c$74$2$231 ==.
                                   3241 ;	..\AX_Radio_Lab_output\config.c:74: radio_write8(AX5043_REG_TIMEGAIN3      ,                              			0xF5);
      0004D8 90 41 54         [24] 3242 	mov	dptr,#0x4154
      0004DB 74 F5            [12] 3243 	mov	a,#0xf5
      0004DD F0               [24] 3244 	movx	@dptr,a
                           000146  3245 	C$config.c$75$2$232 ==.
                                   3246 ;	..\AX_Radio_Lab_output\config.c:75: radio_write8(AX5043_REG_DRGAIN3        ,                              			0xF0);
      0004DE 90 41 55         [24] 3247 	mov	dptr,#0x4155
      0004E1 74 F0            [12] 3248 	mov	a,#0xf0
      0004E3 F0               [24] 3249 	movx	@dptr,a
                           00014C  3250 	C$config.c$76$2$233 ==.
                                   3251 ;	..\AX_Radio_Lab_output\config.c:76: radio_write8(AX5043_REG_PHASEGAIN3     ,                              			0xC3);
      0004E4 90 41 56         [24] 3252 	mov	dptr,#0x4156
      0004E7 74 C3            [12] 3253 	mov	a,#0xc3
      0004E9 F0               [24] 3254 	movx	@dptr,a
                           000152  3255 	C$config.c$77$2$234 ==.
                                   3256 ;	..\AX_Radio_Lab_output\config.c:77: radio_write8(AX5043_REG_FREQUENCYGAINA3,                              			0x0F);
      0004EA 90 41 57         [24] 3257 	mov	dptr,#0x4157
      0004ED 74 0F            [12] 3258 	mov	a,#0x0f
      0004EF F0               [24] 3259 	movx	@dptr,a
                           000158  3260 	C$config.c$78$2$235 ==.
                                   3261 ;	..\AX_Radio_Lab_output\config.c:78: radio_write8(AX5043_REG_FREQUENCYGAINB3,                              			0x1F);
      0004F0 90 41 58         [24] 3262 	mov	dptr,#0x4158
      0004F3 74 1F            [12] 3263 	mov	a,#0x1f
      0004F5 F0               [24] 3264 	movx	@dptr,a
                           00015E  3265 	C$config.c$79$2$236 ==.
                                   3266 ;	..\AX_Radio_Lab_output\config.c:79: radio_write8(AX5043_REG_FREQUENCYGAINC3,                              			0x0B);
      0004F6 90 41 59         [24] 3267 	mov	dptr,#0x4159
      0004F9 74 0B            [12] 3268 	mov	a,#0x0b
      0004FB F0               [24] 3269 	movx	@dptr,a
                           000164  3270 	C$config.c$80$2$237 ==.
                                   3271 ;	..\AX_Radio_Lab_output\config.c:80: radio_write8(AX5043_REG_FREQUENCYGAIND3,                              			0x0B);
      0004FC 90 41 5A         [24] 3272 	mov	dptr,#0x415a
      0004FF F0               [24] 3273 	movx	@dptr,a
                           000168  3274 	C$config.c$81$2$238 ==.
                                   3275 ;	..\AX_Radio_Lab_output\config.c:81: radio_write8(AX5043_REG_AMPLITUDEGAIN3 ,                              			0x06);
      000500 90 41 5B         [24] 3276 	mov	dptr,#0x415b
      000503 74 06            [12] 3277 	mov	a,#0x06
      000505 F0               [24] 3278 	movx	@dptr,a
                           00016E  3279 	C$config.c$82$2$239 ==.
                                   3280 ;	..\AX_Radio_Lab_output\config.c:82: radio_write8(AX5043_REG_FREQDEV13      ,                              			0x00);
      000506 90 41 5C         [24] 3281 	mov	dptr,#0x415c
      000509 E4               [12] 3282 	clr	a
      00050A F0               [24] 3283 	movx	@dptr,a
                           000173  3284 	C$config.c$83$2$240 ==.
                                   3285 ;	..\AX_Radio_Lab_output\config.c:83: radio_write8(AX5043_REG_FREQDEV03      ,                              			0x32);
      00050B 90 41 5D         [24] 3286 	mov	dptr,#0x415d
      00050E 74 32            [12] 3287 	mov	a,#0x32
      000510 F0               [24] 3288 	movx	@dptr,a
                           000179  3289 	C$config.c$84$2$241 ==.
                                   3290 ;	..\AX_Radio_Lab_output\config.c:84: radio_write8(AX5043_REG_FOURFSK3       ,                              			0x16);
      000511 90 41 5E         [24] 3291 	mov	dptr,#0x415e
      000514 74 16            [12] 3292 	mov	a,#0x16
      000516 F0               [24] 3293 	movx	@dptr,a
                           00017F  3294 	C$config.c$85$2$242 ==.
                                   3295 ;	..\AX_Radio_Lab_output\config.c:85: radio_write8(AX5043_REG_BBOFFSRES3     ,                              			0x00);
      000517 90 41 5F         [24] 3296 	mov	dptr,#0x415f
      00051A E4               [12] 3297 	clr	a
      00051B F0               [24] 3298 	movx	@dptr,a
                           000184  3299 	C$config.c$86$2$243 ==.
                                   3300 ;	..\AX_Radio_Lab_output\config.c:86: radio_write8(AX5043_REG_MODCFGF        ,                              			0x03);
      00051C 90 41 60         [24] 3301 	mov	dptr,#0x4160
      00051F 74 03            [12] 3302 	mov	a,#0x03
      000521 F0               [24] 3303 	movx	@dptr,a
                           00018A  3304 	C$config.c$87$2$244 ==.
                                   3305 ;	..\AX_Radio_Lab_output\config.c:87: radio_write8(AX5043_REG_FSKDEV2        ,                              			0x00);
      000522 90 41 61         [24] 3306 	mov	dptr,#0x4161
      000525 E4               [12] 3307 	clr	a
      000526 F0               [24] 3308 	movx	@dptr,a
                           00018F  3309 	C$config.c$88$2$245 ==.
                                   3310 ;	..\AX_Radio_Lab_output\config.c:88: radio_write8(AX5043_REG_FSKDEV1        ,                              			0x20);
      000527 90 41 62         [24] 3311 	mov	dptr,#0x4162
      00052A 74 20            [12] 3312 	mov	a,#0x20
      00052C F0               [24] 3313 	movx	@dptr,a
                           000195  3314 	C$config.c$89$2$246 ==.
                                   3315 ;	..\AX_Radio_Lab_output\config.c:89: radio_write8(AX5043_REG_FSKDEV0        ,                              			0xC5);
      00052D 90 41 63         [24] 3316 	mov	dptr,#0x4163
      000530 74 C5            [12] 3317 	mov	a,#0xc5
      000532 F0               [24] 3318 	movx	@dptr,a
                           00019B  3319 	C$config.c$90$2$247 ==.
                                   3320 ;	..\AX_Radio_Lab_output\config.c:90: radio_write8(AX5043_REG_MODCFGA        ,                              			0x06);
      000533 90 41 64         [24] 3321 	mov	dptr,#0x4164
      000536 74 06            [12] 3322 	mov	a,#0x06
      000538 F0               [24] 3323 	movx	@dptr,a
                           0001A1  3324 	C$config.c$91$2$248 ==.
                                   3325 ;	..\AX_Radio_Lab_output\config.c:91: radio_write8(AX5043_REG_TXRATE2        ,                              			0x00);
      000539 90 41 65         [24] 3326 	mov	dptr,#0x4165
      00053C E4               [12] 3327 	clr	a
      00053D F0               [24] 3328 	movx	@dptr,a
                           0001A6  3329 	C$config.c$92$2$249 ==.
                                   3330 ;	..\AX_Radio_Lab_output\config.c:92: radio_write8(AX5043_REG_TXRATE1        ,                              			0x83);
      00053E 90 41 66         [24] 3331 	mov	dptr,#0x4166
      000541 74 83            [12] 3332 	mov	a,#0x83
      000543 F0               [24] 3333 	movx	@dptr,a
                           0001AC  3334 	C$config.c$93$2$250 ==.
                                   3335 ;	..\AX_Radio_Lab_output\config.c:93: radio_write8(AX5043_REG_TXRATE0        ,                              			0x12);
      000544 90 41 67         [24] 3336 	mov	dptr,#0x4167
      000547 74 12            [12] 3337 	mov	a,#0x12
      000549 F0               [24] 3338 	movx	@dptr,a
                           0001B2  3339 	C$config.c$94$2$251 ==.
                                   3340 ;	..\AX_Radio_Lab_output\config.c:94: radio_write8(AX5043_REG_TXPWRCOEFFB1   ,                              			0x0F);
      00054A 90 41 6A         [24] 3341 	mov	dptr,#0x416a
      00054D 74 0F            [12] 3342 	mov	a,#0x0f
      00054F F0               [24] 3343 	movx	@dptr,a
                           0001B8  3344 	C$config.c$95$2$252 ==.
                                   3345 ;	..\AX_Radio_Lab_output\config.c:95: radio_write8(AX5043_REG_TXPWRCOEFFB0   ,                              			0xFF);
      000550 90 41 6B         [24] 3346 	mov	dptr,#0x416b
      000553 74 FF            [12] 3347 	mov	a,#0xff
      000555 F0               [24] 3348 	movx	@dptr,a
                           0001BE  3349 	C$config.c$96$2$253 ==.
                                   3350 ;	..\AX_Radio_Lab_output\config.c:96: radio_write8(AX5043_REG_PLLVCOI        ,                              			0x98);
      000556 90 41 80         [24] 3351 	mov	dptr,#0x4180
      000559 74 98            [12] 3352 	mov	a,#0x98
      00055B F0               [24] 3353 	movx	@dptr,a
                           0001C4  3354 	C$config.c$97$2$254 ==.
                                   3355 ;	..\AX_Radio_Lab_output\config.c:97: radio_write8(AX5043_REG_PLLRNGCLK      ,                              			0x05);
      00055C 90 41 83         [24] 3356 	mov	dptr,#0x4183
      00055F 74 05            [12] 3357 	mov	a,#0x05
      000561 F0               [24] 3358 	movx	@dptr,a
                           0001CA  3359 	C$config.c$98$2$255 ==.
                                   3360 ;	..\AX_Radio_Lab_output\config.c:98: radio_write8(AX5043_REG_BBTUNE         ,                              			0x03);
      000562 90 41 88         [24] 3361 	mov	dptr,#0x4188
      000565 74 03            [12] 3362 	mov	a,#0x03
      000567 F0               [24] 3363 	movx	@dptr,a
                           0001D0  3364 	C$config.c$99$2$256 ==.
                                   3365 ;	..\AX_Radio_Lab_output\config.c:99: radio_write8(AX5043_REG_BBOFFSCAP      ,                              			0x77);
      000568 90 41 89         [24] 3366 	mov	dptr,#0x4189
      00056B 74 77            [12] 3367 	mov	a,#0x77
      00056D F0               [24] 3368 	movx	@dptr,a
                           0001D6  3369 	C$config.c$100$2$257 ==.
                                   3370 ;	..\AX_Radio_Lab_output\config.c:100: radio_write8(AX5043_REG_PKTADDRCFG     ,                              			0x80);
      00056E 90 42 00         [24] 3371 	mov	dptr,#0x4200
      000571 74 80            [12] 3372 	mov	a,#0x80
      000573 F0               [24] 3373 	movx	@dptr,a
                           0001DC  3374 	C$config.c$101$2$258 ==.
                                   3375 ;	..\AX_Radio_Lab_output\config.c:101: radio_write8(AX5043_REG_PKTLENCFG      ,                              			0x00);
      000574 90 42 01         [24] 3376 	mov	dptr,#0x4201
      000577 E4               [12] 3377 	clr	a
      000578 F0               [24] 3378 	movx	@dptr,a
                           0001E1  3379 	C$config.c$102$2$259 ==.
                                   3380 ;	..\AX_Radio_Lab_output\config.c:102: radio_write8(AX5043_REG_PKTLENOFFSET   ,                              			0x48);
      000579 90 42 02         [24] 3381 	mov	dptr,#0x4202
      00057C 74 48            [12] 3382 	mov	a,#0x48
      00057E F0               [24] 3383 	movx	@dptr,a
                           0001E7  3384 	C$config.c$103$2$260 ==.
                                   3385 ;	..\AX_Radio_Lab_output\config.c:103: radio_write8(AX5043_REG_PKTMAXLEN      ,                              			0xC8);
      00057F 90 42 03         [24] 3386 	mov	dptr,#0x4203
      000582 74 C8            [12] 3387 	mov	a,#0xc8
      000584 F0               [24] 3388 	movx	@dptr,a
                           0001ED  3389 	C$config.c$104$2$261 ==.
                                   3390 ;	..\AX_Radio_Lab_output\config.c:104: radio_write8(AX5043_REG_MATCH0PAT3     ,                              			0xAA);
      000585 90 42 10         [24] 3391 	mov	dptr,#0x4210
      000588 74 AA            [12] 3392 	mov	a,#0xaa
      00058A F0               [24] 3393 	movx	@dptr,a
                           0001F3  3394 	C$config.c$105$2$262 ==.
                                   3395 ;	..\AX_Radio_Lab_output\config.c:105: radio_write8(AX5043_REG_MATCH0PAT2     ,                              			0xCC);
      00058B 90 42 11         [24] 3396 	mov	dptr,#0x4211
      00058E 74 CC            [12] 3397 	mov	a,#0xcc
      000590 F0               [24] 3398 	movx	@dptr,a
                           0001F9  3399 	C$config.c$106$2$263 ==.
                                   3400 ;	..\AX_Radio_Lab_output\config.c:106: radio_write8(AX5043_REG_MATCH0PAT1     ,                              			0xAA);
      000591 90 42 12         [24] 3401 	mov	dptr,#0x4212
      000594 74 AA            [12] 3402 	mov	a,#0xaa
      000596 F0               [24] 3403 	movx	@dptr,a
                           0001FF  3404 	C$config.c$107$2$264 ==.
                                   3405 ;	..\AX_Radio_Lab_output\config.c:107: radio_write8(AX5043_REG_MATCH0PAT0     ,                              			0xCC);
      000597 90 42 13         [24] 3406 	mov	dptr,#0x4213
      00059A 74 CC            [12] 3407 	mov	a,#0xcc
      00059C F0               [24] 3408 	movx	@dptr,a
                           000205  3409 	C$config.c$108$2$265 ==.
                                   3410 ;	..\AX_Radio_Lab_output\config.c:108: radio_write8(AX5043_REG_MATCH1PAT1     ,                              			0x7E);
      00059D 90 42 18         [24] 3411 	mov	dptr,#0x4218
      0005A0 74 7E            [12] 3412 	mov	a,#0x7e
      0005A2 F0               [24] 3413 	movx	@dptr,a
                           00020B  3414 	C$config.c$109$2$266 ==.
                                   3415 ;	..\AX_Radio_Lab_output\config.c:109: radio_write8(AX5043_REG_MATCH1PAT0     ,                              			0x7E);
      0005A3 90 42 19         [24] 3416 	mov	dptr,#0x4219
      0005A6 F0               [24] 3417 	movx	@dptr,a
                           00020F  3418 	C$config.c$110$2$267 ==.
                                   3419 ;	..\AX_Radio_Lab_output\config.c:110: radio_write8(AX5043_REG_MATCH1LEN      ,                              			0x0A);
      0005A7 90 42 1C         [24] 3420 	mov	dptr,#0x421c
      0005AA 74 0A            [12] 3421 	mov	a,#0x0a
      0005AC F0               [24] 3422 	movx	@dptr,a
                           000215  3423 	C$config.c$111$2$268 ==.
                                   3424 ;	..\AX_Radio_Lab_output\config.c:111: radio_write8(AX5043_REG_MATCH1MAX      ,                              			0x0A);
      0005AD 90 42 1E         [24] 3425 	mov	dptr,#0x421e
      0005B0 F0               [24] 3426 	movx	@dptr,a
                           000219  3427 	C$config.c$112$2$269 ==.
                                   3428 ;	..\AX_Radio_Lab_output\config.c:112: radio_write8(AX5043_REG_TMGTXBOOST     ,                              			0x5B);
      0005B1 90 42 20         [24] 3429 	mov	dptr,#0x4220
      0005B4 74 5B            [12] 3430 	mov	a,#0x5b
      0005B6 F0               [24] 3431 	movx	@dptr,a
                           00021F  3432 	C$config.c$113$2$270 ==.
                                   3433 ;	..\AX_Radio_Lab_output\config.c:113: radio_write8(AX5043_REG_TMGTXSETTLE    ,                              			0x3E);
      0005B7 90 42 21         [24] 3434 	mov	dptr,#0x4221
      0005BA 74 3E            [12] 3435 	mov	a,#0x3e
      0005BC F0               [24] 3436 	movx	@dptr,a
                           000225  3437 	C$config.c$114$2$271 ==.
                                   3438 ;	..\AX_Radio_Lab_output\config.c:114: radio_write8(AX5043_REG_TMGRXBOOST     ,                              			0x5B);
      0005BD 90 42 23         [24] 3439 	mov	dptr,#0x4223
      0005C0 74 5B            [12] 3440 	mov	a,#0x5b
      0005C2 F0               [24] 3441 	movx	@dptr,a
                           00022B  3442 	C$config.c$115$2$272 ==.
                                   3443 ;	..\AX_Radio_Lab_output\config.c:115: radio_write8(AX5043_REG_TMGRXSETTLE    ,                              			0x3E);
      0005C3 90 42 24         [24] 3444 	mov	dptr,#0x4224
      0005C6 74 3E            [12] 3445 	mov	a,#0x3e
      0005C8 F0               [24] 3446 	movx	@dptr,a
                           000231  3447 	C$config.c$116$2$273 ==.
                                   3448 ;	..\AX_Radio_Lab_output\config.c:116: radio_write8(AX5043_REG_TMGRXOFFSACQ   ,                              			0x00);
      0005C9 90 42 25         [24] 3449 	mov	dptr,#0x4225
      0005CC E4               [12] 3450 	clr	a
      0005CD F0               [24] 3451 	movx	@dptr,a
                           000236  3452 	C$config.c$117$2$274 ==.
                                   3453 ;	..\AX_Radio_Lab_output\config.c:117: radio_write8(AX5043_REG_TMGRXCOARSEAGC ,                              			0x9C);
      0005CE 90 42 26         [24] 3454 	mov	dptr,#0x4226
      0005D1 74 9C            [12] 3455 	mov	a,#0x9c
      0005D3 F0               [24] 3456 	movx	@dptr,a
                           00023C  3457 	C$config.c$118$2$275 ==.
                                   3458 ;	..\AX_Radio_Lab_output\config.c:118: radio_write8(AX5043_REG_TMGRXRSSI      ,                              			0x03);
      0005D4 90 42 28         [24] 3459 	mov	dptr,#0x4228
      0005D7 74 03            [12] 3460 	mov	a,#0x03
      0005D9 F0               [24] 3461 	movx	@dptr,a
                           000242  3462 	C$config.c$119$2$276 ==.
                                   3463 ;	..\AX_Radio_Lab_output\config.c:119: radio_write8(AX5043_REG_TMGRXPREAMBLE2 ,                              			0x17);
      0005DA 90 42 2A         [24] 3464 	mov	dptr,#0x422a
      0005DD 74 17            [12] 3465 	mov	a,#0x17
      0005DF F0               [24] 3466 	movx	@dptr,a
                           000248  3467 	C$config.c$120$2$277 ==.
                                   3468 ;	..\AX_Radio_Lab_output\config.c:120: radio_write8(AX5043_REG_RSSIABSTHR     ,                              			0xEB);
      0005E0 90 42 2D         [24] 3469 	mov	dptr,#0x422d
      0005E3 74 EB            [12] 3470 	mov	a,#0xeb
      0005E5 F0               [24] 3471 	movx	@dptr,a
                           00024E  3472 	C$config.c$121$2$278 ==.
                                   3473 ;	..\AX_Radio_Lab_output\config.c:121: radio_write8(AX5043_REG_BGNDRSSITHR    ,                              			0x00);
      0005E6 90 42 2F         [24] 3474 	mov	dptr,#0x422f
      0005E9 E4               [12] 3475 	clr	a
      0005EA F0               [24] 3476 	movx	@dptr,a
                           000253  3477 	C$config.c$122$2$279 ==.
                                   3478 ;	..\AX_Radio_Lab_output\config.c:122: radio_write8(AX5043_REG_PKTCHUNKSIZE   ,                              			0x0D);
      0005EB 90 42 30         [24] 3479 	mov	dptr,#0x4230
      0005EE 74 0D            [12] 3480 	mov	a,#0x0d
      0005F0 F0               [24] 3481 	movx	@dptr,a
                           000259  3482 	C$config.c$123$2$280 ==.
                                   3483 ;	..\AX_Radio_Lab_output\config.c:123: radio_write8(AX5043_REG_PKTACCEPTFLAGS ,                              			0x20);
      0005F1 90 42 33         [24] 3484 	mov	dptr,#0x4233
      0005F4 74 20            [12] 3485 	mov	a,#0x20
      0005F6 F0               [24] 3486 	movx	@dptr,a
                           00025F  3487 	C$config.c$124$2$281 ==.
                                   3488 ;	..\AX_Radio_Lab_output\config.c:124: radio_write8(AX5043_REG_DACVALUE1      ,                              			0x00);
      0005F7 90 43 30         [24] 3489 	mov	dptr,#0x4330
      0005FA E4               [12] 3490 	clr	a
      0005FB F0               [24] 3491 	movx	@dptr,a
                           000264  3492 	C$config.c$125$2$282 ==.
                                   3493 ;	..\AX_Radio_Lab_output\config.c:125: radio_write8(AX5043_REG_DACVALUE0      ,                              			0x00);
      0005FC 90 43 31         [24] 3494 	mov	dptr,#0x4331
      0005FF F0               [24] 3495 	movx	@dptr,a
                           000268  3496 	C$config.c$126$2$283 ==.
                                   3497 ;	..\AX_Radio_Lab_output\config.c:126: radio_write8(AX5043_REG_DACCONFIG      ,                              			0x00);
      000600 90 43 32         [24] 3498 	mov	dptr,#0x4332
      000603 F0               [24] 3499 	movx	@dptr,a
                           00026C  3500 	C$config.c$127$2$284 ==.
                                   3501 ;	..\AX_Radio_Lab_output\config.c:127: radio_write8(AX5043_REG_REF            ,                              			0x03);
      000604 90 4F 0D         [24] 3502 	mov	dptr,#0x4f0d
      000607 74 03            [12] 3503 	mov	a,#0x03
      000609 F0               [24] 3504 	movx	@dptr,a
                           000272  3505 	C$config.c$128$2$285 ==.
                                   3506 ;	..\AX_Radio_Lab_output\config.c:128: radio_write8(AX5043_REG_XTALOSC        ,                              			0x04);
      00060A 90 4F 10         [24] 3507 	mov	dptr,#0x4f10
      00060D 04               [12] 3508 	inc	a
      00060E F0               [24] 3509 	movx	@dptr,a
                           000277  3510 	C$config.c$129$2$286 ==.
                                   3511 ;	..\AX_Radio_Lab_output\config.c:129: radio_write8(AX5043_REG_XTALAMPL       ,                              			0x00);
      00060F 90 4F 11         [24] 3512 	mov	dptr,#0x4f11
      000612 E4               [12] 3513 	clr	a
      000613 F0               [24] 3514 	movx	@dptr,a
                           00027C  3515 	C$config.c$130$2$287 ==.
                                   3516 ;	..\AX_Radio_Lab_output\config.c:130: radio_write8(AX5043_REG_0xF1C          ,                              			0x07);
      000614 90 4F 1C         [24] 3517 	mov	dptr,#0x4f1c
      000617 74 07            [12] 3518 	mov	a,#0x07
      000619 F0               [24] 3519 	movx	@dptr,a
                           000282  3520 	C$config.c$131$2$288 ==.
                                   3521 ;	..\AX_Radio_Lab_output\config.c:131: radio_write8(AX5043_REG_0xF21          ,                              			0x68);
      00061A 90 4F 21         [24] 3522 	mov	dptr,#0x4f21
      00061D 74 68            [12] 3523 	mov	a,#0x68
      00061F F0               [24] 3524 	movx	@dptr,a
                           000288  3525 	C$config.c$132$2$289 ==.
                                   3526 ;	..\AX_Radio_Lab_output\config.c:132: radio_write8(AX5043_REG_0xF22          ,                              			0xFF);
      000620 90 4F 22         [24] 3527 	mov	dptr,#0x4f22
      000623 74 FF            [12] 3528 	mov	a,#0xff
      000625 F0               [24] 3529 	movx	@dptr,a
                           00028E  3530 	C$config.c$133$2$290 ==.
                                   3531 ;	..\AX_Radio_Lab_output\config.c:133: radio_write8(AX5043_REG_0xF23          ,                              			0x84);
      000626 90 4F 23         [24] 3532 	mov	dptr,#0x4f23
      000629 74 84            [12] 3533 	mov	a,#0x84
      00062B F0               [24] 3534 	movx	@dptr,a
                           000294  3535 	C$config.c$134$2$291 ==.
                                   3536 ;	..\AX_Radio_Lab_output\config.c:134: radio_write8(AX5043_REG_0xF26          ,                              			0x98);
      00062C 90 4F 26         [24] 3537 	mov	dptr,#0x4f26
      00062F 74 98            [12] 3538 	mov	a,#0x98
      000631 F0               [24] 3539 	movx	@dptr,a
                           00029A  3540 	C$config.c$135$2$292 ==.
                                   3541 ;	..\AX_Radio_Lab_output\config.c:135: radio_write8(AX5043_REG_0xF34          ,                              			0x28);
      000632 90 4F 34         [24] 3542 	mov	dptr,#0x4f34
      000635 74 28            [12] 3543 	mov	a,#0x28
      000637 F0               [24] 3544 	movx	@dptr,a
                           0002A0  3545 	C$config.c$136$2$293 ==.
                                   3546 ;	..\AX_Radio_Lab_output\config.c:136: radio_write8(AX5043_REG_0xF35          ,                              			0x11);
      000638 90 4F 35         [24] 3547 	mov	dptr,#0x4f35
      00063B 74 11            [12] 3548 	mov	a,#0x11
      00063D F0               [24] 3549 	movx	@dptr,a
                           0002A6  3550 	C$config.c$137$2$294 ==.
                                   3551 ;	..\AX_Radio_Lab_output\config.c:137: radio_write8(AX5043_REG_0xF44          ,                              			0x25);
      00063E 90 4F 44         [24] 3552 	mov	dptr,#0x4f44
      000641 74 25            [12] 3553 	mov	a,#0x25
      000643 F0               [24] 3554 	movx	@dptr,a
                           0002AC  3555 	C$config.c$138$1$170 ==.
                           0002AC  3556 	XG$ax5043_set_registers$0$0 ==.
      000644 22               [24] 3557 	ret
                                   3558 ;------------------------------------------------------------
                                   3559 ;Allocation info for local variables in function 'ax5043_set_registers_tx'
                                   3560 ;------------------------------------------------------------
                           0002AD  3561 	G$ax5043_set_registers_tx$0$0 ==.
                           0002AD  3562 	C$config.c$141$1$170 ==.
                                   3563 ;	..\AX_Radio_Lab_output\config.c:141: __reentrantb void ax5043_set_registers_tx(void) __reentrant
                                   3564 ;	-----------------------------------------
                                   3565 ;	 function ax5043_set_registers_tx
                                   3566 ;	-----------------------------------------
      000645                       3567 _ax5043_set_registers_tx:
                           0002AD  3568 	C$config.c$143$2$297 ==.
                                   3569 ;	..\AX_Radio_Lab_output\config.c:143: radio_write8(AX5043_REG_PLLLOOP        ,                              			0x09);
      000645 90 40 30         [24] 3570 	mov	dptr,#0x4030
      000648 74 09            [12] 3571 	mov	a,#0x09
      00064A F0               [24] 3572 	movx	@dptr,a
                           0002B3  3573 	C$config.c$144$2$298 ==.
                                   3574 ;	..\AX_Radio_Lab_output\config.c:144: radio_write8(AX5043_REG_PLLCPI         ,                              			0x02);
      00064B 90 40 31         [24] 3575 	mov	dptr,#0x4031
      00064E 74 02            [12] 3576 	mov	a,#0x02
      000650 F0               [24] 3577 	movx	@dptr,a
                           0002B9  3578 	C$config.c$145$2$299 ==.
                                   3579 ;	..\AX_Radio_Lab_output\config.c:145: radio_write8(AX5043_REG_PLLVCODIV      ,                              			0x24);
      000651 90 40 32         [24] 3580 	mov	dptr,#0x4032
      000654 74 24            [12] 3581 	mov	a,#0x24
      000656 F0               [24] 3582 	movx	@dptr,a
                           0002BF  3583 	C$config.c$146$2$300 ==.
                                   3584 ;	..\AX_Radio_Lab_output\config.c:146: radio_write8(AX5043_REG_XTALCAP        ,                              			0x00);
      000657 90 41 84         [24] 3585 	mov	dptr,#0x4184
      00065A E4               [12] 3586 	clr	a
      00065B F0               [24] 3587 	movx	@dptr,a
                           0002C4  3588 	C$config.c$147$2$301 ==.
                                   3589 ;	..\AX_Radio_Lab_output\config.c:147: radio_write8(AX5043_REG_0xF00          ,                              			0x0F);
      00065C 90 4F 00         [24] 3590 	mov	dptr,#0x4f00
      00065F 74 0F            [12] 3591 	mov	a,#0x0f
      000661 F0               [24] 3592 	movx	@dptr,a
                           0002CA  3593 	C$config.c$148$2$302 ==.
                                   3594 ;	..\AX_Radio_Lab_output\config.c:148: radio_write8(AX5043_REG_0xF18          ,                              			0x06);
      000662 90 4F 18         [24] 3595 	mov	dptr,#0x4f18
      000665 74 06            [12] 3596 	mov	a,#0x06
      000667 F0               [24] 3597 	movx	@dptr,a
                           0002D0  3598 	C$config.c$149$1$296 ==.
                           0002D0  3599 	XG$ax5043_set_registers_tx$0$0 ==.
      000668 22               [24] 3600 	ret
                                   3601 ;------------------------------------------------------------
                                   3602 ;Allocation info for local variables in function 'ax5043_set_registers_rx'
                                   3603 ;------------------------------------------------------------
                           0002D1  3604 	G$ax5043_set_registers_rx$0$0 ==.
                           0002D1  3605 	C$config.c$152$1$296 ==.
                                   3606 ;	..\AX_Radio_Lab_output\config.c:152: __reentrantb void ax5043_set_registers_rx(void) __reentrant
                                   3607 ;	-----------------------------------------
                                   3608 ;	 function ax5043_set_registers_rx
                                   3609 ;	-----------------------------------------
      000669                       3610 _ax5043_set_registers_rx:
                           0002D1  3611 	C$config.c$154$2$305 ==.
                                   3612 ;	..\AX_Radio_Lab_output\config.c:154: radio_write8(AX5043_REG_PLLLOOP        ,                              			0x09);
      000669 90 40 30         [24] 3613 	mov	dptr,#0x4030
      00066C 74 09            [12] 3614 	mov	a,#0x09
      00066E F0               [24] 3615 	movx	@dptr,a
                           0002D7  3616 	C$config.c$155$2$306 ==.
                                   3617 ;	..\AX_Radio_Lab_output\config.c:155: radio_write8(AX5043_REG_PLLCPI         ,                              			0x01);
      00066F 90 40 31         [24] 3618 	mov	dptr,#0x4031
      000672 74 01            [12] 3619 	mov	a,#0x01
      000674 F0               [24] 3620 	movx	@dptr,a
                           0002DD  3621 	C$config.c$156$2$307 ==.
                                   3622 ;	..\AX_Radio_Lab_output\config.c:156: radio_write8(AX5043_REG_PLLVCODIV      ,                              			0x25);
      000675 90 40 32         [24] 3623 	mov	dptr,#0x4032
      000678 74 25            [12] 3624 	mov	a,#0x25
      00067A F0               [24] 3625 	movx	@dptr,a
                           0002E3  3626 	C$config.c$157$2$308 ==.
                                   3627 ;	..\AX_Radio_Lab_output\config.c:157: radio_write8(AX5043_REG_XTALCAP        ,                              			0x00);
      00067B 90 41 84         [24] 3628 	mov	dptr,#0x4184
      00067E E4               [12] 3629 	clr	a
      00067F F0               [24] 3630 	movx	@dptr,a
                           0002E8  3631 	C$config.c$158$2$309 ==.
                                   3632 ;	..\AX_Radio_Lab_output\config.c:158: radio_write8(AX5043_REG_0xF00          ,                              			0x0F);
      000680 90 4F 00         [24] 3633 	mov	dptr,#0x4f00
      000683 74 0F            [12] 3634 	mov	a,#0x0f
      000685 F0               [24] 3635 	movx	@dptr,a
                           0002EE  3636 	C$config.c$159$2$310 ==.
                                   3637 ;	..\AX_Radio_Lab_output\config.c:159: radio_write8(AX5043_REG_0xF18          ,                              			0x02);
      000686 90 4F 18         [24] 3638 	mov	dptr,#0x4f18
      000689 74 02            [12] 3639 	mov	a,#0x02
      00068B F0               [24] 3640 	movx	@dptr,a
                           0002F4  3641 	C$config.c$160$1$304 ==.
                           0002F4  3642 	XG$ax5043_set_registers_rx$0$0 ==.
      00068C 22               [24] 3643 	ret
                                   3644 ;------------------------------------------------------------
                                   3645 ;Allocation info for local variables in function 'ax5043_set_registers_rxwor'
                                   3646 ;------------------------------------------------------------
                           0002F5  3647 	G$ax5043_set_registers_rxwor$0$0 ==.
                           0002F5  3648 	C$config.c$163$1$304 ==.
                                   3649 ;	..\AX_Radio_Lab_output\config.c:163: __reentrantb void ax5043_set_registers_rxwor(void) __reentrant
                                   3650 ;	-----------------------------------------
                                   3651 ;	 function ax5043_set_registers_rxwor
                                   3652 ;	-----------------------------------------
      00068D                       3653 _ax5043_set_registers_rxwor:
                           0002F5  3654 	C$config.c$165$2$313 ==.
                                   3655 ;	..\AX_Radio_Lab_output\config.c:165: radio_write8(AX5043_REG_TMGRXAGC,                 0x11);
      00068D 90 42 27         [24] 3656 	mov	dptr,#0x4227
      000690 74 11            [12] 3657 	mov	a,#0x11
      000692 F0               [24] 3658 	movx	@dptr,a
                           0002FB  3659 	C$config.c$166$2$314 ==.
                                   3660 ;	..\AX_Radio_Lab_output\config.c:166: radio_write8(AX5043_REG_TMGRXPREAMBLE1,           0x19);
      000693 90 42 29         [24] 3661 	mov	dptr,#0x4229
      000696 74 19            [12] 3662 	mov	a,#0x19
      000698 F0               [24] 3663 	movx	@dptr,a
                           000301  3664 	C$config.c$167$2$315 ==.
                                   3665 ;	..\AX_Radio_Lab_output\config.c:167: radio_write8(AX5043_REG_PKTMISCFLAGS,             0x03);
      000699 90 42 31         [24] 3666 	mov	dptr,#0x4231
      00069C 74 03            [12] 3667 	mov	a,#0x03
      00069E F0               [24] 3668 	movx	@dptr,a
                           000307  3669 	C$config.c$168$1$312 ==.
                           000307  3670 	XG$ax5043_set_registers_rxwor$0$0 ==.
      00069F 22               [24] 3671 	ret
                                   3672 ;------------------------------------------------------------
                                   3673 ;Allocation info for local variables in function 'ax5043_set_registers_rxcont'
                                   3674 ;------------------------------------------------------------
                           000308  3675 	G$ax5043_set_registers_rxcont$0$0 ==.
                           000308  3676 	C$config.c$171$1$312 ==.
                                   3677 ;	..\AX_Radio_Lab_output\config.c:171: __reentrantb void ax5043_set_registers_rxcont(void) __reentrant
                                   3678 ;	-----------------------------------------
                                   3679 ;	 function ax5043_set_registers_rxcont
                                   3680 ;	-----------------------------------------
      0006A0                       3681 _ax5043_set_registers_rxcont:
                           000308  3682 	C$config.c$173$2$318 ==.
                                   3683 ;	..\AX_Radio_Lab_output\config.c:173: radio_write8(AX5043_REG_TMGRXAGC,                 0x00);
      0006A0 90 42 27         [24] 3684 	mov	dptr,#0x4227
      0006A3 E4               [12] 3685 	clr	a
      0006A4 F0               [24] 3686 	movx	@dptr,a
                           00030D  3687 	C$config.c$174$2$319 ==.
                                   3688 ;	..\AX_Radio_Lab_output\config.c:174: radio_write8(AX5043_REG_TMGRXPREAMBLE1,           0x00);
      0006A5 90 42 29         [24] 3689 	mov	dptr,#0x4229
      0006A8 F0               [24] 3690 	movx	@dptr,a
                           000311  3691 	C$config.c$175$2$320 ==.
                                   3692 ;	..\AX_Radio_Lab_output\config.c:175: radio_write8(AX5043_REG_PKTMISCFLAGS,             0x00);
      0006A9 90 42 31         [24] 3693 	mov	dptr,#0x4231
      0006AC F0               [24] 3694 	movx	@dptr,a
                           000315  3695 	C$config.c$176$1$317 ==.
                           000315  3696 	XG$ax5043_set_registers_rxcont$0$0 ==.
      0006AD 22               [24] 3697 	ret
                                   3698 ;------------------------------------------------------------
                                   3699 ;Allocation info for local variables in function 'ax5043_set_registers_rxcont_singleparamset'
                                   3700 ;------------------------------------------------------------
                           000316  3701 	G$ax5043_set_registers_rxcont_singleparamset$0$0 ==.
                           000316  3702 	C$config.c$179$1$317 ==.
                                   3703 ;	..\AX_Radio_Lab_output\config.c:179: __reentrantb void ax5043_set_registers_rxcont_singleparamset(void) __reentrant
                                   3704 ;	-----------------------------------------
                                   3705 ;	 function ax5043_set_registers_rxcont_singleparamset
                                   3706 ;	-----------------------------------------
      0006AE                       3707 _ax5043_set_registers_rxcont_singleparamset:
                           000316  3708 	C$config.c$181$2$323 ==.
                                   3709 ;	..\AX_Radio_Lab_output\config.c:181: radio_write8(AX5043_REG_RXPARAMSETS,              0xFF);
      0006AE 90 41 17         [24] 3710 	mov	dptr,#0x4117
      0006B1 74 FF            [12] 3711 	mov	a,#0xff
      0006B3 F0               [24] 3712 	movx	@dptr,a
                           00031C  3713 	C$config.c$182$2$324 ==.
                                   3714 ;	..\AX_Radio_Lab_output\config.c:182: radio_write8(AX5043_REG_FREQDEV13,                0x00);
      0006B4 90 41 5C         [24] 3715 	mov	dptr,#0x415c
      0006B7 E4               [12] 3716 	clr	a
      0006B8 F0               [24] 3717 	movx	@dptr,a
                           000321  3718 	C$config.c$183$2$325 ==.
                                   3719 ;	..\AX_Radio_Lab_output\config.c:183: radio_write8(AX5043_REG_FREQDEV03,                0x00);
      0006B9 90 41 5D         [24] 3720 	mov	dptr,#0x415d
      0006BC F0               [24] 3721 	movx	@dptr,a
                           000325  3722 	C$config.c$184$2$326 ==.
                                   3723 ;	..\AX_Radio_Lab_output\config.c:184: radio_write8(AX5043_REG_AGCGAIN3,                 0xA5);
      0006BD 90 41 50         [24] 3724 	mov	dptr,#0x4150
      0006C0 74 A5            [12] 3725 	mov	a,#0xa5
      0006C2 F0               [24] 3726 	movx	@dptr,a
                           00032B  3727 	C$config.c$185$1$322 ==.
                           00032B  3728 	XG$ax5043_set_registers_rxcont_singleparamset$0$0 ==.
      0006C3 22               [24] 3729 	ret
                                   3730 ;------------------------------------------------------------
                                   3731 ;Allocation info for local variables in function 'axradio_setup_pincfg1'
                                   3732 ;------------------------------------------------------------
                           00032C  3733 	G$axradio_setup_pincfg1$0$0 ==.
                           00032C  3734 	C$config.c$189$1$322 ==.
                                   3735 ;	..\AX_Radio_Lab_output\config.c:189: __reentrantb void axradio_setup_pincfg1(void) __reentrant
                                   3736 ;	-----------------------------------------
                                   3737 ;	 function axradio_setup_pincfg1
                                   3738 ;	-----------------------------------------
      0006C4                       3739 _axradio_setup_pincfg1:
                           00032C  3740 	C$config.c$194$1$328 ==.
                                   3741 ;	..\AX_Radio_Lab_output\config.c:194: PALTRADIO = 0x00; //pass through  
      0006C4 90 70 46         [24] 3742 	mov	dptr,#_PALTRADIO
      0006C7 E4               [12] 3743 	clr	a
      0006C8 F0               [24] 3744 	movx	@dptr,a
                           000331  3745 	C$config.c$197$1$328 ==.
                           000331  3746 	XG$axradio_setup_pincfg1$0$0 ==.
      0006C9 22               [24] 3747 	ret
                                   3748 ;------------------------------------------------------------
                                   3749 ;Allocation info for local variables in function 'axradio_setup_pincfg2'
                                   3750 ;------------------------------------------------------------
                           000332  3751 	G$axradio_setup_pincfg2$0$0 ==.
                           000332  3752 	C$config.c$199$1$328 ==.
                                   3753 ;	..\AX_Radio_Lab_output\config.c:199: __reentrantb void axradio_setup_pincfg2(void) __reentrant
                                   3754 ;	-----------------------------------------
                                   3755 ;	 function axradio_setup_pincfg2
                                   3756 ;	-----------------------------------------
      0006CA                       3757 _axradio_setup_pincfg2:
                           000332  3758 	C$config.c$204$1$330 ==.
                                   3759 ;	..\AX_Radio_Lab_output\config.c:204: PORTR = (PORTR & 0x3F) | 0xc0; //AX8052F100 --> pull-ups on PR6, PR7
      0006CA 74 3F            [12] 3760 	mov	a,#0x3f
      0006CC 55 8C            [12] 3761 	anl	a,_PORTR
      0006CE 44 C0            [12] 3762 	orl	a,#0xc0
      0006D0 F5 8C            [12] 3763 	mov	_PORTR,a
                           00033A  3764 	C$config.c$207$1$330 ==.
                           00033A  3765 	XG$axradio_setup_pincfg2$0$0 ==.
      0006D2 22               [24] 3766 	ret
                                   3767 ;------------------------------------------------------------
                                   3768 ;Allocation info for local variables in function 'axradio_conv_freq_fromhz'
                                   3769 ;------------------------------------------------------------
                                   3770 ;f                         Allocated to registers 
                                   3771 ;------------------------------------------------------------
                           00033B  3772 	G$axradio_conv_freq_fromhz$0$0 ==.
                           00033B  3773 	C$config.c$612$1$330 ==.
                                   3774 ;	..\AX_Radio_Lab_output\config.c:612: int32_t axradio_conv_freq_fromhz(int32_t f)
                                   3775 ;	-----------------------------------------
                                   3776 ;	 function axradio_conv_freq_fromhz
                                   3777 ;	-----------------------------------------
      0006D3                       3778 _axradio_conv_freq_fromhz:
                           00033B  3779 	C$config.c$618$1$332 ==.
                                   3780 ;	..\AX_Radio_Lab_output\config.c:618: CONSTMULFIX24(0x597a7e);
      0006D3 A8 82            [24] 3781 	mov r0,dpl 
      0006D5 A9 83            [24] 3782 	mov r1,dph 
      0006D7 AA F0            [24] 3783 	mov r2,b 
      0006D9 FB               [12] 3784 	mov r3,a 
      0006DA C0 E0            [24] 3785 	push acc 
      0006DC 30 E7 0D         [24] 3786 	jnb acc.7,00000$ 
      0006DF C3               [12] 3787 	clr c 
      0006E0 E4               [12] 3788 	clr a 
      0006E1 98               [12] 3789 	subb a,r0 
      0006E2 F8               [12] 3790 	mov r0,a 
      0006E3 E4               [12] 3791 	clr a 
      0006E4 99               [12] 3792 	subb a,r1 
      0006E5 F9               [12] 3793 	mov r1,a 
      0006E6 E4               [12] 3794 	clr a 
      0006E7 9A               [12] 3795 	subb a,r2 
      0006E8 FA               [12] 3796 	mov r2,a 
      0006E9 E4               [12] 3797 	clr a 
      0006EA 9B               [12] 3798 	subb a,r3 
      0006EB FB               [12] 3799 	mov r3,a 
      0006EC                       3800 	 00000$:
      0006EC E4               [12] 3801 	clr a 
      0006ED FC               [12] 3802 	mov r4,a 
      0006EE FD               [12] 3803 	mov r5,a 
      0006EF FE               [12] 3804 	mov r6,a 
      0006F0 FF               [12] 3805 	mov r7,a 
                                   3806 ;; stage -1 
                           000001  3807 	.if (((0x597a7e)>>16)&0xff) 
      0006F1 74 59            [12] 3808 	mov a,# (((0x597a7e)>>16)&0xff) 
      0006F3 88 F0            [24] 3809 	mov b,r0 
      0006F5 A4               [48] 3810 	mul ab 
      0006F6 FF               [12] 3811 	mov r7,a 
      0006F7 AC F0            [24] 3812 	mov r4,b 
                                   3813 	.endif 
                           000001  3814 	.if (((0x597a7e)>>8)&0xff) 
      0006F9 74 7A            [12] 3815 	mov a,# (((0x597a7e)>>8)&0xff) 
      0006FB 89 F0            [24] 3816 	mov b,r1 
      0006FD A4               [48] 3817 	mul ab 
                           000001  3818 	.if (((0x597a7e)>>16)&0xff) 
      0006FE 2F               [12] 3819 	add a,r7 
      0006FF FF               [12] 3820 	mov r7,a 
      000700 E5 F0            [12] 3821 	mov a,b 
      000702 3C               [12] 3822 	addc a,r4 
      000703 FC               [12] 3823 	mov r4,a 
      000704 E4               [12] 3824 	clr a 
      000705 3D               [12] 3825 	addc a,r5 
      000706 FD               [12] 3826 	mov r5,a 
                           000000  3827 	.else 
                                   3828 	mov r7,a 
                                   3829 	mov r4,b 
                                   3830 	.endif 
                                   3831 	.endif 
                           000001  3832 	.if ((0x597a7e)&0xff) 
      000707 74 7E            [12] 3833 	mov a,# ((0x597a7e)&0xff) 
      000709 8A F0            [24] 3834 	mov b,r2 
      00070B A4               [48] 3835 	mul ab 
                           000001  3836 	.if (((0x597a7e)>>8)&0xffff) 
      00070C 2F               [12] 3837 	add a,r7 
      00070D FF               [12] 3838 	mov r7,a 
      00070E E5 F0            [12] 3839 	mov a,b 
      000710 3C               [12] 3840 	addc a,r4 
      000711 FC               [12] 3841 	mov r4,a 
      000712 E4               [12] 3842 	clr a 
      000713 3D               [12] 3843 	addc a,r5 
      000714 FD               [12] 3844 	mov r5,a 
                           000000  3845 	.else 
                                   3846 	mov r7,a 
                                   3847 	mov r4,b 
                                   3848 	.endif 
                                   3849 	.endif 
                                   3850 ;; clear precision extension 
      000715 E4               [12] 3851 	clr a 
      000716 FF               [12] 3852 	mov r7,a 
                                   3853 ;; stage 0 
                           000000  3854 	.if (((0x597a7e)>>24)&0xff) 
                                   3855 	mov a,# (((0x597a7e)>>24)&0xff) 
                                   3856 	mov b,r0 
                                   3857 	mul ab 
                                   3858 	add a,r4 
                                   3859 	mov r4,a 
                                   3860 	mov a,b 
                                   3861 	addc a,r5 
                                   3862 	mov r5,a 
                                   3863 	clr a 
                                   3864 	addc a,r6 
                                   3865 	mov r6,a 
                                   3866 	.endif 
                           000001  3867 	.if (((0x597a7e)>>16)&0xff) 
      000717 74 59            [12] 3868 	mov a,# (((0x597a7e)>>16)&0xff) 
      000719 89 F0            [24] 3869 	mov b,r1 
      00071B A4               [48] 3870 	mul ab 
      00071C 2C               [12] 3871 	add a,r4 
      00071D FC               [12] 3872 	mov r4,a 
      00071E E5 F0            [12] 3873 	mov a,b 
      000720 3D               [12] 3874 	addc a,r5 
      000721 FD               [12] 3875 	mov r5,a 
      000722 E4               [12] 3876 	clr a 
      000723 3E               [12] 3877 	addc a,r6 
      000724 FE               [12] 3878 	mov r6,a 
                                   3879 	.endif 
                           000001  3880 	.if (((0x597a7e)>>8)&0xff) 
      000725 74 7A            [12] 3881 	mov a,# (((0x597a7e)>>8)&0xff) 
      000727 8A F0            [24] 3882 	mov b,r2 
      000729 A4               [48] 3883 	mul ab 
      00072A 2C               [12] 3884 	add a,r4 
      00072B FC               [12] 3885 	mov r4,a 
      00072C E5 F0            [12] 3886 	mov a,b 
      00072E 3D               [12] 3887 	addc a,r5 
      00072F FD               [12] 3888 	mov r5,a 
      000730 E4               [12] 3889 	clr a 
      000731 3E               [12] 3890 	addc a,r6 
      000732 FE               [12] 3891 	mov r6,a 
                                   3892 	.endif 
                           000001  3893 	.if ((0x597a7e)&0xff) 
      000733 74 7E            [12] 3894 	mov a,# ((0x597a7e)&0xff) 
      000735 8B F0            [24] 3895 	mov b,r3 
      000737 A4               [48] 3896 	mul ab 
      000738 2C               [12] 3897 	add a,r4 
      000739 FC               [12] 3898 	mov r4,a 
      00073A E5 F0            [12] 3899 	mov a,b 
      00073C 3D               [12] 3900 	addc a,r5 
      00073D FD               [12] 3901 	mov r5,a 
      00073E E4               [12] 3902 	clr a 
      00073F 3E               [12] 3903 	addc a,r6 
      000740 FE               [12] 3904 	mov r6,a 
                                   3905 	.endif 
                                   3906 ;; stage 1 
                           000000  3907 	.if (((0x597a7e)>>24)&0xff) 
                                   3908 	mov a,# (((0x597a7e)>>24)&0xff) 
                                   3909 	mov b,r1 
                                   3910 	mul ab 
                                   3911 	add a,r5 
                                   3912 	mov r5,a 
                                   3913 	mov a,b 
                                   3914 	addc a,r6 
                                   3915 	mov r6,a 
                                   3916 	clr a 
                                   3917 	addc a,r7 
                                   3918 	mov r7,a 
                                   3919 	.endif 
                           000001  3920 	.if (((0x597a7e)>>16)&0xff) 
      000741 74 59            [12] 3921 	mov a,# (((0x597a7e)>>16)&0xff) 
      000743 8A F0            [24] 3922 	mov b,r2 
      000745 A4               [48] 3923 	mul ab 
      000746 2D               [12] 3924 	add a,r5 
      000747 FD               [12] 3925 	mov r5,a 
      000748 E5 F0            [12] 3926 	mov a,b 
      00074A 3E               [12] 3927 	addc a,r6 
      00074B FE               [12] 3928 	mov r6,a 
      00074C E4               [12] 3929 	clr a 
      00074D 3F               [12] 3930 	addc a,r7 
      00074E FF               [12] 3931 	mov r7,a 
                                   3932 	.endif 
                           000001  3933 	.if (((0x597a7e)>>8)&0xff) 
      00074F 74 7A            [12] 3934 	mov a,# (((0x597a7e)>>8)&0xff) 
      000751 8B F0            [24] 3935 	mov b,r3 
      000753 A4               [48] 3936 	mul ab 
      000754 2D               [12] 3937 	add a,r5 
      000755 FD               [12] 3938 	mov r5,a 
      000756 E5 F0            [12] 3939 	mov a,b 
      000758 3E               [12] 3940 	addc a,r6 
      000759 FE               [12] 3941 	mov r6,a 
      00075A E4               [12] 3942 	clr a 
      00075B 3F               [12] 3943 	addc a,r7 
      00075C FF               [12] 3944 	mov r7,a 
                                   3945 	.endif 
                                   3946 ;; stage 2 
                           000000  3947 	.if (((0x597a7e)>>24)&0xff) 
                                   3948 	mov a,# (((0x597a7e)>>24)&0xff) 
                                   3949 	mov b,r2 
                                   3950 	mul ab 
                                   3951 	add a,r6 
                                   3952 	mov r6,a 
                                   3953 	mov a,b 
                                   3954 	addc a,r7 
                                   3955 	mov r7,a 
                                   3956 	.endif 
                           000001  3957 	.if (((0x597a7e)>>16)&0xff) 
      00075D 74 59            [12] 3958 	mov a,# (((0x597a7e)>>16)&0xff) 
      00075F 8B F0            [24] 3959 	mov b,r3 
      000761 A4               [48] 3960 	mul ab 
      000762 2E               [12] 3961 	add a,r6 
      000763 FE               [12] 3962 	mov r6,a 
      000764 E5 F0            [12] 3963 	mov a,b 
      000766 3F               [12] 3964 	addc a,r7 
      000767 FF               [12] 3965 	mov r7,a 
                                   3966 	.endif 
                                   3967 ;; stage 3 
                           000000  3968 	.if (((0x597a7e)>>24)&0xff) 
                                   3969 	mov a,# (((0x597a7e)>>24)&0xff) 
                                   3970 	mov b,r3 
                                   3971 	mul ab 
                                   3972 	add a,r7 
                                   3973 	mov r7,a 
                                   3974 	.endif 
      000768 D0 E0            [24] 3975 	pop acc 
      00076A 30 E7 11         [24] 3976 	jnb acc.7,00001$ 
      00076D C3               [12] 3977 	clr c 
      00076E E4               [12] 3978 	clr a 
      00076F 9C               [12] 3979 	subb a,r4 
      000770 F5 82            [12] 3980 	mov dpl,a 
      000772 E4               [12] 3981 	clr a 
      000773 9D               [12] 3982 	subb a,r5 
      000774 F5 83            [12] 3983 	mov dph,a 
      000776 E4               [12] 3984 	clr a 
      000777 9E               [12] 3985 	subb a,r6 
      000778 F5 F0            [12] 3986 	mov b,a 
      00077A E4               [12] 3987 	clr a 
      00077B 9F               [12] 3988 	subb a,r7 
      00077C 80 07            [24] 3989 	sjmp 00002$ 
      00077E                       3990 	 00001$:
      00077E 8C 82            [24] 3991 	mov dpl,r4 
      000780 8D 83            [24] 3992 	mov dph,r5 
      000782 8E F0            [24] 3993 	mov b,r6 
      000784 EF               [12] 3994 	mov a,r7 
      000785                       3995 	 00002$:
                           0003ED  3996 	C$config.c$619$1$332 ==.
                           0003ED  3997 	XG$axradio_conv_freq_fromhz$0$0 ==.
      000785 22               [24] 3998 	ret
                                   3999 ;------------------------------------------------------------
                                   4000 ;Allocation info for local variables in function 'axradio_conv_freq_tohz'
                                   4001 ;------------------------------------------------------------
                                   4002 ;f                         Allocated to registers 
                                   4003 ;------------------------------------------------------------
                           0003EE  4004 	G$axradio_conv_freq_tohz$0$0 ==.
                           0003EE  4005 	C$config.c$624$1$332 ==.
                                   4006 ;	..\AX_Radio_Lab_output\config.c:624: int32_t axradio_conv_freq_tohz(int32_t f)
                                   4007 ;	-----------------------------------------
                                   4008 ;	 function axradio_conv_freq_tohz
                                   4009 ;	-----------------------------------------
      000786                       4010 _axradio_conv_freq_tohz:
                           0003EE  4011 	C$config.c$630$1$334 ==.
                                   4012 ;	..\AX_Radio_Lab_output\config.c:630: CONSTMULFIX24(0x2dc6c00);
      000786 A8 82            [24] 4013 	mov r0,dpl 
      000788 A9 83            [24] 4014 	mov r1,dph 
      00078A AA F0            [24] 4015 	mov r2,b 
      00078C FB               [12] 4016 	mov r3,a 
      00078D C0 E0            [24] 4017 	push acc 
      00078F 30 E7 0D         [24] 4018 	jnb acc.7,00000$ 
      000792 C3               [12] 4019 	clr c 
      000793 E4               [12] 4020 	clr a 
      000794 98               [12] 4021 	subb a,r0 
      000795 F8               [12] 4022 	mov r0,a 
      000796 E4               [12] 4023 	clr a 
      000797 99               [12] 4024 	subb a,r1 
      000798 F9               [12] 4025 	mov r1,a 
      000799 E4               [12] 4026 	clr a 
      00079A 9A               [12] 4027 	subb a,r2 
      00079B FA               [12] 4028 	mov r2,a 
      00079C E4               [12] 4029 	clr a 
      00079D 9B               [12] 4030 	subb a,r3 
      00079E FB               [12] 4031 	mov r3,a 
      00079F                       4032 	 00000$:
      00079F E4               [12] 4033 	clr a 
      0007A0 FC               [12] 4034 	mov r4,a 
      0007A1 FD               [12] 4035 	mov r5,a 
      0007A2 FE               [12] 4036 	mov r6,a 
      0007A3 FF               [12] 4037 	mov r7,a 
                                   4038 ;; stage -1 
                           000001  4039 	.if (((0x2dc6c00)>>16)&0xff) 
      0007A4 74 DC            [12] 4040 	mov a,# (((0x2dc6c00)>>16)&0xff) 
      0007A6 88 F0            [24] 4041 	mov b,r0 
      0007A8 A4               [48] 4042 	mul ab 
      0007A9 FF               [12] 4043 	mov r7,a 
      0007AA AC F0            [24] 4044 	mov r4,b 
                                   4045 	.endif 
                           000001  4046 	.if (((0x2dc6c00)>>8)&0xff) 
      0007AC 74 6C            [12] 4047 	mov a,# (((0x2dc6c00)>>8)&0xff) 
      0007AE 89 F0            [24] 4048 	mov b,r1 
      0007B0 A4               [48] 4049 	mul ab 
                           000001  4050 	.if (((0x2dc6c00)>>16)&0xff) 
      0007B1 2F               [12] 4051 	add a,r7 
      0007B2 FF               [12] 4052 	mov r7,a 
      0007B3 E5 F0            [12] 4053 	mov a,b 
      0007B5 3C               [12] 4054 	addc a,r4 
      0007B6 FC               [12] 4055 	mov r4,a 
      0007B7 E4               [12] 4056 	clr a 
      0007B8 3D               [12] 4057 	addc a,r5 
      0007B9 FD               [12] 4058 	mov r5,a 
                           000000  4059 	.else 
                                   4060 	mov r7,a 
                                   4061 	mov r4,b 
                                   4062 	.endif 
                                   4063 	.endif 
                           000000  4064 	.if ((0x2dc6c00)&0xff) 
                                   4065 	mov a,# ((0x2dc6c00)&0xff) 
                                   4066 	mov b,r2 
                                   4067 	mul ab 
                                   4068 	.if (((0x2dc6c00)>>8)&0xffff) 
                                   4069 	add a,r7 
                                   4070 	mov r7,a 
                                   4071 	mov a,b 
                                   4072 	addc a,r4 
                                   4073 	mov r4,a 
                                   4074 	clr a 
                                   4075 	addc a,r5 
                                   4076 	mov r5,a 
                                   4077 	.else 
                                   4078 	mov r7,a 
                                   4079 	mov r4,b 
                                   4080 	.endif 
                                   4081 	.endif 
                                   4082 ;; clear precision extension 
      0007BA E4               [12] 4083 	clr a 
      0007BB FF               [12] 4084 	mov r7,a 
                                   4085 ;; stage 0 
                           000001  4086 	.if (((0x2dc6c00)>>24)&0xff) 
      0007BC 74 02            [12] 4087 	mov a,# (((0x2dc6c00)>>24)&0xff) 
      0007BE 88 F0            [24] 4088 	mov b,r0 
      0007C0 A4               [48] 4089 	mul ab 
      0007C1 2C               [12] 4090 	add a,r4 
      0007C2 FC               [12] 4091 	mov r4,a 
      0007C3 E5 F0            [12] 4092 	mov a,b 
      0007C5 3D               [12] 4093 	addc a,r5 
      0007C6 FD               [12] 4094 	mov r5,a 
      0007C7 E4               [12] 4095 	clr a 
      0007C8 3E               [12] 4096 	addc a,r6 
      0007C9 FE               [12] 4097 	mov r6,a 
                                   4098 	.endif 
                           000001  4099 	.if (((0x2dc6c00)>>16)&0xff) 
      0007CA 74 DC            [12] 4100 	mov a,# (((0x2dc6c00)>>16)&0xff) 
      0007CC 89 F0            [24] 4101 	mov b,r1 
      0007CE A4               [48] 4102 	mul ab 
      0007CF 2C               [12] 4103 	add a,r4 
      0007D0 FC               [12] 4104 	mov r4,a 
      0007D1 E5 F0            [12] 4105 	mov a,b 
      0007D3 3D               [12] 4106 	addc a,r5 
      0007D4 FD               [12] 4107 	mov r5,a 
      0007D5 E4               [12] 4108 	clr a 
      0007D6 3E               [12] 4109 	addc a,r6 
      0007D7 FE               [12] 4110 	mov r6,a 
                                   4111 	.endif 
                           000001  4112 	.if (((0x2dc6c00)>>8)&0xff) 
      0007D8 74 6C            [12] 4113 	mov a,# (((0x2dc6c00)>>8)&0xff) 
      0007DA 8A F0            [24] 4114 	mov b,r2 
      0007DC A4               [48] 4115 	mul ab 
      0007DD 2C               [12] 4116 	add a,r4 
      0007DE FC               [12] 4117 	mov r4,a 
      0007DF E5 F0            [12] 4118 	mov a,b 
      0007E1 3D               [12] 4119 	addc a,r5 
      0007E2 FD               [12] 4120 	mov r5,a 
      0007E3 E4               [12] 4121 	clr a 
      0007E4 3E               [12] 4122 	addc a,r6 
      0007E5 FE               [12] 4123 	mov r6,a 
                                   4124 	.endif 
                           000000  4125 	.if ((0x2dc6c00)&0xff) 
                                   4126 	mov a,# ((0x2dc6c00)&0xff) 
                                   4127 	mov b,r3 
                                   4128 	mul ab 
                                   4129 	add a,r4 
                                   4130 	mov r4,a 
                                   4131 	mov a,b 
                                   4132 	addc a,r5 
                                   4133 	mov r5,a 
                                   4134 	clr a 
                                   4135 	addc a,r6 
                                   4136 	mov r6,a 
                                   4137 	.endif 
                                   4138 ;; stage 1 
                           000001  4139 	.if (((0x2dc6c00)>>24)&0xff) 
      0007E6 74 02            [12] 4140 	mov a,# (((0x2dc6c00)>>24)&0xff) 
      0007E8 89 F0            [24] 4141 	mov b,r1 
      0007EA A4               [48] 4142 	mul ab 
      0007EB 2D               [12] 4143 	add a,r5 
      0007EC FD               [12] 4144 	mov r5,a 
      0007ED E5 F0            [12] 4145 	mov a,b 
      0007EF 3E               [12] 4146 	addc a,r6 
      0007F0 FE               [12] 4147 	mov r6,a 
      0007F1 E4               [12] 4148 	clr a 
      0007F2 3F               [12] 4149 	addc a,r7 
      0007F3 FF               [12] 4150 	mov r7,a 
                                   4151 	.endif 
                           000001  4152 	.if (((0x2dc6c00)>>16)&0xff) 
      0007F4 74 DC            [12] 4153 	mov a,# (((0x2dc6c00)>>16)&0xff) 
      0007F6 8A F0            [24] 4154 	mov b,r2 
      0007F8 A4               [48] 4155 	mul ab 
      0007F9 2D               [12] 4156 	add a,r5 
      0007FA FD               [12] 4157 	mov r5,a 
      0007FB E5 F0            [12] 4158 	mov a,b 
      0007FD 3E               [12] 4159 	addc a,r6 
      0007FE FE               [12] 4160 	mov r6,a 
      0007FF E4               [12] 4161 	clr a 
      000800 3F               [12] 4162 	addc a,r7 
      000801 FF               [12] 4163 	mov r7,a 
                                   4164 	.endif 
                           000001  4165 	.if (((0x2dc6c00)>>8)&0xff) 
      000802 74 6C            [12] 4166 	mov a,# (((0x2dc6c00)>>8)&0xff) 
      000804 8B F0            [24] 4167 	mov b,r3 
      000806 A4               [48] 4168 	mul ab 
      000807 2D               [12] 4169 	add a,r5 
      000808 FD               [12] 4170 	mov r5,a 
      000809 E5 F0            [12] 4171 	mov a,b 
      00080B 3E               [12] 4172 	addc a,r6 
      00080C FE               [12] 4173 	mov r6,a 
      00080D E4               [12] 4174 	clr a 
      00080E 3F               [12] 4175 	addc a,r7 
      00080F FF               [12] 4176 	mov r7,a 
                                   4177 	.endif 
                                   4178 ;; stage 2 
                           000001  4179 	.if (((0x2dc6c00)>>24)&0xff) 
      000810 74 02            [12] 4180 	mov a,# (((0x2dc6c00)>>24)&0xff) 
      000812 8A F0            [24] 4181 	mov b,r2 
      000814 A4               [48] 4182 	mul ab 
      000815 2E               [12] 4183 	add a,r6 
      000816 FE               [12] 4184 	mov r6,a 
      000817 E5 F0            [12] 4185 	mov a,b 
      000819 3F               [12] 4186 	addc a,r7 
      00081A FF               [12] 4187 	mov r7,a 
                                   4188 	.endif 
                           000001  4189 	.if (((0x2dc6c00)>>16)&0xff) 
      00081B 74 DC            [12] 4190 	mov a,# (((0x2dc6c00)>>16)&0xff) 
      00081D 8B F0            [24] 4191 	mov b,r3 
      00081F A4               [48] 4192 	mul ab 
      000820 2E               [12] 4193 	add a,r6 
      000821 FE               [12] 4194 	mov r6,a 
      000822 E5 F0            [12] 4195 	mov a,b 
      000824 3F               [12] 4196 	addc a,r7 
      000825 FF               [12] 4197 	mov r7,a 
                                   4198 	.endif 
                                   4199 ;; stage 3 
                           000001  4200 	.if (((0x2dc6c00)>>24)&0xff) 
      000826 74 02            [12] 4201 	mov a,# (((0x2dc6c00)>>24)&0xff) 
      000828 8B F0            [24] 4202 	mov b,r3 
      00082A A4               [48] 4203 	mul ab 
      00082B 2F               [12] 4204 	add a,r7 
      00082C FF               [12] 4205 	mov r7,a 
                                   4206 	.endif 
      00082D D0 E0            [24] 4207 	pop acc 
      00082F 30 E7 11         [24] 4208 	jnb acc.7,00001$ 
      000832 C3               [12] 4209 	clr c 
      000833 E4               [12] 4210 	clr a 
      000834 9C               [12] 4211 	subb a,r4 
      000835 F5 82            [12] 4212 	mov dpl,a 
      000837 E4               [12] 4213 	clr a 
      000838 9D               [12] 4214 	subb a,r5 
      000839 F5 83            [12] 4215 	mov dph,a 
      00083B E4               [12] 4216 	clr a 
      00083C 9E               [12] 4217 	subb a,r6 
      00083D F5 F0            [12] 4218 	mov b,a 
      00083F E4               [12] 4219 	clr a 
      000840 9F               [12] 4220 	subb a,r7 
      000841 80 07            [24] 4221 	sjmp 00002$ 
      000843                       4222 	 00001$:
      000843 8C 82            [24] 4223 	mov dpl,r4 
      000845 8D 83            [24] 4224 	mov dph,r5 
      000847 8E F0            [24] 4225 	mov b,r6 
      000849 EF               [12] 4226 	mov a,r7 
      00084A                       4227 	 00002$:
                           0004B2  4228 	C$config.c$631$1$334 ==.
                           0004B2  4229 	XG$axradio_conv_freq_tohz$0$0 ==.
      00084A 22               [24] 4230 	ret
                                   4231 ;------------------------------------------------------------
                                   4232 ;Allocation info for local variables in function 'axradio_conv_freq_fromreg'
                                   4233 ;------------------------------------------------------------
                                   4234 ;f                         Allocated to registers 
                                   4235 ;------------------------------------------------------------
                           0004B3  4236 	G$axradio_conv_freq_fromreg$0$0 ==.
                           0004B3  4237 	C$config.c$638$1$334 ==.
                                   4238 ;	..\AX_Radio_Lab_output\config.c:638: int32_t axradio_conv_freq_fromreg(int32_t f)
                                   4239 ;	-----------------------------------------
                                   4240 ;	 function axradio_conv_freq_fromreg
                                   4241 ;	-----------------------------------------
      00084B                       4242 _axradio_conv_freq_fromreg:
                           0004B3  4243 	C$config.c$644$1$336 ==.
                                   4244 ;	..\AX_Radio_Lab_output\config.c:644: CONSTMULFIX16(0x1000000);
      00084B A8 82            [24] 4245 	mov r0,dpl 
      00084D E5 83            [12] 4246 	mov a,dph 
      00084F F9               [12] 4247 	mov r1,a 
      000850 C0 E0            [24] 4248 	push acc 
      000852 30 E7 07         [24] 4249 	jnb acc.7,00000$ 
      000855 C3               [12] 4250 	clr c 
      000856 E4               [12] 4251 	clr a 
      000857 98               [12] 4252 	subb a,r0 
      000858 F8               [12] 4253 	mov r0,a 
      000859 E4               [12] 4254 	clr a 
      00085A 99               [12] 4255 	subb a,r1 
      00085B F9               [12] 4256 	mov r1,a 
      00085C                       4257 	 00000$:
      00085C E4               [12] 4258 	clr a 
      00085D FC               [12] 4259 	mov r4,a 
      00085E FD               [12] 4260 	mov r5,a 
      00085F FE               [12] 4261 	mov r6,a 
      000860 FF               [12] 4262 	mov r7,a 
                                   4263 ;; stage -1 
                           000000  4264 	.if (((0x1000000)>>16)&0xff) 
                                   4265 	mov a,# (((0x1000000)>>16)&0xff) 
                                   4266 	mov b,r0 
                                   4267 	mul ab 
                                   4268 	mov r7,a 
                                   4269 	mov r4,b 
                                   4270 	.endif 
                           000000  4271 	.if (((0x1000000)>>8)&0xff) 
                                   4272 	mov a,# (((0x1000000)>>8)&0xff) 
                                   4273 	mov b,r1 
                                   4274 	mul ab 
                                   4275 	.if (((0x1000000)>>16)&0xff) 
                                   4276 	add a,r7 
                                   4277 	mov r7,a 
                                   4278 	mov a,b 
                                   4279 	addc a,r4 
                                   4280 	mov r4,a 
                                   4281 	clr a 
                                   4282 	addc a,r5 
                                   4283 	mov r5,a 
                                   4284 	.else 
                                   4285 	mov r7,a 
                                   4286 	mov r4,b 
                                   4287 	.endif 
                                   4288 	.endif 
                                   4289 ;; clear precision extension 
      000861 E4               [12] 4290 	clr a 
      000862 FF               [12] 4291 	mov r7,a 
                                   4292 ;; stage 0 
                           000001  4293 	.if (((0x1000000)>>24)&0xff) 
      000863 74 01            [12] 4294 	mov a,# (((0x1000000)>>24)&0xff) 
      000865 88 F0            [24] 4295 	mov b,r0 
      000867 A4               [48] 4296 	mul ab 
      000868 2C               [12] 4297 	add a,r4 
      000869 FC               [12] 4298 	mov r4,a 
      00086A E5 F0            [12] 4299 	mov a,b 
      00086C 3D               [12] 4300 	addc a,r5 
      00086D FD               [12] 4301 	mov r5,a 
      00086E E4               [12] 4302 	clr a 
      00086F 3E               [12] 4303 	addc a,r6 
      000870 FE               [12] 4304 	mov r6,a 
                                   4305 	.endif 
                           000000  4306 	.if (((0x1000000)>>16)&0xff) 
                                   4307 	mov a,# (((0x1000000)>>16)&0xff) 
                                   4308 	mov b,r1 
                                   4309 	mul ab 
                                   4310 	add a,r4 
                                   4311 	mov r4,a 
                                   4312 	mov a,b 
                                   4313 	addc a,r5 
                                   4314 	mov r5,a 
                                   4315 	clr a 
                                   4316 	addc a,r6 
                                   4317 	mov r6,a 
                                   4318 	.endif 
                                   4319 ;; stage 1 
                           000001  4320 	.if (((0x1000000)>>24)&0xff) 
      000871 74 01            [12] 4321 	mov a,# (((0x1000000)>>24)&0xff) 
      000873 89 F0            [24] 4322 	mov b,r1 
      000875 A4               [48] 4323 	mul ab 
      000876 2D               [12] 4324 	add a,r5 
      000877 FD               [12] 4325 	mov r5,a 
      000878 E5 F0            [12] 4326 	mov a,b 
      00087A 3E               [12] 4327 	addc a,r6 
      00087B FE               [12] 4328 	mov r6,a 
      00087C E4               [12] 4329 	clr a 
      00087D 3F               [12] 4330 	addc a,r7 
      00087E FF               [12] 4331 	mov r7,a 
                                   4332 	.endif 
      00087F D0 E0            [24] 4333 	pop acc 
      000881 30 E7 11         [24] 4334 	jnb acc.7,00001$ 
      000884 C3               [12] 4335 	clr c 
      000885 E4               [12] 4336 	clr a 
      000886 9C               [12] 4337 	subb a,r4 
      000887 F5 82            [12] 4338 	mov dpl,a 
      000889 E4               [12] 4339 	clr a 
      00088A 9D               [12] 4340 	subb a,r5 
      00088B F5 83            [12] 4341 	mov dph,a 
      00088D E4               [12] 4342 	clr a 
      00088E 9E               [12] 4343 	subb a,r6 
      00088F F5 F0            [12] 4344 	mov b,a 
      000891 E4               [12] 4345 	clr a 
      000892 9F               [12] 4346 	subb a,r7 
      000893 80 07            [24] 4347 	sjmp 00002$ 
      000895                       4348 	 00001$:
      000895 8C 82            [24] 4349 	mov dpl,r4 
      000897 8D 83            [24] 4350 	mov dph,r5 
      000899 8E F0            [24] 4351 	mov b,r6 
      00089B EF               [12] 4352 	mov a,r7 
      00089C                       4353 	 00002$:
                           000504  4354 	C$config.c$645$1$336 ==.
                           000504  4355 	XG$axradio_conv_freq_fromreg$0$0 ==.
      00089C 22               [24] 4356 	ret
                                   4357 ;------------------------------------------------------------
                                   4358 ;Allocation info for local variables in function 'axradio_conv_timeinterval_totimer0'
                                   4359 ;------------------------------------------------------------
                                   4360 ;dt                        Allocated to registers r4 r5 r6 r7 
                                   4361 ;r                         Allocated to registers r0 r1 r2 r3 
                                   4362 ;------------------------------------------------------------
                           000505  4363 	G$axradio_conv_timeinterval_totimer0$0$0 ==.
                           000505  4364 	C$config.c$650$1$336 ==.
                                   4365 ;	..\AX_Radio_Lab_output\config.c:650: int32_t axradio_conv_timeinterval_totimer0(int32_t dt)
                                   4366 ;	-----------------------------------------
                                   4367 ;	 function axradio_conv_timeinterval_totimer0
                                   4368 ;	-----------------------------------------
      00089D                       4369 _axradio_conv_timeinterval_totimer0:
      00089D AC 82            [24] 4370 	mov	r4,dpl
      00089F AD 83            [24] 4371 	mov	r5,dph
      0008A1 AE F0            [24] 4372 	mov	r6,b
      0008A3 FF               [12] 4373 	mov	r7,a
                           00050C  4374 	C$config.c$657$1$338 ==.
                                   4375 ;	..\AX_Radio_Lab_output\config.c:657: dt >>= 6;
      0008A4 ED               [12] 4376 	mov	a,r5
      0008A5 A2 E7            [12] 4377 	mov	c,acc.7
      0008A7 CC               [12] 4378 	xch	a,r4
      0008A8 33               [12] 4379 	rlc	a
      0008A9 CC               [12] 4380 	xch	a,r4
      0008AA 33               [12] 4381 	rlc	a
      0008AB A2 E7            [12] 4382 	mov	c,acc.7
      0008AD CC               [12] 4383 	xch	a,r4
      0008AE 33               [12] 4384 	rlc	a
      0008AF CC               [12] 4385 	xch	a,r4
      0008B0 33               [12] 4386 	rlc	a
      0008B1 CC               [12] 4387 	xch	a,r4
      0008B2 54 03            [12] 4388 	anl	a,#0x03
      0008B4 FD               [12] 4389 	mov	r5,a
      0008B5 EE               [12] 4390 	mov	a,r6
      0008B6 2E               [12] 4391 	add	a,r6
      0008B7 25 E0            [12] 4392 	add	a,acc
      0008B9 4D               [12] 4393 	orl	a,r5
      0008BA FD               [12] 4394 	mov	r5,a
      0008BB EF               [12] 4395 	mov	a,r7
      0008BC A2 E7            [12] 4396 	mov	c,acc.7
      0008BE CE               [12] 4397 	xch	a,r6
      0008BF 33               [12] 4398 	rlc	a
      0008C0 CE               [12] 4399 	xch	a,r6
      0008C1 33               [12] 4400 	rlc	a
      0008C2 A2 E7            [12] 4401 	mov	c,acc.7
      0008C4 CE               [12] 4402 	xch	a,r6
      0008C5 33               [12] 4403 	rlc	a
      0008C6 CE               [12] 4404 	xch	a,r6
      0008C7 33               [12] 4405 	rlc	a
      0008C8 CE               [12] 4406 	xch	a,r6
      0008C9 54 03            [12] 4407 	anl	a,#0x03
      0008CB 30 E1 02         [24] 4408 	jnb	acc.1,00103$
      0008CE 44 FC            [12] 4409 	orl	a,#0xfc
      0008D0                       4410 00103$:
      0008D0 FF               [12] 4411 	mov	r7,a
                           000539  4412 	C$config.c$658$1$338 ==.
                                   4413 ;	..\AX_Radio_Lab_output\config.c:658: r = dt;
      0008D1 8C 00            [24] 4414 	mov	ar0,r4
      0008D3 8D 01            [24] 4415 	mov	ar1,r5
      0008D5 8E 02            [24] 4416 	mov	ar2,r6
                           00053F  4417 	C$config.c$659$1$338 ==.
                                   4418 ;	..\AX_Radio_Lab_output\config.c:659: dt >>= 2;
      0008D7 EF               [12] 4419 	mov	a,r7
      0008D8 FB               [12] 4420 	mov	r3,a
      0008D9 A2 E7            [12] 4421 	mov	c,acc.7
      0008DB 13               [12] 4422 	rrc	a
      0008DC FF               [12] 4423 	mov	r7,a
      0008DD EE               [12] 4424 	mov	a,r6
      0008DE 13               [12] 4425 	rrc	a
      0008DF FE               [12] 4426 	mov	r6,a
      0008E0 ED               [12] 4427 	mov	a,r5
      0008E1 13               [12] 4428 	rrc	a
      0008E2 FD               [12] 4429 	mov	r5,a
      0008E3 EC               [12] 4430 	mov	a,r4
      0008E4 13               [12] 4431 	rrc	a
      0008E5 FC               [12] 4432 	mov	r4,a
      0008E6 EF               [12] 4433 	mov	a,r7
      0008E7 A2 E7            [12] 4434 	mov	c,acc.7
      0008E9 13               [12] 4435 	rrc	a
      0008EA FF               [12] 4436 	mov	r7,a
      0008EB EE               [12] 4437 	mov	a,r6
      0008EC 13               [12] 4438 	rrc	a
      0008ED FE               [12] 4439 	mov	r6,a
      0008EE ED               [12] 4440 	mov	a,r5
      0008EF 13               [12] 4441 	rrc	a
      0008F0 FD               [12] 4442 	mov	r5,a
      0008F1 EC               [12] 4443 	mov	a,r4
      0008F2 13               [12] 4444 	rrc	a
      0008F3 FC               [12] 4445 	mov	r4,a
                           00055C  4446 	C$config.c$660$1$338 ==.
                                   4447 ;	..\AX_Radio_Lab_output\config.c:660: r -= dt;
      0008F4 E8               [12] 4448 	mov	a,r0
      0008F5 C3               [12] 4449 	clr	c
      0008F6 9C               [12] 4450 	subb	a,r4
      0008F7 F8               [12] 4451 	mov	r0,a
      0008F8 E9               [12] 4452 	mov	a,r1
      0008F9 9D               [12] 4453 	subb	a,r5
      0008FA F9               [12] 4454 	mov	r1,a
      0008FB EA               [12] 4455 	mov	a,r2
      0008FC 9E               [12] 4456 	subb	a,r6
      0008FD FA               [12] 4457 	mov	r2,a
      0008FE EB               [12] 4458 	mov	a,r3
      0008FF 9F               [12] 4459 	subb	a,r7
      000900 FB               [12] 4460 	mov	r3,a
                           000569  4461 	C$config.c$661$1$338 ==.
                                   4462 ;	..\AX_Radio_Lab_output\config.c:661: dt >>= 2;
      000901 EF               [12] 4463 	mov	a,r7
      000902 A2 E7            [12] 4464 	mov	c,acc.7
      000904 13               [12] 4465 	rrc	a
      000905 FF               [12] 4466 	mov	r7,a
      000906 EE               [12] 4467 	mov	a,r6
      000907 13               [12] 4468 	rrc	a
      000908 FE               [12] 4469 	mov	r6,a
      000909 ED               [12] 4470 	mov	a,r5
      00090A 13               [12] 4471 	rrc	a
      00090B FD               [12] 4472 	mov	r5,a
      00090C EC               [12] 4473 	mov	a,r4
      00090D 13               [12] 4474 	rrc	a
      00090E FC               [12] 4475 	mov	r4,a
      00090F EF               [12] 4476 	mov	a,r7
      000910 A2 E7            [12] 4477 	mov	c,acc.7
      000912 13               [12] 4478 	rrc	a
      000913 FF               [12] 4479 	mov	r7,a
      000914 EE               [12] 4480 	mov	a,r6
      000915 13               [12] 4481 	rrc	a
      000916 FE               [12] 4482 	mov	r6,a
      000917 ED               [12] 4483 	mov	a,r5
      000918 13               [12] 4484 	rrc	a
      000919 FD               [12] 4485 	mov	r5,a
      00091A EC               [12] 4486 	mov	a,r4
      00091B 13               [12] 4487 	rrc	a
      00091C FC               [12] 4488 	mov	r4,a
                           000585  4489 	C$config.c$662$1$338 ==.
                                   4490 ;	..\AX_Radio_Lab_output\config.c:662: r -= dt;
      00091D E8               [12] 4491 	mov	a,r0
      00091E C3               [12] 4492 	clr	c
      00091F 9C               [12] 4493 	subb	a,r4
      000920 F8               [12] 4494 	mov	r0,a
      000921 E9               [12] 4495 	mov	a,r1
      000922 9D               [12] 4496 	subb	a,r5
      000923 F9               [12] 4497 	mov	r1,a
      000924 EA               [12] 4498 	mov	a,r2
      000925 9E               [12] 4499 	subb	a,r6
      000926 FA               [12] 4500 	mov	r2,a
      000927 EB               [12] 4501 	mov	a,r3
      000928 9F               [12] 4502 	subb	a,r7
      000929 FB               [12] 4503 	mov	r3,a
                           000592  4504 	C$config.c$663$1$338 ==.
                                   4505 ;	..\AX_Radio_Lab_output\config.c:663: dt >>= 3;
      00092A ED               [12] 4506 	mov	a,r5
      00092B C4               [12] 4507 	swap	a
      00092C 23               [12] 4508 	rl	a
      00092D CC               [12] 4509 	xch	a,r4
      00092E C4               [12] 4510 	swap	a
      00092F 23               [12] 4511 	rl	a
      000930 54 1F            [12] 4512 	anl	a,#0x1f
      000932 6C               [12] 4513 	xrl	a,r4
      000933 CC               [12] 4514 	xch	a,r4
      000934 54 1F            [12] 4515 	anl	a,#0x1f
      000936 CC               [12] 4516 	xch	a,r4
      000937 6C               [12] 4517 	xrl	a,r4
      000938 CC               [12] 4518 	xch	a,r4
      000939 FD               [12] 4519 	mov	r5,a
      00093A EE               [12] 4520 	mov	a,r6
      00093B C4               [12] 4521 	swap	a
      00093C 23               [12] 4522 	rl	a
      00093D 54 E0            [12] 4523 	anl	a,#0xe0
      00093F 4D               [12] 4524 	orl	a,r5
      000940 FD               [12] 4525 	mov	r5,a
      000941 EF               [12] 4526 	mov	a,r7
      000942 C4               [12] 4527 	swap	a
      000943 23               [12] 4528 	rl	a
      000944 CE               [12] 4529 	xch	a,r6
      000945 C4               [12] 4530 	swap	a
      000946 23               [12] 4531 	rl	a
      000947 54 1F            [12] 4532 	anl	a,#0x1f
      000949 6E               [12] 4533 	xrl	a,r6
      00094A CE               [12] 4534 	xch	a,r6
      00094B 54 1F            [12] 4535 	anl	a,#0x1f
      00094D CE               [12] 4536 	xch	a,r6
      00094E 6E               [12] 4537 	xrl	a,r6
      00094F CE               [12] 4538 	xch	a,r6
      000950 30 E4 02         [24] 4539 	jnb	acc.4,00104$
      000953 44 E0            [12] 4540 	orl	a,#0xe0
      000955                       4541 00104$:
      000955 FF               [12] 4542 	mov	r7,a
                           0005BE  4543 	C$config.c$664$1$338 ==.
                                   4544 ;	..\AX_Radio_Lab_output\config.c:664: r += dt;
      000956 EC               [12] 4545 	mov	a,r4
      000957 28               [12] 4546 	add	a,r0
      000958 F8               [12] 4547 	mov	r0,a
      000959 ED               [12] 4548 	mov	a,r5
      00095A 39               [12] 4549 	addc	a,r1
      00095B F9               [12] 4550 	mov	r1,a
      00095C EE               [12] 4551 	mov	a,r6
      00095D 3A               [12] 4552 	addc	a,r2
      00095E FA               [12] 4553 	mov	r2,a
      00095F EF               [12] 4554 	mov	a,r7
      000960 3B               [12] 4555 	addc	a,r3
                           0005C9  4556 	C$config.c$665$1$338 ==.
                                   4557 ;	..\AX_Radio_Lab_output\config.c:665: return r;
      000961 88 82            [24] 4558 	mov	dpl,r0
      000963 89 83            [24] 4559 	mov	dph,r1
      000965 8A F0            [24] 4560 	mov	b,r2
                           0005CF  4561 	C$config.c$666$1$338 ==.
                           0005CF  4562 	XG$axradio_conv_timeinterval_totimer0$0$0 ==.
      000967 22               [24] 4563 	ret
                                   4564 ;------------------------------------------------------------
                                   4565 ;Allocation info for local variables in function 'axradio_byteconv'
                                   4566 ;------------------------------------------------------------
                                   4567 ;b                         Allocated to registers r7 
                                   4568 ;------------------------------------------------------------
                           0005D0  4569 	G$axradio_byteconv$0$0 ==.
                           0005D0  4570 	C$config.c$668$1$338 ==.
                                   4571 ;	..\AX_Radio_Lab_output\config.c:668: __reentrantb uint8_t axradio_byteconv(uint8_t b) __reentrant
                                   4572 ;	-----------------------------------------
                                   4573 ;	 function axradio_byteconv
                                   4574 ;	-----------------------------------------
      000968                       4575 _axradio_byteconv:
                           0005D0  4576 	C$config.c$670$1$340 ==.
                                   4577 ;	..\AX_Radio_Lab_output\config.c:670: return b;
                           0005D0  4578 	C$config.c$671$1$340 ==.
                           0005D0  4579 	XG$axradio_byteconv$0$0 ==.
      000968 22               [24] 4580 	ret
                                   4581 ;------------------------------------------------------------
                                   4582 ;Allocation info for local variables in function 'axradio_byteconv_buffer'
                                   4583 ;------------------------------------------------------------
                                   4584 ;buflen                    Allocated to stack - _bp -4
                                   4585 ;buf                       Allocated to registers 
                                   4586 ;------------------------------------------------------------
                           0005D1  4587 	G$axradio_byteconv_buffer$0$0 ==.
                           0005D1  4588 	C$config.c$674$1$340 ==.
                                   4589 ;	..\AX_Radio_Lab_output\config.c:674: __reentrantb void axradio_byteconv_buffer(uint8_t __xdata *buf, uint16_t buflen) __reentrant
                                   4590 ;	-----------------------------------------
                                   4591 ;	 function axradio_byteconv_buffer
                                   4592 ;	-----------------------------------------
      000969                       4593 _axradio_byteconv_buffer:
      000969 C0 26            [24] 4594 	push	_bp
      00096B 85 81 26         [24] 4595 	mov	_bp,sp
                           0005D6  4596 	C$config.c$676$1$340 ==.
                                   4597 ;	..\AX_Radio_Lab_output\config.c:676: }
      00096E D0 26            [24] 4598 	pop	_bp
                           0005D8  4599 	C$config.c$676$1$340 ==.
                           0005D8  4600 	XG$axradio_byteconv_buffer$0$0 ==.
      000970 22               [24] 4601 	ret
                                   4602 ;------------------------------------------------------------
                                   4603 ;Allocation info for local variables in function 'axradio_framing_check_crc'
                                   4604 ;------------------------------------------------------------
                                   4605 ;cnt                       Allocated to stack - _bp -4
                                   4606 ;pkt                       Allocated to registers r6 r7 
                                   4607 ;------------------------------------------------------------
                           0005D9  4608 	G$axradio_framing_check_crc$0$0 ==.
                           0005D9  4609 	C$config.c$678$1$340 ==.
                                   4610 ;	..\AX_Radio_Lab_output\config.c:678: __reentrantb uint16_t axradio_framing_check_crc(uint8_t __xdata *pkt, uint16_t cnt) __reentrant
                                   4611 ;	-----------------------------------------
                                   4612 ;	 function axradio_framing_check_crc
                                   4613 ;	-----------------------------------------
      000971                       4614 _axradio_framing_check_crc:
      000971 C0 26            [24] 4615 	push	_bp
      000973 85 81 26         [24] 4616 	mov	_bp,sp
      000976 AE 82            [24] 4617 	mov	r6,dpl
      000978 AF 83            [24] 4618 	mov	r7,dph
                           0005E2  4619 	C$config.c$680$1$344 ==.
                                   4620 ;	..\AX_Radio_Lab_output\config.c:680: if (crc_ccitt(pkt, cnt, 0xFFFF) != 0xF0B8)
      00097A 7D 00            [12] 4621 	mov	r5,#0x00
      00097C 74 FF            [12] 4622 	mov	a,#0xff
      00097E C0 E0            [24] 4623 	push	acc
      000980 C0 E0            [24] 4624 	push	acc
      000982 E5 26            [12] 4625 	mov	a,_bp
      000984 24 FC            [12] 4626 	add	a,#0xfc
      000986 F8               [12] 4627 	mov	r0,a
      000987 E6               [12] 4628 	mov	a,@r0
      000988 C0 E0            [24] 4629 	push	acc
      00098A 08               [12] 4630 	inc	r0
      00098B E6               [12] 4631 	mov	a,@r0
      00098C C0 E0            [24] 4632 	push	acc
      00098E 8E 82            [24] 4633 	mov	dpl,r6
      000990 8F 83            [24] 4634 	mov	dph,r7
      000992 8D F0            [24] 4635 	mov	b,r5
      000994 12 46 5D         [24] 4636 	lcall	_crc_ccitt
      000997 AE 82            [24] 4637 	mov	r6,dpl
      000999 AF 83            [24] 4638 	mov	r7,dph
      00099B E5 81            [12] 4639 	mov	a,sp
      00099D 24 FC            [12] 4640 	add	a,#0xfc
      00099F F5 81            [12] 4641 	mov	sp,a
      0009A1 BE B8 05         [24] 4642 	cjne	r6,#0xb8,00108$
      0009A4 BF F0 02         [24] 4643 	cjne	r7,#0xf0,00108$
      0009A7 80 05            [24] 4644 	sjmp	00102$
      0009A9                       4645 00108$:
                           000611  4646 	C$config.c$681$1$344 ==.
                                   4647 ;	..\AX_Radio_Lab_output\config.c:681: return 0;
      0009A9 90 00 00         [24] 4648 	mov	dptr,#0x0000
      0009AC 80 0A            [24] 4649 	sjmp	00103$
      0009AE                       4650 00102$:
                           000616  4651 	C$config.c$682$1$344 ==.
                                   4652 ;	..\AX_Radio_Lab_output\config.c:682: return cnt;
      0009AE E5 26            [12] 4653 	mov	a,_bp
      0009B0 24 FC            [12] 4654 	add	a,#0xfc
      0009B2 F8               [12] 4655 	mov	r0,a
      0009B3 86 82            [24] 4656 	mov	dpl,@r0
      0009B5 08               [12] 4657 	inc	r0
      0009B6 86 83            [24] 4658 	mov	dph,@r0
      0009B8                       4659 00103$:
      0009B8 D0 26            [24] 4660 	pop	_bp
                           000622  4661 	C$config.c$683$1$344 ==.
                           000622  4662 	XG$axradio_framing_check_crc$0$0 ==.
      0009BA 22               [24] 4663 	ret
                                   4664 ;------------------------------------------------------------
                                   4665 ;Allocation info for local variables in function 'axradio_framing_append_crc'
                                   4666 ;------------------------------------------------------------
                                   4667 ;cnt                       Allocated to stack - _bp -4
                                   4668 ;pkt                       Allocated to registers r6 r7 
                                   4669 ;s                         Allocated to registers r4 r5 
                                   4670 ;------------------------------------------------------------
                           000623  4671 	G$axradio_framing_append_crc$0$0 ==.
                           000623  4672 	C$config.c$685$1$344 ==.
                                   4673 ;	..\AX_Radio_Lab_output\config.c:685: __reentrantb uint16_t axradio_framing_append_crc(uint8_t __xdata *pkt, uint16_t cnt) __reentrant
                                   4674 ;	-----------------------------------------
                                   4675 ;	 function axradio_framing_append_crc
                                   4676 ;	-----------------------------------------
      0009BB                       4677 _axradio_framing_append_crc:
      0009BB C0 26            [24] 4678 	push	_bp
      0009BD 85 81 26         [24] 4679 	mov	_bp,sp
      0009C0 AE 82            [24] 4680 	mov	r6,dpl
      0009C2 AF 83            [24] 4681 	mov	r7,dph
                           00062C  4682 	C$config.c$688$1$346 ==.
                                   4683 ;	..\AX_Radio_Lab_output\config.c:688: s = crc_ccitt(pkt, cnt, s);
      0009C4 8E 03            [24] 4684 	mov	ar3,r6
      0009C6 8F 04            [24] 4685 	mov	ar4,r7
      0009C8 7D 00            [12] 4686 	mov	r5,#0x00
      0009CA C0 07            [24] 4687 	push	ar7
      0009CC C0 06            [24] 4688 	push	ar6
      0009CE 74 FF            [12] 4689 	mov	a,#0xff
      0009D0 C0 E0            [24] 4690 	push	acc
      0009D2 C0 E0            [24] 4691 	push	acc
      0009D4 E5 26            [12] 4692 	mov	a,_bp
      0009D6 24 FC            [12] 4693 	add	a,#0xfc
      0009D8 F8               [12] 4694 	mov	r0,a
      0009D9 E6               [12] 4695 	mov	a,@r0
      0009DA C0 E0            [24] 4696 	push	acc
      0009DC 08               [12] 4697 	inc	r0
      0009DD E6               [12] 4698 	mov	a,@r0
      0009DE C0 E0            [24] 4699 	push	acc
      0009E0 8B 82            [24] 4700 	mov	dpl,r3
      0009E2 8C 83            [24] 4701 	mov	dph,r4
      0009E4 8D F0            [24] 4702 	mov	b,r5
      0009E6 12 46 5D         [24] 4703 	lcall	_crc_ccitt
      0009E9 AC 82            [24] 4704 	mov	r4,dpl
      0009EB AD 83            [24] 4705 	mov	r5,dph
      0009ED E5 81            [12] 4706 	mov	a,sp
      0009EF 24 FC            [12] 4707 	add	a,#0xfc
      0009F1 F5 81            [12] 4708 	mov	sp,a
      0009F3 D0 06            [24] 4709 	pop	ar6
      0009F5 D0 07            [24] 4710 	pop	ar7
                           00065F  4711 	C$config.c$689$1$346 ==.
                                   4712 ;	..\AX_Radio_Lab_output\config.c:689: pkt += cnt;
      0009F7 E5 26            [12] 4713 	mov	a,_bp
      0009F9 24 FC            [12] 4714 	add	a,#0xfc
      0009FB F8               [12] 4715 	mov	r0,a
      0009FC E6               [12] 4716 	mov	a,@r0
      0009FD 2E               [12] 4717 	add	a,r6
      0009FE FE               [12] 4718 	mov	r6,a
      0009FF 08               [12] 4719 	inc	r0
      000A00 E6               [12] 4720 	mov	a,@r0
      000A01 3F               [12] 4721 	addc	a,r7
      000A02 FF               [12] 4722 	mov	r7,a
                           00066B  4723 	C$config.c$690$1$346 ==.
                                   4724 ;	..\AX_Radio_Lab_output\config.c:690: *pkt++ = ~(uint8_t)(s);
      000A03 8C 03            [24] 4725 	mov	ar3,r4
      000A05 EB               [12] 4726 	mov	a,r3
      000A06 F4               [12] 4727 	cpl	a
      000A07 8E 82            [24] 4728 	mov	dpl,r6
      000A09 8F 83            [24] 4729 	mov	dph,r7
      000A0B F0               [24] 4730 	movx	@dptr,a
      000A0C A3               [24] 4731 	inc	dptr
      000A0D AE 82            [24] 4732 	mov	r6,dpl
      000A0F AF 83            [24] 4733 	mov	r7,dph
                           000679  4734 	C$config.c$691$1$346 ==.
                                   4735 ;	..\AX_Radio_Lab_output\config.c:691: *pkt++ = ~(uint8_t)(s >> 8);
      000A11 8D 04            [24] 4736 	mov	ar4,r5
      000A13 EC               [12] 4737 	mov	a,r4
      000A14 F4               [12] 4738 	cpl	a
      000A15 8E 82            [24] 4739 	mov	dpl,r6
      000A17 8F 83            [24] 4740 	mov	dph,r7
      000A19 F0               [24] 4741 	movx	@dptr,a
                           000682  4742 	C$config.c$692$1$346 ==.
                                   4743 ;	..\AX_Radio_Lab_output\config.c:692: return cnt + 2;
      000A1A E5 26            [12] 4744 	mov	a,_bp
      000A1C 24 FC            [12] 4745 	add	a,#0xfc
      000A1E F8               [12] 4746 	mov	r0,a
      000A1F 86 82            [24] 4747 	mov	dpl,@r0
      000A21 08               [12] 4748 	inc	r0
      000A22 86 83            [24] 4749 	mov	dph,@r0
      000A24 A3               [24] 4750 	inc	dptr
      000A25 A3               [24] 4751 	inc	dptr
      000A26 D0 26            [24] 4752 	pop	_bp
                           000690  4753 	C$config.c$693$1$346 ==.
                           000690  4754 	XG$axradio_framing_append_crc$0$0 ==.
      000A28 22               [24] 4755 	ret
                                   4756 	.area CSEG    (CODE)
                                   4757 	.area CONST   (CODE)
                           000000  4758 G$axradio_phy_innerfreqloop$0$0 == .
      0055B7                       4759 _axradio_phy_innerfreqloop:
      0055B7 00                    4760 	.db #0x00	; 0
                           000001  4761 G$axradio_phy_pn9$0$0 == .
      0055B8                       4762 _axradio_phy_pn9:
      0055B8 00                    4763 	.db #0x00	; 0
                           000002  4764 G$axradio_phy_nrchannels$0$0 == .
      0055B9                       4765 _axradio_phy_nrchannels:
      0055B9 01                    4766 	.db #0x01	; 1
                           000003  4767 G$axradio_phy_chanfreq$0$0 == .
      0055BA                       4768 _axradio_phy_chanfreq:
      0055BA 01 00 18 09           4769 	.byte #0x01,#0x00,#0x18,#0x09	; 152567809
                           000007  4770 G$axradio_phy_chanpllrnginit$0$0 == .
      0055BE                       4771 _axradio_phy_chanpllrnginit:
      0055BE 0A 00                 4772 	.byte #0x0a,#0x00	; 10
                           000009  4773 G$axradio_phy_chanvcoiinit$0$0 == .
      0055C0                       4774 _axradio_phy_chanvcoiinit:
      0055C0 98                    4775 	.db #0x98	; 152
                           00000A  4776 G$axradio_phy_vcocalib$0$0 == .
      0055C1                       4777 _axradio_phy_vcocalib:
      0055C1 00                    4778 	.db #0x00	; 0
                           00000B  4779 G$axradio_phy_maxfreqoffset$0$0 == .
      0055C2                       4780 _axradio_phy_maxfreqoffset:
      0055C2 93 03 00 00           4781 	.byte #0x93,#0x03,#0x00,#0x00	;  915
                           00000F  4782 G$axradio_phy_rssioffset$0$0 == .
      0055C6                       4783 _axradio_phy_rssioffset:
      0055C6 40                    4784 	.db #0x40	;  64
                           000010  4785 G$axradio_phy_rssireference$0$0 == .
      0055C7                       4786 _axradio_phy_rssireference:
      0055C7 39                    4787 	.db #0x39	;  57	'9'
                           000011  4788 G$axradio_phy_channelbusy$0$0 == .
      0055C8                       4789 _axradio_phy_channelbusy:
      0055C8 EB                    4790 	.db #0xeb	; -21
                           000012  4791 G$axradio_phy_cs_period$0$0 == .
      0055C9                       4792 _axradio_phy_cs_period:
      0055C9 07 00                 4793 	.byte #0x07,#0x00	; 7
                           000014  4794 G$axradio_phy_cs_enabled$0$0 == .
      0055CB                       4795 _axradio_phy_cs_enabled:
      0055CB 00                    4796 	.db #0x00	; 0
                           000015  4797 G$axradio_phy_lbt_retries$0$0 == .
      0055CC                       4798 _axradio_phy_lbt_retries:
      0055CC 00                    4799 	.db #0x00	; 0
                           000016  4800 G$axradio_phy_lbt_forcetx$0$0 == .
      0055CD                       4801 _axradio_phy_lbt_forcetx:
      0055CD 00                    4802 	.db #0x00	; 0
                           000017  4803 G$axradio_phy_preamble_wor_longlen$0$0 == .
      0055CE                       4804 _axradio_phy_preamble_wor_longlen:
      0055CE 5B 00                 4805 	.byte #0x5b,#0x00	; 91
                           000019  4806 G$axradio_phy_preamble_wor_len$0$0 == .
      0055D0                       4807 _axradio_phy_preamble_wor_len:
      0055D0 90 00                 4808 	.byte #0x90,#0x00	; 144
                           00001B  4809 G$axradio_phy_preamble_longlen$0$0 == .
      0055D2                       4810 _axradio_phy_preamble_longlen:
      0055D2 01 00                 4811 	.byte #0x01,#0x00	; 1
                           00001D  4812 G$axradio_phy_preamble_len$0$0 == .
      0055D4                       4813 _axradio_phy_preamble_len:
      0055D4 90 00                 4814 	.byte #0x90,#0x00	; 144
                           00001F  4815 G$axradio_phy_preamble_byte$0$0 == .
      0055D6                       4816 _axradio_phy_preamble_byte:
      0055D6 7E                    4817 	.db #0x7e	; 126
                           000020  4818 G$axradio_phy_preamble_flags$0$0 == .
      0055D7                       4819 _axradio_phy_preamble_flags:
      0055D7 18                    4820 	.db #0x18	; 24
                           000021  4821 G$axradio_phy_preamble_appendbits$0$0 == .
      0055D8                       4822 _axradio_phy_preamble_appendbits:
      0055D8 00                    4823 	.db #0x00	; 0
                           000022  4824 G$axradio_phy_preamble_appendpattern$0$0 == .
      0055D9                       4825 _axradio_phy_preamble_appendpattern:
      0055D9 C0                    4826 	.db #0xc0	; 192
                           000023  4827 G$axradio_framing_maclen$0$0 == .
      0055DA                       4828 _axradio_framing_maclen:
      0055DA 00                    4829 	.db #0x00	; 0
                           000024  4830 G$axradio_framing_addrlen$0$0 == .
      0055DB                       4831 _axradio_framing_addrlen:
      0055DB 00                    4832 	.db #0x00	; 0
                           000025  4833 G$axradio_framing_destaddrpos$0$0 == .
      0055DC                       4834 _axradio_framing_destaddrpos:
      0055DC 00                    4835 	.db #0x00	; 0
                           000026  4836 G$axradio_framing_sourceaddrpos$0$0 == .
      0055DD                       4837 _axradio_framing_sourceaddrpos:
      0055DD FF                    4838 	.db #0xff	; 255
                           000027  4839 G$axradio_framing_lenpos$0$0 == .
      0055DE                       4840 _axradio_framing_lenpos:
      0055DE 00                    4841 	.db #0x00	; 0
                           000028  4842 G$axradio_framing_lenoffs$0$0 == .
      0055DF                       4843 _axradio_framing_lenoffs:
      0055DF 48                    4844 	.db #0x48	; 72	'H'
                           000029  4845 G$axradio_framing_lenmask$0$0 == .
      0055E0                       4846 _axradio_framing_lenmask:
      0055E0 00                    4847 	.db #0x00	; 0
                           00002A  4848 G$axradio_framing_swcrclen$0$0 == .
      0055E1                       4849 _axradio_framing_swcrclen:
      0055E1 00                    4850 	.db #0x00	; 0
                           00002B  4851 G$axradio_framing_synclen$0$0 == .
      0055E2                       4852 _axradio_framing_synclen:
      0055E2 20                    4853 	.db #0x20	; 32
                           00002C  4854 G$axradio_framing_syncword$0$0 == .
      0055E3                       4855 _axradio_framing_syncword:
      0055E3 33                    4856 	.db #0x33	; 51	'3'
      0055E4 55                    4857 	.db #0x55	; 85	'U'
      0055E5 33                    4858 	.db #0x33	; 51	'3'
      0055E6 55                    4859 	.db #0x55	; 85	'U'
                           000030  4860 G$axradio_framing_syncflags$0$0 == .
      0055E7                       4861 _axradio_framing_syncflags:
      0055E7 18                    4862 	.db #0x18	; 24
                           000031  4863 G$axradio_framing_enable_sfdcallback$0$0 == .
      0055E8                       4864 _axradio_framing_enable_sfdcallback:
      0055E8 00                    4865 	.db #0x00	; 0
                           000032  4866 G$axradio_framing_ack_timeout$0$0 == .
      0055E9                       4867 _axradio_framing_ack_timeout:
      0055E9 07 00 00 00           4868 	.byte #0x07,#0x00,#0x00,#0x00	; 7
                           000036  4869 G$axradio_framing_ack_delay$0$0 == .
      0055ED                       4870 _axradio_framing_ack_delay:
      0055ED 39 01 00 00           4871 	.byte #0x39,#0x01,#0x00,#0x00	; 313
                           00003A  4872 G$axradio_framing_ack_retransmissions$0$0 == .
      0055F1                       4873 _axradio_framing_ack_retransmissions:
      0055F1 00                    4874 	.db #0x00	; 0
                           00003B  4875 G$axradio_framing_ack_seqnrpos$0$0 == .
      0055F2                       4876 _axradio_framing_ack_seqnrpos:
      0055F2 FF                    4877 	.db #0xff	; 255
                           00003C  4878 G$axradio_framing_minpayloadlen$0$0 == .
      0055F3                       4879 _axradio_framing_minpayloadlen:
      0055F3 00                    4880 	.db #0x00	; 0
                           00003D  4881 G$axradio_wor_period$0$0 == .
      0055F4                       4882 _axradio_wor_period:
      0055F4 80 00                 4883 	.byte #0x80,#0x00	; 128
                           00003F  4884 G$axradio_sync_period$0$0 == .
      0055F6                       4885 _axradio_sync_period:
      0055F6 00 00 01 00           4886 	.byte #0x00,#0x00,#0x01,#0x00	; 65536
                           000043  4887 G$axradio_sync_xoscstartup$0$0 == .
      0055FA                       4888 _axradio_sync_xoscstartup:
      0055FA 31 00 00 00           4889 	.byte #0x31,#0x00,#0x00,#0x00	; 49
                           000047  4890 G$axradio_sync_slave_syncwindow$0$0 == .
      0055FE                       4891 _axradio_sync_slave_syncwindow:
      0055FE 00 00 03 00           4892 	.byte #0x00,#0x00,#0x03,#0x00	; 196608
                           00004B  4893 G$axradio_sync_slave_initialsyncwindow$0$0 == .
      005602                       4894 _axradio_sync_slave_initialsyncwindow:
      005602 00 00 5A 00           4895 	.byte #0x00,#0x00,#0x5a,#0x00	; 5898240
                           00004F  4896 G$axradio_sync_slave_syncpause$0$0 == .
      005606                       4897 _axradio_sync_slave_syncpause:
      005606 00 00 2C 01           4898 	.byte #0x00,#0x00,#0x2c,#0x01	; 19660800
                           000053  4899 G$axradio_sync_slave_maxperiod$0$0 == .
      00560A                       4900 _axradio_sync_slave_maxperiod:
      00560A 87 09                 4901 	.byte #0x87,#0x09	;  2439
                           000055  4902 G$axradio_sync_slave_resyncloss$0$0 == .
      00560C                       4903 _axradio_sync_slave_resyncloss:
      00560C 0B                    4904 	.db #0x0b	; 11
                           000056  4905 G$axradio_sync_slave_nrrx$0$0 == .
      00560D                       4906 _axradio_sync_slave_nrrx:
      00560D 03                    4907 	.db #0x03	; 3
                           000057  4908 G$axradio_sync_slave_rxadvance$0$0 == .
      00560E                       4909 _axradio_sync_slave_rxadvance:
      00560E 1C 01 00 00           4910 	.byte #0x1c,#0x01,#0x00,#0x00	; 284
      005612 DC 00 00 00           4911 	.byte #0xdc,#0x00,#0x00,#0x00	; 220
      005616 12 01 00 00           4912 	.byte #0x12,#0x01,#0x00,#0x00	; 274
                           000063  4913 G$axradio_sync_slave_rxwindow$0$0 == .
      00561A                       4914 _axradio_sync_slave_rxwindow:
      00561A 3D 01 00 00           4915 	.byte #0x3d,#0x01,#0x00,#0x00	; 317
      00561E BD 00 00 00           4916 	.byte #0xbd,#0x00,#0x00,#0x00	; 189
      005622 29 01 00 00           4917 	.byte #0x29,#0x01,#0x00,#0x00	; 297
                           00006F  4918 G$axradio_sync_slave_rxtimeout$0$0 == .
      005626                       4919 _axradio_sync_slave_rxtimeout:
      005626 5F 01 00 00           4920 	.byte #0x5f,#0x01,#0x00,#0x00	; 351
                           000073  4921 G$axradio_lposckfiltmax$0$0 == .
      00562A                       4922 _axradio_lposckfiltmax:
      00562A EC 0A                 4923 	.byte #0xec,#0x0a	; 2796
                           000075  4924 G$axradio_fxtal$0$0 == .
      00562C                       4925 _axradio_fxtal:
      00562C 00 6C DC 02           4926 	.byte #0x00,#0x6c,#0xdc,#0x02	; 48000000
                                   4927 	.area XINIT   (CODE)
                                   4928 	.area CABS    (ABS,CODE)
