                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module easyax5043
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _axradio_wait_n_lposccycles
                                     12 	.globl _ax5043_init_registers_rx
                                     13 	.globl _ax5043_init_registers_tx
                                     14 	.globl _memset
                                     15 	.globl _memcpy
                                     16 	.globl _wtimer_remove_callback
                                     17 	.globl _wtimer_add_callback
                                     18 	.globl _wtimer_remove
                                     19 	.globl _wtimer1_addrelative
                                     20 	.globl _wtimer0_addrelative
                                     21 	.globl _wtimer0_addabsolute
                                     22 	.globl _wtimer0_curtime
                                     23 	.globl _wtimer_runcallbacks
                                     24 	.globl _wtimer_idle
                                     25 	.globl _ax5043_writefifo
                                     26 	.globl _ax5043_readfifo
                                     27 	.globl _ax5043_wakeup_deepsleep
                                     28 	.globl _ax5043_enter_deepsleep
                                     29 	.globl _ax5043_reset
                                     30 	.globl _ax5043_commsleepexit
                                     31 	.globl _radio_read24
                                     32 	.globl _radio_read16
                                     33 	.globl _pn9_buffer
                                     34 	.globl _pn9_advance_byte
                                     35 	.globl _pn9_advance_bits
                                     36 	.globl _disable_radio_interrupt_in_mcu_pin
                                     37 	.globl _enable_radio_interrupt_in_mcu_pin
                                     38 	.globl _axradio_framing_append_crc
                                     39 	.globl _axradio_framing_check_crc
                                     40 	.globl _ax5043_set_registers_rxcont_singleparamset
                                     41 	.globl _ax5043_set_registers_rxcont
                                     42 	.globl _ax5043_set_registers_rxwor
                                     43 	.globl _ax5043_set_registers_rx
                                     44 	.globl _ax5043_set_registers_tx
                                     45 	.globl _ax5043_set_registers
                                     46 	.globl _axradio_conv_freq_fromreg
                                     47 	.globl _axradio_statuschange
                                     48 	.globl _axradio_conv_timeinterval_totimer0
                                     49 	.globl _enter_standby
                                     50 	.globl _checksignedlimit32
                                     51 	.globl _checksignedlimit16
                                     52 	.globl _signedlimit16
                                     53 	.globl _signextend24
                                     54 	.globl _signextend20
                                     55 	.globl _signextend16
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
                                    327 	.globl _radio_not_found_lcd_display
                                    328 	.globl _radio_lcd_display
                                    329 	.globl _f33_saved
                                    330 	.globl _f32_saved
                                    331 	.globl _f31_saved
                                    332 	.globl _f30_saved
                                    333 	.globl _axradio_timer
                                    334 	.globl _axradio_cb_transmitdata
                                    335 	.globl _axradio_cb_transmitend
                                    336 	.globl _axradio_cb_transmitstart
                                    337 	.globl _axradio_cb_channelstate
                                    338 	.globl _axradio_cb_receivesfd
                                    339 	.globl _axradio_cb_receive
                                    340 	.globl _axradio_rxbuffer
                                    341 	.globl _axradio_txbuffer
                                    342 	.globl _axradio_default_remoteaddr
                                    343 	.globl _axradio_localaddr
                                    344 	.globl _axradio_timeanchor
                                    345 	.globl _axradio_sync_periodcorr
                                    346 	.globl _axradio_sync_time
                                    347 	.globl _axradio_ack_seqnr
                                    348 	.globl _axradio_ack_count
                                    349 	.globl _axradio_curfreqoffset
                                    350 	.globl _axradio_curchannel
                                    351 	.globl _axradio_txbuffer_cnt
                                    352 	.globl _axradio_txbuffer_len
                                    353 	.globl _axradio_syncstate
                                    354 	.globl _AX5043_TIMEGAIN3NB
                                    355 	.globl _AX5043_TIMEGAIN2NB
                                    356 	.globl _AX5043_TIMEGAIN1NB
                                    357 	.globl _AX5043_TIMEGAIN0NB
                                    358 	.globl _AX5043_RXPARAMSETSNB
                                    359 	.globl _AX5043_RXPARAMCURSETNB
                                    360 	.globl _AX5043_PKTMAXLENNB
                                    361 	.globl _AX5043_PKTLENOFFSETNB
                                    362 	.globl _AX5043_PKTLENCFGNB
                                    363 	.globl _AX5043_PKTADDRMASK3NB
                                    364 	.globl _AX5043_PKTADDRMASK2NB
                                    365 	.globl _AX5043_PKTADDRMASK1NB
                                    366 	.globl _AX5043_PKTADDRMASK0NB
                                    367 	.globl _AX5043_PKTADDRCFGNB
                                    368 	.globl _AX5043_PKTADDR3NB
                                    369 	.globl _AX5043_PKTADDR2NB
                                    370 	.globl _AX5043_PKTADDR1NB
                                    371 	.globl _AX5043_PKTADDR0NB
                                    372 	.globl _AX5043_PHASEGAIN3NB
                                    373 	.globl _AX5043_PHASEGAIN2NB
                                    374 	.globl _AX5043_PHASEGAIN1NB
                                    375 	.globl _AX5043_PHASEGAIN0NB
                                    376 	.globl _AX5043_FREQUENCYLEAKNB
                                    377 	.globl _AX5043_FREQUENCYGAIND3NB
                                    378 	.globl _AX5043_FREQUENCYGAIND2NB
                                    379 	.globl _AX5043_FREQUENCYGAIND1NB
                                    380 	.globl _AX5043_FREQUENCYGAIND0NB
                                    381 	.globl _AX5043_FREQUENCYGAINC3NB
                                    382 	.globl _AX5043_FREQUENCYGAINC2NB
                                    383 	.globl _AX5043_FREQUENCYGAINC1NB
                                    384 	.globl _AX5043_FREQUENCYGAINC0NB
                                    385 	.globl _AX5043_FREQUENCYGAINB3NB
                                    386 	.globl _AX5043_FREQUENCYGAINB2NB
                                    387 	.globl _AX5043_FREQUENCYGAINB1NB
                                    388 	.globl _AX5043_FREQUENCYGAINB0NB
                                    389 	.globl _AX5043_FREQUENCYGAINA3NB
                                    390 	.globl _AX5043_FREQUENCYGAINA2NB
                                    391 	.globl _AX5043_FREQUENCYGAINA1NB
                                    392 	.globl _AX5043_FREQUENCYGAINA0NB
                                    393 	.globl _AX5043_FREQDEV13NB
                                    394 	.globl _AX5043_FREQDEV12NB
                                    395 	.globl _AX5043_FREQDEV11NB
                                    396 	.globl _AX5043_FREQDEV10NB
                                    397 	.globl _AX5043_FREQDEV03NB
                                    398 	.globl _AX5043_FREQDEV02NB
                                    399 	.globl _AX5043_FREQDEV01NB
                                    400 	.globl _AX5043_FREQDEV00NB
                                    401 	.globl _AX5043_FOURFSK3NB
                                    402 	.globl _AX5043_FOURFSK2NB
                                    403 	.globl _AX5043_FOURFSK1NB
                                    404 	.globl _AX5043_FOURFSK0NB
                                    405 	.globl _AX5043_DRGAIN3NB
                                    406 	.globl _AX5043_DRGAIN2NB
                                    407 	.globl _AX5043_DRGAIN1NB
                                    408 	.globl _AX5043_DRGAIN0NB
                                    409 	.globl _AX5043_BBOFFSRES3NB
                                    410 	.globl _AX5043_BBOFFSRES2NB
                                    411 	.globl _AX5043_BBOFFSRES1NB
                                    412 	.globl _AX5043_BBOFFSRES0NB
                                    413 	.globl _AX5043_AMPLITUDEGAIN3NB
                                    414 	.globl _AX5043_AMPLITUDEGAIN2NB
                                    415 	.globl _AX5043_AMPLITUDEGAIN1NB
                                    416 	.globl _AX5043_AMPLITUDEGAIN0NB
                                    417 	.globl _AX5043_AGCTARGET3NB
                                    418 	.globl _AX5043_AGCTARGET2NB
                                    419 	.globl _AX5043_AGCTARGET1NB
                                    420 	.globl _AX5043_AGCTARGET0NB
                                    421 	.globl _AX5043_AGCMINMAX3NB
                                    422 	.globl _AX5043_AGCMINMAX2NB
                                    423 	.globl _AX5043_AGCMINMAX1NB
                                    424 	.globl _AX5043_AGCMINMAX0NB
                                    425 	.globl _AX5043_AGCGAIN3NB
                                    426 	.globl _AX5043_AGCGAIN2NB
                                    427 	.globl _AX5043_AGCGAIN1NB
                                    428 	.globl _AX5043_AGCGAIN0NB
                                    429 	.globl _AX5043_AGCAHYST3NB
                                    430 	.globl _AX5043_AGCAHYST2NB
                                    431 	.globl _AX5043_AGCAHYST1NB
                                    432 	.globl _AX5043_AGCAHYST0NB
                                    433 	.globl _AX5043_0xF44NB
                                    434 	.globl _AX5043_0xF35NB
                                    435 	.globl _AX5043_0xF34NB
                                    436 	.globl _AX5043_0xF33NB
                                    437 	.globl _AX5043_0xF32NB
                                    438 	.globl _AX5043_0xF31NB
                                    439 	.globl _AX5043_0xF30NB
                                    440 	.globl _AX5043_0xF26NB
                                    441 	.globl _AX5043_0xF23NB
                                    442 	.globl _AX5043_0xF22NB
                                    443 	.globl _AX5043_0xF21NB
                                    444 	.globl _AX5043_0xF1CNB
                                    445 	.globl _AX5043_0xF18NB
                                    446 	.globl _AX5043_0xF0CNB
                                    447 	.globl _AX5043_0xF00NB
                                    448 	.globl _AX5043_XTALSTATUSNB
                                    449 	.globl _AX5043_XTALOSCNB
                                    450 	.globl _AX5043_XTALCAPNB
                                    451 	.globl _AX5043_XTALAMPLNB
                                    452 	.globl _AX5043_WAKEUPXOEARLYNB
                                    453 	.globl _AX5043_WAKEUPTIMER1NB
                                    454 	.globl _AX5043_WAKEUPTIMER0NB
                                    455 	.globl _AX5043_WAKEUPFREQ1NB
                                    456 	.globl _AX5043_WAKEUPFREQ0NB
                                    457 	.globl _AX5043_WAKEUP1NB
                                    458 	.globl _AX5043_WAKEUP0NB
                                    459 	.globl _AX5043_TXRATE2NB
                                    460 	.globl _AX5043_TXRATE1NB
                                    461 	.globl _AX5043_TXRATE0NB
                                    462 	.globl _AX5043_TXPWRCOEFFE1NB
                                    463 	.globl _AX5043_TXPWRCOEFFE0NB
                                    464 	.globl _AX5043_TXPWRCOEFFD1NB
                                    465 	.globl _AX5043_TXPWRCOEFFD0NB
                                    466 	.globl _AX5043_TXPWRCOEFFC1NB
                                    467 	.globl _AX5043_TXPWRCOEFFC0NB
                                    468 	.globl _AX5043_TXPWRCOEFFB1NB
                                    469 	.globl _AX5043_TXPWRCOEFFB0NB
                                    470 	.globl _AX5043_TXPWRCOEFFA1NB
                                    471 	.globl _AX5043_TXPWRCOEFFA0NB
                                    472 	.globl _AX5043_TRKRFFREQ2NB
                                    473 	.globl _AX5043_TRKRFFREQ1NB
                                    474 	.globl _AX5043_TRKRFFREQ0NB
                                    475 	.globl _AX5043_TRKPHASE1NB
                                    476 	.globl _AX5043_TRKPHASE0NB
                                    477 	.globl _AX5043_TRKFSKDEMOD1NB
                                    478 	.globl _AX5043_TRKFSKDEMOD0NB
                                    479 	.globl _AX5043_TRKFREQ1NB
                                    480 	.globl _AX5043_TRKFREQ0NB
                                    481 	.globl _AX5043_TRKDATARATE2NB
                                    482 	.globl _AX5043_TRKDATARATE1NB
                                    483 	.globl _AX5043_TRKDATARATE0NB
                                    484 	.globl _AX5043_TRKAMPLITUDE1NB
                                    485 	.globl _AX5043_TRKAMPLITUDE0NB
                                    486 	.globl _AX5043_TRKAFSKDEMOD1NB
                                    487 	.globl _AX5043_TRKAFSKDEMOD0NB
                                    488 	.globl _AX5043_TMGTXSETTLENB
                                    489 	.globl _AX5043_TMGTXBOOSTNB
                                    490 	.globl _AX5043_TMGRXSETTLENB
                                    491 	.globl _AX5043_TMGRXRSSINB
                                    492 	.globl _AX5043_TMGRXPREAMBLE3NB
                                    493 	.globl _AX5043_TMGRXPREAMBLE2NB
                                    494 	.globl _AX5043_TMGRXPREAMBLE1NB
                                    495 	.globl _AX5043_TMGRXOFFSACQNB
                                    496 	.globl _AX5043_TMGRXCOARSEAGCNB
                                    497 	.globl _AX5043_TMGRXBOOSTNB
                                    498 	.globl _AX5043_TMGRXAGCNB
                                    499 	.globl _AX5043_TIMER2NB
                                    500 	.globl _AX5043_TIMER1NB
                                    501 	.globl _AX5043_TIMER0NB
                                    502 	.globl _AX5043_SILICONREVISIONNB
                                    503 	.globl _AX5043_SCRATCHNB
                                    504 	.globl _AX5043_RXDATARATE2NB
                                    505 	.globl _AX5043_RXDATARATE1NB
                                    506 	.globl _AX5043_RXDATARATE0NB
                                    507 	.globl _AX5043_RSSIREFERENCENB
                                    508 	.globl _AX5043_RSSIABSTHRNB
                                    509 	.globl _AX5043_RSSINB
                                    510 	.globl _AX5043_REFNB
                                    511 	.globl _AX5043_RADIOSTATENB
                                    512 	.globl _AX5043_RADIOEVENTREQ1NB
                                    513 	.globl _AX5043_RADIOEVENTREQ0NB
                                    514 	.globl _AX5043_RADIOEVENTMASK1NB
                                    515 	.globl _AX5043_RADIOEVENTMASK0NB
                                    516 	.globl _AX5043_PWRMODENB
                                    517 	.globl _AX5043_PWRAMPNB
                                    518 	.globl _AX5043_POWSTICKYSTATNB
                                    519 	.globl _AX5043_POWSTATNB
                                    520 	.globl _AX5043_POWIRQMASKNB
                                    521 	.globl _AX5043_POWCTRL1NB
                                    522 	.globl _AX5043_PLLVCOIRNB
                                    523 	.globl _AX5043_PLLVCOINB
                                    524 	.globl _AX5043_PLLVCODIVNB
                                    525 	.globl _AX5043_PLLRNGCLKNB
                                    526 	.globl _AX5043_PLLRANGINGBNB
                                    527 	.globl _AX5043_PLLRANGINGANB
                                    528 	.globl _AX5043_PLLLOOPBOOSTNB
                                    529 	.globl _AX5043_PLLLOOPNB
                                    530 	.globl _AX5043_PLLLOCKDETNB
                                    531 	.globl _AX5043_PLLCPIBOOSTNB
                                    532 	.globl _AX5043_PLLCPINB
                                    533 	.globl _AX5043_PKTSTOREFLAGSNB
                                    534 	.globl _AX5043_PKTMISCFLAGSNB
                                    535 	.globl _AX5043_PKTCHUNKSIZENB
                                    536 	.globl _AX5043_PKTACCEPTFLAGSNB
                                    537 	.globl _AX5043_PINSTATENB
                                    538 	.globl _AX5043_PINFUNCSYSCLKNB
                                    539 	.globl _AX5043_PINFUNCPWRAMPNB
                                    540 	.globl _AX5043_PINFUNCIRQNB
                                    541 	.globl _AX5043_PINFUNCDCLKNB
                                    542 	.globl _AX5043_PINFUNCDATANB
                                    543 	.globl _AX5043_PINFUNCANTSELNB
                                    544 	.globl _AX5043_MODULATIONNB
                                    545 	.globl _AX5043_MODCFGPNB
                                    546 	.globl _AX5043_MODCFGFNB
                                    547 	.globl _AX5043_MODCFGANB
                                    548 	.globl _AX5043_MAXRFOFFSET2NB
                                    549 	.globl _AX5043_MAXRFOFFSET1NB
                                    550 	.globl _AX5043_MAXRFOFFSET0NB
                                    551 	.globl _AX5043_MAXDROFFSET2NB
                                    552 	.globl _AX5043_MAXDROFFSET1NB
                                    553 	.globl _AX5043_MAXDROFFSET0NB
                                    554 	.globl _AX5043_MATCH1PAT1NB
                                    555 	.globl _AX5043_MATCH1PAT0NB
                                    556 	.globl _AX5043_MATCH1MINNB
                                    557 	.globl _AX5043_MATCH1MAXNB
                                    558 	.globl _AX5043_MATCH1LENNB
                                    559 	.globl _AX5043_MATCH0PAT3NB
                                    560 	.globl _AX5043_MATCH0PAT2NB
                                    561 	.globl _AX5043_MATCH0PAT1NB
                                    562 	.globl _AX5043_MATCH0PAT0NB
                                    563 	.globl _AX5043_MATCH0MINNB
                                    564 	.globl _AX5043_MATCH0MAXNB
                                    565 	.globl _AX5043_MATCH0LENNB
                                    566 	.globl _AX5043_LPOSCSTATUSNB
                                    567 	.globl _AX5043_LPOSCREF1NB
                                    568 	.globl _AX5043_LPOSCREF0NB
                                    569 	.globl _AX5043_LPOSCPER1NB
                                    570 	.globl _AX5043_LPOSCPER0NB
                                    571 	.globl _AX5043_LPOSCKFILT1NB
                                    572 	.globl _AX5043_LPOSCKFILT0NB
                                    573 	.globl _AX5043_LPOSCFREQ1NB
                                    574 	.globl _AX5043_LPOSCFREQ0NB
                                    575 	.globl _AX5043_LPOSCCONFIGNB
                                    576 	.globl _AX5043_IRQREQUEST1NB
                                    577 	.globl _AX5043_IRQREQUEST0NB
                                    578 	.globl _AX5043_IRQMASK1NB
                                    579 	.globl _AX5043_IRQMASK0NB
                                    580 	.globl _AX5043_IRQINVERSION1NB
                                    581 	.globl _AX5043_IRQINVERSION0NB
                                    582 	.globl _AX5043_IFFREQ1NB
                                    583 	.globl _AX5043_IFFREQ0NB
                                    584 	.globl _AX5043_GPADCPERIODNB
                                    585 	.globl _AX5043_GPADCCTRLNB
                                    586 	.globl _AX5043_GPADC13VALUE1NB
                                    587 	.globl _AX5043_GPADC13VALUE0NB
                                    588 	.globl _AX5043_FSKDMIN1NB
                                    589 	.globl _AX5043_FSKDMIN0NB
                                    590 	.globl _AX5043_FSKDMAX1NB
                                    591 	.globl _AX5043_FSKDMAX0NB
                                    592 	.globl _AX5043_FSKDEV2NB
                                    593 	.globl _AX5043_FSKDEV1NB
                                    594 	.globl _AX5043_FSKDEV0NB
                                    595 	.globl _AX5043_FREQB3NB
                                    596 	.globl _AX5043_FREQB2NB
                                    597 	.globl _AX5043_FREQB1NB
                                    598 	.globl _AX5043_FREQB0NB
                                    599 	.globl _AX5043_FREQA3NB
                                    600 	.globl _AX5043_FREQA2NB
                                    601 	.globl _AX5043_FREQA1NB
                                    602 	.globl _AX5043_FREQA0NB
                                    603 	.globl _AX5043_FRAMINGNB
                                    604 	.globl _AX5043_FIFOTHRESH1NB
                                    605 	.globl _AX5043_FIFOTHRESH0NB
                                    606 	.globl _AX5043_FIFOSTATNB
                                    607 	.globl _AX5043_FIFOFREE1NB
                                    608 	.globl _AX5043_FIFOFREE0NB
                                    609 	.globl _AX5043_FIFODATANB
                                    610 	.globl _AX5043_FIFOCOUNT1NB
                                    611 	.globl _AX5043_FIFOCOUNT0NB
                                    612 	.globl _AX5043_FECSYNCNB
                                    613 	.globl _AX5043_FECSTATUSNB
                                    614 	.globl _AX5043_FECNB
                                    615 	.globl _AX5043_ENCODINGNB
                                    616 	.globl _AX5043_DIVERSITYNB
                                    617 	.globl _AX5043_DECIMATIONNB
                                    618 	.globl _AX5043_DACVALUE1NB
                                    619 	.globl _AX5043_DACVALUE0NB
                                    620 	.globl _AX5043_DACCONFIGNB
                                    621 	.globl _AX5043_CRCINIT3NB
                                    622 	.globl _AX5043_CRCINIT2NB
                                    623 	.globl _AX5043_CRCINIT1NB
                                    624 	.globl _AX5043_CRCINIT0NB
                                    625 	.globl _AX5043_BGNDRSSITHRNB
                                    626 	.globl _AX5043_BGNDRSSIGAINNB
                                    627 	.globl _AX5043_BGNDRSSINB
                                    628 	.globl _AX5043_BBTUNENB
                                    629 	.globl _AX5043_BBOFFSCAPNB
                                    630 	.globl _AX5043_AMPLFILTERNB
                                    631 	.globl _AX5043_AGCCOUNTERNB
                                    632 	.globl _AX5043_AFSKSPACE1NB
                                    633 	.globl _AX5043_AFSKSPACE0NB
                                    634 	.globl _AX5043_AFSKMARK1NB
                                    635 	.globl _AX5043_AFSKMARK0NB
                                    636 	.globl _AX5043_AFSKCTRLNB
                                    637 	.globl _AX5043_TIMEGAIN3
                                    638 	.globl _AX5043_TIMEGAIN2
                                    639 	.globl _AX5043_TIMEGAIN1
                                    640 	.globl _AX5043_TIMEGAIN0
                                    641 	.globl _AX5043_RXPARAMSETS
                                    642 	.globl _AX5043_RXPARAMCURSET
                                    643 	.globl _AX5043_PKTMAXLEN
                                    644 	.globl _AX5043_PKTLENOFFSET
                                    645 	.globl _AX5043_PKTLENCFG
                                    646 	.globl _AX5043_PKTADDRMASK3
                                    647 	.globl _AX5043_PKTADDRMASK2
                                    648 	.globl _AX5043_PKTADDRMASK1
                                    649 	.globl _AX5043_PKTADDRMASK0
                                    650 	.globl _AX5043_PKTADDRCFG
                                    651 	.globl _AX5043_PKTADDR3
                                    652 	.globl _AX5043_PKTADDR2
                                    653 	.globl _AX5043_PKTADDR1
                                    654 	.globl _AX5043_PKTADDR0
                                    655 	.globl _AX5043_PHASEGAIN3
                                    656 	.globl _AX5043_PHASEGAIN2
                                    657 	.globl _AX5043_PHASEGAIN1
                                    658 	.globl _AX5043_PHASEGAIN0
                                    659 	.globl _AX5043_FREQUENCYLEAK
                                    660 	.globl _AX5043_FREQUENCYGAIND3
                                    661 	.globl _AX5043_FREQUENCYGAIND2
                                    662 	.globl _AX5043_FREQUENCYGAIND1
                                    663 	.globl _AX5043_FREQUENCYGAIND0
                                    664 	.globl _AX5043_FREQUENCYGAINC3
                                    665 	.globl _AX5043_FREQUENCYGAINC2
                                    666 	.globl _AX5043_FREQUENCYGAINC1
                                    667 	.globl _AX5043_FREQUENCYGAINC0
                                    668 	.globl _AX5043_FREQUENCYGAINB3
                                    669 	.globl _AX5043_FREQUENCYGAINB2
                                    670 	.globl _AX5043_FREQUENCYGAINB1
                                    671 	.globl _AX5043_FREQUENCYGAINB0
                                    672 	.globl _AX5043_FREQUENCYGAINA3
                                    673 	.globl _AX5043_FREQUENCYGAINA2
                                    674 	.globl _AX5043_FREQUENCYGAINA1
                                    675 	.globl _AX5043_FREQUENCYGAINA0
                                    676 	.globl _AX5043_FREQDEV13
                                    677 	.globl _AX5043_FREQDEV12
                                    678 	.globl _AX5043_FREQDEV11
                                    679 	.globl _AX5043_FREQDEV10
                                    680 	.globl _AX5043_FREQDEV03
                                    681 	.globl _AX5043_FREQDEV02
                                    682 	.globl _AX5043_FREQDEV01
                                    683 	.globl _AX5043_FREQDEV00
                                    684 	.globl _AX5043_FOURFSK3
                                    685 	.globl _AX5043_FOURFSK2
                                    686 	.globl _AX5043_FOURFSK1
                                    687 	.globl _AX5043_FOURFSK0
                                    688 	.globl _AX5043_DRGAIN3
                                    689 	.globl _AX5043_DRGAIN2
                                    690 	.globl _AX5043_DRGAIN1
                                    691 	.globl _AX5043_DRGAIN0
                                    692 	.globl _AX5043_BBOFFSRES3
                                    693 	.globl _AX5043_BBOFFSRES2
                                    694 	.globl _AX5043_BBOFFSRES1
                                    695 	.globl _AX5043_BBOFFSRES0
                                    696 	.globl _AX5043_AMPLITUDEGAIN3
                                    697 	.globl _AX5043_AMPLITUDEGAIN2
                                    698 	.globl _AX5043_AMPLITUDEGAIN1
                                    699 	.globl _AX5043_AMPLITUDEGAIN0
                                    700 	.globl _AX5043_AGCTARGET3
                                    701 	.globl _AX5043_AGCTARGET2
                                    702 	.globl _AX5043_AGCTARGET1
                                    703 	.globl _AX5043_AGCTARGET0
                                    704 	.globl _AX5043_AGCMINMAX3
                                    705 	.globl _AX5043_AGCMINMAX2
                                    706 	.globl _AX5043_AGCMINMAX1
                                    707 	.globl _AX5043_AGCMINMAX0
                                    708 	.globl _AX5043_AGCGAIN3
                                    709 	.globl _AX5043_AGCGAIN2
                                    710 	.globl _AX5043_AGCGAIN1
                                    711 	.globl _AX5043_AGCGAIN0
                                    712 	.globl _AX5043_AGCAHYST3
                                    713 	.globl _AX5043_AGCAHYST2
                                    714 	.globl _AX5043_AGCAHYST1
                                    715 	.globl _AX5043_AGCAHYST0
                                    716 	.globl _AX5043_0xF44
                                    717 	.globl _AX5043_0xF35
                                    718 	.globl _AX5043_0xF34
                                    719 	.globl _AX5043_0xF33
                                    720 	.globl _AX5043_0xF32
                                    721 	.globl _AX5043_0xF31
                                    722 	.globl _AX5043_0xF30
                                    723 	.globl _AX5043_0xF26
                                    724 	.globl _AX5043_0xF23
                                    725 	.globl _AX5043_0xF22
                                    726 	.globl _AX5043_0xF21
                                    727 	.globl _AX5043_0xF1C
                                    728 	.globl _AX5043_0xF18
                                    729 	.globl _AX5043_0xF0C
                                    730 	.globl _AX5043_0xF00
                                    731 	.globl _AX5043_XTALSTATUS
                                    732 	.globl _AX5043_XTALOSC
                                    733 	.globl _AX5043_XTALCAP
                                    734 	.globl _AX5043_XTALAMPL
                                    735 	.globl _AX5043_WAKEUPXOEARLY
                                    736 	.globl _AX5043_WAKEUPTIMER1
                                    737 	.globl _AX5043_WAKEUPTIMER0
                                    738 	.globl _AX5043_WAKEUPFREQ1
                                    739 	.globl _AX5043_WAKEUPFREQ0
                                    740 	.globl _AX5043_WAKEUP1
                                    741 	.globl _AX5043_WAKEUP0
                                    742 	.globl _AX5043_TXRATE2
                                    743 	.globl _AX5043_TXRATE1
                                    744 	.globl _AX5043_TXRATE0
                                    745 	.globl _AX5043_TXPWRCOEFFE1
                                    746 	.globl _AX5043_TXPWRCOEFFE0
                                    747 	.globl _AX5043_TXPWRCOEFFD1
                                    748 	.globl _AX5043_TXPWRCOEFFD0
                                    749 	.globl _AX5043_TXPWRCOEFFC1
                                    750 	.globl _AX5043_TXPWRCOEFFC0
                                    751 	.globl _AX5043_TXPWRCOEFFB1
                                    752 	.globl _AX5043_TXPWRCOEFFB0
                                    753 	.globl _AX5043_TXPWRCOEFFA1
                                    754 	.globl _AX5043_TXPWRCOEFFA0
                                    755 	.globl _AX5043_TRKRFFREQ2
                                    756 	.globl _AX5043_TRKRFFREQ1
                                    757 	.globl _AX5043_TRKRFFREQ0
                                    758 	.globl _AX5043_TRKPHASE1
                                    759 	.globl _AX5043_TRKPHASE0
                                    760 	.globl _AX5043_TRKFSKDEMOD1
                                    761 	.globl _AX5043_TRKFSKDEMOD0
                                    762 	.globl _AX5043_TRKFREQ1
                                    763 	.globl _AX5043_TRKFREQ0
                                    764 	.globl _AX5043_TRKDATARATE2
                                    765 	.globl _AX5043_TRKDATARATE1
                                    766 	.globl _AX5043_TRKDATARATE0
                                    767 	.globl _AX5043_TRKAMPLITUDE1
                                    768 	.globl _AX5043_TRKAMPLITUDE0
                                    769 	.globl _AX5043_TRKAFSKDEMOD1
                                    770 	.globl _AX5043_TRKAFSKDEMOD0
                                    771 	.globl _AX5043_TMGTXSETTLE
                                    772 	.globl _AX5043_TMGTXBOOST
                                    773 	.globl _AX5043_TMGRXSETTLE
                                    774 	.globl _AX5043_TMGRXRSSI
                                    775 	.globl _AX5043_TMGRXPREAMBLE3
                                    776 	.globl _AX5043_TMGRXPREAMBLE2
                                    777 	.globl _AX5043_TMGRXPREAMBLE1
                                    778 	.globl _AX5043_TMGRXOFFSACQ
                                    779 	.globl _AX5043_TMGRXCOARSEAGC
                                    780 	.globl _AX5043_TMGRXBOOST
                                    781 	.globl _AX5043_TMGRXAGC
                                    782 	.globl _AX5043_TIMER2
                                    783 	.globl _AX5043_TIMER1
                                    784 	.globl _AX5043_TIMER0
                                    785 	.globl _AX5043_SILICONREVISION
                                    786 	.globl _AX5043_SCRATCH
                                    787 	.globl _AX5043_RXDATARATE2
                                    788 	.globl _AX5043_RXDATARATE1
                                    789 	.globl _AX5043_RXDATARATE0
                                    790 	.globl _AX5043_RSSIREFERENCE
                                    791 	.globl _AX5043_RSSIABSTHR
                                    792 	.globl _AX5043_RSSI
                                    793 	.globl _AX5043_REF
                                    794 	.globl _AX5043_RADIOSTATE
                                    795 	.globl _AX5043_RADIOEVENTREQ1
                                    796 	.globl _AX5043_RADIOEVENTREQ0
                                    797 	.globl _AX5043_RADIOEVENTMASK1
                                    798 	.globl _AX5043_RADIOEVENTMASK0
                                    799 	.globl _AX5043_PWRMODE
                                    800 	.globl _AX5043_PWRAMP
                                    801 	.globl _AX5043_POWSTICKYSTAT
                                    802 	.globl _AX5043_POWSTAT
                                    803 	.globl _AX5043_POWIRQMASK
                                    804 	.globl _AX5043_POWCTRL1
                                    805 	.globl _AX5043_PLLVCOIR
                                    806 	.globl _AX5043_PLLVCOI
                                    807 	.globl _AX5043_PLLVCODIV
                                    808 	.globl _AX5043_PLLRNGCLK
                                    809 	.globl _AX5043_PLLRANGINGB
                                    810 	.globl _AX5043_PLLRANGINGA
                                    811 	.globl _AX5043_PLLLOOPBOOST
                                    812 	.globl _AX5043_PLLLOOP
                                    813 	.globl _AX5043_PLLLOCKDET
                                    814 	.globl _AX5043_PLLCPIBOOST
                                    815 	.globl _AX5043_PLLCPI
                                    816 	.globl _AX5043_PKTSTOREFLAGS
                                    817 	.globl _AX5043_PKTMISCFLAGS
                                    818 	.globl _AX5043_PKTCHUNKSIZE
                                    819 	.globl _AX5043_PKTACCEPTFLAGS
                                    820 	.globl _AX5043_PINSTATE
                                    821 	.globl _AX5043_PINFUNCSYSCLK
                                    822 	.globl _AX5043_PINFUNCPWRAMP
                                    823 	.globl _AX5043_PINFUNCIRQ
                                    824 	.globl _AX5043_PINFUNCDCLK
                                    825 	.globl _AX5043_PINFUNCDATA
                                    826 	.globl _AX5043_PINFUNCANTSEL
                                    827 	.globl _AX5043_MODULATION
                                    828 	.globl _AX5043_MODCFGP
                                    829 	.globl _AX5043_MODCFGF
                                    830 	.globl _AX5043_MODCFGA
                                    831 	.globl _AX5043_MAXRFOFFSET2
                                    832 	.globl _AX5043_MAXRFOFFSET1
                                    833 	.globl _AX5043_MAXRFOFFSET0
                                    834 	.globl _AX5043_MAXDROFFSET2
                                    835 	.globl _AX5043_MAXDROFFSET1
                                    836 	.globl _AX5043_MAXDROFFSET0
                                    837 	.globl _AX5043_MATCH1PAT1
                                    838 	.globl _AX5043_MATCH1PAT0
                                    839 	.globl _AX5043_MATCH1MIN
                                    840 	.globl _AX5043_MATCH1MAX
                                    841 	.globl _AX5043_MATCH1LEN
                                    842 	.globl _AX5043_MATCH0PAT3
                                    843 	.globl _AX5043_MATCH0PAT2
                                    844 	.globl _AX5043_MATCH0PAT1
                                    845 	.globl _AX5043_MATCH0PAT0
                                    846 	.globl _AX5043_MATCH0MIN
                                    847 	.globl _AX5043_MATCH0MAX
                                    848 	.globl _AX5043_MATCH0LEN
                                    849 	.globl _AX5043_LPOSCSTATUS
                                    850 	.globl _AX5043_LPOSCREF1
                                    851 	.globl _AX5043_LPOSCREF0
                                    852 	.globl _AX5043_LPOSCPER1
                                    853 	.globl _AX5043_LPOSCPER0
                                    854 	.globl _AX5043_LPOSCKFILT1
                                    855 	.globl _AX5043_LPOSCKFILT0
                                    856 	.globl _AX5043_LPOSCFREQ1
                                    857 	.globl _AX5043_LPOSCFREQ0
                                    858 	.globl _AX5043_LPOSCCONFIG
                                    859 	.globl _AX5043_IRQREQUEST1
                                    860 	.globl _AX5043_IRQREQUEST0
                                    861 	.globl _AX5043_IRQMASK1
                                    862 	.globl _AX5043_IRQMASK0
                                    863 	.globl _AX5043_IRQINVERSION1
                                    864 	.globl _AX5043_IRQINVERSION0
                                    865 	.globl _AX5043_IFFREQ1
                                    866 	.globl _AX5043_IFFREQ0
                                    867 	.globl _AX5043_GPADCPERIOD
                                    868 	.globl _AX5043_GPADCCTRL
                                    869 	.globl _AX5043_GPADC13VALUE1
                                    870 	.globl _AX5043_GPADC13VALUE0
                                    871 	.globl _AX5043_FSKDMIN1
                                    872 	.globl _AX5043_FSKDMIN0
                                    873 	.globl _AX5043_FSKDMAX1
                                    874 	.globl _AX5043_FSKDMAX0
                                    875 	.globl _AX5043_FSKDEV2
                                    876 	.globl _AX5043_FSKDEV1
                                    877 	.globl _AX5043_FSKDEV0
                                    878 	.globl _AX5043_FREQB3
                                    879 	.globl _AX5043_FREQB2
                                    880 	.globl _AX5043_FREQB1
                                    881 	.globl _AX5043_FREQB0
                                    882 	.globl _AX5043_FREQA3
                                    883 	.globl _AX5043_FREQA2
                                    884 	.globl _AX5043_FREQA1
                                    885 	.globl _AX5043_FREQA0
                                    886 	.globl _AX5043_FRAMING
                                    887 	.globl _AX5043_FIFOTHRESH1
                                    888 	.globl _AX5043_FIFOTHRESH0
                                    889 	.globl _AX5043_FIFOSTAT
                                    890 	.globl _AX5043_FIFOFREE1
                                    891 	.globl _AX5043_FIFOFREE0
                                    892 	.globl _AX5043_FIFODATA
                                    893 	.globl _AX5043_FIFOCOUNT1
                                    894 	.globl _AX5043_FIFOCOUNT0
                                    895 	.globl _AX5043_FECSYNC
                                    896 	.globl _AX5043_FECSTATUS
                                    897 	.globl _AX5043_FEC
                                    898 	.globl _AX5043_ENCODING
                                    899 	.globl _AX5043_DIVERSITY
                                    900 	.globl _AX5043_DECIMATION
                                    901 	.globl _AX5043_DACVALUE1
                                    902 	.globl _AX5043_DACVALUE0
                                    903 	.globl _AX5043_DACCONFIG
                                    904 	.globl _AX5043_CRCINIT3
                                    905 	.globl _AX5043_CRCINIT2
                                    906 	.globl _AX5043_CRCINIT1
                                    907 	.globl _AX5043_CRCINIT0
                                    908 	.globl _AX5043_BGNDRSSITHR
                                    909 	.globl _AX5043_BGNDRSSIGAIN
                                    910 	.globl _AX5043_BGNDRSSI
                                    911 	.globl _AX5043_BBTUNE
                                    912 	.globl _AX5043_BBOFFSCAP
                                    913 	.globl _AX5043_AMPLFILTER
                                    914 	.globl _AX5043_AGCCOUNTER
                                    915 	.globl _AX5043_AFSKSPACE1
                                    916 	.globl _AX5043_AFSKSPACE0
                                    917 	.globl _AX5043_AFSKMARK1
                                    918 	.globl _AX5043_AFSKMARK0
                                    919 	.globl _AX5043_AFSKCTRL
                                    920 	.globl _XTALREADY
                                    921 	.globl _XTALOSC
                                    922 	.globl _XTALAMPL
                                    923 	.globl _SILICONREV
                                    924 	.globl _SCRATCH3
                                    925 	.globl _SCRATCH2
                                    926 	.globl _SCRATCH1
                                    927 	.globl _SCRATCH0
                                    928 	.globl _RADIOMUX
                                    929 	.globl _RADIOFSTATADDR
                                    930 	.globl _RADIOFSTATADDR1
                                    931 	.globl _RADIOFSTATADDR0
                                    932 	.globl _RADIOFDATAADDR
                                    933 	.globl _RADIOFDATAADDR1
                                    934 	.globl _RADIOFDATAADDR0
                                    935 	.globl _OSCRUN
                                    936 	.globl _OSCREADY
                                    937 	.globl _OSCFORCERUN
                                    938 	.globl _OSCCALIB
                                    939 	.globl _MISCCTRL
                                    940 	.globl _LPXOSCGM
                                    941 	.globl _LPOSCREF
                                    942 	.globl _LPOSCREF1
                                    943 	.globl _LPOSCREF0
                                    944 	.globl _LPOSCPER
                                    945 	.globl _LPOSCPER1
                                    946 	.globl _LPOSCPER0
                                    947 	.globl _LPOSCKFILT
                                    948 	.globl _LPOSCKFILT1
                                    949 	.globl _LPOSCKFILT0
                                    950 	.globl _LPOSCFREQ
                                    951 	.globl _LPOSCFREQ1
                                    952 	.globl _LPOSCFREQ0
                                    953 	.globl _LPOSCCONFIG
                                    954 	.globl _PINSEL
                                    955 	.globl _PINCHGC
                                    956 	.globl _PINCHGB
                                    957 	.globl _PINCHGA
                                    958 	.globl _PALTRADIO
                                    959 	.globl _PALTC
                                    960 	.globl _PALTB
                                    961 	.globl _PALTA
                                    962 	.globl _INTCHGC
                                    963 	.globl _INTCHGB
                                    964 	.globl _INTCHGA
                                    965 	.globl _EXTIRQ
                                    966 	.globl _GPIOENABLE
                                    967 	.globl _ANALOGA
                                    968 	.globl _FRCOSCREF
                                    969 	.globl _FRCOSCREF1
                                    970 	.globl _FRCOSCREF0
                                    971 	.globl _FRCOSCPER
                                    972 	.globl _FRCOSCPER1
                                    973 	.globl _FRCOSCPER0
                                    974 	.globl _FRCOSCKFILT
                                    975 	.globl _FRCOSCKFILT1
                                    976 	.globl _FRCOSCKFILT0
                                    977 	.globl _FRCOSCFREQ
                                    978 	.globl _FRCOSCFREQ1
                                    979 	.globl _FRCOSCFREQ0
                                    980 	.globl _FRCOSCCTRL
                                    981 	.globl _FRCOSCCONFIG
                                    982 	.globl _DMA1CONFIG
                                    983 	.globl _DMA1ADDR
                                    984 	.globl _DMA1ADDR1
                                    985 	.globl _DMA1ADDR0
                                    986 	.globl _DMA0CONFIG
                                    987 	.globl _DMA0ADDR
                                    988 	.globl _DMA0ADDR1
                                    989 	.globl _DMA0ADDR0
                                    990 	.globl _ADCTUNE2
                                    991 	.globl _ADCTUNE1
                                    992 	.globl _ADCTUNE0
                                    993 	.globl _ADCCH3VAL
                                    994 	.globl _ADCCH3VAL1
                                    995 	.globl _ADCCH3VAL0
                                    996 	.globl _ADCCH2VAL
                                    997 	.globl _ADCCH2VAL1
                                    998 	.globl _ADCCH2VAL0
                                    999 	.globl _ADCCH1VAL
                                   1000 	.globl _ADCCH1VAL1
                                   1001 	.globl _ADCCH1VAL0
                                   1002 	.globl _ADCCH0VAL
                                   1003 	.globl _ADCCH0VAL1
                                   1004 	.globl _ADCCH0VAL0
                                   1005 	.globl _axradio_transmit_PARM_3
                                   1006 	.globl _axradio_transmit_PARM_2
                                   1007 	.globl _aligned_alloc_PARM_2
                                   1008 	.globl _axradio_trxstate
                                   1009 	.globl _axradio_mode
                                   1010 	.globl _axradio_conv_time_totimer0
                                   1011 	.globl _axradio_isr
                                   1012 	.globl _ax5043_receiver_on_continuous
                                   1013 	.globl _ax5043_receiver_on_wor
                                   1014 	.globl _ax5043_prepare_tx
                                   1015 	.globl _ax5043_off
                                   1016 	.globl _ax5043_off_xtal
                                   1017 	.globl _axradio_wait_for_xtal
                                   1018 	.globl _axradio_init
                                   1019 	.globl _axradio_cansleep
                                   1020 	.globl _axradio_set_mode
                                   1021 	.globl _axradio_get_mode
                                   1022 	.globl _axradio_set_channel
                                   1023 	.globl _axradio_get_channel
                                   1024 	.globl _axradio_get_pllrange
                                   1025 	.globl _axradio_get_pllvcoi
                                   1026 	.globl _axradio_set_freqoffset
                                   1027 	.globl _axradio_get_freqoffset
                                   1028 	.globl _axradio_set_local_address
                                   1029 	.globl _axradio_get_local_address
                                   1030 	.globl _axradio_set_default_remote_address
                                   1031 	.globl _axradio_get_default_remote_address
                                   1032 	.globl _axradio_transmit
                                   1033 	.globl _axradio_agc_freeze
                                   1034 	.globl _axradio_agc_thaw
                                   1035 	.globl _axradio_calibrate_lposc
                                   1036 	.globl _axradio_commsleepexit
                                   1037 	.globl _axradio_check_fourfsk_modulation
                                   1038 	.globl _axradio_get_transmitter_pa_type
                                   1039 ;--------------------------------------------------------
                                   1040 ; special function registers
                                   1041 ;--------------------------------------------------------
                                   1042 	.area RSEG    (ABS,DATA)
      000000                       1043 	.org 0x0000
                           0000E0  1044 G$ACC$0$0 == 0x00e0
                           0000E0  1045 _ACC	=	0x00e0
                           0000F0  1046 G$B$0$0 == 0x00f0
                           0000F0  1047 _B	=	0x00f0
                           000083  1048 G$DPH$0$0 == 0x0083
                           000083  1049 _DPH	=	0x0083
                           000085  1050 G$DPH1$0$0 == 0x0085
                           000085  1051 _DPH1	=	0x0085
                           000082  1052 G$DPL$0$0 == 0x0082
                           000082  1053 _DPL	=	0x0082
                           000084  1054 G$DPL1$0$0 == 0x0084
                           000084  1055 _DPL1	=	0x0084
                           008382  1056 G$DPTR0$0$0 == 0x8382
                           008382  1057 _DPTR0	=	0x8382
                           008584  1058 G$DPTR1$0$0 == 0x8584
                           008584  1059 _DPTR1	=	0x8584
                           000086  1060 G$DPS$0$0 == 0x0086
                           000086  1061 _DPS	=	0x0086
                           0000A0  1062 G$E2IE$0$0 == 0x00a0
                           0000A0  1063 _E2IE	=	0x00a0
                           0000C0  1064 G$E2IP$0$0 == 0x00c0
                           0000C0  1065 _E2IP	=	0x00c0
                           000098  1066 G$EIE$0$0 == 0x0098
                           000098  1067 _EIE	=	0x0098
                           0000B0  1068 G$EIP$0$0 == 0x00b0
                           0000B0  1069 _EIP	=	0x00b0
                           0000A8  1070 G$IE$0$0 == 0x00a8
                           0000A8  1071 _IE	=	0x00a8
                           0000B8  1072 G$IP$0$0 == 0x00b8
                           0000B8  1073 _IP	=	0x00b8
                           000087  1074 G$PCON$0$0 == 0x0087
                           000087  1075 _PCON	=	0x0087
                           0000D0  1076 G$PSW$0$0 == 0x00d0
                           0000D0  1077 _PSW	=	0x00d0
                           000081  1078 G$SP$0$0 == 0x0081
                           000081  1079 _SP	=	0x0081
                           0000D9  1080 G$XPAGE$0$0 == 0x00d9
                           0000D9  1081 _XPAGE	=	0x00d9
                           0000D9  1082 G$_XPAGE$0$0 == 0x00d9
                           0000D9  1083 __XPAGE	=	0x00d9
                           0000CA  1084 G$ADCCH0CONFIG$0$0 == 0x00ca
                           0000CA  1085 _ADCCH0CONFIG	=	0x00ca
                           0000CB  1086 G$ADCCH1CONFIG$0$0 == 0x00cb
                           0000CB  1087 _ADCCH1CONFIG	=	0x00cb
                           0000D2  1088 G$ADCCH2CONFIG$0$0 == 0x00d2
                           0000D2  1089 _ADCCH2CONFIG	=	0x00d2
                           0000D3  1090 G$ADCCH3CONFIG$0$0 == 0x00d3
                           0000D3  1091 _ADCCH3CONFIG	=	0x00d3
                           0000D1  1092 G$ADCCLKSRC$0$0 == 0x00d1
                           0000D1  1093 _ADCCLKSRC	=	0x00d1
                           0000C9  1094 G$ADCCONV$0$0 == 0x00c9
                           0000C9  1095 _ADCCONV	=	0x00c9
                           0000E1  1096 G$ANALOGCOMP$0$0 == 0x00e1
                           0000E1  1097 _ANALOGCOMP	=	0x00e1
                           0000C6  1098 G$CLKCON$0$0 == 0x00c6
                           0000C6  1099 _CLKCON	=	0x00c6
                           0000C7  1100 G$CLKSTAT$0$0 == 0x00c7
                           0000C7  1101 _CLKSTAT	=	0x00c7
                           000097  1102 G$CODECONFIG$0$0 == 0x0097
                           000097  1103 _CODECONFIG	=	0x0097
                           0000E3  1104 G$DBGLNKBUF$0$0 == 0x00e3
                           0000E3  1105 _DBGLNKBUF	=	0x00e3
                           0000E2  1106 G$DBGLNKSTAT$0$0 == 0x00e2
                           0000E2  1107 _DBGLNKSTAT	=	0x00e2
                           000089  1108 G$DIRA$0$0 == 0x0089
                           000089  1109 _DIRA	=	0x0089
                           00008A  1110 G$DIRB$0$0 == 0x008a
                           00008A  1111 _DIRB	=	0x008a
                           00008B  1112 G$DIRC$0$0 == 0x008b
                           00008B  1113 _DIRC	=	0x008b
                           00008E  1114 G$DIRR$0$0 == 0x008e
                           00008E  1115 _DIRR	=	0x008e
                           0000C8  1116 G$PINA$0$0 == 0x00c8
                           0000C8  1117 _PINA	=	0x00c8
                           0000E8  1118 G$PINB$0$0 == 0x00e8
                           0000E8  1119 _PINB	=	0x00e8
                           0000F8  1120 G$PINC$0$0 == 0x00f8
                           0000F8  1121 _PINC	=	0x00f8
                           00008D  1122 G$PINR$0$0 == 0x008d
                           00008D  1123 _PINR	=	0x008d
                           000080  1124 G$PORTA$0$0 == 0x0080
                           000080  1125 _PORTA	=	0x0080
                           000088  1126 G$PORTB$0$0 == 0x0088
                           000088  1127 _PORTB	=	0x0088
                           000090  1128 G$PORTC$0$0 == 0x0090
                           000090  1129 _PORTC	=	0x0090
                           00008C  1130 G$PORTR$0$0 == 0x008c
                           00008C  1131 _PORTR	=	0x008c
                           0000CE  1132 G$IC0CAPT0$0$0 == 0x00ce
                           0000CE  1133 _IC0CAPT0	=	0x00ce
                           0000CF  1134 G$IC0CAPT1$0$0 == 0x00cf
                           0000CF  1135 _IC0CAPT1	=	0x00cf
                           00CFCE  1136 G$IC0CAPT$0$0 == 0xcfce
                           00CFCE  1137 _IC0CAPT	=	0xcfce
                           0000CC  1138 G$IC0MODE$0$0 == 0x00cc
                           0000CC  1139 _IC0MODE	=	0x00cc
                           0000CD  1140 G$IC0STATUS$0$0 == 0x00cd
                           0000CD  1141 _IC0STATUS	=	0x00cd
                           0000D6  1142 G$IC1CAPT0$0$0 == 0x00d6
                           0000D6  1143 _IC1CAPT0	=	0x00d6
                           0000D7  1144 G$IC1CAPT1$0$0 == 0x00d7
                           0000D7  1145 _IC1CAPT1	=	0x00d7
                           00D7D6  1146 G$IC1CAPT$0$0 == 0xd7d6
                           00D7D6  1147 _IC1CAPT	=	0xd7d6
                           0000D4  1148 G$IC1MODE$0$0 == 0x00d4
                           0000D4  1149 _IC1MODE	=	0x00d4
                           0000D5  1150 G$IC1STATUS$0$0 == 0x00d5
                           0000D5  1151 _IC1STATUS	=	0x00d5
                           000092  1152 G$NVADDR0$0$0 == 0x0092
                           000092  1153 _NVADDR0	=	0x0092
                           000093  1154 G$NVADDR1$0$0 == 0x0093
                           000093  1155 _NVADDR1	=	0x0093
                           009392  1156 G$NVADDR$0$0 == 0x9392
                           009392  1157 _NVADDR	=	0x9392
                           000094  1158 G$NVDATA0$0$0 == 0x0094
                           000094  1159 _NVDATA0	=	0x0094
                           000095  1160 G$NVDATA1$0$0 == 0x0095
                           000095  1161 _NVDATA1	=	0x0095
                           009594  1162 G$NVDATA$0$0 == 0x9594
                           009594  1163 _NVDATA	=	0x9594
                           000096  1164 G$NVKEY$0$0 == 0x0096
                           000096  1165 _NVKEY	=	0x0096
                           000091  1166 G$NVSTATUS$0$0 == 0x0091
                           000091  1167 _NVSTATUS	=	0x0091
                           0000BC  1168 G$OC0COMP0$0$0 == 0x00bc
                           0000BC  1169 _OC0COMP0	=	0x00bc
                           0000BD  1170 G$OC0COMP1$0$0 == 0x00bd
                           0000BD  1171 _OC0COMP1	=	0x00bd
                           00BDBC  1172 G$OC0COMP$0$0 == 0xbdbc
                           00BDBC  1173 _OC0COMP	=	0xbdbc
                           0000B9  1174 G$OC0MODE$0$0 == 0x00b9
                           0000B9  1175 _OC0MODE	=	0x00b9
                           0000BA  1176 G$OC0PIN$0$0 == 0x00ba
                           0000BA  1177 _OC0PIN	=	0x00ba
                           0000BB  1178 G$OC0STATUS$0$0 == 0x00bb
                           0000BB  1179 _OC0STATUS	=	0x00bb
                           0000C4  1180 G$OC1COMP0$0$0 == 0x00c4
                           0000C4  1181 _OC1COMP0	=	0x00c4
                           0000C5  1182 G$OC1COMP1$0$0 == 0x00c5
                           0000C5  1183 _OC1COMP1	=	0x00c5
                           00C5C4  1184 G$OC1COMP$0$0 == 0xc5c4
                           00C5C4  1185 _OC1COMP	=	0xc5c4
                           0000C1  1186 G$OC1MODE$0$0 == 0x00c1
                           0000C1  1187 _OC1MODE	=	0x00c1
                           0000C2  1188 G$OC1PIN$0$0 == 0x00c2
                           0000C2  1189 _OC1PIN	=	0x00c2
                           0000C3  1190 G$OC1STATUS$0$0 == 0x00c3
                           0000C3  1191 _OC1STATUS	=	0x00c3
                           0000B1  1192 G$RADIOACC$0$0 == 0x00b1
                           0000B1  1193 _RADIOACC	=	0x00b1
                           0000B3  1194 G$RADIOADDR0$0$0 == 0x00b3
                           0000B3  1195 _RADIOADDR0	=	0x00b3
                           0000B2  1196 G$RADIOADDR1$0$0 == 0x00b2
                           0000B2  1197 _RADIOADDR1	=	0x00b2
                           00B2B3  1198 G$RADIOADDR$0$0 == 0xb2b3
                           00B2B3  1199 _RADIOADDR	=	0xb2b3
                           0000B7  1200 G$RADIODATA0$0$0 == 0x00b7
                           0000B7  1201 _RADIODATA0	=	0x00b7
                           0000B6  1202 G$RADIODATA1$0$0 == 0x00b6
                           0000B6  1203 _RADIODATA1	=	0x00b6
                           0000B5  1204 G$RADIODATA2$0$0 == 0x00b5
                           0000B5  1205 _RADIODATA2	=	0x00b5
                           0000B4  1206 G$RADIODATA3$0$0 == 0x00b4
                           0000B4  1207 _RADIODATA3	=	0x00b4
                           B4B5B6B7  1208 G$RADIODATA$0$0 == 0xb4b5b6b7
                           B4B5B6B7  1209 _RADIODATA	=	0xb4b5b6b7
                           0000BE  1210 G$RADIOSTAT0$0$0 == 0x00be
                           0000BE  1211 _RADIOSTAT0	=	0x00be
                           0000BF  1212 G$RADIOSTAT1$0$0 == 0x00bf
                           0000BF  1213 _RADIOSTAT1	=	0x00bf
                           00BFBE  1214 G$RADIOSTAT$0$0 == 0xbfbe
                           00BFBE  1215 _RADIOSTAT	=	0xbfbe
                           0000DF  1216 G$SPCLKSRC$0$0 == 0x00df
                           0000DF  1217 _SPCLKSRC	=	0x00df
                           0000DC  1218 G$SPMODE$0$0 == 0x00dc
                           0000DC  1219 _SPMODE	=	0x00dc
                           0000DE  1220 G$SPSHREG$0$0 == 0x00de
                           0000DE  1221 _SPSHREG	=	0x00de
                           0000DD  1222 G$SPSTATUS$0$0 == 0x00dd
                           0000DD  1223 _SPSTATUS	=	0x00dd
                           00009A  1224 G$T0CLKSRC$0$0 == 0x009a
                           00009A  1225 _T0CLKSRC	=	0x009a
                           00009C  1226 G$T0CNT0$0$0 == 0x009c
                           00009C  1227 _T0CNT0	=	0x009c
                           00009D  1228 G$T0CNT1$0$0 == 0x009d
                           00009D  1229 _T0CNT1	=	0x009d
                           009D9C  1230 G$T0CNT$0$0 == 0x9d9c
                           009D9C  1231 _T0CNT	=	0x9d9c
                           000099  1232 G$T0MODE$0$0 == 0x0099
                           000099  1233 _T0MODE	=	0x0099
                           00009E  1234 G$T0PERIOD0$0$0 == 0x009e
                           00009E  1235 _T0PERIOD0	=	0x009e
                           00009F  1236 G$T0PERIOD1$0$0 == 0x009f
                           00009F  1237 _T0PERIOD1	=	0x009f
                           009F9E  1238 G$T0PERIOD$0$0 == 0x9f9e
                           009F9E  1239 _T0PERIOD	=	0x9f9e
                           00009B  1240 G$T0STATUS$0$0 == 0x009b
                           00009B  1241 _T0STATUS	=	0x009b
                           0000A2  1242 G$T1CLKSRC$0$0 == 0x00a2
                           0000A2  1243 _T1CLKSRC	=	0x00a2
                           0000A4  1244 G$T1CNT0$0$0 == 0x00a4
                           0000A4  1245 _T1CNT0	=	0x00a4
                           0000A5  1246 G$T1CNT1$0$0 == 0x00a5
                           0000A5  1247 _T1CNT1	=	0x00a5
                           00A5A4  1248 G$T1CNT$0$0 == 0xa5a4
                           00A5A4  1249 _T1CNT	=	0xa5a4
                           0000A1  1250 G$T1MODE$0$0 == 0x00a1
                           0000A1  1251 _T1MODE	=	0x00a1
                           0000A6  1252 G$T1PERIOD0$0$0 == 0x00a6
                           0000A6  1253 _T1PERIOD0	=	0x00a6
                           0000A7  1254 G$T1PERIOD1$0$0 == 0x00a7
                           0000A7  1255 _T1PERIOD1	=	0x00a7
                           00A7A6  1256 G$T1PERIOD$0$0 == 0xa7a6
                           00A7A6  1257 _T1PERIOD	=	0xa7a6
                           0000A3  1258 G$T1STATUS$0$0 == 0x00a3
                           0000A3  1259 _T1STATUS	=	0x00a3
                           0000AA  1260 G$T2CLKSRC$0$0 == 0x00aa
                           0000AA  1261 _T2CLKSRC	=	0x00aa
                           0000AC  1262 G$T2CNT0$0$0 == 0x00ac
                           0000AC  1263 _T2CNT0	=	0x00ac
                           0000AD  1264 G$T2CNT1$0$0 == 0x00ad
                           0000AD  1265 _T2CNT1	=	0x00ad
                           00ADAC  1266 G$T2CNT$0$0 == 0xadac
                           00ADAC  1267 _T2CNT	=	0xadac
                           0000A9  1268 G$T2MODE$0$0 == 0x00a9
                           0000A9  1269 _T2MODE	=	0x00a9
                           0000AE  1270 G$T2PERIOD0$0$0 == 0x00ae
                           0000AE  1271 _T2PERIOD0	=	0x00ae
                           0000AF  1272 G$T2PERIOD1$0$0 == 0x00af
                           0000AF  1273 _T2PERIOD1	=	0x00af
                           00AFAE  1274 G$T2PERIOD$0$0 == 0xafae
                           00AFAE  1275 _T2PERIOD	=	0xafae
                           0000AB  1276 G$T2STATUS$0$0 == 0x00ab
                           0000AB  1277 _T2STATUS	=	0x00ab
                           0000E4  1278 G$U0CTRL$0$0 == 0x00e4
                           0000E4  1279 _U0CTRL	=	0x00e4
                           0000E7  1280 G$U0MODE$0$0 == 0x00e7
                           0000E7  1281 _U0MODE	=	0x00e7
                           0000E6  1282 G$U0SHREG$0$0 == 0x00e6
                           0000E6  1283 _U0SHREG	=	0x00e6
                           0000E5  1284 G$U0STATUS$0$0 == 0x00e5
                           0000E5  1285 _U0STATUS	=	0x00e5
                           0000EC  1286 G$U1CTRL$0$0 == 0x00ec
                           0000EC  1287 _U1CTRL	=	0x00ec
                           0000EF  1288 G$U1MODE$0$0 == 0x00ef
                           0000EF  1289 _U1MODE	=	0x00ef
                           0000EE  1290 G$U1SHREG$0$0 == 0x00ee
                           0000EE  1291 _U1SHREG	=	0x00ee
                           0000ED  1292 G$U1STATUS$0$0 == 0x00ed
                           0000ED  1293 _U1STATUS	=	0x00ed
                           0000DA  1294 G$WDTCFG$0$0 == 0x00da
                           0000DA  1295 _WDTCFG	=	0x00da
                           0000DB  1296 G$WDTRESET$0$0 == 0x00db
                           0000DB  1297 _WDTRESET	=	0x00db
                           0000F1  1298 G$WTCFGA$0$0 == 0x00f1
                           0000F1  1299 _WTCFGA	=	0x00f1
                           0000F9  1300 G$WTCFGB$0$0 == 0x00f9
                           0000F9  1301 _WTCFGB	=	0x00f9
                           0000F2  1302 G$WTCNTA0$0$0 == 0x00f2
                           0000F2  1303 _WTCNTA0	=	0x00f2
                           0000F3  1304 G$WTCNTA1$0$0 == 0x00f3
                           0000F3  1305 _WTCNTA1	=	0x00f3
                           00F3F2  1306 G$WTCNTA$0$0 == 0xf3f2
                           00F3F2  1307 _WTCNTA	=	0xf3f2
                           0000FA  1308 G$WTCNTB0$0$0 == 0x00fa
                           0000FA  1309 _WTCNTB0	=	0x00fa
                           0000FB  1310 G$WTCNTB1$0$0 == 0x00fb
                           0000FB  1311 _WTCNTB1	=	0x00fb
                           00FBFA  1312 G$WTCNTB$0$0 == 0xfbfa
                           00FBFA  1313 _WTCNTB	=	0xfbfa
                           0000EB  1314 G$WTCNTR1$0$0 == 0x00eb
                           0000EB  1315 _WTCNTR1	=	0x00eb
                           0000F4  1316 G$WTEVTA0$0$0 == 0x00f4
                           0000F4  1317 _WTEVTA0	=	0x00f4
                           0000F5  1318 G$WTEVTA1$0$0 == 0x00f5
                           0000F5  1319 _WTEVTA1	=	0x00f5
                           00F5F4  1320 G$WTEVTA$0$0 == 0xf5f4
                           00F5F4  1321 _WTEVTA	=	0xf5f4
                           0000F6  1322 G$WTEVTB0$0$0 == 0x00f6
                           0000F6  1323 _WTEVTB0	=	0x00f6
                           0000F7  1324 G$WTEVTB1$0$0 == 0x00f7
                           0000F7  1325 _WTEVTB1	=	0x00f7
                           00F7F6  1326 G$WTEVTB$0$0 == 0xf7f6
                           00F7F6  1327 _WTEVTB	=	0xf7f6
                           0000FC  1328 G$WTEVTC0$0$0 == 0x00fc
                           0000FC  1329 _WTEVTC0	=	0x00fc
                           0000FD  1330 G$WTEVTC1$0$0 == 0x00fd
                           0000FD  1331 _WTEVTC1	=	0x00fd
                           00FDFC  1332 G$WTEVTC$0$0 == 0xfdfc
                           00FDFC  1333 _WTEVTC	=	0xfdfc
                           0000FE  1334 G$WTEVTD0$0$0 == 0x00fe
                           0000FE  1335 _WTEVTD0	=	0x00fe
                           0000FF  1336 G$WTEVTD1$0$0 == 0x00ff
                           0000FF  1337 _WTEVTD1	=	0x00ff
                           00FFFE  1338 G$WTEVTD$0$0 == 0xfffe
                           00FFFE  1339 _WTEVTD	=	0xfffe
                           0000E9  1340 G$WTIRQEN$0$0 == 0x00e9
                           0000E9  1341 _WTIRQEN	=	0x00e9
                           0000EA  1342 G$WTSTAT$0$0 == 0x00ea
                           0000EA  1343 _WTSTAT	=	0x00ea
                                   1344 ;--------------------------------------------------------
                                   1345 ; special function bits
                                   1346 ;--------------------------------------------------------
                                   1347 	.area RSEG    (ABS,DATA)
      000000                       1348 	.org 0x0000
                           0000E0  1349 G$ACC_0$0$0 == 0x00e0
                           0000E0  1350 _ACC_0	=	0x00e0
                           0000E1  1351 G$ACC_1$0$0 == 0x00e1
                           0000E1  1352 _ACC_1	=	0x00e1
                           0000E2  1353 G$ACC_2$0$0 == 0x00e2
                           0000E2  1354 _ACC_2	=	0x00e2
                           0000E3  1355 G$ACC_3$0$0 == 0x00e3
                           0000E3  1356 _ACC_3	=	0x00e3
                           0000E4  1357 G$ACC_4$0$0 == 0x00e4
                           0000E4  1358 _ACC_4	=	0x00e4
                           0000E5  1359 G$ACC_5$0$0 == 0x00e5
                           0000E5  1360 _ACC_5	=	0x00e5
                           0000E6  1361 G$ACC_6$0$0 == 0x00e6
                           0000E6  1362 _ACC_6	=	0x00e6
                           0000E7  1363 G$ACC_7$0$0 == 0x00e7
                           0000E7  1364 _ACC_7	=	0x00e7
                           0000F0  1365 G$B_0$0$0 == 0x00f0
                           0000F0  1366 _B_0	=	0x00f0
                           0000F1  1367 G$B_1$0$0 == 0x00f1
                           0000F1  1368 _B_1	=	0x00f1
                           0000F2  1369 G$B_2$0$0 == 0x00f2
                           0000F2  1370 _B_2	=	0x00f2
                           0000F3  1371 G$B_3$0$0 == 0x00f3
                           0000F3  1372 _B_3	=	0x00f3
                           0000F4  1373 G$B_4$0$0 == 0x00f4
                           0000F4  1374 _B_4	=	0x00f4
                           0000F5  1375 G$B_5$0$0 == 0x00f5
                           0000F5  1376 _B_5	=	0x00f5
                           0000F6  1377 G$B_6$0$0 == 0x00f6
                           0000F6  1378 _B_6	=	0x00f6
                           0000F7  1379 G$B_7$0$0 == 0x00f7
                           0000F7  1380 _B_7	=	0x00f7
                           0000A0  1381 G$E2IE_0$0$0 == 0x00a0
                           0000A0  1382 _E2IE_0	=	0x00a0
                           0000A1  1383 G$E2IE_1$0$0 == 0x00a1
                           0000A1  1384 _E2IE_1	=	0x00a1
                           0000A2  1385 G$E2IE_2$0$0 == 0x00a2
                           0000A2  1386 _E2IE_2	=	0x00a2
                           0000A3  1387 G$E2IE_3$0$0 == 0x00a3
                           0000A3  1388 _E2IE_3	=	0x00a3
                           0000A4  1389 G$E2IE_4$0$0 == 0x00a4
                           0000A4  1390 _E2IE_4	=	0x00a4
                           0000A5  1391 G$E2IE_5$0$0 == 0x00a5
                           0000A5  1392 _E2IE_5	=	0x00a5
                           0000A6  1393 G$E2IE_6$0$0 == 0x00a6
                           0000A6  1394 _E2IE_6	=	0x00a6
                           0000A7  1395 G$E2IE_7$0$0 == 0x00a7
                           0000A7  1396 _E2IE_7	=	0x00a7
                           0000C0  1397 G$E2IP_0$0$0 == 0x00c0
                           0000C0  1398 _E2IP_0	=	0x00c0
                           0000C1  1399 G$E2IP_1$0$0 == 0x00c1
                           0000C1  1400 _E2IP_1	=	0x00c1
                           0000C2  1401 G$E2IP_2$0$0 == 0x00c2
                           0000C2  1402 _E2IP_2	=	0x00c2
                           0000C3  1403 G$E2IP_3$0$0 == 0x00c3
                           0000C3  1404 _E2IP_3	=	0x00c3
                           0000C4  1405 G$E2IP_4$0$0 == 0x00c4
                           0000C4  1406 _E2IP_4	=	0x00c4
                           0000C5  1407 G$E2IP_5$0$0 == 0x00c5
                           0000C5  1408 _E2IP_5	=	0x00c5
                           0000C6  1409 G$E2IP_6$0$0 == 0x00c6
                           0000C6  1410 _E2IP_6	=	0x00c6
                           0000C7  1411 G$E2IP_7$0$0 == 0x00c7
                           0000C7  1412 _E2IP_7	=	0x00c7
                           000098  1413 G$EIE_0$0$0 == 0x0098
                           000098  1414 _EIE_0	=	0x0098
                           000099  1415 G$EIE_1$0$0 == 0x0099
                           000099  1416 _EIE_1	=	0x0099
                           00009A  1417 G$EIE_2$0$0 == 0x009a
                           00009A  1418 _EIE_2	=	0x009a
                           00009B  1419 G$EIE_3$0$0 == 0x009b
                           00009B  1420 _EIE_3	=	0x009b
                           00009C  1421 G$EIE_4$0$0 == 0x009c
                           00009C  1422 _EIE_4	=	0x009c
                           00009D  1423 G$EIE_5$0$0 == 0x009d
                           00009D  1424 _EIE_5	=	0x009d
                           00009E  1425 G$EIE_6$0$0 == 0x009e
                           00009E  1426 _EIE_6	=	0x009e
                           00009F  1427 G$EIE_7$0$0 == 0x009f
                           00009F  1428 _EIE_7	=	0x009f
                           0000B0  1429 G$EIP_0$0$0 == 0x00b0
                           0000B0  1430 _EIP_0	=	0x00b0
                           0000B1  1431 G$EIP_1$0$0 == 0x00b1
                           0000B1  1432 _EIP_1	=	0x00b1
                           0000B2  1433 G$EIP_2$0$0 == 0x00b2
                           0000B2  1434 _EIP_2	=	0x00b2
                           0000B3  1435 G$EIP_3$0$0 == 0x00b3
                           0000B3  1436 _EIP_3	=	0x00b3
                           0000B4  1437 G$EIP_4$0$0 == 0x00b4
                           0000B4  1438 _EIP_4	=	0x00b4
                           0000B5  1439 G$EIP_5$0$0 == 0x00b5
                           0000B5  1440 _EIP_5	=	0x00b5
                           0000B6  1441 G$EIP_6$0$0 == 0x00b6
                           0000B6  1442 _EIP_6	=	0x00b6
                           0000B7  1443 G$EIP_7$0$0 == 0x00b7
                           0000B7  1444 _EIP_7	=	0x00b7
                           0000A8  1445 G$IE_0$0$0 == 0x00a8
                           0000A8  1446 _IE_0	=	0x00a8
                           0000A9  1447 G$IE_1$0$0 == 0x00a9
                           0000A9  1448 _IE_1	=	0x00a9
                           0000AA  1449 G$IE_2$0$0 == 0x00aa
                           0000AA  1450 _IE_2	=	0x00aa
                           0000AB  1451 G$IE_3$0$0 == 0x00ab
                           0000AB  1452 _IE_3	=	0x00ab
                           0000AC  1453 G$IE_4$0$0 == 0x00ac
                           0000AC  1454 _IE_4	=	0x00ac
                           0000AD  1455 G$IE_5$0$0 == 0x00ad
                           0000AD  1456 _IE_5	=	0x00ad
                           0000AE  1457 G$IE_6$0$0 == 0x00ae
                           0000AE  1458 _IE_6	=	0x00ae
                           0000AF  1459 G$IE_7$0$0 == 0x00af
                           0000AF  1460 _IE_7	=	0x00af
                           0000AF  1461 G$EA$0$0 == 0x00af
                           0000AF  1462 _EA	=	0x00af
                           0000B8  1463 G$IP_0$0$0 == 0x00b8
                           0000B8  1464 _IP_0	=	0x00b8
                           0000B9  1465 G$IP_1$0$0 == 0x00b9
                           0000B9  1466 _IP_1	=	0x00b9
                           0000BA  1467 G$IP_2$0$0 == 0x00ba
                           0000BA  1468 _IP_2	=	0x00ba
                           0000BB  1469 G$IP_3$0$0 == 0x00bb
                           0000BB  1470 _IP_3	=	0x00bb
                           0000BC  1471 G$IP_4$0$0 == 0x00bc
                           0000BC  1472 _IP_4	=	0x00bc
                           0000BD  1473 G$IP_5$0$0 == 0x00bd
                           0000BD  1474 _IP_5	=	0x00bd
                           0000BE  1475 G$IP_6$0$0 == 0x00be
                           0000BE  1476 _IP_6	=	0x00be
                           0000BF  1477 G$IP_7$0$0 == 0x00bf
                           0000BF  1478 _IP_7	=	0x00bf
                           0000D0  1479 G$P$0$0 == 0x00d0
                           0000D0  1480 _P	=	0x00d0
                           0000D1  1481 G$F1$0$0 == 0x00d1
                           0000D1  1482 _F1	=	0x00d1
                           0000D2  1483 G$OV$0$0 == 0x00d2
                           0000D2  1484 _OV	=	0x00d2
                           0000D3  1485 G$RS0$0$0 == 0x00d3
                           0000D3  1486 _RS0	=	0x00d3
                           0000D4  1487 G$RS1$0$0 == 0x00d4
                           0000D4  1488 _RS1	=	0x00d4
                           0000D5  1489 G$F0$0$0 == 0x00d5
                           0000D5  1490 _F0	=	0x00d5
                           0000D6  1491 G$AC$0$0 == 0x00d6
                           0000D6  1492 _AC	=	0x00d6
                           0000D7  1493 G$CY$0$0 == 0x00d7
                           0000D7  1494 _CY	=	0x00d7
                           0000C8  1495 G$PINA_0$0$0 == 0x00c8
                           0000C8  1496 _PINA_0	=	0x00c8
                           0000C9  1497 G$PINA_1$0$0 == 0x00c9
                           0000C9  1498 _PINA_1	=	0x00c9
                           0000CA  1499 G$PINA_2$0$0 == 0x00ca
                           0000CA  1500 _PINA_2	=	0x00ca
                           0000CB  1501 G$PINA_3$0$0 == 0x00cb
                           0000CB  1502 _PINA_3	=	0x00cb
                           0000CC  1503 G$PINA_4$0$0 == 0x00cc
                           0000CC  1504 _PINA_4	=	0x00cc
                           0000CD  1505 G$PINA_5$0$0 == 0x00cd
                           0000CD  1506 _PINA_5	=	0x00cd
                           0000CE  1507 G$PINA_6$0$0 == 0x00ce
                           0000CE  1508 _PINA_6	=	0x00ce
                           0000CF  1509 G$PINA_7$0$0 == 0x00cf
                           0000CF  1510 _PINA_7	=	0x00cf
                           0000E8  1511 G$PINB_0$0$0 == 0x00e8
                           0000E8  1512 _PINB_0	=	0x00e8
                           0000E9  1513 G$PINB_1$0$0 == 0x00e9
                           0000E9  1514 _PINB_1	=	0x00e9
                           0000EA  1515 G$PINB_2$0$0 == 0x00ea
                           0000EA  1516 _PINB_2	=	0x00ea
                           0000EB  1517 G$PINB_3$0$0 == 0x00eb
                           0000EB  1518 _PINB_3	=	0x00eb
                           0000EC  1519 G$PINB_4$0$0 == 0x00ec
                           0000EC  1520 _PINB_4	=	0x00ec
                           0000ED  1521 G$PINB_5$0$0 == 0x00ed
                           0000ED  1522 _PINB_5	=	0x00ed
                           0000EE  1523 G$PINB_6$0$0 == 0x00ee
                           0000EE  1524 _PINB_6	=	0x00ee
                           0000EF  1525 G$PINB_7$0$0 == 0x00ef
                           0000EF  1526 _PINB_7	=	0x00ef
                           0000F8  1527 G$PINC_0$0$0 == 0x00f8
                           0000F8  1528 _PINC_0	=	0x00f8
                           0000F9  1529 G$PINC_1$0$0 == 0x00f9
                           0000F9  1530 _PINC_1	=	0x00f9
                           0000FA  1531 G$PINC_2$0$0 == 0x00fa
                           0000FA  1532 _PINC_2	=	0x00fa
                           0000FB  1533 G$PINC_3$0$0 == 0x00fb
                           0000FB  1534 _PINC_3	=	0x00fb
                           0000FC  1535 G$PINC_4$0$0 == 0x00fc
                           0000FC  1536 _PINC_4	=	0x00fc
                           0000FD  1537 G$PINC_5$0$0 == 0x00fd
                           0000FD  1538 _PINC_5	=	0x00fd
                           0000FE  1539 G$PINC_6$0$0 == 0x00fe
                           0000FE  1540 _PINC_6	=	0x00fe
                           0000FF  1541 G$PINC_7$0$0 == 0x00ff
                           0000FF  1542 _PINC_7	=	0x00ff
                           000080  1543 G$PORTA_0$0$0 == 0x0080
                           000080  1544 _PORTA_0	=	0x0080
                           000081  1545 G$PORTA_1$0$0 == 0x0081
                           000081  1546 _PORTA_1	=	0x0081
                           000082  1547 G$PORTA_2$0$0 == 0x0082
                           000082  1548 _PORTA_2	=	0x0082
                           000083  1549 G$PORTA_3$0$0 == 0x0083
                           000083  1550 _PORTA_3	=	0x0083
                           000084  1551 G$PORTA_4$0$0 == 0x0084
                           000084  1552 _PORTA_4	=	0x0084
                           000085  1553 G$PORTA_5$0$0 == 0x0085
                           000085  1554 _PORTA_5	=	0x0085
                           000086  1555 G$PORTA_6$0$0 == 0x0086
                           000086  1556 _PORTA_6	=	0x0086
                           000087  1557 G$PORTA_7$0$0 == 0x0087
                           000087  1558 _PORTA_7	=	0x0087
                           000088  1559 G$PORTB_0$0$0 == 0x0088
                           000088  1560 _PORTB_0	=	0x0088
                           000089  1561 G$PORTB_1$0$0 == 0x0089
                           000089  1562 _PORTB_1	=	0x0089
                           00008A  1563 G$PORTB_2$0$0 == 0x008a
                           00008A  1564 _PORTB_2	=	0x008a
                           00008B  1565 G$PORTB_3$0$0 == 0x008b
                           00008B  1566 _PORTB_3	=	0x008b
                           00008C  1567 G$PORTB_4$0$0 == 0x008c
                           00008C  1568 _PORTB_4	=	0x008c
                           00008D  1569 G$PORTB_5$0$0 == 0x008d
                           00008D  1570 _PORTB_5	=	0x008d
                           00008E  1571 G$PORTB_6$0$0 == 0x008e
                           00008E  1572 _PORTB_6	=	0x008e
                           00008F  1573 G$PORTB_7$0$0 == 0x008f
                           00008F  1574 _PORTB_7	=	0x008f
                           000090  1575 G$PORTC_0$0$0 == 0x0090
                           000090  1576 _PORTC_0	=	0x0090
                           000091  1577 G$PORTC_1$0$0 == 0x0091
                           000091  1578 _PORTC_1	=	0x0091
                           000092  1579 G$PORTC_2$0$0 == 0x0092
                           000092  1580 _PORTC_2	=	0x0092
                           000093  1581 G$PORTC_3$0$0 == 0x0093
                           000093  1582 _PORTC_3	=	0x0093
                           000094  1583 G$PORTC_4$0$0 == 0x0094
                           000094  1584 _PORTC_4	=	0x0094
                           000095  1585 G$PORTC_5$0$0 == 0x0095
                           000095  1586 _PORTC_5	=	0x0095
                           000096  1587 G$PORTC_6$0$0 == 0x0096
                           000096  1588 _PORTC_6	=	0x0096
                           000097  1589 G$PORTC_7$0$0 == 0x0097
                           000097  1590 _PORTC_7	=	0x0097
                                   1591 ;--------------------------------------------------------
                                   1592 ; overlayable register banks
                                   1593 ;--------------------------------------------------------
                                   1594 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                       1595 	.ds 8
                                   1596 ;--------------------------------------------------------
                                   1597 ; overlayable bit register bank
                                   1598 ;--------------------------------------------------------
                                   1599 	.area BIT_BANK	(REL,OVR,DATA)
      000021                       1600 bits:
      000021                       1601 	.ds 1
                           008000  1602 	b0 = bits[0]
                           008100  1603 	b1 = bits[1]
                           008200  1604 	b2 = bits[2]
                           008300  1605 	b3 = bits[3]
                           008400  1606 	b4 = bits[4]
                           008500  1607 	b5 = bits[5]
                           008600  1608 	b6 = bits[6]
                           008700  1609 	b7 = bits[7]
                                   1610 ;--------------------------------------------------------
                                   1611 ; internal ram data
                                   1612 ;--------------------------------------------------------
                                   1613 	.area DSEG    (DATA)
                           000000  1614 G$axradio_mode$0$0==.
      000008                       1615 _axradio_mode::
      000008                       1616 	.ds 1
                           000001  1617 G$axradio_trxstate$0$0==.
      000009                       1618 _axradio_trxstate::
      000009                       1619 	.ds 1
                           000002  1620 Leasyax5043.aligned_alloc$size$1$210==.
      00000A                       1621 _aligned_alloc_PARM_2:
      00000A                       1622 	.ds 2
                           000004  1623 Leasyax5043.axradio_init$i$1$657==.
      00000C                       1624 _axradio_init_i_1_657:
      00000C                       1625 	.ds 1
                           000005  1626 Leasyax5043.axradio_init$vcoisave$3$687==.
      00000D                       1627 _axradio_init_vcoisave_3_687:
      00000D                       1628 	.ds 1
                           000006  1629 Leasyax5043.axradio_init$j$3$687==.
      00000E                       1630 _axradio_init_j_3_687:
      00000E                       1631 	.ds 1
                           000007  1632 Leasyax5043.axradio_init$f$5$690==.
      00000F                       1633 _axradio_init_f_5_690:
      00000F                       1634 	.ds 4
                           00000B  1635 Leasyax5043.axradio_init$sloc0$1$0==.
      000013                       1636 _axradio_init_sloc0_1_0:
      000013                       1637 	.ds 2
                           00000D  1638 Leasyax5043.axradio_transmit$pkt$1$806==.
      000015                       1639 _axradio_transmit_PARM_2:
      000015                       1640 	.ds 3
                           000010  1641 Leasyax5043.axradio_transmit$pktlen$1$806==.
      000018                       1642 _axradio_transmit_PARM_3:
      000018                       1643 	.ds 2
                                   1644 ;--------------------------------------------------------
                                   1645 ; overlayable items in internal ram 
                                   1646 ;--------------------------------------------------------
                                   1647 	.area	OSEG    (OVR,DATA)
                                   1648 	.area	OSEG    (OVR,DATA)
                           000000  1649 Leasyax5043.axradio_set_channel$rng$1$766==.
      000034                       1650 _axradio_set_channel_rng_1_766:
      000034                       1651 	.ds 1
                                   1652 	.area	OSEG    (OVR,DATA)
                                   1653 	.area	OSEG    (OVR,DATA)
                                   1654 ;--------------------------------------------------------
                                   1655 ; indirectly addressable internal ram data
                                   1656 ;--------------------------------------------------------
                                   1657 	.area ISEG    (DATA)
                                   1658 ;--------------------------------------------------------
                                   1659 ; absolute internal ram data
                                   1660 ;--------------------------------------------------------
                                   1661 	.area IABS    (ABS,DATA)
                                   1662 	.area IABS    (ABS,DATA)
                                   1663 ;--------------------------------------------------------
                                   1664 ; bit data
                                   1665 ;--------------------------------------------------------
                                   1666 	.area BSEG    (BIT)
                           000000  1667 Leasyax5043.axradio_timer_callback$sloc0$1$0==.
      000000                       1668 _axradio_timer_callback_sloc0_1_0:
      000000                       1669 	.ds 1
                                   1670 ;--------------------------------------------------------
                                   1671 ; paged external ram data
                                   1672 ;--------------------------------------------------------
                                   1673 	.area PSEG    (PAG,XDATA)
                                   1674 ;--------------------------------------------------------
                                   1675 ; external ram data
                                   1676 ;--------------------------------------------------------
                                   1677 	.area XSEG    (XDATA)
                           007020  1678 G$ADCCH0VAL0$0$0 == 0x7020
                           007020  1679 _ADCCH0VAL0	=	0x7020
                           007021  1680 G$ADCCH0VAL1$0$0 == 0x7021
                           007021  1681 _ADCCH0VAL1	=	0x7021
                           007020  1682 G$ADCCH0VAL$0$0 == 0x7020
                           007020  1683 _ADCCH0VAL	=	0x7020
                           007022  1684 G$ADCCH1VAL0$0$0 == 0x7022
                           007022  1685 _ADCCH1VAL0	=	0x7022
                           007023  1686 G$ADCCH1VAL1$0$0 == 0x7023
                           007023  1687 _ADCCH1VAL1	=	0x7023
                           007022  1688 G$ADCCH1VAL$0$0 == 0x7022
                           007022  1689 _ADCCH1VAL	=	0x7022
                           007024  1690 G$ADCCH2VAL0$0$0 == 0x7024
                           007024  1691 _ADCCH2VAL0	=	0x7024
                           007025  1692 G$ADCCH2VAL1$0$0 == 0x7025
                           007025  1693 _ADCCH2VAL1	=	0x7025
                           007024  1694 G$ADCCH2VAL$0$0 == 0x7024
                           007024  1695 _ADCCH2VAL	=	0x7024
                           007026  1696 G$ADCCH3VAL0$0$0 == 0x7026
                           007026  1697 _ADCCH3VAL0	=	0x7026
                           007027  1698 G$ADCCH3VAL1$0$0 == 0x7027
                           007027  1699 _ADCCH3VAL1	=	0x7027
                           007026  1700 G$ADCCH3VAL$0$0 == 0x7026
                           007026  1701 _ADCCH3VAL	=	0x7026
                           007028  1702 G$ADCTUNE0$0$0 == 0x7028
                           007028  1703 _ADCTUNE0	=	0x7028
                           007029  1704 G$ADCTUNE1$0$0 == 0x7029
                           007029  1705 _ADCTUNE1	=	0x7029
                           00702A  1706 G$ADCTUNE2$0$0 == 0x702a
                           00702A  1707 _ADCTUNE2	=	0x702a
                           007010  1708 G$DMA0ADDR0$0$0 == 0x7010
                           007010  1709 _DMA0ADDR0	=	0x7010
                           007011  1710 G$DMA0ADDR1$0$0 == 0x7011
                           007011  1711 _DMA0ADDR1	=	0x7011
                           007010  1712 G$DMA0ADDR$0$0 == 0x7010
                           007010  1713 _DMA0ADDR	=	0x7010
                           007014  1714 G$DMA0CONFIG$0$0 == 0x7014
                           007014  1715 _DMA0CONFIG	=	0x7014
                           007012  1716 G$DMA1ADDR0$0$0 == 0x7012
                           007012  1717 _DMA1ADDR0	=	0x7012
                           007013  1718 G$DMA1ADDR1$0$0 == 0x7013
                           007013  1719 _DMA1ADDR1	=	0x7013
                           007012  1720 G$DMA1ADDR$0$0 == 0x7012
                           007012  1721 _DMA1ADDR	=	0x7012
                           007015  1722 G$DMA1CONFIG$0$0 == 0x7015
                           007015  1723 _DMA1CONFIG	=	0x7015
                           007070  1724 G$FRCOSCCONFIG$0$0 == 0x7070
                           007070  1725 _FRCOSCCONFIG	=	0x7070
                           007071  1726 G$FRCOSCCTRL$0$0 == 0x7071
                           007071  1727 _FRCOSCCTRL	=	0x7071
                           007076  1728 G$FRCOSCFREQ0$0$0 == 0x7076
                           007076  1729 _FRCOSCFREQ0	=	0x7076
                           007077  1730 G$FRCOSCFREQ1$0$0 == 0x7077
                           007077  1731 _FRCOSCFREQ1	=	0x7077
                           007076  1732 G$FRCOSCFREQ$0$0 == 0x7076
                           007076  1733 _FRCOSCFREQ	=	0x7076
                           007072  1734 G$FRCOSCKFILT0$0$0 == 0x7072
                           007072  1735 _FRCOSCKFILT0	=	0x7072
                           007073  1736 G$FRCOSCKFILT1$0$0 == 0x7073
                           007073  1737 _FRCOSCKFILT1	=	0x7073
                           007072  1738 G$FRCOSCKFILT$0$0 == 0x7072
                           007072  1739 _FRCOSCKFILT	=	0x7072
                           007078  1740 G$FRCOSCPER0$0$0 == 0x7078
                           007078  1741 _FRCOSCPER0	=	0x7078
                           007079  1742 G$FRCOSCPER1$0$0 == 0x7079
                           007079  1743 _FRCOSCPER1	=	0x7079
                           007078  1744 G$FRCOSCPER$0$0 == 0x7078
                           007078  1745 _FRCOSCPER	=	0x7078
                           007074  1746 G$FRCOSCREF0$0$0 == 0x7074
                           007074  1747 _FRCOSCREF0	=	0x7074
                           007075  1748 G$FRCOSCREF1$0$0 == 0x7075
                           007075  1749 _FRCOSCREF1	=	0x7075
                           007074  1750 G$FRCOSCREF$0$0 == 0x7074
                           007074  1751 _FRCOSCREF	=	0x7074
                           007007  1752 G$ANALOGA$0$0 == 0x7007
                           007007  1753 _ANALOGA	=	0x7007
                           00700C  1754 G$GPIOENABLE$0$0 == 0x700c
                           00700C  1755 _GPIOENABLE	=	0x700c
                           007003  1756 G$EXTIRQ$0$0 == 0x7003
                           007003  1757 _EXTIRQ	=	0x7003
                           007000  1758 G$INTCHGA$0$0 == 0x7000
                           007000  1759 _INTCHGA	=	0x7000
                           007001  1760 G$INTCHGB$0$0 == 0x7001
                           007001  1761 _INTCHGB	=	0x7001
                           007002  1762 G$INTCHGC$0$0 == 0x7002
                           007002  1763 _INTCHGC	=	0x7002
                           007008  1764 G$PALTA$0$0 == 0x7008
                           007008  1765 _PALTA	=	0x7008
                           007009  1766 G$PALTB$0$0 == 0x7009
                           007009  1767 _PALTB	=	0x7009
                           00700A  1768 G$PALTC$0$0 == 0x700a
                           00700A  1769 _PALTC	=	0x700a
                           007046  1770 G$PALTRADIO$0$0 == 0x7046
                           007046  1771 _PALTRADIO	=	0x7046
                           007004  1772 G$PINCHGA$0$0 == 0x7004
                           007004  1773 _PINCHGA	=	0x7004
                           007005  1774 G$PINCHGB$0$0 == 0x7005
                           007005  1775 _PINCHGB	=	0x7005
                           007006  1776 G$PINCHGC$0$0 == 0x7006
                           007006  1777 _PINCHGC	=	0x7006
                           00700B  1778 G$PINSEL$0$0 == 0x700b
                           00700B  1779 _PINSEL	=	0x700b
                           007060  1780 G$LPOSCCONFIG$0$0 == 0x7060
                           007060  1781 _LPOSCCONFIG	=	0x7060
                           007066  1782 G$LPOSCFREQ0$0$0 == 0x7066
                           007066  1783 _LPOSCFREQ0	=	0x7066
                           007067  1784 G$LPOSCFREQ1$0$0 == 0x7067
                           007067  1785 _LPOSCFREQ1	=	0x7067
                           007066  1786 G$LPOSCFREQ$0$0 == 0x7066
                           007066  1787 _LPOSCFREQ	=	0x7066
                           007062  1788 G$LPOSCKFILT0$0$0 == 0x7062
                           007062  1789 _LPOSCKFILT0	=	0x7062
                           007063  1790 G$LPOSCKFILT1$0$0 == 0x7063
                           007063  1791 _LPOSCKFILT1	=	0x7063
                           007062  1792 G$LPOSCKFILT$0$0 == 0x7062
                           007062  1793 _LPOSCKFILT	=	0x7062
                           007068  1794 G$LPOSCPER0$0$0 == 0x7068
                           007068  1795 _LPOSCPER0	=	0x7068
                           007069  1796 G$LPOSCPER1$0$0 == 0x7069
                           007069  1797 _LPOSCPER1	=	0x7069
                           007068  1798 G$LPOSCPER$0$0 == 0x7068
                           007068  1799 _LPOSCPER	=	0x7068
                           007064  1800 G$LPOSCREF0$0$0 == 0x7064
                           007064  1801 _LPOSCREF0	=	0x7064
                           007065  1802 G$LPOSCREF1$0$0 == 0x7065
                           007065  1803 _LPOSCREF1	=	0x7065
                           007064  1804 G$LPOSCREF$0$0 == 0x7064
                           007064  1805 _LPOSCREF	=	0x7064
                           007054  1806 G$LPXOSCGM$0$0 == 0x7054
                           007054  1807 _LPXOSCGM	=	0x7054
                           007F01  1808 G$MISCCTRL$0$0 == 0x7f01
                           007F01  1809 _MISCCTRL	=	0x7f01
                           007053  1810 G$OSCCALIB$0$0 == 0x7053
                           007053  1811 _OSCCALIB	=	0x7053
                           007050  1812 G$OSCFORCERUN$0$0 == 0x7050
                           007050  1813 _OSCFORCERUN	=	0x7050
                           007052  1814 G$OSCREADY$0$0 == 0x7052
                           007052  1815 _OSCREADY	=	0x7052
                           007051  1816 G$OSCRUN$0$0 == 0x7051
                           007051  1817 _OSCRUN	=	0x7051
                           007040  1818 G$RADIOFDATAADDR0$0$0 == 0x7040
                           007040  1819 _RADIOFDATAADDR0	=	0x7040
                           007041  1820 G$RADIOFDATAADDR1$0$0 == 0x7041
                           007041  1821 _RADIOFDATAADDR1	=	0x7041
                           007040  1822 G$RADIOFDATAADDR$0$0 == 0x7040
                           007040  1823 _RADIOFDATAADDR	=	0x7040
                           007042  1824 G$RADIOFSTATADDR0$0$0 == 0x7042
                           007042  1825 _RADIOFSTATADDR0	=	0x7042
                           007043  1826 G$RADIOFSTATADDR1$0$0 == 0x7043
                           007043  1827 _RADIOFSTATADDR1	=	0x7043
                           007042  1828 G$RADIOFSTATADDR$0$0 == 0x7042
                           007042  1829 _RADIOFSTATADDR	=	0x7042
                           007044  1830 G$RADIOMUX$0$0 == 0x7044
                           007044  1831 _RADIOMUX	=	0x7044
                           007084  1832 G$SCRATCH0$0$0 == 0x7084
                           007084  1833 _SCRATCH0	=	0x7084
                           007085  1834 G$SCRATCH1$0$0 == 0x7085
                           007085  1835 _SCRATCH1	=	0x7085
                           007086  1836 G$SCRATCH2$0$0 == 0x7086
                           007086  1837 _SCRATCH2	=	0x7086
                           007087  1838 G$SCRATCH3$0$0 == 0x7087
                           007087  1839 _SCRATCH3	=	0x7087
                           007F00  1840 G$SILICONREV$0$0 == 0x7f00
                           007F00  1841 _SILICONREV	=	0x7f00
                           007F19  1842 G$XTALAMPL$0$0 == 0x7f19
                           007F19  1843 _XTALAMPL	=	0x7f19
                           007F18  1844 G$XTALOSC$0$0 == 0x7f18
                           007F18  1845 _XTALOSC	=	0x7f18
                           007F1A  1846 G$XTALREADY$0$0 == 0x7f1a
                           007F1A  1847 _XTALREADY	=	0x7f1a
                           004114  1848 G$AX5043_AFSKCTRL$0$0 == 0x4114
                           004114  1849 _AX5043_AFSKCTRL	=	0x4114
                           004113  1850 G$AX5043_AFSKMARK0$0$0 == 0x4113
                           004113  1851 _AX5043_AFSKMARK0	=	0x4113
                           004112  1852 G$AX5043_AFSKMARK1$0$0 == 0x4112
                           004112  1853 _AX5043_AFSKMARK1	=	0x4112
                           004111  1854 G$AX5043_AFSKSPACE0$0$0 == 0x4111
                           004111  1855 _AX5043_AFSKSPACE0	=	0x4111
                           004110  1856 G$AX5043_AFSKSPACE1$0$0 == 0x4110
                           004110  1857 _AX5043_AFSKSPACE1	=	0x4110
                           004043  1858 G$AX5043_AGCCOUNTER$0$0 == 0x4043
                           004043  1859 _AX5043_AGCCOUNTER	=	0x4043
                           004115  1860 G$AX5043_AMPLFILTER$0$0 == 0x4115
                           004115  1861 _AX5043_AMPLFILTER	=	0x4115
                           004189  1862 G$AX5043_BBOFFSCAP$0$0 == 0x4189
                           004189  1863 _AX5043_BBOFFSCAP	=	0x4189
                           004188  1864 G$AX5043_BBTUNE$0$0 == 0x4188
                           004188  1865 _AX5043_BBTUNE	=	0x4188
                           004041  1866 G$AX5043_BGNDRSSI$0$0 == 0x4041
                           004041  1867 _AX5043_BGNDRSSI	=	0x4041
                           00422E  1868 G$AX5043_BGNDRSSIGAIN$0$0 == 0x422e
                           00422E  1869 _AX5043_BGNDRSSIGAIN	=	0x422e
                           00422F  1870 G$AX5043_BGNDRSSITHR$0$0 == 0x422f
                           00422F  1871 _AX5043_BGNDRSSITHR	=	0x422f
                           004017  1872 G$AX5043_CRCINIT0$0$0 == 0x4017
                           004017  1873 _AX5043_CRCINIT0	=	0x4017
                           004016  1874 G$AX5043_CRCINIT1$0$0 == 0x4016
                           004016  1875 _AX5043_CRCINIT1	=	0x4016
                           004015  1876 G$AX5043_CRCINIT2$0$0 == 0x4015
                           004015  1877 _AX5043_CRCINIT2	=	0x4015
                           004014  1878 G$AX5043_CRCINIT3$0$0 == 0x4014
                           004014  1879 _AX5043_CRCINIT3	=	0x4014
                           004332  1880 G$AX5043_DACCONFIG$0$0 == 0x4332
                           004332  1881 _AX5043_DACCONFIG	=	0x4332
                           004331  1882 G$AX5043_DACVALUE0$0$0 == 0x4331
                           004331  1883 _AX5043_DACVALUE0	=	0x4331
                           004330  1884 G$AX5043_DACVALUE1$0$0 == 0x4330
                           004330  1885 _AX5043_DACVALUE1	=	0x4330
                           004102  1886 G$AX5043_DECIMATION$0$0 == 0x4102
                           004102  1887 _AX5043_DECIMATION	=	0x4102
                           004042  1888 G$AX5043_DIVERSITY$0$0 == 0x4042
                           004042  1889 _AX5043_DIVERSITY	=	0x4042
                           004011  1890 G$AX5043_ENCODING$0$0 == 0x4011
                           004011  1891 _AX5043_ENCODING	=	0x4011
                           004018  1892 G$AX5043_FEC$0$0 == 0x4018
                           004018  1893 _AX5043_FEC	=	0x4018
                           00401A  1894 G$AX5043_FECSTATUS$0$0 == 0x401a
                           00401A  1895 _AX5043_FECSTATUS	=	0x401a
                           004019  1896 G$AX5043_FECSYNC$0$0 == 0x4019
                           004019  1897 _AX5043_FECSYNC	=	0x4019
                           00402B  1898 G$AX5043_FIFOCOUNT0$0$0 == 0x402b
                           00402B  1899 _AX5043_FIFOCOUNT0	=	0x402b
                           00402A  1900 G$AX5043_FIFOCOUNT1$0$0 == 0x402a
                           00402A  1901 _AX5043_FIFOCOUNT1	=	0x402a
                           004029  1902 G$AX5043_FIFODATA$0$0 == 0x4029
                           004029  1903 _AX5043_FIFODATA	=	0x4029
                           00402D  1904 G$AX5043_FIFOFREE0$0$0 == 0x402d
                           00402D  1905 _AX5043_FIFOFREE0	=	0x402d
                           00402C  1906 G$AX5043_FIFOFREE1$0$0 == 0x402c
                           00402C  1907 _AX5043_FIFOFREE1	=	0x402c
                           004028  1908 G$AX5043_FIFOSTAT$0$0 == 0x4028
                           004028  1909 _AX5043_FIFOSTAT	=	0x4028
                           00402F  1910 G$AX5043_FIFOTHRESH0$0$0 == 0x402f
                           00402F  1911 _AX5043_FIFOTHRESH0	=	0x402f
                           00402E  1912 G$AX5043_FIFOTHRESH1$0$0 == 0x402e
                           00402E  1913 _AX5043_FIFOTHRESH1	=	0x402e
                           004012  1914 G$AX5043_FRAMING$0$0 == 0x4012
                           004012  1915 _AX5043_FRAMING	=	0x4012
                           004037  1916 G$AX5043_FREQA0$0$0 == 0x4037
                           004037  1917 _AX5043_FREQA0	=	0x4037
                           004036  1918 G$AX5043_FREQA1$0$0 == 0x4036
                           004036  1919 _AX5043_FREQA1	=	0x4036
                           004035  1920 G$AX5043_FREQA2$0$0 == 0x4035
                           004035  1921 _AX5043_FREQA2	=	0x4035
                           004034  1922 G$AX5043_FREQA3$0$0 == 0x4034
                           004034  1923 _AX5043_FREQA3	=	0x4034
                           00403F  1924 G$AX5043_FREQB0$0$0 == 0x403f
                           00403F  1925 _AX5043_FREQB0	=	0x403f
                           00403E  1926 G$AX5043_FREQB1$0$0 == 0x403e
                           00403E  1927 _AX5043_FREQB1	=	0x403e
                           00403D  1928 G$AX5043_FREQB2$0$0 == 0x403d
                           00403D  1929 _AX5043_FREQB2	=	0x403d
                           00403C  1930 G$AX5043_FREQB3$0$0 == 0x403c
                           00403C  1931 _AX5043_FREQB3	=	0x403c
                           004163  1932 G$AX5043_FSKDEV0$0$0 == 0x4163
                           004163  1933 _AX5043_FSKDEV0	=	0x4163
                           004162  1934 G$AX5043_FSKDEV1$0$0 == 0x4162
                           004162  1935 _AX5043_FSKDEV1	=	0x4162
                           004161  1936 G$AX5043_FSKDEV2$0$0 == 0x4161
                           004161  1937 _AX5043_FSKDEV2	=	0x4161
                           00410D  1938 G$AX5043_FSKDMAX0$0$0 == 0x410d
                           00410D  1939 _AX5043_FSKDMAX0	=	0x410d
                           00410C  1940 G$AX5043_FSKDMAX1$0$0 == 0x410c
                           00410C  1941 _AX5043_FSKDMAX1	=	0x410c
                           00410F  1942 G$AX5043_FSKDMIN0$0$0 == 0x410f
                           00410F  1943 _AX5043_FSKDMIN0	=	0x410f
                           00410E  1944 G$AX5043_FSKDMIN1$0$0 == 0x410e
                           00410E  1945 _AX5043_FSKDMIN1	=	0x410e
                           004309  1946 G$AX5043_GPADC13VALUE0$0$0 == 0x4309
                           004309  1947 _AX5043_GPADC13VALUE0	=	0x4309
                           004308  1948 G$AX5043_GPADC13VALUE1$0$0 == 0x4308
                           004308  1949 _AX5043_GPADC13VALUE1	=	0x4308
                           004300  1950 G$AX5043_GPADCCTRL$0$0 == 0x4300
                           004300  1951 _AX5043_GPADCCTRL	=	0x4300
                           004301  1952 G$AX5043_GPADCPERIOD$0$0 == 0x4301
                           004301  1953 _AX5043_GPADCPERIOD	=	0x4301
                           004101  1954 G$AX5043_IFFREQ0$0$0 == 0x4101
                           004101  1955 _AX5043_IFFREQ0	=	0x4101
                           004100  1956 G$AX5043_IFFREQ1$0$0 == 0x4100
                           004100  1957 _AX5043_IFFREQ1	=	0x4100
                           00400B  1958 G$AX5043_IRQINVERSION0$0$0 == 0x400b
                           00400B  1959 _AX5043_IRQINVERSION0	=	0x400b
                           00400A  1960 G$AX5043_IRQINVERSION1$0$0 == 0x400a
                           00400A  1961 _AX5043_IRQINVERSION1	=	0x400a
                           004007  1962 G$AX5043_IRQMASK0$0$0 == 0x4007
                           004007  1963 _AX5043_IRQMASK0	=	0x4007
                           004006  1964 G$AX5043_IRQMASK1$0$0 == 0x4006
                           004006  1965 _AX5043_IRQMASK1	=	0x4006
                           00400D  1966 G$AX5043_IRQREQUEST0$0$0 == 0x400d
                           00400D  1967 _AX5043_IRQREQUEST0	=	0x400d
                           00400C  1968 G$AX5043_IRQREQUEST1$0$0 == 0x400c
                           00400C  1969 _AX5043_IRQREQUEST1	=	0x400c
                           004310  1970 G$AX5043_LPOSCCONFIG$0$0 == 0x4310
                           004310  1971 _AX5043_LPOSCCONFIG	=	0x4310
                           004317  1972 G$AX5043_LPOSCFREQ0$0$0 == 0x4317
                           004317  1973 _AX5043_LPOSCFREQ0	=	0x4317
                           004316  1974 G$AX5043_LPOSCFREQ1$0$0 == 0x4316
                           004316  1975 _AX5043_LPOSCFREQ1	=	0x4316
                           004313  1976 G$AX5043_LPOSCKFILT0$0$0 == 0x4313
                           004313  1977 _AX5043_LPOSCKFILT0	=	0x4313
                           004312  1978 G$AX5043_LPOSCKFILT1$0$0 == 0x4312
                           004312  1979 _AX5043_LPOSCKFILT1	=	0x4312
                           004319  1980 G$AX5043_LPOSCPER0$0$0 == 0x4319
                           004319  1981 _AX5043_LPOSCPER0	=	0x4319
                           004318  1982 G$AX5043_LPOSCPER1$0$0 == 0x4318
                           004318  1983 _AX5043_LPOSCPER1	=	0x4318
                           004315  1984 G$AX5043_LPOSCREF0$0$0 == 0x4315
                           004315  1985 _AX5043_LPOSCREF0	=	0x4315
                           004314  1986 G$AX5043_LPOSCREF1$0$0 == 0x4314
                           004314  1987 _AX5043_LPOSCREF1	=	0x4314
                           004311  1988 G$AX5043_LPOSCSTATUS$0$0 == 0x4311
                           004311  1989 _AX5043_LPOSCSTATUS	=	0x4311
                           004214  1990 G$AX5043_MATCH0LEN$0$0 == 0x4214
                           004214  1991 _AX5043_MATCH0LEN	=	0x4214
                           004216  1992 G$AX5043_MATCH0MAX$0$0 == 0x4216
                           004216  1993 _AX5043_MATCH0MAX	=	0x4216
                           004215  1994 G$AX5043_MATCH0MIN$0$0 == 0x4215
                           004215  1995 _AX5043_MATCH0MIN	=	0x4215
                           004213  1996 G$AX5043_MATCH0PAT0$0$0 == 0x4213
                           004213  1997 _AX5043_MATCH0PAT0	=	0x4213
                           004212  1998 G$AX5043_MATCH0PAT1$0$0 == 0x4212
                           004212  1999 _AX5043_MATCH0PAT1	=	0x4212
                           004211  2000 G$AX5043_MATCH0PAT2$0$0 == 0x4211
                           004211  2001 _AX5043_MATCH0PAT2	=	0x4211
                           004210  2002 G$AX5043_MATCH0PAT3$0$0 == 0x4210
                           004210  2003 _AX5043_MATCH0PAT3	=	0x4210
                           00421C  2004 G$AX5043_MATCH1LEN$0$0 == 0x421c
                           00421C  2005 _AX5043_MATCH1LEN	=	0x421c
                           00421E  2006 G$AX5043_MATCH1MAX$0$0 == 0x421e
                           00421E  2007 _AX5043_MATCH1MAX	=	0x421e
                           00421D  2008 G$AX5043_MATCH1MIN$0$0 == 0x421d
                           00421D  2009 _AX5043_MATCH1MIN	=	0x421d
                           004219  2010 G$AX5043_MATCH1PAT0$0$0 == 0x4219
                           004219  2011 _AX5043_MATCH1PAT0	=	0x4219
                           004218  2012 G$AX5043_MATCH1PAT1$0$0 == 0x4218
                           004218  2013 _AX5043_MATCH1PAT1	=	0x4218
                           004108  2014 G$AX5043_MAXDROFFSET0$0$0 == 0x4108
                           004108  2015 _AX5043_MAXDROFFSET0	=	0x4108
                           004107  2016 G$AX5043_MAXDROFFSET1$0$0 == 0x4107
                           004107  2017 _AX5043_MAXDROFFSET1	=	0x4107
                           004106  2018 G$AX5043_MAXDROFFSET2$0$0 == 0x4106
                           004106  2019 _AX5043_MAXDROFFSET2	=	0x4106
                           00410B  2020 G$AX5043_MAXRFOFFSET0$0$0 == 0x410b
                           00410B  2021 _AX5043_MAXRFOFFSET0	=	0x410b
                           00410A  2022 G$AX5043_MAXRFOFFSET1$0$0 == 0x410a
                           00410A  2023 _AX5043_MAXRFOFFSET1	=	0x410a
                           004109  2024 G$AX5043_MAXRFOFFSET2$0$0 == 0x4109
                           004109  2025 _AX5043_MAXRFOFFSET2	=	0x4109
                           004164  2026 G$AX5043_MODCFGA$0$0 == 0x4164
                           004164  2027 _AX5043_MODCFGA	=	0x4164
                           004160  2028 G$AX5043_MODCFGF$0$0 == 0x4160
                           004160  2029 _AX5043_MODCFGF	=	0x4160
                           004F5F  2030 G$AX5043_MODCFGP$0$0 == 0x4f5f
                           004F5F  2031 _AX5043_MODCFGP	=	0x4f5f
                           004010  2032 G$AX5043_MODULATION$0$0 == 0x4010
                           004010  2033 _AX5043_MODULATION	=	0x4010
                           004025  2034 G$AX5043_PINFUNCANTSEL$0$0 == 0x4025
                           004025  2035 _AX5043_PINFUNCANTSEL	=	0x4025
                           004023  2036 G$AX5043_PINFUNCDATA$0$0 == 0x4023
                           004023  2037 _AX5043_PINFUNCDATA	=	0x4023
                           004022  2038 G$AX5043_PINFUNCDCLK$0$0 == 0x4022
                           004022  2039 _AX5043_PINFUNCDCLK	=	0x4022
                           004024  2040 G$AX5043_PINFUNCIRQ$0$0 == 0x4024
                           004024  2041 _AX5043_PINFUNCIRQ	=	0x4024
                           004026  2042 G$AX5043_PINFUNCPWRAMP$0$0 == 0x4026
                           004026  2043 _AX5043_PINFUNCPWRAMP	=	0x4026
                           004021  2044 G$AX5043_PINFUNCSYSCLK$0$0 == 0x4021
                           004021  2045 _AX5043_PINFUNCSYSCLK	=	0x4021
                           004020  2046 G$AX5043_PINSTATE$0$0 == 0x4020
                           004020  2047 _AX5043_PINSTATE	=	0x4020
                           004233  2048 G$AX5043_PKTACCEPTFLAGS$0$0 == 0x4233
                           004233  2049 _AX5043_PKTACCEPTFLAGS	=	0x4233
                           004230  2050 G$AX5043_PKTCHUNKSIZE$0$0 == 0x4230
                           004230  2051 _AX5043_PKTCHUNKSIZE	=	0x4230
                           004231  2052 G$AX5043_PKTMISCFLAGS$0$0 == 0x4231
                           004231  2053 _AX5043_PKTMISCFLAGS	=	0x4231
                           004232  2054 G$AX5043_PKTSTOREFLAGS$0$0 == 0x4232
                           004232  2055 _AX5043_PKTSTOREFLAGS	=	0x4232
                           004031  2056 G$AX5043_PLLCPI$0$0 == 0x4031
                           004031  2057 _AX5043_PLLCPI	=	0x4031
                           004039  2058 G$AX5043_PLLCPIBOOST$0$0 == 0x4039
                           004039  2059 _AX5043_PLLCPIBOOST	=	0x4039
                           004182  2060 G$AX5043_PLLLOCKDET$0$0 == 0x4182
                           004182  2061 _AX5043_PLLLOCKDET	=	0x4182
                           004030  2062 G$AX5043_PLLLOOP$0$0 == 0x4030
                           004030  2063 _AX5043_PLLLOOP	=	0x4030
                           004038  2064 G$AX5043_PLLLOOPBOOST$0$0 == 0x4038
                           004038  2065 _AX5043_PLLLOOPBOOST	=	0x4038
                           004033  2066 G$AX5043_PLLRANGINGA$0$0 == 0x4033
                           004033  2067 _AX5043_PLLRANGINGA	=	0x4033
                           00403B  2068 G$AX5043_PLLRANGINGB$0$0 == 0x403b
                           00403B  2069 _AX5043_PLLRANGINGB	=	0x403b
                           004183  2070 G$AX5043_PLLRNGCLK$0$0 == 0x4183
                           004183  2071 _AX5043_PLLRNGCLK	=	0x4183
                           004032  2072 G$AX5043_PLLVCODIV$0$0 == 0x4032
                           004032  2073 _AX5043_PLLVCODIV	=	0x4032
                           004180  2074 G$AX5043_PLLVCOI$0$0 == 0x4180
                           004180  2075 _AX5043_PLLVCOI	=	0x4180
                           004181  2076 G$AX5043_PLLVCOIR$0$0 == 0x4181
                           004181  2077 _AX5043_PLLVCOIR	=	0x4181
                           004F08  2078 G$AX5043_POWCTRL1$0$0 == 0x4f08
                           004F08  2079 _AX5043_POWCTRL1	=	0x4f08
                           004005  2080 G$AX5043_POWIRQMASK$0$0 == 0x4005
                           004005  2081 _AX5043_POWIRQMASK	=	0x4005
                           004003  2082 G$AX5043_POWSTAT$0$0 == 0x4003
                           004003  2083 _AX5043_POWSTAT	=	0x4003
                           004004  2084 G$AX5043_POWSTICKYSTAT$0$0 == 0x4004
                           004004  2085 _AX5043_POWSTICKYSTAT	=	0x4004
                           004027  2086 G$AX5043_PWRAMP$0$0 == 0x4027
                           004027  2087 _AX5043_PWRAMP	=	0x4027
                           004002  2088 G$AX5043_PWRMODE$0$0 == 0x4002
                           004002  2089 _AX5043_PWRMODE	=	0x4002
                           004009  2090 G$AX5043_RADIOEVENTMASK0$0$0 == 0x4009
                           004009  2091 _AX5043_RADIOEVENTMASK0	=	0x4009
                           004008  2092 G$AX5043_RADIOEVENTMASK1$0$0 == 0x4008
                           004008  2093 _AX5043_RADIOEVENTMASK1	=	0x4008
                           00400F  2094 G$AX5043_RADIOEVENTREQ0$0$0 == 0x400f
                           00400F  2095 _AX5043_RADIOEVENTREQ0	=	0x400f
                           00400E  2096 G$AX5043_RADIOEVENTREQ1$0$0 == 0x400e
                           00400E  2097 _AX5043_RADIOEVENTREQ1	=	0x400e
                           00401C  2098 G$AX5043_RADIOSTATE$0$0 == 0x401c
                           00401C  2099 _AX5043_RADIOSTATE	=	0x401c
                           004F0D  2100 G$AX5043_REF$0$0 == 0x4f0d
                           004F0D  2101 _AX5043_REF	=	0x4f0d
                           004040  2102 G$AX5043_RSSI$0$0 == 0x4040
                           004040  2103 _AX5043_RSSI	=	0x4040
                           00422D  2104 G$AX5043_RSSIABSTHR$0$0 == 0x422d
                           00422D  2105 _AX5043_RSSIABSTHR	=	0x422d
                           00422C  2106 G$AX5043_RSSIREFERENCE$0$0 == 0x422c
                           00422C  2107 _AX5043_RSSIREFERENCE	=	0x422c
                           004105  2108 G$AX5043_RXDATARATE0$0$0 == 0x4105
                           004105  2109 _AX5043_RXDATARATE0	=	0x4105
                           004104  2110 G$AX5043_RXDATARATE1$0$0 == 0x4104
                           004104  2111 _AX5043_RXDATARATE1	=	0x4104
                           004103  2112 G$AX5043_RXDATARATE2$0$0 == 0x4103
                           004103  2113 _AX5043_RXDATARATE2	=	0x4103
                           004001  2114 G$AX5043_SCRATCH$0$0 == 0x4001
                           004001  2115 _AX5043_SCRATCH	=	0x4001
                           004000  2116 G$AX5043_SILICONREVISION$0$0 == 0x4000
                           004000  2117 _AX5043_SILICONREVISION	=	0x4000
                           00405B  2118 G$AX5043_TIMER0$0$0 == 0x405b
                           00405B  2119 _AX5043_TIMER0	=	0x405b
                           00405A  2120 G$AX5043_TIMER1$0$0 == 0x405a
                           00405A  2121 _AX5043_TIMER1	=	0x405a
                           004059  2122 G$AX5043_TIMER2$0$0 == 0x4059
                           004059  2123 _AX5043_TIMER2	=	0x4059
                           004227  2124 G$AX5043_TMGRXAGC$0$0 == 0x4227
                           004227  2125 _AX5043_TMGRXAGC	=	0x4227
                           004223  2126 G$AX5043_TMGRXBOOST$0$0 == 0x4223
                           004223  2127 _AX5043_TMGRXBOOST	=	0x4223
                           004226  2128 G$AX5043_TMGRXCOARSEAGC$0$0 == 0x4226
                           004226  2129 _AX5043_TMGRXCOARSEAGC	=	0x4226
                           004225  2130 G$AX5043_TMGRXOFFSACQ$0$0 == 0x4225
                           004225  2131 _AX5043_TMGRXOFFSACQ	=	0x4225
                           004229  2132 G$AX5043_TMGRXPREAMBLE1$0$0 == 0x4229
                           004229  2133 _AX5043_TMGRXPREAMBLE1	=	0x4229
                           00422A  2134 G$AX5043_TMGRXPREAMBLE2$0$0 == 0x422a
                           00422A  2135 _AX5043_TMGRXPREAMBLE2	=	0x422a
                           00422B  2136 G$AX5043_TMGRXPREAMBLE3$0$0 == 0x422b
                           00422B  2137 _AX5043_TMGRXPREAMBLE3	=	0x422b
                           004228  2138 G$AX5043_TMGRXRSSI$0$0 == 0x4228
                           004228  2139 _AX5043_TMGRXRSSI	=	0x4228
                           004224  2140 G$AX5043_TMGRXSETTLE$0$0 == 0x4224
                           004224  2141 _AX5043_TMGRXSETTLE	=	0x4224
                           004220  2142 G$AX5043_TMGTXBOOST$0$0 == 0x4220
                           004220  2143 _AX5043_TMGTXBOOST	=	0x4220
                           004221  2144 G$AX5043_TMGTXSETTLE$0$0 == 0x4221
                           004221  2145 _AX5043_TMGTXSETTLE	=	0x4221
                           004055  2146 G$AX5043_TRKAFSKDEMOD0$0$0 == 0x4055
                           004055  2147 _AX5043_TRKAFSKDEMOD0	=	0x4055
                           004054  2148 G$AX5043_TRKAFSKDEMOD1$0$0 == 0x4054
                           004054  2149 _AX5043_TRKAFSKDEMOD1	=	0x4054
                           004049  2150 G$AX5043_TRKAMPLITUDE0$0$0 == 0x4049
                           004049  2151 _AX5043_TRKAMPLITUDE0	=	0x4049
                           004048  2152 G$AX5043_TRKAMPLITUDE1$0$0 == 0x4048
                           004048  2153 _AX5043_TRKAMPLITUDE1	=	0x4048
                           004047  2154 G$AX5043_TRKDATARATE0$0$0 == 0x4047
                           004047  2155 _AX5043_TRKDATARATE0	=	0x4047
                           004046  2156 G$AX5043_TRKDATARATE1$0$0 == 0x4046
                           004046  2157 _AX5043_TRKDATARATE1	=	0x4046
                           004045  2158 G$AX5043_TRKDATARATE2$0$0 == 0x4045
                           004045  2159 _AX5043_TRKDATARATE2	=	0x4045
                           004051  2160 G$AX5043_TRKFREQ0$0$0 == 0x4051
                           004051  2161 _AX5043_TRKFREQ0	=	0x4051
                           004050  2162 G$AX5043_TRKFREQ1$0$0 == 0x4050
                           004050  2163 _AX5043_TRKFREQ1	=	0x4050
                           004053  2164 G$AX5043_TRKFSKDEMOD0$0$0 == 0x4053
                           004053  2165 _AX5043_TRKFSKDEMOD0	=	0x4053
                           004052  2166 G$AX5043_TRKFSKDEMOD1$0$0 == 0x4052
                           004052  2167 _AX5043_TRKFSKDEMOD1	=	0x4052
                           00404B  2168 G$AX5043_TRKPHASE0$0$0 == 0x404b
                           00404B  2169 _AX5043_TRKPHASE0	=	0x404b
                           00404A  2170 G$AX5043_TRKPHASE1$0$0 == 0x404a
                           00404A  2171 _AX5043_TRKPHASE1	=	0x404a
                           00404F  2172 G$AX5043_TRKRFFREQ0$0$0 == 0x404f
                           00404F  2173 _AX5043_TRKRFFREQ0	=	0x404f
                           00404E  2174 G$AX5043_TRKRFFREQ1$0$0 == 0x404e
                           00404E  2175 _AX5043_TRKRFFREQ1	=	0x404e
                           00404D  2176 G$AX5043_TRKRFFREQ2$0$0 == 0x404d
                           00404D  2177 _AX5043_TRKRFFREQ2	=	0x404d
                           004169  2178 G$AX5043_TXPWRCOEFFA0$0$0 == 0x4169
                           004169  2179 _AX5043_TXPWRCOEFFA0	=	0x4169
                           004168  2180 G$AX5043_TXPWRCOEFFA1$0$0 == 0x4168
                           004168  2181 _AX5043_TXPWRCOEFFA1	=	0x4168
                           00416B  2182 G$AX5043_TXPWRCOEFFB0$0$0 == 0x416b
                           00416B  2183 _AX5043_TXPWRCOEFFB0	=	0x416b
                           00416A  2184 G$AX5043_TXPWRCOEFFB1$0$0 == 0x416a
                           00416A  2185 _AX5043_TXPWRCOEFFB1	=	0x416a
                           00416D  2186 G$AX5043_TXPWRCOEFFC0$0$0 == 0x416d
                           00416D  2187 _AX5043_TXPWRCOEFFC0	=	0x416d
                           00416C  2188 G$AX5043_TXPWRCOEFFC1$0$0 == 0x416c
                           00416C  2189 _AX5043_TXPWRCOEFFC1	=	0x416c
                           00416F  2190 G$AX5043_TXPWRCOEFFD0$0$0 == 0x416f
                           00416F  2191 _AX5043_TXPWRCOEFFD0	=	0x416f
                           00416E  2192 G$AX5043_TXPWRCOEFFD1$0$0 == 0x416e
                           00416E  2193 _AX5043_TXPWRCOEFFD1	=	0x416e
                           004171  2194 G$AX5043_TXPWRCOEFFE0$0$0 == 0x4171
                           004171  2195 _AX5043_TXPWRCOEFFE0	=	0x4171
                           004170  2196 G$AX5043_TXPWRCOEFFE1$0$0 == 0x4170
                           004170  2197 _AX5043_TXPWRCOEFFE1	=	0x4170
                           004167  2198 G$AX5043_TXRATE0$0$0 == 0x4167
                           004167  2199 _AX5043_TXRATE0	=	0x4167
                           004166  2200 G$AX5043_TXRATE1$0$0 == 0x4166
                           004166  2201 _AX5043_TXRATE1	=	0x4166
                           004165  2202 G$AX5043_TXRATE2$0$0 == 0x4165
                           004165  2203 _AX5043_TXRATE2	=	0x4165
                           00406B  2204 G$AX5043_WAKEUP0$0$0 == 0x406b
                           00406B  2205 _AX5043_WAKEUP0	=	0x406b
                           00406A  2206 G$AX5043_WAKEUP1$0$0 == 0x406a
                           00406A  2207 _AX5043_WAKEUP1	=	0x406a
                           00406D  2208 G$AX5043_WAKEUPFREQ0$0$0 == 0x406d
                           00406D  2209 _AX5043_WAKEUPFREQ0	=	0x406d
                           00406C  2210 G$AX5043_WAKEUPFREQ1$0$0 == 0x406c
                           00406C  2211 _AX5043_WAKEUPFREQ1	=	0x406c
                           004069  2212 G$AX5043_WAKEUPTIMER0$0$0 == 0x4069
                           004069  2213 _AX5043_WAKEUPTIMER0	=	0x4069
                           004068  2214 G$AX5043_WAKEUPTIMER1$0$0 == 0x4068
                           004068  2215 _AX5043_WAKEUPTIMER1	=	0x4068
                           00406E  2216 G$AX5043_WAKEUPXOEARLY$0$0 == 0x406e
                           00406E  2217 _AX5043_WAKEUPXOEARLY	=	0x406e
                           004F11  2218 G$AX5043_XTALAMPL$0$0 == 0x4f11
                           004F11  2219 _AX5043_XTALAMPL	=	0x4f11
                           004184  2220 G$AX5043_XTALCAP$0$0 == 0x4184
                           004184  2221 _AX5043_XTALCAP	=	0x4184
                           004F10  2222 G$AX5043_XTALOSC$0$0 == 0x4f10
                           004F10  2223 _AX5043_XTALOSC	=	0x4f10
                           00401D  2224 G$AX5043_XTALSTATUS$0$0 == 0x401d
                           00401D  2225 _AX5043_XTALSTATUS	=	0x401d
                           004F00  2226 G$AX5043_0xF00$0$0 == 0x4f00
                           004F00  2227 _AX5043_0xF00	=	0x4f00
                           004F0C  2228 G$AX5043_0xF0C$0$0 == 0x4f0c
                           004F0C  2229 _AX5043_0xF0C	=	0x4f0c
                           004F18  2230 G$AX5043_0xF18$0$0 == 0x4f18
                           004F18  2231 _AX5043_0xF18	=	0x4f18
                           004F1C  2232 G$AX5043_0xF1C$0$0 == 0x4f1c
                           004F1C  2233 _AX5043_0xF1C	=	0x4f1c
                           004F21  2234 G$AX5043_0xF21$0$0 == 0x4f21
                           004F21  2235 _AX5043_0xF21	=	0x4f21
                           004F22  2236 G$AX5043_0xF22$0$0 == 0x4f22
                           004F22  2237 _AX5043_0xF22	=	0x4f22
                           004F23  2238 G$AX5043_0xF23$0$0 == 0x4f23
                           004F23  2239 _AX5043_0xF23	=	0x4f23
                           004F26  2240 G$AX5043_0xF26$0$0 == 0x4f26
                           004F26  2241 _AX5043_0xF26	=	0x4f26
                           004F30  2242 G$AX5043_0xF30$0$0 == 0x4f30
                           004F30  2243 _AX5043_0xF30	=	0x4f30
                           004F31  2244 G$AX5043_0xF31$0$0 == 0x4f31
                           004F31  2245 _AX5043_0xF31	=	0x4f31
                           004F32  2246 G$AX5043_0xF32$0$0 == 0x4f32
                           004F32  2247 _AX5043_0xF32	=	0x4f32
                           004F33  2248 G$AX5043_0xF33$0$0 == 0x4f33
                           004F33  2249 _AX5043_0xF33	=	0x4f33
                           004F34  2250 G$AX5043_0xF34$0$0 == 0x4f34
                           004F34  2251 _AX5043_0xF34	=	0x4f34
                           004F35  2252 G$AX5043_0xF35$0$0 == 0x4f35
                           004F35  2253 _AX5043_0xF35	=	0x4f35
                           004F44  2254 G$AX5043_0xF44$0$0 == 0x4f44
                           004F44  2255 _AX5043_0xF44	=	0x4f44
                           004122  2256 G$AX5043_AGCAHYST0$0$0 == 0x4122
                           004122  2257 _AX5043_AGCAHYST0	=	0x4122
                           004132  2258 G$AX5043_AGCAHYST1$0$0 == 0x4132
                           004132  2259 _AX5043_AGCAHYST1	=	0x4132
                           004142  2260 G$AX5043_AGCAHYST2$0$0 == 0x4142
                           004142  2261 _AX5043_AGCAHYST2	=	0x4142
                           004152  2262 G$AX5043_AGCAHYST3$0$0 == 0x4152
                           004152  2263 _AX5043_AGCAHYST3	=	0x4152
                           004120  2264 G$AX5043_AGCGAIN0$0$0 == 0x4120
                           004120  2265 _AX5043_AGCGAIN0	=	0x4120
                           004130  2266 G$AX5043_AGCGAIN1$0$0 == 0x4130
                           004130  2267 _AX5043_AGCGAIN1	=	0x4130
                           004140  2268 G$AX5043_AGCGAIN2$0$0 == 0x4140
                           004140  2269 _AX5043_AGCGAIN2	=	0x4140
                           004150  2270 G$AX5043_AGCGAIN3$0$0 == 0x4150
                           004150  2271 _AX5043_AGCGAIN3	=	0x4150
                           004123  2272 G$AX5043_AGCMINMAX0$0$0 == 0x4123
                           004123  2273 _AX5043_AGCMINMAX0	=	0x4123
                           004133  2274 G$AX5043_AGCMINMAX1$0$0 == 0x4133
                           004133  2275 _AX5043_AGCMINMAX1	=	0x4133
                           004143  2276 G$AX5043_AGCMINMAX2$0$0 == 0x4143
                           004143  2277 _AX5043_AGCMINMAX2	=	0x4143
                           004153  2278 G$AX5043_AGCMINMAX3$0$0 == 0x4153
                           004153  2279 _AX5043_AGCMINMAX3	=	0x4153
                           004121  2280 G$AX5043_AGCTARGET0$0$0 == 0x4121
                           004121  2281 _AX5043_AGCTARGET0	=	0x4121
                           004131  2282 G$AX5043_AGCTARGET1$0$0 == 0x4131
                           004131  2283 _AX5043_AGCTARGET1	=	0x4131
                           004141  2284 G$AX5043_AGCTARGET2$0$0 == 0x4141
                           004141  2285 _AX5043_AGCTARGET2	=	0x4141
                           004151  2286 G$AX5043_AGCTARGET3$0$0 == 0x4151
                           004151  2287 _AX5043_AGCTARGET3	=	0x4151
                           00412B  2288 G$AX5043_AMPLITUDEGAIN0$0$0 == 0x412b
                           00412B  2289 _AX5043_AMPLITUDEGAIN0	=	0x412b
                           00413B  2290 G$AX5043_AMPLITUDEGAIN1$0$0 == 0x413b
                           00413B  2291 _AX5043_AMPLITUDEGAIN1	=	0x413b
                           00414B  2292 G$AX5043_AMPLITUDEGAIN2$0$0 == 0x414b
                           00414B  2293 _AX5043_AMPLITUDEGAIN2	=	0x414b
                           00415B  2294 G$AX5043_AMPLITUDEGAIN3$0$0 == 0x415b
                           00415B  2295 _AX5043_AMPLITUDEGAIN3	=	0x415b
                           00412F  2296 G$AX5043_BBOFFSRES0$0$0 == 0x412f
                           00412F  2297 _AX5043_BBOFFSRES0	=	0x412f
                           00413F  2298 G$AX5043_BBOFFSRES1$0$0 == 0x413f
                           00413F  2299 _AX5043_BBOFFSRES1	=	0x413f
                           00414F  2300 G$AX5043_BBOFFSRES2$0$0 == 0x414f
                           00414F  2301 _AX5043_BBOFFSRES2	=	0x414f
                           00415F  2302 G$AX5043_BBOFFSRES3$0$0 == 0x415f
                           00415F  2303 _AX5043_BBOFFSRES3	=	0x415f
                           004125  2304 G$AX5043_DRGAIN0$0$0 == 0x4125
                           004125  2305 _AX5043_DRGAIN0	=	0x4125
                           004135  2306 G$AX5043_DRGAIN1$0$0 == 0x4135
                           004135  2307 _AX5043_DRGAIN1	=	0x4135
                           004145  2308 G$AX5043_DRGAIN2$0$0 == 0x4145
                           004145  2309 _AX5043_DRGAIN2	=	0x4145
                           004155  2310 G$AX5043_DRGAIN3$0$0 == 0x4155
                           004155  2311 _AX5043_DRGAIN3	=	0x4155
                           00412E  2312 G$AX5043_FOURFSK0$0$0 == 0x412e
                           00412E  2313 _AX5043_FOURFSK0	=	0x412e
                           00413E  2314 G$AX5043_FOURFSK1$0$0 == 0x413e
                           00413E  2315 _AX5043_FOURFSK1	=	0x413e
                           00414E  2316 G$AX5043_FOURFSK2$0$0 == 0x414e
                           00414E  2317 _AX5043_FOURFSK2	=	0x414e
                           00415E  2318 G$AX5043_FOURFSK3$0$0 == 0x415e
                           00415E  2319 _AX5043_FOURFSK3	=	0x415e
                           00412D  2320 G$AX5043_FREQDEV00$0$0 == 0x412d
                           00412D  2321 _AX5043_FREQDEV00	=	0x412d
                           00413D  2322 G$AX5043_FREQDEV01$0$0 == 0x413d
                           00413D  2323 _AX5043_FREQDEV01	=	0x413d
                           00414D  2324 G$AX5043_FREQDEV02$0$0 == 0x414d
                           00414D  2325 _AX5043_FREQDEV02	=	0x414d
                           00415D  2326 G$AX5043_FREQDEV03$0$0 == 0x415d
                           00415D  2327 _AX5043_FREQDEV03	=	0x415d
                           00412C  2328 G$AX5043_FREQDEV10$0$0 == 0x412c
                           00412C  2329 _AX5043_FREQDEV10	=	0x412c
                           00413C  2330 G$AX5043_FREQDEV11$0$0 == 0x413c
                           00413C  2331 _AX5043_FREQDEV11	=	0x413c
                           00414C  2332 G$AX5043_FREQDEV12$0$0 == 0x414c
                           00414C  2333 _AX5043_FREQDEV12	=	0x414c
                           00415C  2334 G$AX5043_FREQDEV13$0$0 == 0x415c
                           00415C  2335 _AX5043_FREQDEV13	=	0x415c
                           004127  2336 G$AX5043_FREQUENCYGAINA0$0$0 == 0x4127
                           004127  2337 _AX5043_FREQUENCYGAINA0	=	0x4127
                           004137  2338 G$AX5043_FREQUENCYGAINA1$0$0 == 0x4137
                           004137  2339 _AX5043_FREQUENCYGAINA1	=	0x4137
                           004147  2340 G$AX5043_FREQUENCYGAINA2$0$0 == 0x4147
                           004147  2341 _AX5043_FREQUENCYGAINA2	=	0x4147
                           004157  2342 G$AX5043_FREQUENCYGAINA3$0$0 == 0x4157
                           004157  2343 _AX5043_FREQUENCYGAINA3	=	0x4157
                           004128  2344 G$AX5043_FREQUENCYGAINB0$0$0 == 0x4128
                           004128  2345 _AX5043_FREQUENCYGAINB0	=	0x4128
                           004138  2346 G$AX5043_FREQUENCYGAINB1$0$0 == 0x4138
                           004138  2347 _AX5043_FREQUENCYGAINB1	=	0x4138
                           004148  2348 G$AX5043_FREQUENCYGAINB2$0$0 == 0x4148
                           004148  2349 _AX5043_FREQUENCYGAINB2	=	0x4148
                           004158  2350 G$AX5043_FREQUENCYGAINB3$0$0 == 0x4158
                           004158  2351 _AX5043_FREQUENCYGAINB3	=	0x4158
                           004129  2352 G$AX5043_FREQUENCYGAINC0$0$0 == 0x4129
                           004129  2353 _AX5043_FREQUENCYGAINC0	=	0x4129
                           004139  2354 G$AX5043_FREQUENCYGAINC1$0$0 == 0x4139
                           004139  2355 _AX5043_FREQUENCYGAINC1	=	0x4139
                           004149  2356 G$AX5043_FREQUENCYGAINC2$0$0 == 0x4149
                           004149  2357 _AX5043_FREQUENCYGAINC2	=	0x4149
                           004159  2358 G$AX5043_FREQUENCYGAINC3$0$0 == 0x4159
                           004159  2359 _AX5043_FREQUENCYGAINC3	=	0x4159
                           00412A  2360 G$AX5043_FREQUENCYGAIND0$0$0 == 0x412a
                           00412A  2361 _AX5043_FREQUENCYGAIND0	=	0x412a
                           00413A  2362 G$AX5043_FREQUENCYGAIND1$0$0 == 0x413a
                           00413A  2363 _AX5043_FREQUENCYGAIND1	=	0x413a
                           00414A  2364 G$AX5043_FREQUENCYGAIND2$0$0 == 0x414a
                           00414A  2365 _AX5043_FREQUENCYGAIND2	=	0x414a
                           00415A  2366 G$AX5043_FREQUENCYGAIND3$0$0 == 0x415a
                           00415A  2367 _AX5043_FREQUENCYGAIND3	=	0x415a
                           004116  2368 G$AX5043_FREQUENCYLEAK$0$0 == 0x4116
                           004116  2369 _AX5043_FREQUENCYLEAK	=	0x4116
                           004126  2370 G$AX5043_PHASEGAIN0$0$0 == 0x4126
                           004126  2371 _AX5043_PHASEGAIN0	=	0x4126
                           004136  2372 G$AX5043_PHASEGAIN1$0$0 == 0x4136
                           004136  2373 _AX5043_PHASEGAIN1	=	0x4136
                           004146  2374 G$AX5043_PHASEGAIN2$0$0 == 0x4146
                           004146  2375 _AX5043_PHASEGAIN2	=	0x4146
                           004156  2376 G$AX5043_PHASEGAIN3$0$0 == 0x4156
                           004156  2377 _AX5043_PHASEGAIN3	=	0x4156
                           004207  2378 G$AX5043_PKTADDR0$0$0 == 0x4207
                           004207  2379 _AX5043_PKTADDR0	=	0x4207
                           004206  2380 G$AX5043_PKTADDR1$0$0 == 0x4206
                           004206  2381 _AX5043_PKTADDR1	=	0x4206
                           004205  2382 G$AX5043_PKTADDR2$0$0 == 0x4205
                           004205  2383 _AX5043_PKTADDR2	=	0x4205
                           004204  2384 G$AX5043_PKTADDR3$0$0 == 0x4204
                           004204  2385 _AX5043_PKTADDR3	=	0x4204
                           004200  2386 G$AX5043_PKTADDRCFG$0$0 == 0x4200
                           004200  2387 _AX5043_PKTADDRCFG	=	0x4200
                           00420B  2388 G$AX5043_PKTADDRMASK0$0$0 == 0x420b
                           00420B  2389 _AX5043_PKTADDRMASK0	=	0x420b
                           00420A  2390 G$AX5043_PKTADDRMASK1$0$0 == 0x420a
                           00420A  2391 _AX5043_PKTADDRMASK1	=	0x420a
                           004209  2392 G$AX5043_PKTADDRMASK2$0$0 == 0x4209
                           004209  2393 _AX5043_PKTADDRMASK2	=	0x4209
                           004208  2394 G$AX5043_PKTADDRMASK3$0$0 == 0x4208
                           004208  2395 _AX5043_PKTADDRMASK3	=	0x4208
                           004201  2396 G$AX5043_PKTLENCFG$0$0 == 0x4201
                           004201  2397 _AX5043_PKTLENCFG	=	0x4201
                           004202  2398 G$AX5043_PKTLENOFFSET$0$0 == 0x4202
                           004202  2399 _AX5043_PKTLENOFFSET	=	0x4202
                           004203  2400 G$AX5043_PKTMAXLEN$0$0 == 0x4203
                           004203  2401 _AX5043_PKTMAXLEN	=	0x4203
                           004118  2402 G$AX5043_RXPARAMCURSET$0$0 == 0x4118
                           004118  2403 _AX5043_RXPARAMCURSET	=	0x4118
                           004117  2404 G$AX5043_RXPARAMSETS$0$0 == 0x4117
                           004117  2405 _AX5043_RXPARAMSETS	=	0x4117
                           004124  2406 G$AX5043_TIMEGAIN0$0$0 == 0x4124
                           004124  2407 _AX5043_TIMEGAIN0	=	0x4124
                           004134  2408 G$AX5043_TIMEGAIN1$0$0 == 0x4134
                           004134  2409 _AX5043_TIMEGAIN1	=	0x4134
                           004144  2410 G$AX5043_TIMEGAIN2$0$0 == 0x4144
                           004144  2411 _AX5043_TIMEGAIN2	=	0x4144
                           004154  2412 G$AX5043_TIMEGAIN3$0$0 == 0x4154
                           004154  2413 _AX5043_TIMEGAIN3	=	0x4154
                           005114  2414 G$AX5043_AFSKCTRLNB$0$0 == 0x5114
                           005114  2415 _AX5043_AFSKCTRLNB	=	0x5114
                           005113  2416 G$AX5043_AFSKMARK0NB$0$0 == 0x5113
                           005113  2417 _AX5043_AFSKMARK0NB	=	0x5113
                           005112  2418 G$AX5043_AFSKMARK1NB$0$0 == 0x5112
                           005112  2419 _AX5043_AFSKMARK1NB	=	0x5112
                           005111  2420 G$AX5043_AFSKSPACE0NB$0$0 == 0x5111
                           005111  2421 _AX5043_AFSKSPACE0NB	=	0x5111
                           005110  2422 G$AX5043_AFSKSPACE1NB$0$0 == 0x5110
                           005110  2423 _AX5043_AFSKSPACE1NB	=	0x5110
                           005043  2424 G$AX5043_AGCCOUNTERNB$0$0 == 0x5043
                           005043  2425 _AX5043_AGCCOUNTERNB	=	0x5043
                           005115  2426 G$AX5043_AMPLFILTERNB$0$0 == 0x5115
                           005115  2427 _AX5043_AMPLFILTERNB	=	0x5115
                           005189  2428 G$AX5043_BBOFFSCAPNB$0$0 == 0x5189
                           005189  2429 _AX5043_BBOFFSCAPNB	=	0x5189
                           005188  2430 G$AX5043_BBTUNENB$0$0 == 0x5188
                           005188  2431 _AX5043_BBTUNENB	=	0x5188
                           005041  2432 G$AX5043_BGNDRSSINB$0$0 == 0x5041
                           005041  2433 _AX5043_BGNDRSSINB	=	0x5041
                           00522E  2434 G$AX5043_BGNDRSSIGAINNB$0$0 == 0x522e
                           00522E  2435 _AX5043_BGNDRSSIGAINNB	=	0x522e
                           00522F  2436 G$AX5043_BGNDRSSITHRNB$0$0 == 0x522f
                           00522F  2437 _AX5043_BGNDRSSITHRNB	=	0x522f
                           005017  2438 G$AX5043_CRCINIT0NB$0$0 == 0x5017
                           005017  2439 _AX5043_CRCINIT0NB	=	0x5017
                           005016  2440 G$AX5043_CRCINIT1NB$0$0 == 0x5016
                           005016  2441 _AX5043_CRCINIT1NB	=	0x5016
                           005015  2442 G$AX5043_CRCINIT2NB$0$0 == 0x5015
                           005015  2443 _AX5043_CRCINIT2NB	=	0x5015
                           005014  2444 G$AX5043_CRCINIT3NB$0$0 == 0x5014
                           005014  2445 _AX5043_CRCINIT3NB	=	0x5014
                           005332  2446 G$AX5043_DACCONFIGNB$0$0 == 0x5332
                           005332  2447 _AX5043_DACCONFIGNB	=	0x5332
                           005331  2448 G$AX5043_DACVALUE0NB$0$0 == 0x5331
                           005331  2449 _AX5043_DACVALUE0NB	=	0x5331
                           005330  2450 G$AX5043_DACVALUE1NB$0$0 == 0x5330
                           005330  2451 _AX5043_DACVALUE1NB	=	0x5330
                           005102  2452 G$AX5043_DECIMATIONNB$0$0 == 0x5102
                           005102  2453 _AX5043_DECIMATIONNB	=	0x5102
                           005042  2454 G$AX5043_DIVERSITYNB$0$0 == 0x5042
                           005042  2455 _AX5043_DIVERSITYNB	=	0x5042
                           005011  2456 G$AX5043_ENCODINGNB$0$0 == 0x5011
                           005011  2457 _AX5043_ENCODINGNB	=	0x5011
                           005018  2458 G$AX5043_FECNB$0$0 == 0x5018
                           005018  2459 _AX5043_FECNB	=	0x5018
                           00501A  2460 G$AX5043_FECSTATUSNB$0$0 == 0x501a
                           00501A  2461 _AX5043_FECSTATUSNB	=	0x501a
                           005019  2462 G$AX5043_FECSYNCNB$0$0 == 0x5019
                           005019  2463 _AX5043_FECSYNCNB	=	0x5019
                           00502B  2464 G$AX5043_FIFOCOUNT0NB$0$0 == 0x502b
                           00502B  2465 _AX5043_FIFOCOUNT0NB	=	0x502b
                           00502A  2466 G$AX5043_FIFOCOUNT1NB$0$0 == 0x502a
                           00502A  2467 _AX5043_FIFOCOUNT1NB	=	0x502a
                           005029  2468 G$AX5043_FIFODATANB$0$0 == 0x5029
                           005029  2469 _AX5043_FIFODATANB	=	0x5029
                           00502D  2470 G$AX5043_FIFOFREE0NB$0$0 == 0x502d
                           00502D  2471 _AX5043_FIFOFREE0NB	=	0x502d
                           00502C  2472 G$AX5043_FIFOFREE1NB$0$0 == 0x502c
                           00502C  2473 _AX5043_FIFOFREE1NB	=	0x502c
                           005028  2474 G$AX5043_FIFOSTATNB$0$0 == 0x5028
                           005028  2475 _AX5043_FIFOSTATNB	=	0x5028
                           00502F  2476 G$AX5043_FIFOTHRESH0NB$0$0 == 0x502f
                           00502F  2477 _AX5043_FIFOTHRESH0NB	=	0x502f
                           00502E  2478 G$AX5043_FIFOTHRESH1NB$0$0 == 0x502e
                           00502E  2479 _AX5043_FIFOTHRESH1NB	=	0x502e
                           005012  2480 G$AX5043_FRAMINGNB$0$0 == 0x5012
                           005012  2481 _AX5043_FRAMINGNB	=	0x5012
                           005037  2482 G$AX5043_FREQA0NB$0$0 == 0x5037
                           005037  2483 _AX5043_FREQA0NB	=	0x5037
                           005036  2484 G$AX5043_FREQA1NB$0$0 == 0x5036
                           005036  2485 _AX5043_FREQA1NB	=	0x5036
                           005035  2486 G$AX5043_FREQA2NB$0$0 == 0x5035
                           005035  2487 _AX5043_FREQA2NB	=	0x5035
                           005034  2488 G$AX5043_FREQA3NB$0$0 == 0x5034
                           005034  2489 _AX5043_FREQA3NB	=	0x5034
                           00503F  2490 G$AX5043_FREQB0NB$0$0 == 0x503f
                           00503F  2491 _AX5043_FREQB0NB	=	0x503f
                           00503E  2492 G$AX5043_FREQB1NB$0$0 == 0x503e
                           00503E  2493 _AX5043_FREQB1NB	=	0x503e
                           00503D  2494 G$AX5043_FREQB2NB$0$0 == 0x503d
                           00503D  2495 _AX5043_FREQB2NB	=	0x503d
                           00503C  2496 G$AX5043_FREQB3NB$0$0 == 0x503c
                           00503C  2497 _AX5043_FREQB3NB	=	0x503c
                           005163  2498 G$AX5043_FSKDEV0NB$0$0 == 0x5163
                           005163  2499 _AX5043_FSKDEV0NB	=	0x5163
                           005162  2500 G$AX5043_FSKDEV1NB$0$0 == 0x5162
                           005162  2501 _AX5043_FSKDEV1NB	=	0x5162
                           005161  2502 G$AX5043_FSKDEV2NB$0$0 == 0x5161
                           005161  2503 _AX5043_FSKDEV2NB	=	0x5161
                           00510D  2504 G$AX5043_FSKDMAX0NB$0$0 == 0x510d
                           00510D  2505 _AX5043_FSKDMAX0NB	=	0x510d
                           00510C  2506 G$AX5043_FSKDMAX1NB$0$0 == 0x510c
                           00510C  2507 _AX5043_FSKDMAX1NB	=	0x510c
                           00510F  2508 G$AX5043_FSKDMIN0NB$0$0 == 0x510f
                           00510F  2509 _AX5043_FSKDMIN0NB	=	0x510f
                           00510E  2510 G$AX5043_FSKDMIN1NB$0$0 == 0x510e
                           00510E  2511 _AX5043_FSKDMIN1NB	=	0x510e
                           005309  2512 G$AX5043_GPADC13VALUE0NB$0$0 == 0x5309
                           005309  2513 _AX5043_GPADC13VALUE0NB	=	0x5309
                           005308  2514 G$AX5043_GPADC13VALUE1NB$0$0 == 0x5308
                           005308  2515 _AX5043_GPADC13VALUE1NB	=	0x5308
                           005300  2516 G$AX5043_GPADCCTRLNB$0$0 == 0x5300
                           005300  2517 _AX5043_GPADCCTRLNB	=	0x5300
                           005301  2518 G$AX5043_GPADCPERIODNB$0$0 == 0x5301
                           005301  2519 _AX5043_GPADCPERIODNB	=	0x5301
                           005101  2520 G$AX5043_IFFREQ0NB$0$0 == 0x5101
                           005101  2521 _AX5043_IFFREQ0NB	=	0x5101
                           005100  2522 G$AX5043_IFFREQ1NB$0$0 == 0x5100
                           005100  2523 _AX5043_IFFREQ1NB	=	0x5100
                           00500B  2524 G$AX5043_IRQINVERSION0NB$0$0 == 0x500b
                           00500B  2525 _AX5043_IRQINVERSION0NB	=	0x500b
                           00500A  2526 G$AX5043_IRQINVERSION1NB$0$0 == 0x500a
                           00500A  2527 _AX5043_IRQINVERSION1NB	=	0x500a
                           005007  2528 G$AX5043_IRQMASK0NB$0$0 == 0x5007
                           005007  2529 _AX5043_IRQMASK0NB	=	0x5007
                           005006  2530 G$AX5043_IRQMASK1NB$0$0 == 0x5006
                           005006  2531 _AX5043_IRQMASK1NB	=	0x5006
                           00500D  2532 G$AX5043_IRQREQUEST0NB$0$0 == 0x500d
                           00500D  2533 _AX5043_IRQREQUEST0NB	=	0x500d
                           00500C  2534 G$AX5043_IRQREQUEST1NB$0$0 == 0x500c
                           00500C  2535 _AX5043_IRQREQUEST1NB	=	0x500c
                           005310  2536 G$AX5043_LPOSCCONFIGNB$0$0 == 0x5310
                           005310  2537 _AX5043_LPOSCCONFIGNB	=	0x5310
                           005317  2538 G$AX5043_LPOSCFREQ0NB$0$0 == 0x5317
                           005317  2539 _AX5043_LPOSCFREQ0NB	=	0x5317
                           005316  2540 G$AX5043_LPOSCFREQ1NB$0$0 == 0x5316
                           005316  2541 _AX5043_LPOSCFREQ1NB	=	0x5316
                           005313  2542 G$AX5043_LPOSCKFILT0NB$0$0 == 0x5313
                           005313  2543 _AX5043_LPOSCKFILT0NB	=	0x5313
                           005312  2544 G$AX5043_LPOSCKFILT1NB$0$0 == 0x5312
                           005312  2545 _AX5043_LPOSCKFILT1NB	=	0x5312
                           005319  2546 G$AX5043_LPOSCPER0NB$0$0 == 0x5319
                           005319  2547 _AX5043_LPOSCPER0NB	=	0x5319
                           005318  2548 G$AX5043_LPOSCPER1NB$0$0 == 0x5318
                           005318  2549 _AX5043_LPOSCPER1NB	=	0x5318
                           005315  2550 G$AX5043_LPOSCREF0NB$0$0 == 0x5315
                           005315  2551 _AX5043_LPOSCREF0NB	=	0x5315
                           005314  2552 G$AX5043_LPOSCREF1NB$0$0 == 0x5314
                           005314  2553 _AX5043_LPOSCREF1NB	=	0x5314
                           005311  2554 G$AX5043_LPOSCSTATUSNB$0$0 == 0x5311
                           005311  2555 _AX5043_LPOSCSTATUSNB	=	0x5311
                           005214  2556 G$AX5043_MATCH0LENNB$0$0 == 0x5214
                           005214  2557 _AX5043_MATCH0LENNB	=	0x5214
                           005216  2558 G$AX5043_MATCH0MAXNB$0$0 == 0x5216
                           005216  2559 _AX5043_MATCH0MAXNB	=	0x5216
                           005215  2560 G$AX5043_MATCH0MINNB$0$0 == 0x5215
                           005215  2561 _AX5043_MATCH0MINNB	=	0x5215
                           005213  2562 G$AX5043_MATCH0PAT0NB$0$0 == 0x5213
                           005213  2563 _AX5043_MATCH0PAT0NB	=	0x5213
                           005212  2564 G$AX5043_MATCH0PAT1NB$0$0 == 0x5212
                           005212  2565 _AX5043_MATCH0PAT1NB	=	0x5212
                           005211  2566 G$AX5043_MATCH0PAT2NB$0$0 == 0x5211
                           005211  2567 _AX5043_MATCH0PAT2NB	=	0x5211
                           005210  2568 G$AX5043_MATCH0PAT3NB$0$0 == 0x5210
                           005210  2569 _AX5043_MATCH0PAT3NB	=	0x5210
                           00521C  2570 G$AX5043_MATCH1LENNB$0$0 == 0x521c
                           00521C  2571 _AX5043_MATCH1LENNB	=	0x521c
                           00521E  2572 G$AX5043_MATCH1MAXNB$0$0 == 0x521e
                           00521E  2573 _AX5043_MATCH1MAXNB	=	0x521e
                           00521D  2574 G$AX5043_MATCH1MINNB$0$0 == 0x521d
                           00521D  2575 _AX5043_MATCH1MINNB	=	0x521d
                           005219  2576 G$AX5043_MATCH1PAT0NB$0$0 == 0x5219
                           005219  2577 _AX5043_MATCH1PAT0NB	=	0x5219
                           005218  2578 G$AX5043_MATCH1PAT1NB$0$0 == 0x5218
                           005218  2579 _AX5043_MATCH1PAT1NB	=	0x5218
                           005108  2580 G$AX5043_MAXDROFFSET0NB$0$0 == 0x5108
                           005108  2581 _AX5043_MAXDROFFSET0NB	=	0x5108
                           005107  2582 G$AX5043_MAXDROFFSET1NB$0$0 == 0x5107
                           005107  2583 _AX5043_MAXDROFFSET1NB	=	0x5107
                           005106  2584 G$AX5043_MAXDROFFSET2NB$0$0 == 0x5106
                           005106  2585 _AX5043_MAXDROFFSET2NB	=	0x5106
                           00510B  2586 G$AX5043_MAXRFOFFSET0NB$0$0 == 0x510b
                           00510B  2587 _AX5043_MAXRFOFFSET0NB	=	0x510b
                           00510A  2588 G$AX5043_MAXRFOFFSET1NB$0$0 == 0x510a
                           00510A  2589 _AX5043_MAXRFOFFSET1NB	=	0x510a
                           005109  2590 G$AX5043_MAXRFOFFSET2NB$0$0 == 0x5109
                           005109  2591 _AX5043_MAXRFOFFSET2NB	=	0x5109
                           005164  2592 G$AX5043_MODCFGANB$0$0 == 0x5164
                           005164  2593 _AX5043_MODCFGANB	=	0x5164
                           005160  2594 G$AX5043_MODCFGFNB$0$0 == 0x5160
                           005160  2595 _AX5043_MODCFGFNB	=	0x5160
                           005F5F  2596 G$AX5043_MODCFGPNB$0$0 == 0x5f5f
                           005F5F  2597 _AX5043_MODCFGPNB	=	0x5f5f
                           005010  2598 G$AX5043_MODULATIONNB$0$0 == 0x5010
                           005010  2599 _AX5043_MODULATIONNB	=	0x5010
                           005025  2600 G$AX5043_PINFUNCANTSELNB$0$0 == 0x5025
                           005025  2601 _AX5043_PINFUNCANTSELNB	=	0x5025
                           005023  2602 G$AX5043_PINFUNCDATANB$0$0 == 0x5023
                           005023  2603 _AX5043_PINFUNCDATANB	=	0x5023
                           005022  2604 G$AX5043_PINFUNCDCLKNB$0$0 == 0x5022
                           005022  2605 _AX5043_PINFUNCDCLKNB	=	0x5022
                           005024  2606 G$AX5043_PINFUNCIRQNB$0$0 == 0x5024
                           005024  2607 _AX5043_PINFUNCIRQNB	=	0x5024
                           005026  2608 G$AX5043_PINFUNCPWRAMPNB$0$0 == 0x5026
                           005026  2609 _AX5043_PINFUNCPWRAMPNB	=	0x5026
                           005021  2610 G$AX5043_PINFUNCSYSCLKNB$0$0 == 0x5021
                           005021  2611 _AX5043_PINFUNCSYSCLKNB	=	0x5021
                           005020  2612 G$AX5043_PINSTATENB$0$0 == 0x5020
                           005020  2613 _AX5043_PINSTATENB	=	0x5020
                           005233  2614 G$AX5043_PKTACCEPTFLAGSNB$0$0 == 0x5233
                           005233  2615 _AX5043_PKTACCEPTFLAGSNB	=	0x5233
                           005230  2616 G$AX5043_PKTCHUNKSIZENB$0$0 == 0x5230
                           005230  2617 _AX5043_PKTCHUNKSIZENB	=	0x5230
                           005231  2618 G$AX5043_PKTMISCFLAGSNB$0$0 == 0x5231
                           005231  2619 _AX5043_PKTMISCFLAGSNB	=	0x5231
                           005232  2620 G$AX5043_PKTSTOREFLAGSNB$0$0 == 0x5232
                           005232  2621 _AX5043_PKTSTOREFLAGSNB	=	0x5232
                           005031  2622 G$AX5043_PLLCPINB$0$0 == 0x5031
                           005031  2623 _AX5043_PLLCPINB	=	0x5031
                           005039  2624 G$AX5043_PLLCPIBOOSTNB$0$0 == 0x5039
                           005039  2625 _AX5043_PLLCPIBOOSTNB	=	0x5039
                           005182  2626 G$AX5043_PLLLOCKDETNB$0$0 == 0x5182
                           005182  2627 _AX5043_PLLLOCKDETNB	=	0x5182
                           005030  2628 G$AX5043_PLLLOOPNB$0$0 == 0x5030
                           005030  2629 _AX5043_PLLLOOPNB	=	0x5030
                           005038  2630 G$AX5043_PLLLOOPBOOSTNB$0$0 == 0x5038
                           005038  2631 _AX5043_PLLLOOPBOOSTNB	=	0x5038
                           005033  2632 G$AX5043_PLLRANGINGANB$0$0 == 0x5033
                           005033  2633 _AX5043_PLLRANGINGANB	=	0x5033
                           00503B  2634 G$AX5043_PLLRANGINGBNB$0$0 == 0x503b
                           00503B  2635 _AX5043_PLLRANGINGBNB	=	0x503b
                           005183  2636 G$AX5043_PLLRNGCLKNB$0$0 == 0x5183
                           005183  2637 _AX5043_PLLRNGCLKNB	=	0x5183
                           005032  2638 G$AX5043_PLLVCODIVNB$0$0 == 0x5032
                           005032  2639 _AX5043_PLLVCODIVNB	=	0x5032
                           005180  2640 G$AX5043_PLLVCOINB$0$0 == 0x5180
                           005180  2641 _AX5043_PLLVCOINB	=	0x5180
                           005181  2642 G$AX5043_PLLVCOIRNB$0$0 == 0x5181
                           005181  2643 _AX5043_PLLVCOIRNB	=	0x5181
                           005F08  2644 G$AX5043_POWCTRL1NB$0$0 == 0x5f08
                           005F08  2645 _AX5043_POWCTRL1NB	=	0x5f08
                           005005  2646 G$AX5043_POWIRQMASKNB$0$0 == 0x5005
                           005005  2647 _AX5043_POWIRQMASKNB	=	0x5005
                           005003  2648 G$AX5043_POWSTATNB$0$0 == 0x5003
                           005003  2649 _AX5043_POWSTATNB	=	0x5003
                           005004  2650 G$AX5043_POWSTICKYSTATNB$0$0 == 0x5004
                           005004  2651 _AX5043_POWSTICKYSTATNB	=	0x5004
                           005027  2652 G$AX5043_PWRAMPNB$0$0 == 0x5027
                           005027  2653 _AX5043_PWRAMPNB	=	0x5027
                           005002  2654 G$AX5043_PWRMODENB$0$0 == 0x5002
                           005002  2655 _AX5043_PWRMODENB	=	0x5002
                           005009  2656 G$AX5043_RADIOEVENTMASK0NB$0$0 == 0x5009
                           005009  2657 _AX5043_RADIOEVENTMASK0NB	=	0x5009
                           005008  2658 G$AX5043_RADIOEVENTMASK1NB$0$0 == 0x5008
                           005008  2659 _AX5043_RADIOEVENTMASK1NB	=	0x5008
                           00500F  2660 G$AX5043_RADIOEVENTREQ0NB$0$0 == 0x500f
                           00500F  2661 _AX5043_RADIOEVENTREQ0NB	=	0x500f
                           00500E  2662 G$AX5043_RADIOEVENTREQ1NB$0$0 == 0x500e
                           00500E  2663 _AX5043_RADIOEVENTREQ1NB	=	0x500e
                           00501C  2664 G$AX5043_RADIOSTATENB$0$0 == 0x501c
                           00501C  2665 _AX5043_RADIOSTATENB	=	0x501c
                           005F0D  2666 G$AX5043_REFNB$0$0 == 0x5f0d
                           005F0D  2667 _AX5043_REFNB	=	0x5f0d
                           005040  2668 G$AX5043_RSSINB$0$0 == 0x5040
                           005040  2669 _AX5043_RSSINB	=	0x5040
                           00522D  2670 G$AX5043_RSSIABSTHRNB$0$0 == 0x522d
                           00522D  2671 _AX5043_RSSIABSTHRNB	=	0x522d
                           00522C  2672 G$AX5043_RSSIREFERENCENB$0$0 == 0x522c
                           00522C  2673 _AX5043_RSSIREFERENCENB	=	0x522c
                           005105  2674 G$AX5043_RXDATARATE0NB$0$0 == 0x5105
                           005105  2675 _AX5043_RXDATARATE0NB	=	0x5105
                           005104  2676 G$AX5043_RXDATARATE1NB$0$0 == 0x5104
                           005104  2677 _AX5043_RXDATARATE1NB	=	0x5104
                           005103  2678 G$AX5043_RXDATARATE2NB$0$0 == 0x5103
                           005103  2679 _AX5043_RXDATARATE2NB	=	0x5103
                           005001  2680 G$AX5043_SCRATCHNB$0$0 == 0x5001
                           005001  2681 _AX5043_SCRATCHNB	=	0x5001
                           005000  2682 G$AX5043_SILICONREVISIONNB$0$0 == 0x5000
                           005000  2683 _AX5043_SILICONREVISIONNB	=	0x5000
                           00505B  2684 G$AX5043_TIMER0NB$0$0 == 0x505b
                           00505B  2685 _AX5043_TIMER0NB	=	0x505b
                           00505A  2686 G$AX5043_TIMER1NB$0$0 == 0x505a
                           00505A  2687 _AX5043_TIMER1NB	=	0x505a
                           005059  2688 G$AX5043_TIMER2NB$0$0 == 0x5059
                           005059  2689 _AX5043_TIMER2NB	=	0x5059
                           005227  2690 G$AX5043_TMGRXAGCNB$0$0 == 0x5227
                           005227  2691 _AX5043_TMGRXAGCNB	=	0x5227
                           005223  2692 G$AX5043_TMGRXBOOSTNB$0$0 == 0x5223
                           005223  2693 _AX5043_TMGRXBOOSTNB	=	0x5223
                           005226  2694 G$AX5043_TMGRXCOARSEAGCNB$0$0 == 0x5226
                           005226  2695 _AX5043_TMGRXCOARSEAGCNB	=	0x5226
                           005225  2696 G$AX5043_TMGRXOFFSACQNB$0$0 == 0x5225
                           005225  2697 _AX5043_TMGRXOFFSACQNB	=	0x5225
                           005229  2698 G$AX5043_TMGRXPREAMBLE1NB$0$0 == 0x5229
                           005229  2699 _AX5043_TMGRXPREAMBLE1NB	=	0x5229
                           00522A  2700 G$AX5043_TMGRXPREAMBLE2NB$0$0 == 0x522a
                           00522A  2701 _AX5043_TMGRXPREAMBLE2NB	=	0x522a
                           00522B  2702 G$AX5043_TMGRXPREAMBLE3NB$0$0 == 0x522b
                           00522B  2703 _AX5043_TMGRXPREAMBLE3NB	=	0x522b
                           005228  2704 G$AX5043_TMGRXRSSINB$0$0 == 0x5228
                           005228  2705 _AX5043_TMGRXRSSINB	=	0x5228
                           005224  2706 G$AX5043_TMGRXSETTLENB$0$0 == 0x5224
                           005224  2707 _AX5043_TMGRXSETTLENB	=	0x5224
                           005220  2708 G$AX5043_TMGTXBOOSTNB$0$0 == 0x5220
                           005220  2709 _AX5043_TMGTXBOOSTNB	=	0x5220
                           005221  2710 G$AX5043_TMGTXSETTLENB$0$0 == 0x5221
                           005221  2711 _AX5043_TMGTXSETTLENB	=	0x5221
                           005055  2712 G$AX5043_TRKAFSKDEMOD0NB$0$0 == 0x5055
                           005055  2713 _AX5043_TRKAFSKDEMOD0NB	=	0x5055
                           005054  2714 G$AX5043_TRKAFSKDEMOD1NB$0$0 == 0x5054
                           005054  2715 _AX5043_TRKAFSKDEMOD1NB	=	0x5054
                           005049  2716 G$AX5043_TRKAMPLITUDE0NB$0$0 == 0x5049
                           005049  2717 _AX5043_TRKAMPLITUDE0NB	=	0x5049
                           005048  2718 G$AX5043_TRKAMPLITUDE1NB$0$0 == 0x5048
                           005048  2719 _AX5043_TRKAMPLITUDE1NB	=	0x5048
                           005047  2720 G$AX5043_TRKDATARATE0NB$0$0 == 0x5047
                           005047  2721 _AX5043_TRKDATARATE0NB	=	0x5047
                           005046  2722 G$AX5043_TRKDATARATE1NB$0$0 == 0x5046
                           005046  2723 _AX5043_TRKDATARATE1NB	=	0x5046
                           005045  2724 G$AX5043_TRKDATARATE2NB$0$0 == 0x5045
                           005045  2725 _AX5043_TRKDATARATE2NB	=	0x5045
                           005051  2726 G$AX5043_TRKFREQ0NB$0$0 == 0x5051
                           005051  2727 _AX5043_TRKFREQ0NB	=	0x5051
                           005050  2728 G$AX5043_TRKFREQ1NB$0$0 == 0x5050
                           005050  2729 _AX5043_TRKFREQ1NB	=	0x5050
                           005053  2730 G$AX5043_TRKFSKDEMOD0NB$0$0 == 0x5053
                           005053  2731 _AX5043_TRKFSKDEMOD0NB	=	0x5053
                           005052  2732 G$AX5043_TRKFSKDEMOD1NB$0$0 == 0x5052
                           005052  2733 _AX5043_TRKFSKDEMOD1NB	=	0x5052
                           00504B  2734 G$AX5043_TRKPHASE0NB$0$0 == 0x504b
                           00504B  2735 _AX5043_TRKPHASE0NB	=	0x504b
                           00504A  2736 G$AX5043_TRKPHASE1NB$0$0 == 0x504a
                           00504A  2737 _AX5043_TRKPHASE1NB	=	0x504a
                           00504F  2738 G$AX5043_TRKRFFREQ0NB$0$0 == 0x504f
                           00504F  2739 _AX5043_TRKRFFREQ0NB	=	0x504f
                           00504E  2740 G$AX5043_TRKRFFREQ1NB$0$0 == 0x504e
                           00504E  2741 _AX5043_TRKRFFREQ1NB	=	0x504e
                           00504D  2742 G$AX5043_TRKRFFREQ2NB$0$0 == 0x504d
                           00504D  2743 _AX5043_TRKRFFREQ2NB	=	0x504d
                           005169  2744 G$AX5043_TXPWRCOEFFA0NB$0$0 == 0x5169
                           005169  2745 _AX5043_TXPWRCOEFFA0NB	=	0x5169
                           005168  2746 G$AX5043_TXPWRCOEFFA1NB$0$0 == 0x5168
                           005168  2747 _AX5043_TXPWRCOEFFA1NB	=	0x5168
                           00516B  2748 G$AX5043_TXPWRCOEFFB0NB$0$0 == 0x516b
                           00516B  2749 _AX5043_TXPWRCOEFFB0NB	=	0x516b
                           00516A  2750 G$AX5043_TXPWRCOEFFB1NB$0$0 == 0x516a
                           00516A  2751 _AX5043_TXPWRCOEFFB1NB	=	0x516a
                           00516D  2752 G$AX5043_TXPWRCOEFFC0NB$0$0 == 0x516d
                           00516D  2753 _AX5043_TXPWRCOEFFC0NB	=	0x516d
                           00516C  2754 G$AX5043_TXPWRCOEFFC1NB$0$0 == 0x516c
                           00516C  2755 _AX5043_TXPWRCOEFFC1NB	=	0x516c
                           00516F  2756 G$AX5043_TXPWRCOEFFD0NB$0$0 == 0x516f
                           00516F  2757 _AX5043_TXPWRCOEFFD0NB	=	0x516f
                           00516E  2758 G$AX5043_TXPWRCOEFFD1NB$0$0 == 0x516e
                           00516E  2759 _AX5043_TXPWRCOEFFD1NB	=	0x516e
                           005171  2760 G$AX5043_TXPWRCOEFFE0NB$0$0 == 0x5171
                           005171  2761 _AX5043_TXPWRCOEFFE0NB	=	0x5171
                           005170  2762 G$AX5043_TXPWRCOEFFE1NB$0$0 == 0x5170
                           005170  2763 _AX5043_TXPWRCOEFFE1NB	=	0x5170
                           005167  2764 G$AX5043_TXRATE0NB$0$0 == 0x5167
                           005167  2765 _AX5043_TXRATE0NB	=	0x5167
                           005166  2766 G$AX5043_TXRATE1NB$0$0 == 0x5166
                           005166  2767 _AX5043_TXRATE1NB	=	0x5166
                           005165  2768 G$AX5043_TXRATE2NB$0$0 == 0x5165
                           005165  2769 _AX5043_TXRATE2NB	=	0x5165
                           00506B  2770 G$AX5043_WAKEUP0NB$0$0 == 0x506b
                           00506B  2771 _AX5043_WAKEUP0NB	=	0x506b
                           00506A  2772 G$AX5043_WAKEUP1NB$0$0 == 0x506a
                           00506A  2773 _AX5043_WAKEUP1NB	=	0x506a
                           00506D  2774 G$AX5043_WAKEUPFREQ0NB$0$0 == 0x506d
                           00506D  2775 _AX5043_WAKEUPFREQ0NB	=	0x506d
                           00506C  2776 G$AX5043_WAKEUPFREQ1NB$0$0 == 0x506c
                           00506C  2777 _AX5043_WAKEUPFREQ1NB	=	0x506c
                           005069  2778 G$AX5043_WAKEUPTIMER0NB$0$0 == 0x5069
                           005069  2779 _AX5043_WAKEUPTIMER0NB	=	0x5069
                           005068  2780 G$AX5043_WAKEUPTIMER1NB$0$0 == 0x5068
                           005068  2781 _AX5043_WAKEUPTIMER1NB	=	0x5068
                           00506E  2782 G$AX5043_WAKEUPXOEARLYNB$0$0 == 0x506e
                           00506E  2783 _AX5043_WAKEUPXOEARLYNB	=	0x506e
                           005F11  2784 G$AX5043_XTALAMPLNB$0$0 == 0x5f11
                           005F11  2785 _AX5043_XTALAMPLNB	=	0x5f11
                           005184  2786 G$AX5043_XTALCAPNB$0$0 == 0x5184
                           005184  2787 _AX5043_XTALCAPNB	=	0x5184
                           005F10  2788 G$AX5043_XTALOSCNB$0$0 == 0x5f10
                           005F10  2789 _AX5043_XTALOSCNB	=	0x5f10
                           00501D  2790 G$AX5043_XTALSTATUSNB$0$0 == 0x501d
                           00501D  2791 _AX5043_XTALSTATUSNB	=	0x501d
                           005F00  2792 G$AX5043_0xF00NB$0$0 == 0x5f00
                           005F00  2793 _AX5043_0xF00NB	=	0x5f00
                           005F0C  2794 G$AX5043_0xF0CNB$0$0 == 0x5f0c
                           005F0C  2795 _AX5043_0xF0CNB	=	0x5f0c
                           005F18  2796 G$AX5043_0xF18NB$0$0 == 0x5f18
                           005F18  2797 _AX5043_0xF18NB	=	0x5f18
                           005F1C  2798 G$AX5043_0xF1CNB$0$0 == 0x5f1c
                           005F1C  2799 _AX5043_0xF1CNB	=	0x5f1c
                           005F21  2800 G$AX5043_0xF21NB$0$0 == 0x5f21
                           005F21  2801 _AX5043_0xF21NB	=	0x5f21
                           005F22  2802 G$AX5043_0xF22NB$0$0 == 0x5f22
                           005F22  2803 _AX5043_0xF22NB	=	0x5f22
                           005F23  2804 G$AX5043_0xF23NB$0$0 == 0x5f23
                           005F23  2805 _AX5043_0xF23NB	=	0x5f23
                           005F26  2806 G$AX5043_0xF26NB$0$0 == 0x5f26
                           005F26  2807 _AX5043_0xF26NB	=	0x5f26
                           005F30  2808 G$AX5043_0xF30NB$0$0 == 0x5f30
                           005F30  2809 _AX5043_0xF30NB	=	0x5f30
                           005F31  2810 G$AX5043_0xF31NB$0$0 == 0x5f31
                           005F31  2811 _AX5043_0xF31NB	=	0x5f31
                           005F32  2812 G$AX5043_0xF32NB$0$0 == 0x5f32
                           005F32  2813 _AX5043_0xF32NB	=	0x5f32
                           005F33  2814 G$AX5043_0xF33NB$0$0 == 0x5f33
                           005F33  2815 _AX5043_0xF33NB	=	0x5f33
                           005F34  2816 G$AX5043_0xF34NB$0$0 == 0x5f34
                           005F34  2817 _AX5043_0xF34NB	=	0x5f34
                           005F35  2818 G$AX5043_0xF35NB$0$0 == 0x5f35
                           005F35  2819 _AX5043_0xF35NB	=	0x5f35
                           005F44  2820 G$AX5043_0xF44NB$0$0 == 0x5f44
                           005F44  2821 _AX5043_0xF44NB	=	0x5f44
                           005122  2822 G$AX5043_AGCAHYST0NB$0$0 == 0x5122
                           005122  2823 _AX5043_AGCAHYST0NB	=	0x5122
                           005132  2824 G$AX5043_AGCAHYST1NB$0$0 == 0x5132
                           005132  2825 _AX5043_AGCAHYST1NB	=	0x5132
                           005142  2826 G$AX5043_AGCAHYST2NB$0$0 == 0x5142
                           005142  2827 _AX5043_AGCAHYST2NB	=	0x5142
                           005152  2828 G$AX5043_AGCAHYST3NB$0$0 == 0x5152
                           005152  2829 _AX5043_AGCAHYST3NB	=	0x5152
                           005120  2830 G$AX5043_AGCGAIN0NB$0$0 == 0x5120
                           005120  2831 _AX5043_AGCGAIN0NB	=	0x5120
                           005130  2832 G$AX5043_AGCGAIN1NB$0$0 == 0x5130
                           005130  2833 _AX5043_AGCGAIN1NB	=	0x5130
                           005140  2834 G$AX5043_AGCGAIN2NB$0$0 == 0x5140
                           005140  2835 _AX5043_AGCGAIN2NB	=	0x5140
                           005150  2836 G$AX5043_AGCGAIN3NB$0$0 == 0x5150
                           005150  2837 _AX5043_AGCGAIN3NB	=	0x5150
                           005123  2838 G$AX5043_AGCMINMAX0NB$0$0 == 0x5123
                           005123  2839 _AX5043_AGCMINMAX0NB	=	0x5123
                           005133  2840 G$AX5043_AGCMINMAX1NB$0$0 == 0x5133
                           005133  2841 _AX5043_AGCMINMAX1NB	=	0x5133
                           005143  2842 G$AX5043_AGCMINMAX2NB$0$0 == 0x5143
                           005143  2843 _AX5043_AGCMINMAX2NB	=	0x5143
                           005153  2844 G$AX5043_AGCMINMAX3NB$0$0 == 0x5153
                           005153  2845 _AX5043_AGCMINMAX3NB	=	0x5153
                           005121  2846 G$AX5043_AGCTARGET0NB$0$0 == 0x5121
                           005121  2847 _AX5043_AGCTARGET0NB	=	0x5121
                           005131  2848 G$AX5043_AGCTARGET1NB$0$0 == 0x5131
                           005131  2849 _AX5043_AGCTARGET1NB	=	0x5131
                           005141  2850 G$AX5043_AGCTARGET2NB$0$0 == 0x5141
                           005141  2851 _AX5043_AGCTARGET2NB	=	0x5141
                           005151  2852 G$AX5043_AGCTARGET3NB$0$0 == 0x5151
                           005151  2853 _AX5043_AGCTARGET3NB	=	0x5151
                           00512B  2854 G$AX5043_AMPLITUDEGAIN0NB$0$0 == 0x512b
                           00512B  2855 _AX5043_AMPLITUDEGAIN0NB	=	0x512b
                           00513B  2856 G$AX5043_AMPLITUDEGAIN1NB$0$0 == 0x513b
                           00513B  2857 _AX5043_AMPLITUDEGAIN1NB	=	0x513b
                           00514B  2858 G$AX5043_AMPLITUDEGAIN2NB$0$0 == 0x514b
                           00514B  2859 _AX5043_AMPLITUDEGAIN2NB	=	0x514b
                           00515B  2860 G$AX5043_AMPLITUDEGAIN3NB$0$0 == 0x515b
                           00515B  2861 _AX5043_AMPLITUDEGAIN3NB	=	0x515b
                           00512F  2862 G$AX5043_BBOFFSRES0NB$0$0 == 0x512f
                           00512F  2863 _AX5043_BBOFFSRES0NB	=	0x512f
                           00513F  2864 G$AX5043_BBOFFSRES1NB$0$0 == 0x513f
                           00513F  2865 _AX5043_BBOFFSRES1NB	=	0x513f
                           00514F  2866 G$AX5043_BBOFFSRES2NB$0$0 == 0x514f
                           00514F  2867 _AX5043_BBOFFSRES2NB	=	0x514f
                           00515F  2868 G$AX5043_BBOFFSRES3NB$0$0 == 0x515f
                           00515F  2869 _AX5043_BBOFFSRES3NB	=	0x515f
                           005125  2870 G$AX5043_DRGAIN0NB$0$0 == 0x5125
                           005125  2871 _AX5043_DRGAIN0NB	=	0x5125
                           005135  2872 G$AX5043_DRGAIN1NB$0$0 == 0x5135
                           005135  2873 _AX5043_DRGAIN1NB	=	0x5135
                           005145  2874 G$AX5043_DRGAIN2NB$0$0 == 0x5145
                           005145  2875 _AX5043_DRGAIN2NB	=	0x5145
                           005155  2876 G$AX5043_DRGAIN3NB$0$0 == 0x5155
                           005155  2877 _AX5043_DRGAIN3NB	=	0x5155
                           00512E  2878 G$AX5043_FOURFSK0NB$0$0 == 0x512e
                           00512E  2879 _AX5043_FOURFSK0NB	=	0x512e
                           00513E  2880 G$AX5043_FOURFSK1NB$0$0 == 0x513e
                           00513E  2881 _AX5043_FOURFSK1NB	=	0x513e
                           00514E  2882 G$AX5043_FOURFSK2NB$0$0 == 0x514e
                           00514E  2883 _AX5043_FOURFSK2NB	=	0x514e
                           00515E  2884 G$AX5043_FOURFSK3NB$0$0 == 0x515e
                           00515E  2885 _AX5043_FOURFSK3NB	=	0x515e
                           00512D  2886 G$AX5043_FREQDEV00NB$0$0 == 0x512d
                           00512D  2887 _AX5043_FREQDEV00NB	=	0x512d
                           00513D  2888 G$AX5043_FREQDEV01NB$0$0 == 0x513d
                           00513D  2889 _AX5043_FREQDEV01NB	=	0x513d
                           00514D  2890 G$AX5043_FREQDEV02NB$0$0 == 0x514d
                           00514D  2891 _AX5043_FREQDEV02NB	=	0x514d
                           00515D  2892 G$AX5043_FREQDEV03NB$0$0 == 0x515d
                           00515D  2893 _AX5043_FREQDEV03NB	=	0x515d
                           00512C  2894 G$AX5043_FREQDEV10NB$0$0 == 0x512c
                           00512C  2895 _AX5043_FREQDEV10NB	=	0x512c
                           00513C  2896 G$AX5043_FREQDEV11NB$0$0 == 0x513c
                           00513C  2897 _AX5043_FREQDEV11NB	=	0x513c
                           00514C  2898 G$AX5043_FREQDEV12NB$0$0 == 0x514c
                           00514C  2899 _AX5043_FREQDEV12NB	=	0x514c
                           00515C  2900 G$AX5043_FREQDEV13NB$0$0 == 0x515c
                           00515C  2901 _AX5043_FREQDEV13NB	=	0x515c
                           005127  2902 G$AX5043_FREQUENCYGAINA0NB$0$0 == 0x5127
                           005127  2903 _AX5043_FREQUENCYGAINA0NB	=	0x5127
                           005137  2904 G$AX5043_FREQUENCYGAINA1NB$0$0 == 0x5137
                           005137  2905 _AX5043_FREQUENCYGAINA1NB	=	0x5137
                           005147  2906 G$AX5043_FREQUENCYGAINA2NB$0$0 == 0x5147
                           005147  2907 _AX5043_FREQUENCYGAINA2NB	=	0x5147
                           005157  2908 G$AX5043_FREQUENCYGAINA3NB$0$0 == 0x5157
                           005157  2909 _AX5043_FREQUENCYGAINA3NB	=	0x5157
                           005128  2910 G$AX5043_FREQUENCYGAINB0NB$0$0 == 0x5128
                           005128  2911 _AX5043_FREQUENCYGAINB0NB	=	0x5128
                           005138  2912 G$AX5043_FREQUENCYGAINB1NB$0$0 == 0x5138
                           005138  2913 _AX5043_FREQUENCYGAINB1NB	=	0x5138
                           005148  2914 G$AX5043_FREQUENCYGAINB2NB$0$0 == 0x5148
                           005148  2915 _AX5043_FREQUENCYGAINB2NB	=	0x5148
                           005158  2916 G$AX5043_FREQUENCYGAINB3NB$0$0 == 0x5158
                           005158  2917 _AX5043_FREQUENCYGAINB3NB	=	0x5158
                           005129  2918 G$AX5043_FREQUENCYGAINC0NB$0$0 == 0x5129
                           005129  2919 _AX5043_FREQUENCYGAINC0NB	=	0x5129
                           005139  2920 G$AX5043_FREQUENCYGAINC1NB$0$0 == 0x5139
                           005139  2921 _AX5043_FREQUENCYGAINC1NB	=	0x5139
                           005149  2922 G$AX5043_FREQUENCYGAINC2NB$0$0 == 0x5149
                           005149  2923 _AX5043_FREQUENCYGAINC2NB	=	0x5149
                           005159  2924 G$AX5043_FREQUENCYGAINC3NB$0$0 == 0x5159
                           005159  2925 _AX5043_FREQUENCYGAINC3NB	=	0x5159
                           00512A  2926 G$AX5043_FREQUENCYGAIND0NB$0$0 == 0x512a
                           00512A  2927 _AX5043_FREQUENCYGAIND0NB	=	0x512a
                           00513A  2928 G$AX5043_FREQUENCYGAIND1NB$0$0 == 0x513a
                           00513A  2929 _AX5043_FREQUENCYGAIND1NB	=	0x513a
                           00514A  2930 G$AX5043_FREQUENCYGAIND2NB$0$0 == 0x514a
                           00514A  2931 _AX5043_FREQUENCYGAIND2NB	=	0x514a
                           00515A  2932 G$AX5043_FREQUENCYGAIND3NB$0$0 == 0x515a
                           00515A  2933 _AX5043_FREQUENCYGAIND3NB	=	0x515a
                           005116  2934 G$AX5043_FREQUENCYLEAKNB$0$0 == 0x5116
                           005116  2935 _AX5043_FREQUENCYLEAKNB	=	0x5116
                           005126  2936 G$AX5043_PHASEGAIN0NB$0$0 == 0x5126
                           005126  2937 _AX5043_PHASEGAIN0NB	=	0x5126
                           005136  2938 G$AX5043_PHASEGAIN1NB$0$0 == 0x5136
                           005136  2939 _AX5043_PHASEGAIN1NB	=	0x5136
                           005146  2940 G$AX5043_PHASEGAIN2NB$0$0 == 0x5146
                           005146  2941 _AX5043_PHASEGAIN2NB	=	0x5146
                           005156  2942 G$AX5043_PHASEGAIN3NB$0$0 == 0x5156
                           005156  2943 _AX5043_PHASEGAIN3NB	=	0x5156
                           005207  2944 G$AX5043_PKTADDR0NB$0$0 == 0x5207
                           005207  2945 _AX5043_PKTADDR0NB	=	0x5207
                           005206  2946 G$AX5043_PKTADDR1NB$0$0 == 0x5206
                           005206  2947 _AX5043_PKTADDR1NB	=	0x5206
                           005205  2948 G$AX5043_PKTADDR2NB$0$0 == 0x5205
                           005205  2949 _AX5043_PKTADDR2NB	=	0x5205
                           005204  2950 G$AX5043_PKTADDR3NB$0$0 == 0x5204
                           005204  2951 _AX5043_PKTADDR3NB	=	0x5204
                           005200  2952 G$AX5043_PKTADDRCFGNB$0$0 == 0x5200
                           005200  2953 _AX5043_PKTADDRCFGNB	=	0x5200
                           00520B  2954 G$AX5043_PKTADDRMASK0NB$0$0 == 0x520b
                           00520B  2955 _AX5043_PKTADDRMASK0NB	=	0x520b
                           00520A  2956 G$AX5043_PKTADDRMASK1NB$0$0 == 0x520a
                           00520A  2957 _AX5043_PKTADDRMASK1NB	=	0x520a
                           005209  2958 G$AX5043_PKTADDRMASK2NB$0$0 == 0x5209
                           005209  2959 _AX5043_PKTADDRMASK2NB	=	0x5209
                           005208  2960 G$AX5043_PKTADDRMASK3NB$0$0 == 0x5208
                           005208  2961 _AX5043_PKTADDRMASK3NB	=	0x5208
                           005201  2962 G$AX5043_PKTLENCFGNB$0$0 == 0x5201
                           005201  2963 _AX5043_PKTLENCFGNB	=	0x5201
                           005202  2964 G$AX5043_PKTLENOFFSETNB$0$0 == 0x5202
                           005202  2965 _AX5043_PKTLENOFFSETNB	=	0x5202
                           005203  2966 G$AX5043_PKTMAXLENNB$0$0 == 0x5203
                           005203  2967 _AX5043_PKTMAXLENNB	=	0x5203
                           005118  2968 G$AX5043_RXPARAMCURSETNB$0$0 == 0x5118
                           005118  2969 _AX5043_RXPARAMCURSETNB	=	0x5118
                           005117  2970 G$AX5043_RXPARAMSETSNB$0$0 == 0x5117
                           005117  2971 _AX5043_RXPARAMSETSNB	=	0x5117
                           005124  2972 G$AX5043_TIMEGAIN0NB$0$0 == 0x5124
                           005124  2973 _AX5043_TIMEGAIN0NB	=	0x5124
                           005134  2974 G$AX5043_TIMEGAIN1NB$0$0 == 0x5134
                           005134  2975 _AX5043_TIMEGAIN1NB	=	0x5134
                           005144  2976 G$AX5043_TIMEGAIN2NB$0$0 == 0x5144
                           005144  2977 _AX5043_TIMEGAIN2NB	=	0x5144
                           005154  2978 G$AX5043_TIMEGAIN3NB$0$0 == 0x5154
                           005154  2979 _AX5043_TIMEGAIN3NB	=	0x5154
                           000000  2980 G$axradio_syncstate$0$0==.
      000004                       2981 _axradio_syncstate::
      000004                       2982 	.ds 1
                           000001  2983 G$axradio_txbuffer_len$0$0==.
      000005                       2984 _axradio_txbuffer_len::
      000005                       2985 	.ds 2
                           000003  2986 G$axradio_txbuffer_cnt$0$0==.
      000007                       2987 _axradio_txbuffer_cnt::
      000007                       2988 	.ds 2
                           000005  2989 G$axradio_curchannel$0$0==.
      000009                       2990 _axradio_curchannel::
      000009                       2991 	.ds 1
                           000006  2992 G$axradio_curfreqoffset$0$0==.
      00000A                       2993 _axradio_curfreqoffset::
      00000A                       2994 	.ds 4
                           00000A  2995 G$axradio_ack_count$0$0==.
      00000E                       2996 _axradio_ack_count::
      00000E                       2997 	.ds 1
                           00000B  2998 G$axradio_ack_seqnr$0$0==.
      00000F                       2999 _axradio_ack_seqnr::
      00000F                       3000 	.ds 1
                           00000C  3001 G$axradio_sync_time$0$0==.
      000010                       3002 _axradio_sync_time::
      000010                       3003 	.ds 4
                           000010  3004 G$axradio_sync_periodcorr$0$0==.
      000014                       3005 _axradio_sync_periodcorr::
      000014                       3006 	.ds 2
                           000012  3007 G$axradio_timeanchor$0$0==.
      000016                       3008 _axradio_timeanchor::
      000016                       3009 	.ds 8
                           00001A  3010 G$axradio_localaddr$0$0==.
      00001E                       3011 _axradio_localaddr::
      00001E                       3012 	.ds 10
                           000024  3013 G$axradio_default_remoteaddr$0$0==.
      000028                       3014 _axradio_default_remoteaddr::
      000028                       3015 	.ds 5
                           000029  3016 G$axradio_txbuffer$0$0==.
      00002D                       3017 _axradio_txbuffer::
      00002D                       3018 	.ds 260
                           00012D  3019 G$axradio_rxbuffer$0$0==.
      000131                       3020 _axradio_rxbuffer::
      000131                       3021 	.ds 260
                           000231  3022 G$axradio_cb_receive$0$0==.
      000235                       3023 _axradio_cb_receive::
      000235                       3024 	.ds 36
                           000255  3025 G$axradio_cb_receivesfd$0$0==.
      000259                       3026 _axradio_cb_receivesfd::
      000259                       3027 	.ds 10
                           00025F  3028 G$axradio_cb_channelstate$0$0==.
      000263                       3029 _axradio_cb_channelstate::
      000263                       3030 	.ds 13
                           00026C  3031 G$axradio_cb_transmitstart$0$0==.
      000270                       3032 _axradio_cb_transmitstart::
      000270                       3033 	.ds 10
                           000276  3034 G$axradio_cb_transmitend$0$0==.
      00027A                       3035 _axradio_cb_transmitend::
      00027A                       3036 	.ds 10
                           000280  3037 G$axradio_cb_transmitdata$0$0==.
      000284                       3038 _axradio_cb_transmitdata::
      000284                       3039 	.ds 10
                           00028A  3040 G$axradio_timer$0$0==.
      00028E                       3041 _axradio_timer::
      00028E                       3042 	.ds 8
                                   3043 ;--------------------------------------------------------
                                   3044 ; absolute external ram data
                                   3045 ;--------------------------------------------------------
                                   3046 	.area XABS    (ABS,XDATA)
                                   3047 ;--------------------------------------------------------
                                   3048 ; external initialized ram data
                                   3049 ;--------------------------------------------------------
                                   3050 	.area XISEG   (XDATA)
                           000000  3051 G$f30_saved$0$0==.
      0005A8                       3052 _f30_saved::
      0005A8                       3053 	.ds 1
                           000001  3054 G$f31_saved$0$0==.
      0005A9                       3055 _f31_saved::
      0005A9                       3056 	.ds 1
                           000002  3057 G$f32_saved$0$0==.
      0005AA                       3058 _f32_saved::
      0005AA                       3059 	.ds 1
                           000003  3060 G$f33_saved$0$0==.
      0005AB                       3061 _f33_saved::
      0005AB                       3062 	.ds 1
                           000004  3063 G$radio_lcd_display$0$0==.
      0005AC                       3064 _radio_lcd_display::
      0005AC                       3065 	.ds 14
                           000012  3066 G$radio_not_found_lcd_display$0$0==.
      0005BA                       3067 _radio_not_found_lcd_display::
      0005BA                       3068 	.ds 20
                                   3069 	.area HOME    (CODE)
                                   3070 	.area GSINIT0 (CODE)
                                   3071 	.area GSINIT1 (CODE)
                                   3072 	.area GSINIT2 (CODE)
                                   3073 	.area GSINIT3 (CODE)
                                   3074 	.area GSINIT4 (CODE)
                                   3075 	.area GSINIT5 (CODE)
                                   3076 	.area GSINIT  (CODE)
                                   3077 	.area GSFINAL (CODE)
                                   3078 	.area CSEG    (CODE)
                                   3079 ;--------------------------------------------------------
                                   3080 ; global & static initialisations
                                   3081 ;--------------------------------------------------------
                                   3082 	.area HOME    (CODE)
                                   3083 	.area GSINIT  (CODE)
                                   3084 	.area GSFINAL (CODE)
                                   3085 	.area GSINIT  (CODE)
                           000000  3086 	C$easyax5043.c$74$1$876 ==.
                                   3087 ;	..\COMMON\easyax5043.c:74: volatile uint8_t __data axradio_mode = AXRADIO_MODE_UNINIT;
      000384 75 08 00         [24] 3088 	mov	_axradio_mode,#0x00
                           000003  3089 	C$easyax5043.c$75$1$876 ==.
                                   3090 ;	..\COMMON\easyax5043.c:75: volatile axradio_trxstate_t __data axradio_trxstate = trxstate_off;
      000387 75 09 00         [24] 3091 	mov	_axradio_trxstate,#0x00
                                   3092 ;--------------------------------------------------------
                                   3093 ; Home
                                   3094 ;--------------------------------------------------------
                                   3095 	.area HOME    (CODE)
                                   3096 	.area HOME    (CODE)
                                   3097 ;--------------------------------------------------------
                                   3098 ; code
                                   3099 ;--------------------------------------------------------
                                   3100 	.area CSEG    (CODE)
                                   3101 ;------------------------------------------------------------
                                   3102 ;Allocation info for local variables in function 'update_timeanchor'
                                   3103 ;------------------------------------------------------------
                                   3104 ;__00010012                Allocated to registers 
                                   3105 ;crit                      Allocated to registers 
                                   3106 ;crit                      Allocated to registers r7 
                                   3107 ;__00020014                Allocated to registers 
                                   3108 ;crit                      Allocated to registers 
                                   3109 ;------------------------------------------------------------
                           000000  3110 	Feasyax5043$update_timeanchor$0$0 ==.
                           000000  3111 	C$easyax5043.c$276$0$0 ==.
                                   3112 ;	..\COMMON\easyax5043.c:276: static __reentrantb void update_timeanchor(void) __reentrant
                                   3113 ;	-----------------------------------------
                                   3114 ;	 function update_timeanchor
                                   3115 ;	-----------------------------------------
      000A31                       3116 _update_timeanchor:
                           000007  3117 	ar7 = 0x07
                           000006  3118 	ar6 = 0x06
                           000005  3119 	ar5 = 0x05
                           000004  3120 	ar4 = 0x04
                           000003  3121 	ar3 = 0x03
                           000002  3122 	ar2 = 0x02
                           000001  3123 	ar1 = 0x01
                           000000  3124 	ar0 = 0x00
                           000000  3125 	C$libmftypes.h$351$4$342 ==.
                                   3126 ;	C:/Program Files (x86)/ON Semiconductor/AXSDB/libmf/include/libmftypes.h:351: criticalsection_t crit = IE & 0x80;
      000A31 74 80            [12] 3127 	mov	a,#0x80
      000A33 55 A8            [12] 3128 	anl	a,_IE
      000A35 FF               [12] 3129 	mov	r7,a
                           000005  3130 	C$libmftypes.h$352$4$342 ==.
                                   3131 ;	C:/Program Files (x86)/ON Semiconductor/AXSDB/libmf/include/libmftypes.h:352: EA = 0;
      000A36 C2 AF            [12] 3132 	clr	_EA
                           000007  3133 	C$easyax5043.c$280$1$339 ==.
                                   3134 ;	..\COMMON\easyax5043.c:280: axradio_timeanchor.timer0 = wtimer0_curtime();
      000A38 C0 07            [24] 3135 	push	ar7
      000A3A 12 56 7C         [24] 3136 	lcall	_wtimer0_curtime
      000A3D AB 82            [24] 3137 	mov	r3,dpl
      000A3F AC 83            [24] 3138 	mov	r4,dph
      000A41 AD F0            [24] 3139 	mov	r5,b
      000A43 FE               [12] 3140 	mov	r6,a
      000A44 D0 07            [24] 3141 	pop	ar7
      000A46 90 00 16         [24] 3142 	mov	dptr,#_axradio_timeanchor
      000A49 EB               [12] 3143 	mov	a,r3
      000A4A F0               [24] 3144 	movx	@dptr,a
      000A4B EC               [12] 3145 	mov	a,r4
      000A4C A3               [24] 3146 	inc	dptr
      000A4D F0               [24] 3147 	movx	@dptr,a
      000A4E ED               [12] 3148 	mov	a,r5
      000A4F A3               [24] 3149 	inc	dptr
      000A50 F0               [24] 3150 	movx	@dptr,a
      000A51 EE               [12] 3151 	mov	a,r6
      000A52 A3               [24] 3152 	inc	dptr
      000A53 F0               [24] 3153 	movx	@dptr,a
                           000023  3154 	C$easyax5043.c$281$1$339 ==.
                                   3155 ;	..\COMMON\easyax5043.c:281: axradio_timeanchor.radiotimer = radio_read24(AX5043_REG_TIMER2);
      000A54 90 00 59         [24] 3156 	mov	dptr,#0x0059
      000A57 12 48 F6         [24] 3157 	lcall	_radio_read24
      000A5A AB 82            [24] 3158 	mov	r3,dpl
      000A5C AC 83            [24] 3159 	mov	r4,dph
      000A5E AD F0            [24] 3160 	mov	r5,b
      000A60 FE               [12] 3161 	mov	r6,a
      000A61 90 00 1A         [24] 3162 	mov	dptr,#(_axradio_timeanchor + 0x0004)
      000A64 EB               [12] 3163 	mov	a,r3
      000A65 F0               [24] 3164 	movx	@dptr,a
      000A66 EC               [12] 3165 	mov	a,r4
      000A67 A3               [24] 3166 	inc	dptr
      000A68 F0               [24] 3167 	movx	@dptr,a
      000A69 ED               [12] 3168 	mov	a,r5
      000A6A A3               [24] 3169 	inc	dptr
      000A6B F0               [24] 3170 	movx	@dptr,a
      000A6C EE               [12] 3171 	mov	a,r6
      000A6D A3               [24] 3172 	inc	dptr
      000A6E F0               [24] 3173 	movx	@dptr,a
                           00003E  3174 	C$libmftypes.h$358$4$345 ==.
                                   3175 ;	C:/Program Files (x86)/ON Semiconductor/AXSDB/libmf/include/libmftypes.h:358: IE |= crit;
      000A6F EF               [12] 3176 	mov	a,r7
      000A70 42 A8            [12] 3177 	orl	_IE,a
                           000041  3178 	C$easyax5043.c$282$3$344 ==.
                                   3179 ;	..\COMMON\easyax5043.c:282: exit_critical(crit);
                           000041  3180 	C$easyax5043.c$283$3$344 ==.
                           000041  3181 	XFeasyax5043$update_timeanchor$0$0 ==.
      000A72 22               [24] 3182 	ret
                                   3183 ;------------------------------------------------------------
                                   3184 ;Allocation info for local variables in function 'axradio_conv_time_totimer0'
                                   3185 ;------------------------------------------------------------
                                   3186 ;dt                        Allocated to registers r4 r5 r6 r7 
                                   3187 ;------------------------------------------------------------
                           000042  3188 	G$axradio_conv_time_totimer0$0$0 ==.
                           000042  3189 	C$easyax5043.c$285$3$344 ==.
                                   3190 ;	..\COMMON\easyax5043.c:285: __reentrantb uint32_t axradio_conv_time_totimer0(uint32_t dt) __reentrant
                                   3191 ;	-----------------------------------------
                                   3192 ;	 function axradio_conv_time_totimer0
                                   3193 ;	-----------------------------------------
      000A73                       3194 _axradio_conv_time_totimer0:
      000A73 AC 82            [24] 3195 	mov	r4,dpl
      000A75 AD 83            [24] 3196 	mov	r5,dph
      000A77 AE F0            [24] 3197 	mov	r6,b
      000A79 FF               [12] 3198 	mov	r7,a
                           000049  3199 	C$easyax5043.c$287$1$347 ==.
                                   3200 ;	..\COMMON\easyax5043.c:287: dt -= axradio_timeanchor.radiotimer;
      000A7A 90 00 1A         [24] 3201 	mov	dptr,#(_axradio_timeanchor + 0x0004)
      000A7D E0               [24] 3202 	movx	a,@dptr
      000A7E F8               [12] 3203 	mov	r0,a
      000A7F A3               [24] 3204 	inc	dptr
      000A80 E0               [24] 3205 	movx	a,@dptr
      000A81 F9               [12] 3206 	mov	r1,a
      000A82 A3               [24] 3207 	inc	dptr
      000A83 E0               [24] 3208 	movx	a,@dptr
      000A84 FA               [12] 3209 	mov	r2,a
      000A85 A3               [24] 3210 	inc	dptr
      000A86 E0               [24] 3211 	movx	a,@dptr
      000A87 FB               [12] 3212 	mov	r3,a
      000A88 EC               [12] 3213 	mov	a,r4
      000A89 C3               [12] 3214 	clr	c
      000A8A 98               [12] 3215 	subb	a,r0
      000A8B FC               [12] 3216 	mov	r4,a
      000A8C ED               [12] 3217 	mov	a,r5
      000A8D 99               [12] 3218 	subb	a,r1
      000A8E FD               [12] 3219 	mov	r5,a
      000A8F EE               [12] 3220 	mov	a,r6
      000A90 9A               [12] 3221 	subb	a,r2
      000A91 FE               [12] 3222 	mov	r6,a
      000A92 EF               [12] 3223 	mov	a,r7
      000A93 9B               [12] 3224 	subb	a,r3
                           000063  3225 	C$easyax5043.c$288$1$347 ==.
                                   3226 ;	..\COMMON\easyax5043.c:288: dt = axradio_conv_timeinterval_totimer0(signextend24(dt));
      000A94 8C 82            [24] 3227 	mov	dpl,r4
      000A96 8D 83            [24] 3228 	mov	dph,r5
      000A98 8E F0            [24] 3229 	mov	b,r6
      000A9A 12 56 76         [24] 3230 	lcall	_signextend24
      000A9D 12 08 9B         [24] 3231 	lcall	_axradio_conv_timeinterval_totimer0
      000AA0 AC 82            [24] 3232 	mov	r4,dpl
      000AA2 AD 83            [24] 3233 	mov	r5,dph
      000AA4 AE F0            [24] 3234 	mov	r6,b
      000AA6 FF               [12] 3235 	mov	r7,a
                           000076  3236 	C$easyax5043.c$289$1$347 ==.
                                   3237 ;	..\COMMON\easyax5043.c:289: dt += axradio_timeanchor.timer0;
      000AA7 90 00 16         [24] 3238 	mov	dptr,#_axradio_timeanchor
      000AAA E0               [24] 3239 	movx	a,@dptr
      000AAB F8               [12] 3240 	mov	r0,a
      000AAC A3               [24] 3241 	inc	dptr
      000AAD E0               [24] 3242 	movx	a,@dptr
      000AAE F9               [12] 3243 	mov	r1,a
      000AAF A3               [24] 3244 	inc	dptr
      000AB0 E0               [24] 3245 	movx	a,@dptr
      000AB1 FA               [12] 3246 	mov	r2,a
      000AB2 A3               [24] 3247 	inc	dptr
      000AB3 E0               [24] 3248 	movx	a,@dptr
      000AB4 FB               [12] 3249 	mov	r3,a
      000AB5 E8               [12] 3250 	mov	a,r0
      000AB6 2C               [12] 3251 	add	a,r4
      000AB7 FC               [12] 3252 	mov	r4,a
      000AB8 E9               [12] 3253 	mov	a,r1
      000AB9 3D               [12] 3254 	addc	a,r5
      000ABA FD               [12] 3255 	mov	r5,a
      000ABB EA               [12] 3256 	mov	a,r2
      000ABC 3E               [12] 3257 	addc	a,r6
      000ABD FE               [12] 3258 	mov	r6,a
      000ABE EB               [12] 3259 	mov	a,r3
      000ABF 3F               [12] 3260 	addc	a,r7
                           00008F  3261 	C$easyax5043.c$290$1$347 ==.
                                   3262 ;	..\COMMON\easyax5043.c:290: return dt;
      000AC0 8C 82            [24] 3263 	mov	dpl,r4
      000AC2 8D 83            [24] 3264 	mov	dph,r5
      000AC4 8E F0            [24] 3265 	mov	b,r6
                           000095  3266 	C$easyax5043.c$291$1$347 ==.
                           000095  3267 	XG$axradio_conv_time_totimer0$0$0 ==.
      000AC6 22               [24] 3268 	ret
                                   3269 ;------------------------------------------------------------
                                   3270 ;Allocation info for local variables in function 'ax5043_init_registers_common'
                                   3271 ;------------------------------------------------------------
                                   3272 ;rng                       Allocated to registers r6 
                                   3273 ;------------------------------------------------------------
                           000096  3274 	Feasyax5043$ax5043_init_registers_common$0$0 ==.
                           000096  3275 	C$easyax5043.c$293$1$347 ==.
                                   3276 ;	..\COMMON\easyax5043.c:293: static __reentrantb uint8_t ax5043_init_registers_common(void) __reentrant
                                   3277 ;	-----------------------------------------
                                   3278 ;	 function ax5043_init_registers_common
                                   3279 ;	-----------------------------------------
      000AC7                       3280 _ax5043_init_registers_common:
                           000096  3281 	C$easyax5043.c$295$1$349 ==.
                                   3282 ;	..\COMMON\easyax5043.c:295: uint8_t rng = axradio_phy_chanpllrng[axradio_curchannel];
      000AC7 90 00 09         [24] 3283 	mov	dptr,#_axradio_curchannel
      000ACA E0               [24] 3284 	movx	a,@dptr
      000ACB 75 F0 02         [24] 3285 	mov	b,#0x02
      000ACE A4               [48] 3286 	mul	ab
      000ACF 24 01            [12] 3287 	add	a,#_axradio_phy_chanpllrng
      000AD1 F5 82            [12] 3288 	mov	dpl,a
      000AD3 74 00            [12] 3289 	mov	a,#(_axradio_phy_chanpllrng >> 8)
      000AD5 35 F0            [12] 3290 	addc	a,b
      000AD7 F5 83            [12] 3291 	mov	dph,a
      000AD9 E0               [24] 3292 	movx	a,@dptr
      000ADA FE               [12] 3293 	mov	r6,a
      000ADB A3               [24] 3294 	inc	dptr
      000ADC E0               [24] 3295 	movx	a,@dptr
      000ADD FF               [12] 3296 	mov	r7,a
                           0000AD  3297 	C$easyax5043.c$296$1$349 ==.
                                   3298 ;	..\COMMON\easyax5043.c:296: if (rng & 0x20)
      000ADE EE               [12] 3299 	mov	a,r6
      000ADF 30 E5 05         [24] 3300 	jnb	acc.5,00102$
                           0000B1  3301 	C$easyax5043.c$297$1$349 ==.
                                   3302 ;	..\COMMON\easyax5043.c:297: return AXRADIO_ERR_RANGING;
      000AE2 75 82 06         [24] 3303 	mov	dpl,#0x06
      000AE5 80 2D            [24] 3304 	sjmp	00117$
      000AE7                       3305 00102$:
                           0000B6  3306 	C$easyax5043.c$298$1$349 ==.
                                   3307 ;	..\COMMON\easyax5043.c:298: if (radio_read8(AX5043_REG_PLLLOOP) & 0x80)
      000AE7 90 40 30         [24] 3308 	mov	dptr,#0x4030
      000AEA E0               [24] 3309 	movx	a,@dptr
      000AEB FF               [12] 3310 	mov	r7,a
      000AEC 30 E7 0A         [24] 3311 	jnb	acc.7,00106$
                           0000BE  3312 	C$easyax5043.c$299$2$350 ==.
                                   3313 ;	..\COMMON\easyax5043.c:299: radio_write8(AX5043_REG_PLLRANGINGB, (rng & 0x0F));
      000AEF 74 0F            [12] 3314 	mov	a,#0x0f
      000AF1 5E               [12] 3315 	anl	a,r6
      000AF2 FF               [12] 3316 	mov	r7,a
      000AF3 90 40 3B         [24] 3317 	mov	dptr,#0x403b
      000AF6 F0               [24] 3318 	movx	@dptr,a
                           0000C6  3319 	C$easyax5043.c$301$1$349 ==.
                                   3320 ;	..\COMMON\easyax5043.c:301: radio_write8(AX5043_REG_PLLRANGINGA, (rng & 0x0F));
      000AF7 80 08            [24] 3321 	sjmp	00111$
      000AF9                       3322 00106$:
      000AF9 74 0F            [12] 3323 	mov	a,#0x0f
      000AFB 5E               [12] 3324 	anl	a,r6
      000AFC FF               [12] 3325 	mov	r7,a
      000AFD 90 40 33         [24] 3326 	mov	dptr,#0x4033
      000B00 F0               [24] 3327 	movx	@dptr,a
      000B01                       3328 00111$:
                           0000D0  3329 	C$easyax5043.c$302$1$349 ==.
                                   3330 ;	..\COMMON\easyax5043.c:302: rng = axradio_get_pllvcoi();
      000B01 12 34 02         [24] 3331 	lcall	_axradio_get_pllvcoi
      000B04 AF 82            [24] 3332 	mov	r7,dpl
      000B06 8F 06            [24] 3333 	mov	ar6,r7
                           0000D7  3334 	C$easyax5043.c$303$1$349 ==.
                                   3335 ;	..\COMMON\easyax5043.c:303: if (rng & 0x80)
      000B08 EE               [12] 3336 	mov	a,r6
      000B09 30 E7 05         [24] 3337 	jnb	acc.7,00116$
                           0000DB  3338 	C$easyax5043.c$304$2$352 ==.
                                   3339 ;	..\COMMON\easyax5043.c:304: radio_write8(AX5043_REG_PLLVCOI, rng);
      000B0C 90 41 80         [24] 3340 	mov	dptr,#0x4180
      000B0F EE               [12] 3341 	mov	a,r6
      000B10 F0               [24] 3342 	movx	@dptr,a
      000B11                       3343 00116$:
                           0000E0  3344 	C$easyax5043.c$305$1$349 ==.
                                   3345 ;	..\COMMON\easyax5043.c:305: return AXRADIO_ERR_NOERROR;
      000B11 75 82 00         [24] 3346 	mov	dpl,#0x00
      000B14                       3347 00117$:
                           0000E3  3348 	C$easyax5043.c$306$1$349 ==.
                           0000E3  3349 	XFeasyax5043$ax5043_init_registers_common$0$0 ==.
      000B14 22               [24] 3350 	ret
                                   3351 ;------------------------------------------------------------
                                   3352 ;Allocation info for local variables in function 'ax5043_init_registers_tx'
                                   3353 ;------------------------------------------------------------
                           0000E4  3354 	G$ax5043_init_registers_tx$0$0 ==.
                           0000E4  3355 	C$easyax5043.c$308$1$349 ==.
                                   3356 ;	..\COMMON\easyax5043.c:308: __reentrantb uint8_t ax5043_init_registers_tx(void) __reentrant
                                   3357 ;	-----------------------------------------
                                   3358 ;	 function ax5043_init_registers_tx
                                   3359 ;	-----------------------------------------
      000B15                       3360 _ax5043_init_registers_tx:
                           0000E4  3361 	C$easyax5043.c$310$1$354 ==.
                                   3362 ;	..\COMMON\easyax5043.c:310: ax5043_set_registers_tx();
      000B15 12 06 43         [24] 3363 	lcall	_ax5043_set_registers_tx
                           0000E7  3364 	C$easyax5043.c$311$1$354 ==.
                                   3365 ;	..\COMMON\easyax5043.c:311: return ax5043_init_registers_common();
      000B18 12 0A C7         [24] 3366 	lcall	_ax5043_init_registers_common
                           0000EA  3367 	C$easyax5043.c$312$1$354 ==.
                           0000EA  3368 	XG$ax5043_init_registers_tx$0$0 ==.
      000B1B 22               [24] 3369 	ret
                                   3370 ;------------------------------------------------------------
                                   3371 ;Allocation info for local variables in function 'ax5043_init_registers_rx'
                                   3372 ;------------------------------------------------------------
                           0000EB  3373 	G$ax5043_init_registers_rx$0$0 ==.
                           0000EB  3374 	C$easyax5043.c$314$1$354 ==.
                                   3375 ;	..\COMMON\easyax5043.c:314: __reentrantb uint8_t ax5043_init_registers_rx(void) __reentrant
                                   3376 ;	-----------------------------------------
                                   3377 ;	 function ax5043_init_registers_rx
                                   3378 ;	-----------------------------------------
      000B1C                       3379 _ax5043_init_registers_rx:
                           0000EB  3380 	C$easyax5043.c$316$1$356 ==.
                                   3381 ;	..\COMMON\easyax5043.c:316: ax5043_set_registers_rx();
      000B1C 12 06 67         [24] 3382 	lcall	_ax5043_set_registers_rx
                           0000EE  3383 	C$easyax5043.c$317$1$356 ==.
                                   3384 ;	..\COMMON\easyax5043.c:317: return ax5043_init_registers_common();
      000B1F 12 0A C7         [24] 3385 	lcall	_ax5043_init_registers_common
                           0000F1  3386 	C$easyax5043.c$318$1$356 ==.
                           0000F1  3387 	XG$ax5043_init_registers_rx$0$0 ==.
      000B22 22               [24] 3388 	ret
                                   3389 ;------------------------------------------------------------
                                   3390 ;Allocation info for local variables in function 'receive_isr'
                                   3391 ;------------------------------------------------------------
                                   3392 ;fifo_cmd                  Allocated to registers r6 
                                   3393 ;flags                     Allocated to registers 
                                   3394 ;i                         Allocated to registers r6 
                                   3395 ;len                       Allocated to registers r7 
                                   3396 ;radioStateTemp            Allocated to registers r6 
                                   3397 ;r                         Allocated to registers r6 
                                   3398 ;r                         Allocated to registers r6 
                                   3399 ;r                         Allocated to registers r6 
                                   3400 ;------------------------------------------------------------
                           0000F2  3401 	Feasyax5043$receive_isr$0$0 ==.
                           0000F2  3402 	C$easyax5043.c$320$1$356 ==.
                                   3403 ;	..\COMMON\easyax5043.c:320: static __reentrantb void receive_isr(void) __reentrant
                                   3404 ;	-----------------------------------------
                                   3405 ;	 function receive_isr
                                   3406 ;	-----------------------------------------
      000B23                       3407 _receive_isr:
                           0000F2  3408 	C$easyax5043.c$324$1$358 ==.
                                   3409 ;	..\COMMON\easyax5043.c:324: uint8_t len = radio_read8(AX5043_REG_RADIOEVENTREQ0); // clear request so interrupt does not fire again. sync_rx enables interrupt on radio state changed in order to wake up on SDF detected
      000B23 90 40 0F         [24] 3410 	mov	dptr,#0x400f
      000B26 E0               [24] 3411 	movx	a,@dptr
      000B27 FF               [12] 3412 	mov	r7,a
                           0000F7  3413 	C$easyax5043.c$326$1$358 ==.
                                   3414 ;	..\COMMON\easyax5043.c:326: uint8_t radioStateTemp = radio_read8(AX5043_REG_RADIOSTATE);
      000B28 90 40 1C         [24] 3415 	mov	dptr,#0x401c
      000B2B E0               [24] 3416 	movx	a,@dptr
      000B2C FE               [12] 3417 	mov	r6,a
                           0000FC  3418 	C$easyax5043.c$327$1$358 ==.
                                   3419 ;	..\COMMON\easyax5043.c:327: if ((len & 0x04) && radioStateTemp == 0x0F) {
      000B2D EF               [12] 3420 	mov	a,r7
      000B2E 30 E2 3A         [24] 3421 	jnb	acc.2,00175$
      000B31 BE 0F 37         [24] 3422 	cjne	r6,#0x0f,00175$
                           000103  3423 	C$easyax5043.c$329$2$359 ==.
                                   3424 ;	..\COMMON\easyax5043.c:329: update_timeanchor();
      000B34 12 0A 31         [24] 3425 	lcall	_update_timeanchor
                           000106  3426 	C$easyax5043.c$330$2$359 ==.
                                   3427 ;	..\COMMON\easyax5043.c:330: if(axradio_framing_enable_sfdcallback) {
      000B37 90 57 23         [24] 3428 	mov	dptr,#_axradio_framing_enable_sfdcallback
      000B3A E4               [12] 3429 	clr	a
      000B3B 93               [24] 3430 	movc	a,@a+dptr
      000B3C 60 2D            [24] 3431 	jz	00175$
                           00010D  3432 	C$easyax5043.c$331$3$360 ==.
                                   3433 ;	..\COMMON\easyax5043.c:331: wtimer_remove_callback(&axradio_cb_receivesfd.cb);
      000B3E 90 02 59         [24] 3434 	mov	dptr,#_axradio_cb_receivesfd
      000B41 12 52 63         [24] 3435 	lcall	_wtimer_remove_callback
                           000113  3436 	C$easyax5043.c$332$3$360 ==.
                                   3437 ;	..\COMMON\easyax5043.c:332: axradio_cb_receivesfd.st.error = AXRADIO_ERR_NOERROR;
      000B44 90 02 5E         [24] 3438 	mov	dptr,#(_axradio_cb_receivesfd + 0x0005)
      000B47 E4               [12] 3439 	clr	a
      000B48 F0               [24] 3440 	movx	@dptr,a
                           000118  3441 	C$easyax5043.c$333$3$360 ==.
                                   3442 ;	..\COMMON\easyax5043.c:333: axradio_cb_receivesfd.st.time.t = axradio_timeanchor.radiotimer;
      000B49 90 00 1A         [24] 3443 	mov	dptr,#(_axradio_timeanchor + 0x0004)
      000B4C E0               [24] 3444 	movx	a,@dptr
      000B4D FB               [12] 3445 	mov	r3,a
      000B4E A3               [24] 3446 	inc	dptr
      000B4F E0               [24] 3447 	movx	a,@dptr
      000B50 FC               [12] 3448 	mov	r4,a
      000B51 A3               [24] 3449 	inc	dptr
      000B52 E0               [24] 3450 	movx	a,@dptr
      000B53 FD               [12] 3451 	mov	r5,a
      000B54 A3               [24] 3452 	inc	dptr
      000B55 E0               [24] 3453 	movx	a,@dptr
      000B56 FE               [12] 3454 	mov	r6,a
      000B57 90 02 5F         [24] 3455 	mov	dptr,#(_axradio_cb_receivesfd + 0x0006)
      000B5A EB               [12] 3456 	mov	a,r3
      000B5B F0               [24] 3457 	movx	@dptr,a
      000B5C EC               [12] 3458 	mov	a,r4
      000B5D A3               [24] 3459 	inc	dptr
      000B5E F0               [24] 3460 	movx	@dptr,a
      000B5F ED               [12] 3461 	mov	a,r5
      000B60 A3               [24] 3462 	inc	dptr
      000B61 F0               [24] 3463 	movx	@dptr,a
      000B62 EE               [12] 3464 	mov	a,r6
      000B63 A3               [24] 3465 	inc	dptr
      000B64 F0               [24] 3466 	movx	@dptr,a
                           000134  3467 	C$easyax5043.c$334$3$360 ==.
                                   3468 ;	..\COMMON\easyax5043.c:334: wtimer_add_callback(&axradio_cb_receivesfd.cb);
      000B65 90 02 59         [24] 3469 	mov	dptr,#_axradio_cb_receivesfd
      000B68 12 46 F0         [24] 3470 	lcall	_wtimer_add_callback
                           00013A  3471 	C$easyax5043.c$346$1$358 ==.
                                   3472 ;	..\COMMON\easyax5043.c:346: while (radio_read8(AX5043_REG_IRQREQUEST0) & 0x01) {    // while fifo not empty
      000B6B                       3473 00175$:
      000B6B                       3474 00159$:
      000B6B 90 40 0D         [24] 3475 	mov	dptr,#0x400d
      000B6E E0               [24] 3476 	movx	a,@dptr
      000B6F FE               [12] 3477 	mov	r6,a
      000B70 20 E0 03         [24] 3478 	jb	acc.0,00256$
      000B73 02 0E 88         [24] 3479 	ljmp	00162$
      000B76                       3480 00256$:
                           000145  3481 	C$easyax5043.c$347$2$361 ==.
                                   3482 ;	..\COMMON\easyax5043.c:347: fifo_cmd = radio_read8(AX5043_REG_FIFODATA); // read command
      000B76 90 40 29         [24] 3483 	mov	dptr,#0x4029
      000B79 E0               [24] 3484 	movx	a,@dptr
      000B7A FE               [12] 3485 	mov	r6,a
                           00014A  3486 	C$easyax5043.c$348$2$361 ==.
                                   3487 ;	..\COMMON\easyax5043.c:348: len = (fifo_cmd & 0xE0) >> 5; // top 3 bits encode payload len
      000B7B 74 E0            [12] 3488 	mov	a,#0xe0
      000B7D 5E               [12] 3489 	anl	a,r6
      000B7E FD               [12] 3490 	mov	r5,a
      000B7F C4               [12] 3491 	swap	a
      000B80 03               [12] 3492 	rr	a
      000B81 54 07            [12] 3493 	anl	a,#0x07
      000B83 FF               [12] 3494 	mov	r7,a
                           000153  3495 	C$easyax5043.c$349$2$361 ==.
                                   3496 ;	..\COMMON\easyax5043.c:349: if (len == 7)
      000B84 BF 07 05         [24] 3497 	cjne	r7,#0x07,00107$
                           000156  3498 	C$easyax5043.c$350$2$361 ==.
                                   3499 ;	..\COMMON\easyax5043.c:350: len = radio_read8(AX5043_REG_FIFODATA); // 7 means variable length, -> get length byte
      000B87 90 40 29         [24] 3500 	mov	dptr,#0x4029
      000B8A E0               [24] 3501 	movx	a,@dptr
      000B8B FF               [12] 3502 	mov	r7,a
      000B8C                       3503 00107$:
                           00015B  3504 	C$easyax5043.c$351$2$361 ==.
                                   3505 ;	..\COMMON\easyax5043.c:351: fifo_cmd &= 0x1F;
      000B8C 53 06 1F         [24] 3506 	anl	ar6,#0x1f
                           00015E  3507 	C$easyax5043.c$352$2$361 ==.
                                   3508 ;	..\COMMON\easyax5043.c:352: switch (fifo_cmd) {
      000B8F BE 01 02         [24] 3509 	cjne	r6,#0x01,00259$
      000B92 80 21            [24] 3510 	sjmp	00108$
      000B94                       3511 00259$:
      000B94 BE 10 03         [24] 3512 	cjne	r6,#0x10,00260$
      000B97 02 0D D8         [24] 3513 	ljmp	00145$
      000B9A                       3514 00260$:
      000B9A BE 11 03         [24] 3515 	cjne	r6,#0x11,00261$
      000B9D 02 0D AB         [24] 3516 	ljmp	00142$
      000BA0                       3517 00261$:
      000BA0 BE 12 03         [24] 3518 	cjne	r6,#0x12,00262$
      000BA3 02 0D 5B         [24] 3519 	ljmp	00138$
      000BA6                       3520 00262$:
      000BA6 BE 13 03         [24] 3521 	cjne	r6,#0x13,00263$
      000BA9 02 0D 14         [24] 3522 	ljmp	00134$
      000BAC                       3523 00263$:
      000BAC BE 15 03         [24] 3524 	cjne	r6,#0x15,00264$
      000BAF 02 0E 01         [24] 3525 	ljmp	00148$
      000BB2                       3526 00264$:
      000BB2 02 0E 79         [24] 3527 	ljmp	00152$
                           000184  3528 	C$easyax5043.c$353$3$362 ==.
                                   3529 ;	..\COMMON\easyax5043.c:353: case AX5043_FIFOCMD_DATA:
      000BB5                       3530 00108$:
                           000184  3531 	C$easyax5043.c$354$3$362 ==.
                                   3532 ;	..\COMMON\easyax5043.c:354: if (!len)
      000BB5 EF               [12] 3533 	mov	a,r7
      000BB6 60 B3            [24] 3534 	jz	00159$
                           000187  3535 	C$easyax5043.c$357$3$362 ==.
                                   3536 ;	..\COMMON\easyax5043.c:357: flags = radio_read8(AX5043_REG_FIFODATA);
      000BB8 90 40 29         [24] 3537 	mov	dptr,#0x4029
      000BBB E0               [24] 3538 	movx	a,@dptr
                           00018B  3539 	C$easyax5043.c$358$3$362 ==.
                                   3540 ;	..\COMMON\easyax5043.c:358: --len;
      000BBC 1F               [12] 3541 	dec	r7
                           00018C  3542 	C$easyax5043.c$359$3$362 ==.
                                   3543 ;	..\COMMON\easyax5043.c:359: ax5043_readfifo(axradio_rxbuffer, len);
      000BBD C0 07            [24] 3544 	push	ar7
      000BBF C0 07            [24] 3545 	push	ar7
      000BC1 90 01 31         [24] 3546 	mov	dptr,#_axradio_rxbuffer
      000BC4 75 F0 00         [24] 3547 	mov	b,#0x00
      000BC7 12 50 01         [24] 3548 	lcall	_ax5043_readfifo
      000BCA 15 81            [12] 3549 	dec	sp
      000BCC D0 07            [24] 3550 	pop	ar7
                           00019D  3551 	C$easyax5043.c$360$3$362 ==.
                                   3552 ;	..\COMMON\easyax5043.c:360: if(axradio_mode == AXRADIO_MODE_WOR_RECEIVE || axradio_mode == AXRADIO_MODE_WOR_ACK_RECEIVE) {
      000BCE 74 21            [12] 3553 	mov	a,#0x21
      000BD0 B5 08 02         [24] 3554 	cjne	a,_axradio_mode,00266$
      000BD3 80 05            [24] 3555 	sjmp	00111$
      000BD5                       3556 00266$:
      000BD5 74 23            [12] 3557 	mov	a,#0x23
      000BD7 B5 08 21         [24] 3558 	cjne	a,_axradio_mode,00112$
      000BDA                       3559 00111$:
                           0001A9  3560 	C$easyax5043.c$361$4$363 ==.
                                   3561 ;	..\COMMON\easyax5043.c:361: f30_saved = radio_read8(AX5043_REG_0xF30);
      000BDA 90 4F 30         [24] 3562 	mov	dptr,#0x4f30
      000BDD E0               [24] 3563 	movx	a,@dptr
      000BDE 90 05 A8         [24] 3564 	mov	dptr,#_f30_saved
      000BE1 F0               [24] 3565 	movx	@dptr,a
                           0001B1  3566 	C$easyax5043.c$362$4$363 ==.
                                   3567 ;	..\COMMON\easyax5043.c:362: f31_saved = radio_read8(AX5043_REG_0xF31);
      000BE2 90 4F 31         [24] 3568 	mov	dptr,#0x4f31
      000BE5 E0               [24] 3569 	movx	a,@dptr
      000BE6 90 05 A9         [24] 3570 	mov	dptr,#_f31_saved
      000BE9 F0               [24] 3571 	movx	@dptr,a
                           0001B9  3572 	C$easyax5043.c$363$4$363 ==.
                                   3573 ;	..\COMMON\easyax5043.c:363: f32_saved = radio_read8(AX5043_REG_0xF32);
      000BEA 90 4F 32         [24] 3574 	mov	dptr,#0x4f32
      000BED E0               [24] 3575 	movx	a,@dptr
      000BEE 90 05 AA         [24] 3576 	mov	dptr,#_f32_saved
      000BF1 F0               [24] 3577 	movx	@dptr,a
                           0001C1  3578 	C$easyax5043.c$364$4$363 ==.
                                   3579 ;	..\COMMON\easyax5043.c:364: f33_saved = radio_read8(AX5043_REG_0xF33);
      000BF2 90 4F 33         [24] 3580 	mov	dptr,#0x4f33
      000BF5 E0               [24] 3581 	movx	a,@dptr
      000BF6 FE               [12] 3582 	mov	r6,a
      000BF7 90 05 AB         [24] 3583 	mov	dptr,#_f33_saved
      000BFA F0               [24] 3584 	movx	@dptr,a
      000BFB                       3585 00112$:
                           0001CA  3586 	C$easyax5043.c$366$3$362 ==.
                                   3587 ;	..\COMMON\easyax5043.c:366: if (axradio_mode == AXRADIO_MODE_WOR_RECEIVE ||
      000BFB 74 21            [12] 3588 	mov	a,#0x21
      000BFD B5 08 02         [24] 3589 	cjne	a,_axradio_mode,00269$
      000C00 80 05            [24] 3590 	sjmp	00114$
      000C02                       3591 00269$:
                           0001D1  3592 	C$easyax5043.c$367$3$362 ==.
                                   3593 ;	..\COMMON\easyax5043.c:367: axradio_mode == AXRADIO_MODE_SYNC_SLAVE)
      000C02 74 32            [12] 3594 	mov	a,#0x32
      000C04 B5 08 05         [24] 3595 	cjne	a,_axradio_mode,00120$
                           0001D6  3596 	C$easyax5043.c$368$3$362 ==.
                                   3597 ;	..\COMMON\easyax5043.c:368: radio_write8(AX5043_REG_PWRMODE, AX5043_PWRSTATE_POWERDOWN);
      000C07                       3598 00114$:
      000C07 90 40 02         [24] 3599 	mov	dptr,#0x4002
      000C0A E4               [12] 3600 	clr	a
      000C0B F0               [24] 3601 	movx	@dptr,a
                           0001DB  3602 	C$easyax5043.c$369$3$362 ==.
                                   3603 ;	..\COMMON\easyax5043.c:369: radio_write8(AX5043_REG_IRQMASK0, (radio_read8(AX5043_REG_IRQMASK0) & (uint8_t)~0x01)); // disable FIFO not empty irq
      000C0C                       3604 00120$:
      000C0C 90 40 07         [24] 3605 	mov	dptr,#0x4007
      000C0F E0               [24] 3606 	movx	a,@dptr
      000C10 54 FE            [12] 3607 	anl	a,#0xfe
      000C12 F0               [24] 3608 	movx	@dptr,a
                           0001E2  3609 	C$easyax5043.c$370$3$362 ==.
                                   3610 ;	..\COMMON\easyax5043.c:370: wtimer_remove_callback(&axradio_cb_receive.cb);
      000C13 90 02 35         [24] 3611 	mov	dptr,#_axradio_cb_receive
      000C16 C0 07            [24] 3612 	push	ar7
      000C18 12 52 63         [24] 3613 	lcall	_wtimer_remove_callback
      000C1B D0 07            [24] 3614 	pop	ar7
                           0001EC  3615 	C$easyax5043.c$371$3$362 ==.
                                   3616 ;	..\COMMON\easyax5043.c:371: axradio_cb_receive.st.error = AXRADIO_ERR_NOERROR;
      000C1D 90 02 3A         [24] 3617 	mov	dptr,#(_axradio_cb_receive + 0x0005)
      000C20 E4               [12] 3618 	clr	a
      000C21 F0               [24] 3619 	movx	@dptr,a
                           0001F1  3620 	C$easyax5043.c$372$3$362 ==.
                                   3621 ;	..\COMMON\easyax5043.c:372: axradio_cb_receive.st.rx.mac.raw = axradio_rxbuffer;
      000C22 90 02 53         [24] 3622 	mov	dptr,#(_axradio_cb_receive + 0x001e)
      000C25 74 31            [12] 3623 	mov	a,#_axradio_rxbuffer
      000C27 F0               [24] 3624 	movx	@dptr,a
      000C28 74 01            [12] 3625 	mov	a,#(_axradio_rxbuffer >> 8)
      000C2A A3               [24] 3626 	inc	dptr
      000C2B F0               [24] 3627 	movx	@dptr,a
                           0001FB  3628 	C$easyax5043.c$373$3$362 ==.
                                   3629 ;	..\COMMON\easyax5043.c:373: if (AXRADIO_MODE_IS_STREAM_RECEIVE(axradio_mode)) {
      000C2C 74 F8            [12] 3630 	mov	a,#0xf8
      000C2E 55 08            [12] 3631 	anl	a,_axradio_mode
      000C30 FE               [12] 3632 	mov	r6,a
      000C31 BE 28 02         [24] 3633 	cjne	r6,#0x28,00272$
      000C34 80 03            [24] 3634 	sjmp	00273$
      000C36                       3635 00272$:
      000C36 02 0C C2         [24] 3636 	ljmp	00127$
      000C39                       3637 00273$:
                           000208  3638 	C$easyax5043.c$374$4$366 ==.
                                   3639 ;	..\COMMON\easyax5043.c:374: axradio_cb_receive.st.rx.pktdata = axradio_rxbuffer;
      000C39 90 02 55         [24] 3640 	mov	dptr,#(_axradio_cb_receive + 0x0020)
      000C3C 74 31            [12] 3641 	mov	a,#_axradio_rxbuffer
      000C3E F0               [24] 3642 	movx	@dptr,a
      000C3F 74 01            [12] 3643 	mov	a,#(_axradio_rxbuffer >> 8)
      000C41 A3               [24] 3644 	inc	dptr
      000C42 F0               [24] 3645 	movx	@dptr,a
                           000212  3646 	C$easyax5043.c$375$4$366 ==.
                                   3647 ;	..\COMMON\easyax5043.c:375: axradio_cb_receive.st.rx.pktlen = len;
      000C43 8F 05            [24] 3648 	mov	ar5,r7
      000C45 7E 00            [12] 3649 	mov	r6,#0x00
      000C47 90 02 57         [24] 3650 	mov	dptr,#(_axradio_cb_receive + 0x0022)
      000C4A ED               [12] 3651 	mov	a,r5
      000C4B F0               [24] 3652 	movx	@dptr,a
      000C4C EE               [12] 3653 	mov	a,r6
      000C4D A3               [24] 3654 	inc	dptr
      000C4E F0               [24] 3655 	movx	@dptr,a
                           00021E  3656 	C$easyax5043.c$377$5$367 ==.
                                   3657 ;	..\COMMON\easyax5043.c:377: int8_t r = radio_read8(AX5043_REG_RSSI);
      000C4F 90 40 40         [24] 3658 	mov	dptr,#0x4040
      000C52 E0               [24] 3659 	movx	a,@dptr
                           000222  3660 	C$easyax5043.c$378$5$367 ==.
                                   3661 ;	..\COMMON\easyax5043.c:378: axradio_cb_receive.st.rx.phy.rssi = r - (int16_t)axradio_phy_rssioffset;
      000C53 FE               [12] 3662 	mov	r6,a
      000C54 33               [12] 3663 	rlc	a
      000C55 95 E0            [12] 3664 	subb	a,acc
      000C57 FD               [12] 3665 	mov	r5,a
      000C58 90 57 01         [24] 3666 	mov	dptr,#_axradio_phy_rssioffset
      000C5B E4               [12] 3667 	clr	a
      000C5C 93               [24] 3668 	movc	a,@a+dptr
      000C5D FC               [12] 3669 	mov	r4,a
      000C5E 33               [12] 3670 	rlc	a
      000C5F 95 E0            [12] 3671 	subb	a,acc
      000C61 FB               [12] 3672 	mov	r3,a
      000C62 EE               [12] 3673 	mov	a,r6
      000C63 C3               [12] 3674 	clr	c
      000C64 9C               [12] 3675 	subb	a,r4
      000C65 FE               [12] 3676 	mov	r6,a
      000C66 ED               [12] 3677 	mov	a,r5
      000C67 9B               [12] 3678 	subb	a,r3
      000C68 FD               [12] 3679 	mov	r5,a
      000C69 90 02 3F         [24] 3680 	mov	dptr,#(_axradio_cb_receive + 0x000a)
      000C6C EE               [12] 3681 	mov	a,r6
      000C6D F0               [24] 3682 	movx	@dptr,a
      000C6E ED               [12] 3683 	mov	a,r5
      000C6F A3               [24] 3684 	inc	dptr
      000C70 F0               [24] 3685 	movx	@dptr,a
                           000240  3686 	C$easyax5043.c$380$4$366 ==.
                                   3687 ;	..\COMMON\easyax5043.c:380: if (axradio_phy_innerfreqloop) {
      000C71 90 56 F2         [24] 3688 	mov	dptr,#_axradio_phy_innerfreqloop
      000C74 E4               [12] 3689 	clr	a
      000C75 93               [24] 3690 	movc	a,@a+dptr
      000C76 60 23            [24] 3691 	jz	00124$
                           000247  3692 	C$easyax5043.c$381$5$368 ==.
                                   3693 ;	..\COMMON\easyax5043.c:381: axradio_cb_receive.st.rx.phy.offset.o = axradio_conv_freq_fromreg(signextend16(radio_read16(AX5043_REG_TRKFREQ1)));
      000C78 90 00 50         [24] 3694 	mov	dptr,#0x0050
      000C7B 12 4A 2F         [24] 3695 	lcall	_radio_read16
      000C7E 12 56 A3         [24] 3696 	lcall	_signextend16
      000C81 12 08 49         [24] 3697 	lcall	_axradio_conv_freq_fromreg
      000C84 AB 82            [24] 3698 	mov	r3,dpl
      000C86 AC 83            [24] 3699 	mov	r4,dph
      000C88 AD F0            [24] 3700 	mov	r5,b
      000C8A FE               [12] 3701 	mov	r6,a
      000C8B 90 02 41         [24] 3702 	mov	dptr,#(_axradio_cb_receive + 0x000c)
      000C8E EB               [12] 3703 	mov	a,r3
      000C8F F0               [24] 3704 	movx	@dptr,a
      000C90 EC               [12] 3705 	mov	a,r4
      000C91 A3               [24] 3706 	inc	dptr
      000C92 F0               [24] 3707 	movx	@dptr,a
      000C93 ED               [12] 3708 	mov	a,r5
      000C94 A3               [24] 3709 	inc	dptr
      000C95 F0               [24] 3710 	movx	@dptr,a
      000C96 EE               [12] 3711 	mov	a,r6
      000C97 A3               [24] 3712 	inc	dptr
      000C98 F0               [24] 3713 	movx	@dptr,a
      000C99 80 1E            [24] 3714 	sjmp	00125$
      000C9B                       3715 00124$:
                           00026A  3716 	C$easyax5043.c$383$5$369 ==.
                                   3717 ;	..\COMMON\easyax5043.c:383: axradio_cb_receive.st.rx.phy.offset.o = signextend20(radio_read24(AX5043_REG_TRKRFFREQ2));
      000C9B 90 00 4D         [24] 3718 	mov	dptr,#0x004d
      000C9E 12 48 F6         [24] 3719 	lcall	_radio_read24
      000CA1 12 56 48         [24] 3720 	lcall	_signextend20
      000CA4 AB 82            [24] 3721 	mov	r3,dpl
      000CA6 AC 83            [24] 3722 	mov	r4,dph
      000CA8 AD F0            [24] 3723 	mov	r5,b
      000CAA FE               [12] 3724 	mov	r6,a
      000CAB 90 02 41         [24] 3725 	mov	dptr,#(_axradio_cb_receive + 0x000c)
      000CAE EB               [12] 3726 	mov	a,r3
      000CAF F0               [24] 3727 	movx	@dptr,a
      000CB0 EC               [12] 3728 	mov	a,r4
      000CB1 A3               [24] 3729 	inc	dptr
      000CB2 F0               [24] 3730 	movx	@dptr,a
      000CB3 ED               [12] 3731 	mov	a,r5
      000CB4 A3               [24] 3732 	inc	dptr
      000CB5 F0               [24] 3733 	movx	@dptr,a
      000CB6 EE               [12] 3734 	mov	a,r6
      000CB7 A3               [24] 3735 	inc	dptr
      000CB8 F0               [24] 3736 	movx	@dptr,a
      000CB9                       3737 00125$:
                           000288  3738 	C$easyax5043.c$385$4$366 ==.
                                   3739 ;	..\COMMON\easyax5043.c:385: wtimer_add_callback(&axradio_cb_receive.cb);
      000CB9 90 02 35         [24] 3740 	mov	dptr,#_axradio_cb_receive
      000CBC 12 46 F0         [24] 3741 	lcall	_wtimer_add_callback
                           00028E  3742 	C$easyax5043.c$386$4$366 ==.
                                   3743 ;	..\COMMON\easyax5043.c:386: break;
      000CBF 02 0B 6B         [24] 3744 	ljmp	00159$
      000CC2                       3745 00127$:
                           000291  3746 	C$easyax5043.c$388$3$362 ==.
                                   3747 ;	..\COMMON\easyax5043.c:388: axradio_cb_receive.st.rx.pktdata = &axradio_rxbuffer[axradio_framing_maclen];
      000CC2 90 57 15         [24] 3748 	mov	dptr,#_axradio_framing_maclen
      000CC5 E4               [12] 3749 	clr	a
      000CC6 93               [24] 3750 	movc	a,@a+dptr
      000CC7 FE               [12] 3751 	mov	r6,a
      000CC8 24 31            [12] 3752 	add	a,#_axradio_rxbuffer
      000CCA FC               [12] 3753 	mov	r4,a
      000CCB E4               [12] 3754 	clr	a
      000CCC 34 01            [12] 3755 	addc	a,#(_axradio_rxbuffer >> 8)
      000CCE FD               [12] 3756 	mov	r5,a
      000CCF 90 02 55         [24] 3757 	mov	dptr,#(_axradio_cb_receive + 0x0020)
      000CD2 EC               [12] 3758 	mov	a,r4
      000CD3 F0               [24] 3759 	movx	@dptr,a
      000CD4 ED               [12] 3760 	mov	a,r5
      000CD5 A3               [24] 3761 	inc	dptr
      000CD6 F0               [24] 3762 	movx	@dptr,a
                           0002A6  3763 	C$easyax5043.c$389$3$362 ==.
                                   3764 ;	..\COMMON\easyax5043.c:389: if (len < axradio_framing_maclen) {
      000CD7 C3               [12] 3765 	clr	c
      000CD8 EF               [12] 3766 	mov	a,r7
      000CD9 9E               [12] 3767 	subb	a,r6
      000CDA 50 0A            [24] 3768 	jnc	00132$
                           0002AB  3769 	C$easyax5043.c$391$4$370 ==.
                                   3770 ;	..\COMMON\easyax5043.c:391: axradio_cb_receive.st.rx.pktlen = 0;
      000CDC 90 02 57         [24] 3771 	mov	dptr,#(_axradio_cb_receive + 0x0022)
      000CDF E4               [12] 3772 	clr	a
      000CE0 F0               [24] 3773 	movx	@dptr,a
      000CE1 A3               [24] 3774 	inc	dptr
      000CE2 F0               [24] 3775 	movx	@dptr,a
      000CE3 02 0B 6B         [24] 3776 	ljmp	00159$
      000CE6                       3777 00132$:
                           0002B5  3778 	C$easyax5043.c$393$4$371 ==.
                                   3779 ;	..\COMMON\easyax5043.c:393: len -= axradio_framing_maclen;
      000CE6 EF               [12] 3780 	mov	a,r7
      000CE7 C3               [12] 3781 	clr	c
      000CE8 9E               [12] 3782 	subb	a,r6
                           0002B8  3783 	C$easyax5043.c$394$4$371 ==.
                                   3784 ;	..\COMMON\easyax5043.c:394: axradio_cb_receive.st.rx.pktlen = len;
      000CE9 FD               [12] 3785 	mov	r5,a
      000CEA 7E 00            [12] 3786 	mov	r6,#0x00
      000CEC 90 02 57         [24] 3787 	mov	dptr,#(_axradio_cb_receive + 0x0022)
      000CEF ED               [12] 3788 	mov	a,r5
      000CF0 F0               [24] 3789 	movx	@dptr,a
      000CF1 EE               [12] 3790 	mov	a,r6
      000CF2 A3               [24] 3791 	inc	dptr
      000CF3 F0               [24] 3792 	movx	@dptr,a
                           0002C3  3793 	C$easyax5043.c$395$4$371 ==.
                                   3794 ;	..\COMMON\easyax5043.c:395: wtimer_add_callback(&axradio_cb_receive.cb);
      000CF4 90 02 35         [24] 3795 	mov	dptr,#_axradio_cb_receive
      000CF7 12 46 F0         [24] 3796 	lcall	_wtimer_add_callback
                           0002C9  3797 	C$easyax5043.c$396$4$371 ==.
                                   3798 ;	..\COMMON\easyax5043.c:396: if (axradio_mode == AXRADIO_MODE_SYNC_SLAVE ||
      000CFA 74 32            [12] 3799 	mov	a,#0x32
      000CFC B5 08 02         [24] 3800 	cjne	a,_axradio_mode,00276$
      000CFF 80 0A            [24] 3801 	sjmp	00128$
      000D01                       3802 00276$:
                           0002D0  3803 	C$easyax5043.c$397$4$371 ==.
                                   3804 ;	..\COMMON\easyax5043.c:397: axradio_mode == AXRADIO_MODE_SYNC_ACK_SLAVE)
      000D01 74 33            [12] 3805 	mov	a,#0x33
      000D03 B5 08 02         [24] 3806 	cjne	a,_axradio_mode,00277$
      000D06 80 03            [24] 3807 	sjmp	00278$
      000D08                       3808 00277$:
      000D08 02 0B 6B         [24] 3809 	ljmp	00159$
      000D0B                       3810 00278$:
      000D0B                       3811 00128$:
                           0002DA  3812 	C$easyax5043.c$398$4$371 ==.
                                   3813 ;	..\COMMON\easyax5043.c:398: wtimer_remove(&axradio_timer);
      000D0B 90 02 8E         [24] 3814 	mov	dptr,#_axradio_timer
      000D0E 12 50 55         [24] 3815 	lcall	_wtimer_remove
                           0002E0  3816 	C$easyax5043.c$400$3$362 ==.
                                   3817 ;	..\COMMON\easyax5043.c:400: break;
      000D11 02 0B 6B         [24] 3818 	ljmp	00159$
                           0002E3  3819 	C$easyax5043.c$402$3$362 ==.
                                   3820 ;	..\COMMON\easyax5043.c:402: case AX5043_FIFOCMD_RFFREQOFFS:
      000D14                       3821 00134$:
                           0002E3  3822 	C$easyax5043.c$403$3$362 ==.
                                   3823 ;	..\COMMON\easyax5043.c:403: if (axradio_phy_innerfreqloop || len != 3)
      000D14 90 56 F2         [24] 3824 	mov	dptr,#_axradio_phy_innerfreqloop
      000D17 E4               [12] 3825 	clr	a
      000D18 93               [24] 3826 	movc	a,@a+dptr
      000D19 60 03            [24] 3827 	jz	00279$
      000D1B 02 0E 79         [24] 3828 	ljmp	00152$
      000D1E                       3829 00279$:
      000D1E BF 03 02         [24] 3830 	cjne	r7,#0x03,00280$
      000D21 80 03            [24] 3831 	sjmp	00281$
      000D23                       3832 00280$:
      000D23 02 0E 79         [24] 3833 	ljmp	00152$
      000D26                       3834 00281$:
                           0002F5  3835 	C$easyax5043.c$405$3$362 ==.
                                   3836 ;	..\COMMON\easyax5043.c:405: i = radio_read8(AX5043_REG_FIFODATA);
      000D26 90 40 29         [24] 3837 	mov	dptr,#0x4029
      000D29 E0               [24] 3838 	movx	a,@dptr
      000D2A FE               [12] 3839 	mov	r6,a
                           0002FA  3840 	C$easyax5043.c$406$3$362 ==.
                                   3841 ;	..\COMMON\easyax5043.c:406: i &= 0x0F;
      000D2B 53 06 0F         [24] 3842 	anl	ar6,#0x0f
                           0002FD  3843 	C$easyax5043.c$407$3$362 ==.
                                   3844 ;	..\COMMON\easyax5043.c:407: i |= 1 + (uint8_t)~(i & 0x08);
      000D2E 74 08            [12] 3845 	mov	a,#0x08
      000D30 5E               [12] 3846 	anl	a,r6
      000D31 F4               [12] 3847 	cpl	a
      000D32 FD               [12] 3848 	mov	r5,a
      000D33 0D               [12] 3849 	inc	r5
      000D34 ED               [12] 3850 	mov	a,r5
      000D35 42 06            [12] 3851 	orl	ar6,a
                           000306  3852 	C$easyax5043.c$408$3$362 ==.
                                   3853 ;	..\COMMON\easyax5043.c:408: axradio_cb_receive.st.rx.phy.offset.b.b3 = ((int8_t)i) >> 8;
      000D37 8E 05            [24] 3854 	mov	ar5,r6
      000D39 ED               [12] 3855 	mov	a,r5
      000D3A 33               [12] 3856 	rlc	a
      000D3B 95 E0            [12] 3857 	subb	a,acc
      000D3D FD               [12] 3858 	mov	r5,a
      000D3E 90 02 44         [24] 3859 	mov	dptr,#(_axradio_cb_receive + 0x000f)
      000D41 F0               [24] 3860 	movx	@dptr,a
                           000311  3861 	C$easyax5043.c$409$3$362 ==.
                                   3862 ;	..\COMMON\easyax5043.c:409: axradio_cb_receive.st.rx.phy.offset.b.b2 = i;
      000D42 90 02 43         [24] 3863 	mov	dptr,#(_axradio_cb_receive + 0x000e)
      000D45 EE               [12] 3864 	mov	a,r6
      000D46 F0               [24] 3865 	movx	@dptr,a
                           000316  3866 	C$easyax5043.c$410$3$362 ==.
                                   3867 ;	..\COMMON\easyax5043.c:410: axradio_cb_receive.st.rx.phy.offset.b.b1 = radio_read8(AX5043_REG_FIFODATA);
      000D47 90 40 29         [24] 3868 	mov	dptr,#0x4029
      000D4A E0               [24] 3869 	movx	a,@dptr
      000D4B 90 02 42         [24] 3870 	mov	dptr,#(_axradio_cb_receive + 0x000d)
      000D4E F0               [24] 3871 	movx	@dptr,a
                           00031E  3872 	C$easyax5043.c$411$3$362 ==.
                                   3873 ;	..\COMMON\easyax5043.c:411: axradio_cb_receive.st.rx.phy.offset.b.b0 = radio_read8(AX5043_REG_FIFODATA);
      000D4F 90 40 29         [24] 3874 	mov	dptr,#0x4029
      000D52 E0               [24] 3875 	movx	a,@dptr
      000D53 FE               [12] 3876 	mov	r6,a
      000D54 90 02 41         [24] 3877 	mov	dptr,#(_axradio_cb_receive + 0x000c)
      000D57 F0               [24] 3878 	movx	@dptr,a
                           000327  3879 	C$easyax5043.c$412$3$362 ==.
                                   3880 ;	..\COMMON\easyax5043.c:412: break;
      000D58 02 0B 6B         [24] 3881 	ljmp	00159$
                           00032A  3882 	C$easyax5043.c$414$3$362 ==.
                                   3883 ;	..\COMMON\easyax5043.c:414: case AX5043_FIFOCMD_FREQOFFS:
      000D5B                       3884 00138$:
                           00032A  3885 	C$easyax5043.c$415$3$362 ==.
                                   3886 ;	..\COMMON\easyax5043.c:415: if (!axradio_phy_innerfreqloop || len != 2)
      000D5B 90 56 F2         [24] 3887 	mov	dptr,#_axradio_phy_innerfreqloop
      000D5E E4               [12] 3888 	clr	a
      000D5F 93               [24] 3889 	movc	a,@a+dptr
      000D60 70 03            [24] 3890 	jnz	00282$
      000D62 02 0E 79         [24] 3891 	ljmp	00152$
      000D65                       3892 00282$:
      000D65 BF 02 02         [24] 3893 	cjne	r7,#0x02,00283$
      000D68 80 03            [24] 3894 	sjmp	00284$
      000D6A                       3895 00283$:
      000D6A 02 0E 79         [24] 3896 	ljmp	00152$
      000D6D                       3897 00284$:
                           00033C  3898 	C$easyax5043.c$417$3$362 ==.
                                   3899 ;	..\COMMON\easyax5043.c:417: axradio_cb_receive.st.rx.phy.offset.b.b1 = radio_read8(AX5043_REG_FIFODATA);
      000D6D 90 40 29         [24] 3900 	mov	dptr,#0x4029
      000D70 E0               [24] 3901 	movx	a,@dptr
      000D71 90 02 42         [24] 3902 	mov	dptr,#(_axradio_cb_receive + 0x000d)
      000D74 F0               [24] 3903 	movx	@dptr,a
                           000344  3904 	C$easyax5043.c$418$3$362 ==.
                                   3905 ;	..\COMMON\easyax5043.c:418: axradio_cb_receive.st.rx.phy.offset.b.b0 = radio_read8(AX5043_REG_FIFODATA);
      000D75 90 40 29         [24] 3906 	mov	dptr,#0x4029
      000D78 E0               [24] 3907 	movx	a,@dptr
      000D79 90 02 41         [24] 3908 	mov	dptr,#(_axradio_cb_receive + 0x000c)
      000D7C F0               [24] 3909 	movx	@dptr,a
                           00034C  3910 	C$easyax5043.c$419$3$362 ==.
                                   3911 ;	..\COMMON\easyax5043.c:419: axradio_cb_receive.st.rx.phy.offset.o = axradio_conv_freq_fromreg(signextend16(axradio_cb_receive.st.rx.phy.offset.o));
      000D7D 90 02 41         [24] 3912 	mov	dptr,#(_axradio_cb_receive + 0x000c)
      000D80 E0               [24] 3913 	movx	a,@dptr
      000D81 FB               [12] 3914 	mov	r3,a
      000D82 A3               [24] 3915 	inc	dptr
      000D83 E0               [24] 3916 	movx	a,@dptr
      000D84 FC               [12] 3917 	mov	r4,a
      000D85 A3               [24] 3918 	inc	dptr
      000D86 E0               [24] 3919 	movx	a,@dptr
      000D87 A3               [24] 3920 	inc	dptr
      000D88 E0               [24] 3921 	movx	a,@dptr
      000D89 8B 82            [24] 3922 	mov	dpl,r3
      000D8B 8C 83            [24] 3923 	mov	dph,r4
      000D8D 12 56 A3         [24] 3924 	lcall	_signextend16
      000D90 12 08 49         [24] 3925 	lcall	_axradio_conv_freq_fromreg
      000D93 AB 82            [24] 3926 	mov	r3,dpl
      000D95 AC 83            [24] 3927 	mov	r4,dph
      000D97 AD F0            [24] 3928 	mov	r5,b
      000D99 FE               [12] 3929 	mov	r6,a
      000D9A 90 02 41         [24] 3930 	mov	dptr,#(_axradio_cb_receive + 0x000c)
      000D9D EB               [12] 3931 	mov	a,r3
      000D9E F0               [24] 3932 	movx	@dptr,a
      000D9F EC               [12] 3933 	mov	a,r4
      000DA0 A3               [24] 3934 	inc	dptr
      000DA1 F0               [24] 3935 	movx	@dptr,a
      000DA2 ED               [12] 3936 	mov	a,r5
      000DA3 A3               [24] 3937 	inc	dptr
      000DA4 F0               [24] 3938 	movx	@dptr,a
      000DA5 EE               [12] 3939 	mov	a,r6
      000DA6 A3               [24] 3940 	inc	dptr
      000DA7 F0               [24] 3941 	movx	@dptr,a
                           000377  3942 	C$easyax5043.c$420$3$362 ==.
                                   3943 ;	..\COMMON\easyax5043.c:420: break;
      000DA8 02 0B 6B         [24] 3944 	ljmp	00159$
                           00037A  3945 	C$easyax5043.c$422$3$362 ==.
                                   3946 ;	..\COMMON\easyax5043.c:422: case AX5043_FIFOCMD_RSSI:
      000DAB                       3947 00142$:
                           00037A  3948 	C$easyax5043.c$423$3$362 ==.
                                   3949 ;	..\COMMON\easyax5043.c:423: if (len != 1)
      000DAB BF 01 02         [24] 3950 	cjne	r7,#0x01,00285$
      000DAE 80 03            [24] 3951 	sjmp	00286$
      000DB0                       3952 00285$:
      000DB0 02 0E 79         [24] 3953 	ljmp	00152$
      000DB3                       3954 00286$:
                           000382  3955 	C$easyax5043.c$426$4$372 ==.
                                   3956 ;	..\COMMON\easyax5043.c:426: int8_t r = radio_read8(AX5043_REG_FIFODATA);
      000DB3 90 40 29         [24] 3957 	mov	dptr,#0x4029
      000DB6 E0               [24] 3958 	movx	a,@dptr
                           000386  3959 	C$easyax5043.c$427$4$372 ==.
                                   3960 ;	..\COMMON\easyax5043.c:427: axradio_cb_receive.st.rx.phy.rssi = r - (int16_t)axradio_phy_rssioffset;
      000DB7 FE               [12] 3961 	mov	r6,a
      000DB8 33               [12] 3962 	rlc	a
      000DB9 95 E0            [12] 3963 	subb	a,acc
      000DBB FD               [12] 3964 	mov	r5,a
      000DBC 90 57 01         [24] 3965 	mov	dptr,#_axradio_phy_rssioffset
      000DBF E4               [12] 3966 	clr	a
      000DC0 93               [24] 3967 	movc	a,@a+dptr
      000DC1 FC               [12] 3968 	mov	r4,a
      000DC2 33               [12] 3969 	rlc	a
      000DC3 95 E0            [12] 3970 	subb	a,acc
      000DC5 FB               [12] 3971 	mov	r3,a
      000DC6 EE               [12] 3972 	mov	a,r6
      000DC7 C3               [12] 3973 	clr	c
      000DC8 9C               [12] 3974 	subb	a,r4
      000DC9 FE               [12] 3975 	mov	r6,a
      000DCA ED               [12] 3976 	mov	a,r5
      000DCB 9B               [12] 3977 	subb	a,r3
      000DCC FD               [12] 3978 	mov	r5,a
      000DCD 90 02 3F         [24] 3979 	mov	dptr,#(_axradio_cb_receive + 0x000a)
      000DD0 EE               [12] 3980 	mov	a,r6
      000DD1 F0               [24] 3981 	movx	@dptr,a
      000DD2 ED               [12] 3982 	mov	a,r5
      000DD3 A3               [24] 3983 	inc	dptr
      000DD4 F0               [24] 3984 	movx	@dptr,a
                           0003A4  3985 	C$easyax5043.c$429$3$362 ==.
                                   3986 ;	..\COMMON\easyax5043.c:429: break;
      000DD5 02 0B 6B         [24] 3987 	ljmp	00159$
                           0003A7  3988 	C$easyax5043.c$431$3$362 ==.
                                   3989 ;	..\COMMON\easyax5043.c:431: case AX5043_FIFOCMD_TIMER:
      000DD8                       3990 00145$:
                           0003A7  3991 	C$easyax5043.c$432$3$362 ==.
                                   3992 ;	..\COMMON\easyax5043.c:432: if (len != 3)
      000DD8 BF 03 02         [24] 3993 	cjne	r7,#0x03,00287$
      000DDB 80 03            [24] 3994 	sjmp	00288$
      000DDD                       3995 00287$:
      000DDD 02 0E 79         [24] 3996 	ljmp	00152$
      000DE0                       3997 00288$:
                           0003AF  3998 	C$easyax5043.c$436$3$362 ==.
                                   3999 ;	..\COMMON\easyax5043.c:436: axradio_cb_receive.st.time.b.b3 = 0;
      000DE0 90 02 3E         [24] 4000 	mov	dptr,#(_axradio_cb_receive + 0x0009)
      000DE3 E4               [12] 4001 	clr	a
      000DE4 F0               [24] 4002 	movx	@dptr,a
                           0003B4  4003 	C$easyax5043.c$437$3$362 ==.
                                   4004 ;	..\COMMON\easyax5043.c:437: axradio_cb_receive.st.time.b.b2 = radio_read8(AX5043_REG_FIFODATA);
      000DE5 90 40 29         [24] 4005 	mov	dptr,#0x4029
      000DE8 E0               [24] 4006 	movx	a,@dptr
      000DE9 90 02 3D         [24] 4007 	mov	dptr,#(_axradio_cb_receive + 0x0008)
      000DEC F0               [24] 4008 	movx	@dptr,a
                           0003BC  4009 	C$easyax5043.c$438$3$362 ==.
                                   4010 ;	..\COMMON\easyax5043.c:438: axradio_cb_receive.st.time.b.b1 = radio_read8(AX5043_REG_FIFODATA);
      000DED 90 40 29         [24] 4011 	mov	dptr,#0x4029
      000DF0 E0               [24] 4012 	movx	a,@dptr
      000DF1 90 02 3C         [24] 4013 	mov	dptr,#(_axradio_cb_receive + 0x0007)
      000DF4 F0               [24] 4014 	movx	@dptr,a
                           0003C4  4015 	C$easyax5043.c$439$3$362 ==.
                                   4016 ;	..\COMMON\easyax5043.c:439: axradio_cb_receive.st.time.b.b0 = radio_read8(AX5043_REG_FIFODATA);
      000DF5 90 40 29         [24] 4017 	mov	dptr,#0x4029
      000DF8 E0               [24] 4018 	movx	a,@dptr
      000DF9 FE               [12] 4019 	mov	r6,a
      000DFA 90 02 3B         [24] 4020 	mov	dptr,#(_axradio_cb_receive + 0x0006)
      000DFD F0               [24] 4021 	movx	@dptr,a
                           0003CD  4022 	C$easyax5043.c$440$3$362 ==.
                                   4023 ;	..\COMMON\easyax5043.c:440: break;
      000DFE 02 0B 6B         [24] 4024 	ljmp	00159$
                           0003D0  4025 	C$easyax5043.c$442$3$362 ==.
                                   4026 ;	..\COMMON\easyax5043.c:442: case AX5043_FIFOCMD_ANTRSSI:
      000E01                       4027 00148$:
                           0003D0  4028 	C$easyax5043.c$443$3$362 ==.
                                   4029 ;	..\COMMON\easyax5043.c:443: if (!len)
      000E01 EF               [12] 4030 	mov	a,r7
      000E02 70 03            [24] 4031 	jnz	00289$
      000E04 02 0B 6B         [24] 4032 	ljmp	00159$
      000E07                       4033 00289$:
                           0003D6  4034 	C$easyax5043.c$445$3$362 ==.
                                   4035 ;	..\COMMON\easyax5043.c:445: update_timeanchor();
      000E07 C0 07            [24] 4036 	push	ar7
      000E09 12 0A 31         [24] 4037 	lcall	_update_timeanchor
                           0003DB  4038 	C$easyax5043.c$446$3$362 ==.
                                   4039 ;	..\COMMON\easyax5043.c:446: wtimer_remove_callback(&axradio_cb_channelstate.cb);
      000E0C 90 02 63         [24] 4040 	mov	dptr,#_axradio_cb_channelstate
      000E0F 12 52 63         [24] 4041 	lcall	_wtimer_remove_callback
                           0003E1  4042 	C$easyax5043.c$447$3$362 ==.
                                   4043 ;	..\COMMON\easyax5043.c:447: axradio_cb_channelstate.st.error = AXRADIO_ERR_NOERROR;
      000E12 90 02 68         [24] 4044 	mov	dptr,#(_axradio_cb_channelstate + 0x0005)
      000E15 E4               [12] 4045 	clr	a
      000E16 F0               [24] 4046 	movx	@dptr,a
                           0003E6  4047 	C$easyax5043.c$449$4$373 ==.
                                   4048 ;	..\COMMON\easyax5043.c:449: int8_t r = radio_read8(AX5043_REG_FIFODATA);
      000E17 90 40 29         [24] 4049 	mov	dptr,#0x4029
      000E1A E0               [24] 4050 	movx	a,@dptr
                           0003EA  4051 	C$easyax5043.c$450$4$373 ==.
                                   4052 ;	..\COMMON\easyax5043.c:450: axradio_cb_channelstate.st.cs.rssi = r - (int16_t)axradio_phy_rssioffset;
      000E1B FE               [12] 4053 	mov	r6,a
      000E1C FC               [12] 4054 	mov	r4,a
      000E1D 33               [12] 4055 	rlc	a
      000E1E 95 E0            [12] 4056 	subb	a,acc
      000E20 FD               [12] 4057 	mov	r5,a
      000E21 90 57 01         [24] 4058 	mov	dptr,#_axradio_phy_rssioffset
      000E24 E4               [12] 4059 	clr	a
      000E25 93               [24] 4060 	movc	a,@a+dptr
      000E26 FB               [12] 4061 	mov	r3,a
      000E27 33               [12] 4062 	rlc	a
      000E28 95 E0            [12] 4063 	subb	a,acc
      000E2A FA               [12] 4064 	mov	r2,a
      000E2B EC               [12] 4065 	mov	a,r4
      000E2C C3               [12] 4066 	clr	c
      000E2D 9B               [12] 4067 	subb	a,r3
      000E2E FC               [12] 4068 	mov	r4,a
      000E2F ED               [12] 4069 	mov	a,r5
      000E30 9A               [12] 4070 	subb	a,r2
      000E31 FD               [12] 4071 	mov	r5,a
      000E32 90 02 6D         [24] 4072 	mov	dptr,#(_axradio_cb_channelstate + 0x000a)
      000E35 EC               [12] 4073 	mov	a,r4
      000E36 F0               [24] 4074 	movx	@dptr,a
      000E37 ED               [12] 4075 	mov	a,r5
      000E38 A3               [24] 4076 	inc	dptr
      000E39 F0               [24] 4077 	movx	@dptr,a
                           000409  4078 	C$easyax5043.c$451$4$373 ==.
                                   4079 ;	..\COMMON\easyax5043.c:451: axradio_cb_channelstate.st.cs.busy = r >= axradio_phy_channelbusy;
      000E3A 90 57 03         [24] 4080 	mov	dptr,#_axradio_phy_channelbusy
      000E3D E4               [12] 4081 	clr	a
      000E3E 93               [24] 4082 	movc	a,@a+dptr
      000E3F FD               [12] 4083 	mov	r5,a
      000E40 C3               [12] 4084 	clr	c
      000E41 EE               [12] 4085 	mov	a,r6
      000E42 64 80            [12] 4086 	xrl	a,#0x80
      000E44 8D F0            [24] 4087 	mov	b,r5
      000E46 63 F0 80         [24] 4088 	xrl	b,#0x80
      000E49 95 F0            [12] 4089 	subb	a,b
      000E4B B3               [12] 4090 	cpl	c
      000E4C 92 08            [24] 4091 	mov	b0,c
      000E4E E4               [12] 4092 	clr	a
      000E4F 33               [12] 4093 	rlc	a
      000E50 90 02 6F         [24] 4094 	mov	dptr,#(_axradio_cb_channelstate + 0x000c)
      000E53 F0               [24] 4095 	movx	@dptr,a
                           000423  4096 	C$easyax5043.c$453$3$362 ==.
                                   4097 ;	..\COMMON\easyax5043.c:453: axradio_cb_channelstate.st.time.t = axradio_timeanchor.radiotimer;
      000E54 90 00 1A         [24] 4098 	mov	dptr,#(_axradio_timeanchor + 0x0004)
      000E57 E0               [24] 4099 	movx	a,@dptr
      000E58 FB               [12] 4100 	mov	r3,a
      000E59 A3               [24] 4101 	inc	dptr
      000E5A E0               [24] 4102 	movx	a,@dptr
      000E5B FC               [12] 4103 	mov	r4,a
      000E5C A3               [24] 4104 	inc	dptr
      000E5D E0               [24] 4105 	movx	a,@dptr
      000E5E FD               [12] 4106 	mov	r5,a
      000E5F A3               [24] 4107 	inc	dptr
      000E60 E0               [24] 4108 	movx	a,@dptr
      000E61 FE               [12] 4109 	mov	r6,a
      000E62 90 02 69         [24] 4110 	mov	dptr,#(_axradio_cb_channelstate + 0x0006)
      000E65 EB               [12] 4111 	mov	a,r3
      000E66 F0               [24] 4112 	movx	@dptr,a
      000E67 EC               [12] 4113 	mov	a,r4
      000E68 A3               [24] 4114 	inc	dptr
      000E69 F0               [24] 4115 	movx	@dptr,a
      000E6A ED               [12] 4116 	mov	a,r5
      000E6B A3               [24] 4117 	inc	dptr
      000E6C F0               [24] 4118 	movx	@dptr,a
      000E6D EE               [12] 4119 	mov	a,r6
      000E6E A3               [24] 4120 	inc	dptr
      000E6F F0               [24] 4121 	movx	@dptr,a
                           00043F  4122 	C$easyax5043.c$454$3$362 ==.
                                   4123 ;	..\COMMON\easyax5043.c:454: wtimer_add_callback(&axradio_cb_channelstate.cb);
      000E70 90 02 63         [24] 4124 	mov	dptr,#_axradio_cb_channelstate
      000E73 12 46 F0         [24] 4125 	lcall	_wtimer_add_callback
      000E76 D0 07            [24] 4126 	pop	ar7
                           000447  4127 	C$easyax5043.c$455$3$362 ==.
                                   4128 ;	..\COMMON\easyax5043.c:455: --len;
      000E78 1F               [12] 4129 	dec	r7
                           000448  4130 	C$easyax5043.c$460$3$362 ==.
                                   4131 ;	..\COMMON\easyax5043.c:460: dropchunk:
      000E79                       4132 00152$:
                           000448  4133 	C$easyax5043.c$461$3$362 ==.
                                   4134 ;	..\COMMON\easyax5043.c:461: if (!len)
      000E79 EF               [12] 4135 	mov	a,r7
      000E7A 70 03            [24] 4136 	jnz	00290$
      000E7C 02 0B 6B         [24] 4137 	ljmp	00159$
      000E7F                       4138 00290$:
                           00044E  4139 	C$easyax5043.c$464$1$358 ==.
                                   4140 ;	..\COMMON\easyax5043.c:464: do {
      000E7F                       4141 00155$:
                           00044E  4142 	C$easyax5043.c$465$4$374 ==.
                                   4143 ;	..\COMMON\easyax5043.c:465: radio_read8(AX5043_REG_FIFODATA);	// purge FIFO
      000E7F 90 40 29         [24] 4144 	mov	dptr,#0x4029
      000E82 E0               [24] 4145 	movx	a,@dptr
                           000452  4146 	C$easyax5043.c$467$3$362 ==.
                                   4147 ;	..\COMMON\easyax5043.c:467: while (--i);
      000E83 DF FA            [24] 4148 	djnz	r7,00155$
                           000454  4149 	C$easyax5043.c$469$1$358 ==.
                                   4150 ;	..\COMMON\easyax5043.c:469: } // end switch(fifo_cmd)
      000E85 02 0B 6B         [24] 4151 	ljmp	00159$
      000E88                       4152 00162$:
                           000457  4153 	C$easyax5043.c$471$1$358 ==.
                           000457  4154 	XFeasyax5043$receive_isr$0$0 ==.
      000E88 22               [24] 4155 	ret
                                   4156 ;------------------------------------------------------------
                                   4157 ;Allocation info for local variables in function 'transmit_isr'
                                   4158 ;------------------------------------------------------------
                                   4159 ;cnt                       Allocated to registers r7 
                                   4160 ;byte                      Allocated to registers r7 
                                   4161 ;len_byte                  Allocated to registers r4 
                                   4162 ;i                         Allocated to registers r3 
                                   4163 ;byte                      Allocated to registers r6 
                                   4164 ;flags                     Allocated to registers r6 
                                   4165 ;len                       Allocated to registers r4 r5 
                                   4166 ;------------------------------------------------------------
                           000458  4167 	Feasyax5043$transmit_isr$0$0 ==.
                           000458  4168 	C$easyax5043.c$473$1$358 ==.
                                   4169 ;	..\COMMON\easyax5043.c:473: static __reentrantb void transmit_isr(void) __reentrant
                                   4170 ;	-----------------------------------------
                                   4171 ;	 function transmit_isr
                                   4172 ;	-----------------------------------------
      000E89                       4173 _transmit_isr:
                           000458  4174 	C$easyax5043.c$612$7$395 ==.
                                   4175 ;	..\COMMON\easyax5043.c:612: axradio_trxstate = trxstate_tx_waitdone;
      000E89                       4176 00226$:
                           000458  4177 	C$easyax5043.c$476$2$377 ==.
                                   4178 ;	..\COMMON\easyax5043.c:476: uint8_t cnt = radio_read8(AX5043_REG_FIFOFREE0);
      000E89 90 40 2D         [24] 4179 	mov	dptr,#0x402d
      000E8C E0               [24] 4180 	movx	a,@dptr
      000E8D FF               [12] 4181 	mov	r7,a
                           00045D  4182 	C$easyax5043.c$477$2$377 ==.
                                   4183 ;	..\COMMON\easyax5043.c:477: if (radio_read8(AX5043_REG_FIFOFREE1))
      000E8E 90 40 2C         [24] 4184 	mov	dptr,#0x402c
      000E91 E0               [24] 4185 	movx	a,@dptr
      000E92 60 02            [24] 4186 	jz	00102$
                           000463  4187 	C$easyax5043.c$478$2$377 ==.
                                   4188 ;	..\COMMON\easyax5043.c:478: cnt = 0xff;
      000E94 7F FF            [12] 4189 	mov	r7,#0xff
      000E96                       4190 00102$:
                           000465  4191 	C$easyax5043.c$479$2$377 ==.
                                   4192 ;	..\COMMON\easyax5043.c:479: switch (axradio_trxstate) {
      000E96 AE 09            [24] 4193 	mov	r6,_axradio_trxstate
      000E98 BE 0A 02         [24] 4194 	cjne	r6,#0x0a,00315$
      000E9B 80 0F            [24] 4195 	sjmp	00103$
      000E9D                       4196 00315$:
      000E9D BE 0B 03         [24] 4197 	cjne	r6,#0x0b,00316$
      000EA0 02 0F 41         [24] 4198 	ljmp	00127$
      000EA3                       4199 00316$:
      000EA3 BE 0C 03         [24] 4200 	cjne	r6,#0x0c,00317$
      000EA6 02 11 17         [24] 4201 	ljmp	00189$
      000EA9                       4202 00317$:
      000EA9 02 11 C4         [24] 4203 	ljmp	00228$
                           00047B  4204 	C$easyax5043.c$480$3$378 ==.
                                   4205 ;	..\COMMON\easyax5043.c:480: case trxstate_tx_longpreamble:
      000EAC                       4206 00103$:
                           00047B  4207 	C$easyax5043.c$481$3$378 ==.
                                   4208 ;	..\COMMON\easyax5043.c:481: if (!axradio_txbuffer_cnt) {
      000EAC 90 00 07         [24] 4209 	mov	dptr,#_axradio_txbuffer_cnt
      000EAF E0               [24] 4210 	movx	a,@dptr
      000EB0 FD               [12] 4211 	mov	r5,a
      000EB1 A3               [24] 4212 	inc	dptr
      000EB2 E0               [24] 4213 	movx	a,@dptr
      000EB3 FE               [12] 4214 	mov	r6,a
      000EB4 4D               [12] 4215 	orl	a,r5
      000EB5 70 37            [24] 4216 	jnz	00109$
                           000486  4217 	C$easyax5043.c$482$4$379 ==.
                                   4218 ;	..\COMMON\easyax5043.c:482: axradio_trxstate = trxstate_tx_shortpreamble;
      000EB7 75 09 0B         [24] 4219 	mov	_axradio_trxstate,#0x0b
                           000489  4220 	C$easyax5043.c$483$4$379 ==.
                                   4221 ;	..\COMMON\easyax5043.c:483: if( axradio_mode == AXRADIO_MODE_WOR_TRANSMIT || axradio_mode == AXRADIO_MODE_WOR_ACK_TRANSMIT )
      000EBA 74 11            [12] 4222 	mov	a,#0x11
      000EBC B5 08 02         [24] 4223 	cjne	a,_axradio_mode,00319$
      000EBF 80 05            [24] 4224 	sjmp	00104$
      000EC1                       4225 00319$:
      000EC1 74 13            [12] 4226 	mov	a,#0x13
      000EC3 B5 08 14         [24] 4227 	cjne	a,_axradio_mode,00105$
      000EC6                       4228 00104$:
                           000495  4229 	C$easyax5043.c$484$4$379 ==.
                                   4230 ;	..\COMMON\easyax5043.c:484: axradio_txbuffer_cnt = axradio_phy_preamble_wor_len;
      000EC6 90 57 0B         [24] 4231 	mov	dptr,#_axradio_phy_preamble_wor_len
      000EC9 E4               [12] 4232 	clr	a
      000ECA 93               [24] 4233 	movc	a,@a+dptr
      000ECB FB               [12] 4234 	mov	r3,a
      000ECC 74 01            [12] 4235 	mov	a,#0x01
      000ECE 93               [24] 4236 	movc	a,@a+dptr
      000ECF FC               [12] 4237 	mov	r4,a
      000ED0 90 00 07         [24] 4238 	mov	dptr,#_axradio_txbuffer_cnt
      000ED3 EB               [12] 4239 	mov	a,r3
      000ED4 F0               [24] 4240 	movx	@dptr,a
      000ED5 EC               [12] 4241 	mov	a,r4
      000ED6 A3               [24] 4242 	inc	dptr
      000ED7 F0               [24] 4243 	movx	@dptr,a
      000ED8 80 67            [24] 4244 	sjmp	00127$
      000EDA                       4245 00105$:
                           0004A9  4246 	C$easyax5043.c$486$4$379 ==.
                                   4247 ;	..\COMMON\easyax5043.c:486: axradio_txbuffer_cnt = axradio_phy_preamble_len;
      000EDA 90 57 0F         [24] 4248 	mov	dptr,#_axradio_phy_preamble_len
      000EDD E4               [12] 4249 	clr	a
      000EDE 93               [24] 4250 	movc	a,@a+dptr
      000EDF FB               [12] 4251 	mov	r3,a
      000EE0 74 01            [12] 4252 	mov	a,#0x01
      000EE2 93               [24] 4253 	movc	a,@a+dptr
      000EE3 FC               [12] 4254 	mov	r4,a
      000EE4 90 00 07         [24] 4255 	mov	dptr,#_axradio_txbuffer_cnt
      000EE7 EB               [12] 4256 	mov	a,r3
      000EE8 F0               [24] 4257 	movx	@dptr,a
      000EE9 EC               [12] 4258 	mov	a,r4
      000EEA A3               [24] 4259 	inc	dptr
      000EEB F0               [24] 4260 	movx	@dptr,a
                           0004BB  4261 	C$easyax5043.c$487$4$379 ==.
                                   4262 ;	..\COMMON\easyax5043.c:487: goto shortpreamble;
      000EEC 80 53            [24] 4263 	sjmp	00127$
      000EEE                       4264 00109$:
                           0004BD  4265 	C$easyax5043.c$489$3$378 ==.
                                   4266 ;	..\COMMON\easyax5043.c:489: if (cnt < 4)
      000EEE BF 04 00         [24] 4267 	cjne	r7,#0x04,00322$
      000EF1                       4268 00322$:
      000EF1 50 03            [24] 4269 	jnc	00323$
      000EF3 02 11 BE         [24] 4270 	ljmp	00220$
      000EF6                       4271 00323$:
                           0004C5  4272 	C$easyax5043.c$491$3$378 ==.
                                   4273 ;	..\COMMON\easyax5043.c:491: cnt = 7;
      000EF6 7F 07            [12] 4274 	mov	r7,#0x07
                           0004C7  4275 	C$easyax5043.c$492$3$378 ==.
                                   4276 ;	..\COMMON\easyax5043.c:492: if (axradio_txbuffer_cnt < 7)
      000EF8 C3               [12] 4277 	clr	c
      000EF9 ED               [12] 4278 	mov	a,r5
      000EFA 94 07            [12] 4279 	subb	a,#0x07
      000EFC EE               [12] 4280 	mov	a,r6
      000EFD 94 00            [12] 4281 	subb	a,#0x00
      000EFF 50 02            [24] 4282 	jnc	00113$
                           0004D0  4283 	C$easyax5043.c$493$3$378 ==.
                                   4284 ;	..\COMMON\easyax5043.c:493: cnt = axradio_txbuffer_cnt;
      000F01 8D 07            [24] 4285 	mov	ar7,r5
      000F03                       4286 00113$:
                           0004D2  4287 	C$easyax5043.c$494$3$378 ==.
                                   4288 ;	..\COMMON\easyax5043.c:494: axradio_txbuffer_cnt -= cnt;
      000F03 8F 05            [24] 4289 	mov	ar5,r7
      000F05 7E 00            [12] 4290 	mov	r6,#0x00
      000F07 90 00 07         [24] 4291 	mov	dptr,#_axradio_txbuffer_cnt
      000F0A E0               [24] 4292 	movx	a,@dptr
      000F0B FB               [12] 4293 	mov	r3,a
      000F0C A3               [24] 4294 	inc	dptr
      000F0D E0               [24] 4295 	movx	a,@dptr
      000F0E FC               [12] 4296 	mov	r4,a
      000F0F 90 00 07         [24] 4297 	mov	dptr,#_axradio_txbuffer_cnt
      000F12 EB               [12] 4298 	mov	a,r3
      000F13 C3               [12] 4299 	clr	c
      000F14 9D               [12] 4300 	subb	a,r5
      000F15 F0               [24] 4301 	movx	@dptr,a
      000F16 EC               [12] 4302 	mov	a,r4
      000F17 9E               [12] 4303 	subb	a,r6
      000F18 A3               [24] 4304 	inc	dptr
      000F19 F0               [24] 4305 	movx	@dptr,a
                           0004E9  4306 	C$easyax5043.c$495$3$378 ==.
                                   4307 ;	..\COMMON\easyax5043.c:495: cnt <<= 5;
      000F1A EF               [12] 4308 	mov	a,r7
      000F1B C4               [12] 4309 	swap	a
      000F1C 23               [12] 4310 	rl	a
      000F1D 54 E0            [12] 4311 	anl	a,#0xe0
      000F1F FF               [12] 4312 	mov	r7,a
                           0004EF  4313 	C$easyax5043.c$496$4$380 ==.
                                   4314 ;	..\COMMON\easyax5043.c:496: radio_write8(AX5043_REG_FIFODATA, (AX5043_FIFOCMD_REPEATDATA | (3 << 5)));
      000F20 90 40 29         [24] 4315 	mov	dptr,#0x4029
      000F23 74 62            [12] 4316 	mov	a,#0x62
      000F25 F0               [24] 4317 	movx	@dptr,a
                           0004F5  4318 	C$easyax5043.c$497$4$381 ==.
                                   4319 ;	..\COMMON\easyax5043.c:497: radio_write8(AX5043_REG_FIFODATA, axradio_phy_preamble_flags);
      000F26 90 57 12         [24] 4320 	mov	dptr,#_axradio_phy_preamble_flags
      000F29 E4               [12] 4321 	clr	a
      000F2A 93               [24] 4322 	movc	a,@a+dptr
      000F2B 90 40 29         [24] 4323 	mov	dptr,#0x4029
      000F2E F0               [24] 4324 	movx	@dptr,a
                           0004FE  4325 	C$easyax5043.c$498$4$382 ==.
                                   4326 ;	..\COMMON\easyax5043.c:498: radio_write8(AX5043_REG_FIFODATA, cnt);
      000F2F 90 40 29         [24] 4327 	mov	dptr,#0x4029
      000F32 EF               [12] 4328 	mov	a,r7
      000F33 F0               [24] 4329 	movx	@dptr,a
                           000503  4330 	C$easyax5043.c$499$4$383 ==.
                                   4331 ;	..\COMMON\easyax5043.c:499: radio_write8(AX5043_REG_FIFODATA, axradio_phy_preamble_byte);
      000F34 90 57 11         [24] 4332 	mov	dptr,#_axradio_phy_preamble_byte
      000F37 E4               [12] 4333 	clr	a
      000F38 93               [24] 4334 	movc	a,@a+dptr
      000F39 FE               [12] 4335 	mov	r6,a
      000F3A 90 40 29         [24] 4336 	mov	dptr,#0x4029
      000F3D F0               [24] 4337 	movx	@dptr,a
                           00050D  4338 	C$easyax5043.c$500$3$378 ==.
                                   4339 ;	..\COMMON\easyax5043.c:500: break;
      000F3E 02 0E 89         [24] 4340 	ljmp	00226$
                           000510  4341 	C$easyax5043.c$503$3$378 ==.
                                   4342 ;	..\COMMON\easyax5043.c:503: shortpreamble:
      000F41                       4343 00127$:
                           000510  4344 	C$easyax5043.c$504$3$378 ==.
                                   4345 ;	..\COMMON\easyax5043.c:504: if (!axradio_txbuffer_cnt) {
      000F41 90 00 07         [24] 4346 	mov	dptr,#_axradio_txbuffer_cnt
      000F44 E0               [24] 4347 	movx	a,@dptr
      000F45 FD               [12] 4348 	mov	r5,a
      000F46 A3               [24] 4349 	inc	dptr
      000F47 E0               [24] 4350 	movx	a,@dptr
      000F48 FE               [12] 4351 	mov	r6,a
      000F49 4D               [12] 4352 	orl	a,r5
      000F4A 60 03            [24] 4353 	jz	00325$
      000F4C 02 10 28         [24] 4354 	ljmp	00158$
      000F4F                       4355 00325$:
                           00051E  4356 	C$easyax5043.c$505$4$384 ==.
                                   4357 ;	..\COMMON\easyax5043.c:505: if (cnt < 15)
      000F4F BF 0F 00         [24] 4358 	cjne	r7,#0x0f,00326$
      000F52                       4359 00326$:
      000F52 50 03            [24] 4360 	jnc	00327$
      000F54 02 11 BE         [24] 4361 	ljmp	00220$
      000F57                       4362 00327$:
                           000526  4363 	C$easyax5043.c$507$4$384 ==.
                                   4364 ;	..\COMMON\easyax5043.c:507: if (axradio_phy_preamble_appendbits) {
      000F57 90 57 13         [24] 4365 	mov	dptr,#_axradio_phy_preamble_appendbits
      000F5A E4               [12] 4366 	clr	a
      000F5B 93               [24] 4367 	movc	a,@a+dptr
      000F5C FC               [12] 4368 	mov	r4,a
      000F5D 60 6F            [24] 4369 	jz	00143$
                           00052E  4370 	C$easyax5043.c$509$6$386 ==.
                                   4371 ;	..\COMMON\easyax5043.c:509: radio_write8(AX5043_REG_FIFODATA, (AX5043_FIFOCMD_DATA | (2 << 5)));
                           00052E  4372 	C$easyax5043.c$510$6$387 ==.
                                   4373 ;	..\COMMON\easyax5043.c:510: radio_write8(AX5043_REG_FIFODATA, 0x1C);
      000F5F 90 40 29         [24] 4374 	mov	dptr,#0x4029
      000F62 74 41            [12] 4375 	mov	a,#0x41
      000F64 F0               [24] 4376 	movx	@dptr,a
      000F65 74 1C            [12] 4377 	mov	a,#0x1c
      000F67 F0               [24] 4378 	movx	@dptr,a
                           000537  4379 	C$easyax5043.c$511$5$385 ==.
                                   4380 ;	..\COMMON\easyax5043.c:511: byte = axradio_phy_preamble_appendpattern;
      000F68 90 57 14         [24] 4381 	mov	dptr,#_axradio_phy_preamble_appendpattern
      000F6B E4               [12] 4382 	clr	a
      000F6C 93               [24] 4383 	movc	a,@a+dptr
      000F6D FB               [12] 4384 	mov	r3,a
      000F6E FF               [12] 4385 	mov	r7,a
                           00053E  4386 	C$easyax5043.c$512$5$385 ==.
                                   4387 ;	..\COMMON\easyax5043.c:512: if (radio_read8(AX5043_REG_PKTADDRCFG) & 0x80) {
      000F6F 90 42 00         [24] 4388 	mov	dptr,#0x4200
      000F72 E0               [24] 4389 	movx	a,@dptr
      000F73 FA               [12] 4390 	mov	r2,a
      000F74 30 E7 26         [24] 4391 	jnb	acc.7,00137$
                           000546  4392 	C$easyax5043.c$514$6$388 ==.
                                   4393 ;	..\COMMON\easyax5043.c:514: byte &= 0xFF << (8-axradio_phy_preamble_appendbits);
      000F77 74 08            [12] 4394 	mov	a,#0x08
      000F79 C3               [12] 4395 	clr	c
      000F7A 9C               [12] 4396 	subb	a,r4
      000F7B F5 F0            [12] 4397 	mov	b,a
      000F7D 05 F0            [12] 4398 	inc	b
      000F7F 74 FF            [12] 4399 	mov	a,#0xff
      000F81 80 02            [24] 4400 	sjmp	00332$
      000F83                       4401 00330$:
      000F83 25 E0            [12] 4402 	add	a,acc
      000F85                       4403 00332$:
      000F85 D5 F0 FB         [24] 4404 	djnz	b,00330$
      000F88 FA               [12] 4405 	mov	r2,a
      000F89 52 07            [12] 4406 	anl	ar7,a
                           00055A  4407 	C$easyax5043.c$515$6$388 ==.
                                   4408 ;	..\COMMON\easyax5043.c:515: byte |= 0x80 >> axradio_phy_preamble_appendbits;
      000F8B 8C F0            [24] 4409 	mov	b,r4
      000F8D 05 F0            [12] 4410 	inc	b
      000F8F 74 80            [12] 4411 	mov	a,#0x80
      000F91 80 02            [24] 4412 	sjmp	00334$
      000F93                       4413 00333$:
      000F93 C3               [12] 4414 	clr	c
      000F94 13               [12] 4415 	rrc	a
      000F95                       4416 00334$:
      000F95 D5 F0 FB         [24] 4417 	djnz	b,00333$
      000F98 FA               [12] 4418 	mov	r2,a
      000F99 42 07            [12] 4419 	orl	ar7,a
      000F9B 80 2C            [24] 4420 	sjmp	00139$
      000F9D                       4421 00137$:
                           00056C  4422 	C$easyax5043.c$518$6$389 ==.
                                   4423 ;	..\COMMON\easyax5043.c:518: byte &= 0xFF >> (8-axradio_phy_preamble_appendbits);
      000F9D 8C 02            [24] 4424 	mov	ar2,r4
      000F9F 7B 00            [12] 4425 	mov	r3,#0x00
      000FA1 74 08            [12] 4426 	mov	a,#0x08
      000FA3 C3               [12] 4427 	clr	c
      000FA4 9A               [12] 4428 	subb	a,r2
      000FA5 FA               [12] 4429 	mov	r2,a
      000FA6 E4               [12] 4430 	clr	a
      000FA7 9B               [12] 4431 	subb	a,r3
      000FA8 FB               [12] 4432 	mov	r3,a
      000FA9 8A F0            [24] 4433 	mov	b,r2
      000FAB 05 F0            [12] 4434 	inc	b
      000FAD 74 FF            [12] 4435 	mov	a,#0xff
      000FAF 80 02            [24] 4436 	sjmp	00336$
      000FB1                       4437 00335$:
      000FB1 C3               [12] 4438 	clr	c
      000FB2 13               [12] 4439 	rrc	a
      000FB3                       4440 00336$:
      000FB3 D5 F0 FB         [24] 4441 	djnz	b,00335$
      000FB6 FA               [12] 4442 	mov	r2,a
      000FB7 52 07            [12] 4443 	anl	ar7,a
                           000588  4444 	C$easyax5043.c$519$6$389 ==.
                                   4445 ;	..\COMMON\easyax5043.c:519: byte |= 0x01 << axradio_phy_preamble_appendbits;
      000FB9 8C F0            [24] 4446 	mov	b,r4
      000FBB 05 F0            [12] 4447 	inc	b
      000FBD 74 01            [12] 4448 	mov	a,#0x01
      000FBF 80 02            [24] 4449 	sjmp	00339$
      000FC1                       4450 00337$:
      000FC1 25 E0            [12] 4451 	add	a,acc
      000FC3                       4452 00339$:
      000FC3 D5 F0 FB         [24] 4453 	djnz	b,00337$
      000FC6 FC               [12] 4454 	mov	r4,a
      000FC7 42 07            [12] 4455 	orl	ar7,a
                           000598  4456 	C$easyax5043.c$521$5$385 ==.
                                   4457 ;	..\COMMON\easyax5043.c:521: radio_write8(AX5043_REG_FIFODATA, byte);
      000FC9                       4458 00139$:
      000FC9 90 40 29         [24] 4459 	mov	dptr,#0x4029
      000FCC EF               [12] 4460 	mov	a,r7
      000FCD F0               [24] 4461 	movx	@dptr,a
      000FCE                       4462 00143$:
                           00059D  4463 	C$easyax5043.c$527$4$384 ==.
                                   4464 ;	..\COMMON\easyax5043.c:527: if ((radio_read8(AX5043_REG_FRAMING) & 0x0E) == 0x06 && axradio_framing_synclen) {
      000FCE 90 40 12         [24] 4465 	mov	dptr,#0x4012
      000FD1 E0               [24] 4466 	movx	a,@dptr
      000FD2 FC               [12] 4467 	mov	r4,a
      000FD3 53 04 0E         [24] 4468 	anl	ar4,#0x0e
      000FD6 BC 06 49         [24] 4469 	cjne	r4,#0x06,00155$
      000FD9 90 57 1D         [24] 4470 	mov	dptr,#_axradio_framing_synclen
      000FDC E4               [12] 4471 	clr	a
      000FDD 93               [24] 4472 	movc	a,@a+dptr
      000FDE FC               [12] 4473 	mov	r4,a
      000FDF E4               [12] 4474 	clr	a
      000FE0 93               [24] 4475 	movc	a,@a+dptr
      000FE1 60 3F            [24] 4476 	jz	00155$
                           0005B2  4477 	C$easyax5043.c$529$5$384 ==.
                                   4478 ;	..\COMMON\easyax5043.c:529: uint8_t len_byte = axradio_framing_synclen;
                           0005B2  4479 	C$easyax5043.c$530$5$391 ==.
                                   4480 ;	..\COMMON\easyax5043.c:530: uint8_t i = (len_byte & 0x07) ? 0x04 : 0;
      000FE3 EC               [12] 4481 	mov	a,r4
      000FE4 54 07            [12] 4482 	anl	a,#0x07
      000FE6 60 02            [24] 4483 	jz	00230$
      000FE8 74 04            [12] 4484 	mov	a,#0x04
      000FEA                       4485 00230$:
      000FEA FB               [12] 4486 	mov	r3,a
                           0005BA  4487 	C$easyax5043.c$532$5$391 ==.
                                   4488 ;	..\COMMON\easyax5043.c:532: len_byte += 7;
      000FEB 74 07            [12] 4489 	mov	a,#0x07
      000FED 2C               [12] 4490 	add	a,r4
                           0005BD  4491 	C$easyax5043.c$533$5$391 ==.
                                   4492 ;	..\COMMON\easyax5043.c:533: len_byte >>= 3;
      000FEE C4               [12] 4493 	swap	a
      000FEF 23               [12] 4494 	rl	a
      000FF0 54 1F            [12] 4495 	anl	a,#0x1f
                           0005C1  4496 	C$easyax5043.c$534$6$392 ==.
                                   4497 ;	..\COMMON\easyax5043.c:534: radio_write8(AX5043_REG_FIFODATA, (AX5043_FIFOCMD_DATA | ((len_byte + 1) << 5)));
      000FF2 FC               [12] 4498 	mov	r4,a
      000FF3 04               [12] 4499 	inc	a
      000FF4 C4               [12] 4500 	swap	a
      000FF5 23               [12] 4501 	rl	a
      000FF6 54 E0            [12] 4502 	anl	a,#0xe0
      000FF8 FA               [12] 4503 	mov	r2,a
      000FF9 43 02 01         [24] 4504 	orl	ar2,#0x01
      000FFC 90 40 29         [24] 4505 	mov	dptr,#0x4029
      000FFF EA               [12] 4506 	mov	a,r2
      001000 F0               [24] 4507 	movx	@dptr,a
                           0005D0  4508 	C$easyax5043.c$535$6$393 ==.
                                   4509 ;	..\COMMON\easyax5043.c:535: radio_write8(AX5043_REG_FIFODATA, axradio_framing_syncflags | i);
      001001 90 57 22         [24] 4510 	mov	dptr,#_axradio_framing_syncflags
      001004 E4               [12] 4511 	clr	a
      001005 93               [24] 4512 	movc	a,@a+dptr
      001006 FA               [12] 4513 	mov	r2,a
      001007 42 03            [12] 4514 	orl	ar3,a
      001009 90 40 29         [24] 4515 	mov	dptr,#0x4029
      00100C EB               [12] 4516 	mov	a,r3
      00100D F0               [24] 4517 	movx	@dptr,a
                           0005DD  4518 	C$easyax5043.c$536$1$376 ==.
                                   4519 ;	..\COMMON\easyax5043.c:536: for (i = 0; i < len_byte; ++i) {
      00100E 7B 00            [12] 4520 	mov	r3,#0x00
      001010                       4521 00224$:
      001010 C3               [12] 4522 	clr	c
      001011 EB               [12] 4523 	mov	a,r3
      001012 9C               [12] 4524 	subb	a,r4
      001013 50 0D            [24] 4525 	jnc	00155$
                           0005E4  4526 	C$easyax5043.c$538$7$395 ==.
                                   4527 ;	..\COMMON\easyax5043.c:538: radio_write8(AX5043_REG_FIFODATA, axradio_framing_syncword[i]);
      001015 EB               [12] 4528 	mov	a,r3
      001016 90 57 1E         [24] 4529 	mov	dptr,#_axradio_framing_syncword
      001019 93               [24] 4530 	movc	a,@a+dptr
      00101A FA               [12] 4531 	mov	r2,a
      00101B 90 40 29         [24] 4532 	mov	dptr,#0x4029
      00101E F0               [24] 4533 	movx	@dptr,a
                           0005EE  4534 	C$easyax5043.c$536$5$391 ==.
                                   4535 ;	..\COMMON\easyax5043.c:536: for (i = 0; i < len_byte; ++i) {
      00101F 0B               [12] 4536 	inc	r3
      001020 80 EE            [24] 4537 	sjmp	00224$
      001022                       4538 00155$:
                           0005F1  4539 	C$easyax5043.c$545$4$384 ==.
                                   4540 ;	..\COMMON\easyax5043.c:545: axradio_trxstate = trxstate_tx_packet;
      001022 75 09 0C         [24] 4541 	mov	_axradio_trxstate,#0x0c
                           0005F4  4542 	C$easyax5043.c$546$4$384 ==.
                                   4543 ;	..\COMMON\easyax5043.c:546: break;
      001025 02 0E 89         [24] 4544 	ljmp	00226$
      001028                       4545 00158$:
                           0005F7  4546 	C$easyax5043.c$548$3$378 ==.
                                   4547 ;	..\COMMON\easyax5043.c:548: if (cnt < 4)
      001028 BF 04 00         [24] 4548 	cjne	r7,#0x04,00345$
      00102B                       4549 00345$:
      00102B 50 03            [24] 4550 	jnc	00346$
      00102D 02 11 BE         [24] 4551 	ljmp	00220$
      001030                       4552 00346$:
                           0005FF  4553 	C$easyax5043.c$550$3$378 ==.
                                   4554 ;	..\COMMON\easyax5043.c:550: cnt = 255;
      001030 7F FF            [12] 4555 	mov	r7,#0xff
                           000601  4556 	C$easyax5043.c$551$3$378 ==.
                                   4557 ;	..\COMMON\easyax5043.c:551: if (axradio_txbuffer_cnt < 255*8)
      001032 C3               [12] 4558 	clr	c
      001033 ED               [12] 4559 	mov	a,r5
      001034 94 F8            [12] 4560 	subb	a,#0xf8
      001036 EE               [12] 4561 	mov	a,r6
      001037 94 07            [12] 4562 	subb	a,#0x07
      001039 50 12            [24] 4563 	jnc	00162$
                           00060A  4564 	C$easyax5043.c$552$3$378 ==.
                                   4565 ;	..\COMMON\easyax5043.c:552: cnt = axradio_txbuffer_cnt >> 3;
      00103B EE               [12] 4566 	mov	a,r6
      00103C C4               [12] 4567 	swap	a
      00103D 23               [12] 4568 	rl	a
      00103E CD               [12] 4569 	xch	a,r5
      00103F C4               [12] 4570 	swap	a
      001040 23               [12] 4571 	rl	a
      001041 54 1F            [12] 4572 	anl	a,#0x1f
      001043 6D               [12] 4573 	xrl	a,r5
      001044 CD               [12] 4574 	xch	a,r5
      001045 54 1F            [12] 4575 	anl	a,#0x1f
      001047 CD               [12] 4576 	xch	a,r5
      001048 6D               [12] 4577 	xrl	a,r5
      001049 CD               [12] 4578 	xch	a,r5
      00104A FE               [12] 4579 	mov	r6,a
      00104B 8D 07            [24] 4580 	mov	ar7,r5
      00104D                       4581 00162$:
                           00061C  4582 	C$easyax5043.c$553$3$378 ==.
                                   4583 ;	..\COMMON\easyax5043.c:553: if (cnt) {
      00104D EF               [12] 4584 	mov	a,r7
      00104E 60 45            [24] 4585 	jz	00176$
                           00061F  4586 	C$easyax5043.c$554$4$396 ==.
                                   4587 ;	..\COMMON\easyax5043.c:554: axradio_txbuffer_cnt -= ((uint16_t)cnt) << 3;
      001050 8F 05            [24] 4588 	mov	ar5,r7
      001052 E4               [12] 4589 	clr	a
      001053 03               [12] 4590 	rr	a
      001054 54 F8            [12] 4591 	anl	a,#0xf8
      001056 CD               [12] 4592 	xch	a,r5
      001057 C4               [12] 4593 	swap	a
      001058 03               [12] 4594 	rr	a
      001059 CD               [12] 4595 	xch	a,r5
      00105A 6D               [12] 4596 	xrl	a,r5
      00105B CD               [12] 4597 	xch	a,r5
      00105C 54 F8            [12] 4598 	anl	a,#0xf8
      00105E CD               [12] 4599 	xch	a,r5
      00105F 6D               [12] 4600 	xrl	a,r5
      001060 FE               [12] 4601 	mov	r6,a
      001061 90 00 07         [24] 4602 	mov	dptr,#_axradio_txbuffer_cnt
      001064 E0               [24] 4603 	movx	a,@dptr
      001065 FB               [12] 4604 	mov	r3,a
      001066 A3               [24] 4605 	inc	dptr
      001067 E0               [24] 4606 	movx	a,@dptr
      001068 FC               [12] 4607 	mov	r4,a
      001069 90 00 07         [24] 4608 	mov	dptr,#_axradio_txbuffer_cnt
      00106C EB               [12] 4609 	mov	a,r3
      00106D C3               [12] 4610 	clr	c
      00106E 9D               [12] 4611 	subb	a,r5
      00106F F0               [24] 4612 	movx	@dptr,a
      001070 EC               [12] 4613 	mov	a,r4
      001071 9E               [12] 4614 	subb	a,r6
      001072 A3               [24] 4615 	inc	dptr
      001073 F0               [24] 4616 	movx	@dptr,a
                           000643  4617 	C$easyax5043.c$555$5$397 ==.
                                   4618 ;	..\COMMON\easyax5043.c:555: radio_write8(AX5043_REG_FIFODATA, (AX5043_FIFOCMD_REPEATDATA | (3 << 5)));
      001074 90 40 29         [24] 4619 	mov	dptr,#0x4029
      001077 74 62            [12] 4620 	mov	a,#0x62
      001079 F0               [24] 4621 	movx	@dptr,a
                           000649  4622 	C$easyax5043.c$556$5$398 ==.
                                   4623 ;	..\COMMON\easyax5043.c:556: radio_write8(AX5043_REG_FIFODATA, axradio_phy_preamble_flags);
      00107A 90 57 12         [24] 4624 	mov	dptr,#_axradio_phy_preamble_flags
      00107D E4               [12] 4625 	clr	a
      00107E 93               [24] 4626 	movc	a,@a+dptr
      00107F 90 40 29         [24] 4627 	mov	dptr,#0x4029
      001082 F0               [24] 4628 	movx	@dptr,a
                           000652  4629 	C$easyax5043.c$557$5$399 ==.
                                   4630 ;	..\COMMON\easyax5043.c:557: radio_write8(AX5043_REG_FIFODATA, cnt);
      001083 90 40 29         [24] 4631 	mov	dptr,#0x4029
      001086 EF               [12] 4632 	mov	a,r7
      001087 F0               [24] 4633 	movx	@dptr,a
                           000657  4634 	C$easyax5043.c$558$5$400 ==.
                                   4635 ;	..\COMMON\easyax5043.c:558: radio_write8(AX5043_REG_FIFODATA, axradio_phy_preamble_byte);
      001088 90 57 11         [24] 4636 	mov	dptr,#_axradio_phy_preamble_byte
      00108B E4               [12] 4637 	clr	a
      00108C 93               [24] 4638 	movc	a,@a+dptr
      00108D FE               [12] 4639 	mov	r6,a
      00108E 90 40 29         [24] 4640 	mov	dptr,#0x4029
      001091 F0               [24] 4641 	movx	@dptr,a
                           000661  4642 	C$easyax5043.c$559$4$396 ==.
                                   4643 ;	..\COMMON\easyax5043.c:559: break;
      001092 02 0E 89         [24] 4644 	ljmp	00226$
      001095                       4645 00176$:
                           000664  4646 	C$easyax5043.c$562$4$378 ==.
                                   4647 ;	..\COMMON\easyax5043.c:562: uint8_t byte = axradio_phy_preamble_byte;
      001095 90 57 11         [24] 4648 	mov	dptr,#_axradio_phy_preamble_byte
      001098 E4               [12] 4649 	clr	a
      001099 93               [24] 4650 	movc	a,@a+dptr
      00109A FE               [12] 4651 	mov	r6,a
                           00066A  4652 	C$easyax5043.c$563$4$401 ==.
                                   4653 ;	..\COMMON\easyax5043.c:563: cnt = axradio_txbuffer_cnt;
      00109B 90 00 07         [24] 4654 	mov	dptr,#_axradio_txbuffer_cnt
      00109E E0               [24] 4655 	movx	a,@dptr
      00109F FC               [12] 4656 	mov	r4,a
      0010A0 A3               [24] 4657 	inc	dptr
      0010A1 E0               [24] 4658 	movx	a,@dptr
      0010A2 8C 07            [24] 4659 	mov	ar7,r4
                           000673  4660 	C$easyax5043.c$564$4$401 ==.
                                   4661 ;	..\COMMON\easyax5043.c:564: axradio_txbuffer_cnt = 0;
      0010A4 90 00 07         [24] 4662 	mov	dptr,#_axradio_txbuffer_cnt
      0010A7 E4               [12] 4663 	clr	a
      0010A8 F0               [24] 4664 	movx	@dptr,a
      0010A9 A3               [24] 4665 	inc	dptr
      0010AA F0               [24] 4666 	movx	@dptr,a
                           00067A  4667 	C$easyax5043.c$565$5$402 ==.
                                   4668 ;	..\COMMON\easyax5043.c:565: radio_write8(AX5043_REG_FIFODATA, (AX5043_FIFOCMD_DATA | (2 << 5)));
                           00067A  4669 	C$easyax5043.c$566$5$403 ==.
                                   4670 ;	..\COMMON\easyax5043.c:566: radio_write8(AX5043_REG_FIFODATA, 0x1C);
      0010AB 90 40 29         [24] 4671 	mov	dptr,#0x4029
      0010AE 74 41            [12] 4672 	mov	a,#0x41
      0010B0 F0               [24] 4673 	movx	@dptr,a
      0010B1 74 1C            [12] 4674 	mov	a,#0x1c
      0010B3 F0               [24] 4675 	movx	@dptr,a
                           000683  4676 	C$easyax5043.c$567$4$401 ==.
                                   4677 ;	..\COMMON\easyax5043.c:567: if (radio_read8(AX5043_REG_PKTADDRCFG) & 0x80) {
      0010B4 90 42 00         [24] 4678 	mov	dptr,#0x4200
      0010B7 E0               [24] 4679 	movx	a,@dptr
      0010B8 FD               [12] 4680 	mov	r5,a
      0010B9 30 E7 27         [24] 4681 	jnb	acc.7,00184$
                           00068B  4682 	C$easyax5043.c$569$5$404 ==.
                                   4683 ;	..\COMMON\easyax5043.c:569: byte &= 0xFF << (8-cnt);
      0010BC 74 08            [12] 4684 	mov	a,#0x08
      0010BE C3               [12] 4685 	clr	c
      0010BF 9F               [12] 4686 	subb	a,r7
      0010C0 FD               [12] 4687 	mov	r5,a
      0010C1 8D F0            [24] 4688 	mov	b,r5
      0010C3 05 F0            [12] 4689 	inc	b
      0010C5 74 FF            [12] 4690 	mov	a,#0xff
      0010C7 80 02            [24] 4691 	sjmp	00352$
      0010C9                       4692 00350$:
      0010C9 25 E0            [12] 4693 	add	a,acc
      0010CB                       4694 00352$:
      0010CB D5 F0 FB         [24] 4695 	djnz	b,00350$
      0010CE FD               [12] 4696 	mov	r5,a
      0010CF 52 06            [12] 4697 	anl	ar6,a
                           0006A0  4698 	C$easyax5043.c$570$5$404 ==.
                                   4699 ;	..\COMMON\easyax5043.c:570: byte |= 0x80 >> cnt;
      0010D1 8F F0            [24] 4700 	mov	b,r7
      0010D3 05 F0            [12] 4701 	inc	b
      0010D5 74 80            [12] 4702 	mov	a,#0x80
      0010D7 80 02            [24] 4703 	sjmp	00354$
      0010D9                       4704 00353$:
      0010D9 C3               [12] 4705 	clr	c
      0010DA 13               [12] 4706 	rrc	a
      0010DB                       4707 00354$:
      0010DB D5 F0 FB         [24] 4708 	djnz	b,00353$
      0010DE FD               [12] 4709 	mov	r5,a
      0010DF 42 06            [12] 4710 	orl	ar6,a
      0010E1 80 2C            [24] 4711 	sjmp	00186$
      0010E3                       4712 00184$:
                           0006B2  4713 	C$easyax5043.c$573$5$405 ==.
                                   4714 ;	..\COMMON\easyax5043.c:573: byte &= 0xFF >> (8-cnt);
      0010E3 8F 04            [24] 4715 	mov	ar4,r7
      0010E5 7D 00            [12] 4716 	mov	r5,#0x00
      0010E7 74 08            [12] 4717 	mov	a,#0x08
      0010E9 C3               [12] 4718 	clr	c
      0010EA 9C               [12] 4719 	subb	a,r4
      0010EB FC               [12] 4720 	mov	r4,a
      0010EC E4               [12] 4721 	clr	a
      0010ED 9D               [12] 4722 	subb	a,r5
      0010EE FD               [12] 4723 	mov	r5,a
      0010EF 8C F0            [24] 4724 	mov	b,r4
      0010F1 05 F0            [12] 4725 	inc	b
      0010F3 74 FF            [12] 4726 	mov	a,#0xff
      0010F5 80 02            [24] 4727 	sjmp	00356$
      0010F7                       4728 00355$:
      0010F7 C3               [12] 4729 	clr	c
      0010F8 13               [12] 4730 	rrc	a
      0010F9                       4731 00356$:
      0010F9 D5 F0 FB         [24] 4732 	djnz	b,00355$
      0010FC FC               [12] 4733 	mov	r4,a
      0010FD 52 06            [12] 4734 	anl	ar6,a
                           0006CE  4735 	C$easyax5043.c$574$5$405 ==.
                                   4736 ;	..\COMMON\easyax5043.c:574: byte |= 0x01 << cnt;
      0010FF 8F F0            [24] 4737 	mov	b,r7
      001101 05 F0            [12] 4738 	inc	b
      001103 74 01            [12] 4739 	mov	a,#0x01
      001105 80 02            [24] 4740 	sjmp	00359$
      001107                       4741 00357$:
      001107 25 E0            [12] 4742 	add	a,acc
      001109                       4743 00359$:
      001109 D5 F0 FB         [24] 4744 	djnz	b,00357$
      00110C FD               [12] 4745 	mov	r5,a
      00110D 42 06            [12] 4746 	orl	ar6,a
                           0006DE  4747 	C$easyax5043.c$576$4$401 ==.
                                   4748 ;	..\COMMON\easyax5043.c:576: radio_write8(AX5043_REG_FIFODATA, byte);
      00110F                       4749 00186$:
      00110F 90 40 29         [24] 4750 	mov	dptr,#0x4029
      001112 EE               [12] 4751 	mov	a,r6
      001113 F0               [24] 4752 	movx	@dptr,a
                           0006E3  4753 	C$easyax5043.c$578$3$378 ==.
                                   4754 ;	..\COMMON\easyax5043.c:578: break;
      001114 02 0E 89         [24] 4755 	ljmp	00226$
                           0006E6  4756 	C$easyax5043.c$580$3$378 ==.
                                   4757 ;	..\COMMON\easyax5043.c:580: case trxstate_tx_packet:
      001117                       4758 00189$:
                           0006E6  4759 	C$easyax5043.c$581$3$378 ==.
                                   4760 ;	..\COMMON\easyax5043.c:581: if (cnt < 11)
      001117 BF 0B 00         [24] 4761 	cjne	r7,#0x0b,00360$
      00111A                       4762 00360$:
      00111A 50 03            [24] 4763 	jnc	00361$
      00111C 02 11 BE         [24] 4764 	ljmp	00220$
      00111F                       4765 00361$:
                           0006EE  4766 	C$easyax5043.c$584$4$378 ==.
                                   4767 ;	..\COMMON\easyax5043.c:584: uint8_t flags = 0;
      00111F 7E 00            [12] 4768 	mov	r6,#0x00
                           0006F0  4769 	C$easyax5043.c$585$4$407 ==.
                                   4770 ;	..\COMMON\easyax5043.c:585: if (!axradio_txbuffer_cnt)
      001121 90 00 07         [24] 4771 	mov	dptr,#_axradio_txbuffer_cnt
      001124 E0               [24] 4772 	movx	a,@dptr
      001125 F5 F0            [12] 4773 	mov	b,a
      001127 A3               [24] 4774 	inc	dptr
      001128 E0               [24] 4775 	movx	a,@dptr
      001129 45 F0            [12] 4776 	orl	a,b
      00112B 70 02            [24] 4777 	jnz	00193$
                           0006FC  4778 	C$easyax5043.c$586$4$407 ==.
                                   4779 ;	..\COMMON\easyax5043.c:586: flags |= 0x01; // flag byte: pkt_start
      00112D 7E 01            [12] 4780 	mov	r6,#0x01
      00112F                       4781 00193$:
                           0006FE  4782 	C$easyax5043.c$588$5$408 ==.
                                   4783 ;	..\COMMON\easyax5043.c:588: uint16_t len = axradio_txbuffer_len - axradio_txbuffer_cnt;
      00112F 90 00 07         [24] 4784 	mov	dptr,#_axradio_txbuffer_cnt
      001132 E0               [24] 4785 	movx	a,@dptr
      001133 FC               [12] 4786 	mov	r4,a
      001134 A3               [24] 4787 	inc	dptr
      001135 E0               [24] 4788 	movx	a,@dptr
      001136 FD               [12] 4789 	mov	r5,a
      001137 90 00 05         [24] 4790 	mov	dptr,#_axradio_txbuffer_len
      00113A E0               [24] 4791 	movx	a,@dptr
      00113B FA               [12] 4792 	mov	r2,a
      00113C A3               [24] 4793 	inc	dptr
      00113D E0               [24] 4794 	movx	a,@dptr
      00113E FB               [12] 4795 	mov	r3,a
      00113F EA               [12] 4796 	mov	a,r2
      001140 C3               [12] 4797 	clr	c
      001141 9C               [12] 4798 	subb	a,r4
      001142 FC               [12] 4799 	mov	r4,a
      001143 EB               [12] 4800 	mov	a,r3
      001144 9D               [12] 4801 	subb	a,r5
      001145 FD               [12] 4802 	mov	r5,a
                           000715  4803 	C$easyax5043.c$589$5$408 ==.
                                   4804 ;	..\COMMON\easyax5043.c:589: cnt -= 3;
      001146 1F               [12] 4805 	dec	r7
      001147 1F               [12] 4806 	dec	r7
      001148 1F               [12] 4807 	dec	r7
                           000718  4808 	C$easyax5043.c$590$5$408 ==.
                                   4809 ;	..\COMMON\easyax5043.c:590: if (cnt >= len) {
      001149 8F 02            [24] 4810 	mov	ar2,r7
      00114B 7B 00            [12] 4811 	mov	r3,#0x00
      00114D C3               [12] 4812 	clr	c
      00114E EA               [12] 4813 	mov	a,r2
      00114F 9C               [12] 4814 	subb	a,r4
      001150 EB               [12] 4815 	mov	a,r3
      001151 9D               [12] 4816 	subb	a,r5
      001152 40 05            [24] 4817 	jc	00195$
                           000723  4818 	C$easyax5043.c$591$6$409 ==.
                                   4819 ;	..\COMMON\easyax5043.c:591: cnt = len;
      001154 8C 07            [24] 4820 	mov	ar7,r4
                           000725  4821 	C$easyax5043.c$592$6$409 ==.
                                   4822 ;	..\COMMON\easyax5043.c:592: flags |= 0x02; // flag byte: pkt_end
      001156 43 06 02         [24] 4823 	orl	ar6,#0x02
      001159                       4824 00195$:
                           000728  4825 	C$easyax5043.c$595$4$407 ==.
                                   4826 ;	..\COMMON\easyax5043.c:595: if (!cnt)
      001159 EF               [12] 4827 	mov	a,r7
      00115A 60 53            [24] 4828 	jz	00212$
                           00072B  4829 	C$easyax5043.c$597$5$410 ==.
                                   4830 ;	..\COMMON\easyax5043.c:597: radio_write8(AX5043_REG_FIFODATA, AX5043_FIFOCMD_DATA | (7 << 5));
      00115C 90 40 29         [24] 4831 	mov	dptr,#0x4029
      00115F 74 E1            [12] 4832 	mov	a,#0xe1
      001161 F0               [24] 4833 	movx	@dptr,a
                           000731  4834 	C$easyax5043.c$598$5$411 ==.
                                   4835 ;	..\COMMON\easyax5043.c:598: radio_write8(AX5043_REG_FIFODATA, (cnt + 1)); // write FIFO chunk length byte (length includes the flag byte, thus the +1)
      001162 EF               [12] 4836 	mov	a,r7
      001163 04               [12] 4837 	inc	a
      001164 90 40 29         [24] 4838 	mov	dptr,#0x4029
      001167 F0               [24] 4839 	movx	@dptr,a
                           000737  4840 	C$easyax5043.c$599$5$412 ==.
                                   4841 ;	..\COMMON\easyax5043.c:599: radio_write8(AX5043_REG_FIFODATA, flags);
      001168 90 40 29         [24] 4842 	mov	dptr,#0x4029
      00116B EE               [12] 4843 	mov	a,r6
      00116C F0               [24] 4844 	movx	@dptr,a
                           00073C  4845 	C$easyax5043.c$600$4$407 ==.
                                   4846 ;	..\COMMON\easyax5043.c:600: ax5043_writefifo(&axradio_txbuffer[axradio_txbuffer_cnt], cnt);
      00116D 90 00 07         [24] 4847 	mov	dptr,#_axradio_txbuffer_cnt
      001170 E0               [24] 4848 	movx	a,@dptr
      001171 FC               [12] 4849 	mov	r4,a
      001172 A3               [24] 4850 	inc	dptr
      001173 E0               [24] 4851 	movx	a,@dptr
      001174 FD               [12] 4852 	mov	r5,a
      001175 EC               [12] 4853 	mov	a,r4
      001176 24 2D            [12] 4854 	add	a,#_axradio_txbuffer
      001178 FC               [12] 4855 	mov	r4,a
      001179 ED               [12] 4856 	mov	a,r5
      00117A 34 00            [12] 4857 	addc	a,#(_axradio_txbuffer >> 8)
      00117C FD               [12] 4858 	mov	r5,a
      00117D 7B 00            [12] 4859 	mov	r3,#0x00
      00117F C0 07            [24] 4860 	push	ar7
      001181 C0 06            [24] 4861 	push	ar6
      001183 C0 07            [24] 4862 	push	ar7
      001185 8C 82            [24] 4863 	mov	dpl,r4
      001187 8D 83            [24] 4864 	mov	dph,r5
      001189 8B F0            [24] 4865 	mov	b,r3
      00118B 12 52 D2         [24] 4866 	lcall	_ax5043_writefifo
      00118E 15 81            [12] 4867 	dec	sp
      001190 D0 06            [24] 4868 	pop	ar6
      001192 D0 07            [24] 4869 	pop	ar7
                           000763  4870 	C$easyax5043.c$601$4$407 ==.
                                   4871 ;	..\COMMON\easyax5043.c:601: axradio_txbuffer_cnt += cnt;
      001194 7D 00            [12] 4872 	mov	r5,#0x00
      001196 90 00 07         [24] 4873 	mov	dptr,#_axradio_txbuffer_cnt
      001199 E0               [24] 4874 	movx	a,@dptr
      00119A FB               [12] 4875 	mov	r3,a
      00119B A3               [24] 4876 	inc	dptr
      00119C E0               [24] 4877 	movx	a,@dptr
      00119D FC               [12] 4878 	mov	r4,a
      00119E 90 00 07         [24] 4879 	mov	dptr,#_axradio_txbuffer_cnt
      0011A1 EF               [12] 4880 	mov	a,r7
      0011A2 2B               [12] 4881 	add	a,r3
      0011A3 F0               [24] 4882 	movx	@dptr,a
      0011A4 ED               [12] 4883 	mov	a,r5
      0011A5 3C               [12] 4884 	addc	a,r4
      0011A6 A3               [24] 4885 	inc	dptr
      0011A7 F0               [24] 4886 	movx	@dptr,a
                           000777  4887 	C$easyax5043.c$602$4$407 ==.
                                   4888 ;	..\COMMON\easyax5043.c:602: if (flags & 0x02)
      0011A8 EE               [12] 4889 	mov	a,r6
      0011A9 20 E1 03         [24] 4890 	jb	acc.1,00212$
                           00077B  4891 	C$easyax5043.c$603$4$407 ==.
                                   4892 ;	..\COMMON\easyax5043.c:603: goto pktend;
                           00077B  4893 	C$easyax5043.c$607$3$378 ==.
                                   4894 ;	..\COMMON\easyax5043.c:607: default:
                           00077B  4895 	C$easyax5043.c$608$3$378 ==.
                                   4896 ;	..\COMMON\easyax5043.c:608: return;
                           00077B  4897 	C$easyax5043.c$611$1$376 ==.
                                   4898 ;	..\COMMON\easyax5043.c:611: pktend:
      0011AC 02 0E 89         [24] 4899 	ljmp	00226$
      0011AF                       4900 00212$:
                           00077E  4901 	C$easyax5043.c$612$1$376 ==.
                                   4902 ;	..\COMMON\easyax5043.c:612: axradio_trxstate = trxstate_tx_waitdone;
      0011AF 75 09 0D         [24] 4903 	mov	_axradio_trxstate,#0x0d
                           000781  4904 	C$easyax5043.c$613$2$413 ==.
                                   4905 ;	..\COMMON\easyax5043.c:613: radio_write8(AX5043_REG_RADIOEVENTMASK0, 0x01); // enable REVRDONE event
      0011B2 90 40 09         [24] 4906 	mov	dptr,#0x4009
      0011B5 74 01            [12] 4907 	mov	a,#0x01
      0011B7 F0               [24] 4908 	movx	@dptr,a
                           000787  4909 	C$easyax5043.c$614$2$414 ==.
                                   4910 ;	..\COMMON\easyax5043.c:614: radio_write8(AX5043_REG_IRQMASK0, 0x40); // enable radio controller irq
      0011B8 90 40 07         [24] 4911 	mov	dptr,#0x4007
      0011BB 74 40            [12] 4912 	mov	a,#0x40
      0011BD F0               [24] 4913 	movx	@dptr,a
                           00078D  4914 	C$easyax5043.c$616$1$376 ==.
                                   4915 ;	..\COMMON\easyax5043.c:616: radio_write8(AX5043_REG_FIFOSTAT, 4); // commit
      0011BE                       4916 00220$:
      0011BE 90 40 28         [24] 4917 	mov	dptr,#0x4028
      0011C1 74 04            [12] 4918 	mov	a,#0x04
      0011C3 F0               [24] 4919 	movx	@dptr,a
      0011C4                       4920 00228$:
                           000793  4921 	C$easyax5043.c$617$1$376 ==.
                           000793  4922 	XFeasyax5043$transmit_isr$0$0 ==.
      0011C4 22               [24] 4923 	ret
                                   4924 ;------------------------------------------------------------
                                   4925 ;Allocation info for local variables in function 'axradio_isr'
                                   4926 ;------------------------------------------------------------
                                   4927 ;radioStateTemp            Allocated to registers 
                                   4928 ;evt                       Allocated to registers r7 
                                   4929 ;------------------------------------------------------------
                           000794  4930 	G$axradio_isr$0$0 ==.
                           000794  4931 	C$easyax5043.c$620$1$376 ==.
                                   4932 ;	..\COMMON\easyax5043.c:620: void axradio_isr(void) __interrupt INT_RADIO
                                   4933 ;	-----------------------------------------
                                   4934 ;	 function axradio_isr
                                   4935 ;	-----------------------------------------
      0011C5                       4936 _axradio_isr:
      0011C5 C0 21            [24] 4937 	push	bits
      0011C7 C0 E0            [24] 4938 	push	acc
      0011C9 C0 F0            [24] 4939 	push	b
      0011CB C0 82            [24] 4940 	push	dpl
      0011CD C0 83            [24] 4941 	push	dph
      0011CF C0 07            [24] 4942 	push	(0+7)
      0011D1 C0 06            [24] 4943 	push	(0+6)
      0011D3 C0 05            [24] 4944 	push	(0+5)
      0011D5 C0 04            [24] 4945 	push	(0+4)
      0011D7 C0 03            [24] 4946 	push	(0+3)
      0011D9 C0 02            [24] 4947 	push	(0+2)
      0011DB C0 01            [24] 4948 	push	(0+1)
      0011DD C0 00            [24] 4949 	push	(0+0)
      0011DF C0 D0            [24] 4950 	push	psw
      0011E1 75 D0 00         [24] 4951 	mov	psw,#0x00
                           0007B3  4952 	C$easyax5043.c$633$1$417 ==.
                                   4953 ;	..\COMMON\easyax5043.c:633: switch (axradio_trxstate) {
      0011E4 E5 09            [12] 4954 	mov	a,_axradio_trxstate
      0011E6 FF               [12] 4955 	mov	r7,a
      0011E7 24 EF            [12] 4956 	add	a,#0xff - 0x10
      0011E9 50 03            [24] 4957 	jnc	00349$
      0011EB 02 12 21         [24] 4958 	ljmp	00102$
      0011EE                       4959 00349$:
      0011EE EF               [12] 4960 	mov	a,r7
      0011EF F5 F0            [12] 4961 	mov	b,a
      0011F1 24 0B            [12] 4962 	add	a,#(00350$-3-.)
      0011F3 83               [24] 4963 	movc	a,@a+pc
      0011F4 F5 82            [12] 4964 	mov	dpl,a
      0011F6 E5 F0            [12] 4965 	mov	a,b
      0011F8 24 15            [12] 4966 	add	a,#(00351$-3-.)
      0011FA 83               [24] 4967 	movc	a,@a+pc
      0011FB F5 83            [12] 4968 	mov	dph,a
      0011FD E4               [12] 4969 	clr	a
      0011FE 73               [24] 4970 	jmp	@a+dptr
      0011FF                       4971 00350$:
      0011FF 21                    4972 	.db	00101$
      001200 D8                    4973 	.db	00258$
      001201 84                    4974 	.db	00227$
      001202 2D                    4975 	.db	00108$
      001203 21                    4976 	.db	00101$
      001204 38                    4977 	.db	00112$
      001205 21                    4978 	.db	00101$
      001206 43                    4979 	.db	00116$
      001207 21                    4980 	.db	00101$
      001208 4E                    4981 	.db	00120$
      001209 E1                    4982 	.db	00153$
      00120A E1                    4983 	.db	00154$
      00120B E1                    4984 	.db	00155$
      00120C E7                    4985 	.db	00156$
      00120D 1B                    4986 	.db	00186$
      00120E 60                    4987 	.db	00196$
      00120F 88                    4988 	.db	00211$
      001210                       4989 00351$:
      001210 12                    4990 	.db	00101$>>8
      001211 15                    4991 	.db	00258$>>8
      001212 15                    4992 	.db	00227$>>8
      001213 12                    4993 	.db	00108$>>8
      001214 12                    4994 	.db	00101$>>8
      001215 12                    4995 	.db	00112$>>8
      001216 12                    4996 	.db	00101$>>8
      001217 12                    4997 	.db	00116$>>8
      001218 12                    4998 	.db	00101$>>8
      001219 12                    4999 	.db	00120$>>8
      00121A 12                    5000 	.db	00153$>>8
      00121B 12                    5001 	.db	00154$>>8
      00121C 12                    5002 	.db	00155$>>8
      00121D 12                    5003 	.db	00156$>>8
      00121E 14                    5004 	.db	00186$>>8
      00121F 14                    5005 	.db	00196$>>8
      001220 14                    5006 	.db	00211$>>8
                           0007F0  5007 	C$easyax5043.c$634$2$418 ==.
                                   5008 ;	..\COMMON\easyax5043.c:634: default:
      001221                       5009 00101$:
                           0007F0  5010 	C$easyax5043.c$635$2$418 ==.
                                   5011 ;	..\COMMON\easyax5043.c:635: radio_write8(AX5043_REG_IRQMASK1, 0x00);
      001221                       5012 00102$:
      001221 90 40 06         [24] 5013 	mov	dptr,#0x4006
      001224 E4               [12] 5014 	clr	a
      001225 F0               [24] 5015 	movx	@dptr,a
                           0007F5  5016 	C$easyax5043.c$636$3$420 ==.
                                   5017 ;	..\COMMON\easyax5043.c:636: radio_write8(AX5043_REG_IRQMASK0, 0x00);
      001226 90 40 07         [24] 5018 	mov	dptr,#0x4007
      001229 F0               [24] 5019 	movx	@dptr,a
                           0007F9  5020 	C$easyax5043.c$637$2$418 ==.
                                   5021 ;	..\COMMON\easyax5043.c:637: break;
      00122A 02 15 DB         [24] 5022 	ljmp	00260$
                           0007FC  5023 	C$easyax5043.c$639$2$418 ==.
                                   5024 ;	..\COMMON\easyax5043.c:639: case trxstate_wait_xtal:
      00122D                       5025 00108$:
                           0007FC  5026 	C$easyax5043.c$640$3$421 ==.
                                   5027 ;	..\COMMON\easyax5043.c:640: radio_write8(AX5043_REG_IRQMASK1, 0x00); // otherwise crystal ready will fire all over again
      00122D 90 40 06         [24] 5028 	mov	dptr,#0x4006
      001230 E4               [12] 5029 	clr	a
      001231 F0               [24] 5030 	movx	@dptr,a
                           000801  5031 	C$easyax5043.c$641$2$418 ==.
                                   5032 ;	..\COMMON\easyax5043.c:641: axradio_trxstate = trxstate_xtal_ready;
      001232 75 09 04         [24] 5033 	mov	_axradio_trxstate,#0x04
                           000804  5034 	C$easyax5043.c$642$2$418 ==.
                                   5035 ;	..\COMMON\easyax5043.c:642: break;
      001235 02 15 DB         [24] 5036 	ljmp	00260$
                           000807  5037 	C$easyax5043.c$644$2$418 ==.
                                   5038 ;	..\COMMON\easyax5043.c:644: case trxstate_pll_ranging:
      001238                       5039 00112$:
                           000807  5040 	C$easyax5043.c$645$3$422 ==.
                                   5041 ;	..\COMMON\easyax5043.c:645: radio_write8(AX5043_REG_IRQMASK1, 0x00); // otherwise autoranging done will fire all over again
      001238 90 40 06         [24] 5042 	mov	dptr,#0x4006
      00123B E4               [12] 5043 	clr	a
      00123C F0               [24] 5044 	movx	@dptr,a
                           00080C  5045 	C$easyax5043.c$646$2$418 ==.
                                   5046 ;	..\COMMON\easyax5043.c:646: axradio_trxstate = trxstate_pll_ranging_done;
      00123D 75 09 06         [24] 5047 	mov	_axradio_trxstate,#0x06
                           00080F  5048 	C$easyax5043.c$647$2$418 ==.
                                   5049 ;	..\COMMON\easyax5043.c:647: break;
      001240 02 15 DB         [24] 5050 	ljmp	00260$
                           000812  5051 	C$easyax5043.c$649$2$418 ==.
                                   5052 ;	..\COMMON\easyax5043.c:649: case trxstate_pll_settling:
      001243                       5053 00116$:
                           000812  5054 	C$easyax5043.c$650$3$423 ==.
                                   5055 ;	..\COMMON\easyax5043.c:650: radio_write8(AX5043_REG_RADIOEVENTMASK0, 0x00);
      001243 90 40 09         [24] 5056 	mov	dptr,#0x4009
      001246 E4               [12] 5057 	clr	a
      001247 F0               [24] 5058 	movx	@dptr,a
                           000817  5059 	C$easyax5043.c$651$2$418 ==.
                                   5060 ;	..\COMMON\easyax5043.c:651: axradio_trxstate = trxstate_pll_settled;
      001248 75 09 08         [24] 5061 	mov	_axradio_trxstate,#0x08
                           00081A  5062 	C$easyax5043.c$652$2$418 ==.
                                   5063 ;	..\COMMON\easyax5043.c:652: break;
      00124B 02 15 DB         [24] 5064 	ljmp	00260$
                           00081D  5065 	C$easyax5043.c$654$2$418 ==.
                                   5066 ;	..\COMMON\easyax5043.c:654: case trxstate_tx_xtalwait:
      00124E                       5067 00120$:
                           00081D  5068 	C$easyax5043.c$655$2$418 ==.
                                   5069 ;	..\COMMON\easyax5043.c:655: radio_read8(AX5043_REG_RADIOEVENTREQ0); // make sure REVRDONE bit is cleared, so it is a reliable indicator that the packet is out
      00124E 90 40 0F         [24] 5070 	mov	dptr,#0x400f
      001251 E0               [24] 5071 	movx	a,@dptr
                           000821  5072 	C$easyax5043.c$656$3$424 ==.
                                   5073 ;	..\COMMON\easyax5043.c:656: radio_write8(AX5043_REG_FIFOSTAT, 3); // clear FIFO data & flags (prevent transmitting anything left over in the FIFO, this has no effect if the FIFO is not powerered, in this case it is reset any way)
      001252 90 40 28         [24] 5074 	mov	dptr,#0x4028
      001255 74 03            [12] 5075 	mov	a,#0x03
      001257 F0               [24] 5076 	movx	@dptr,a
                           000827  5077 	C$easyax5043.c$657$3$425 ==.
                                   5078 ;	..\COMMON\easyax5043.c:657: radio_write8(AX5043_REG_IRQMASK1, 0x00);
      001258 90 40 06         [24] 5079 	mov	dptr,#0x4006
      00125B E4               [12] 5080 	clr	a
      00125C F0               [24] 5081 	movx	@dptr,a
                           00082C  5082 	C$easyax5043.c$658$3$426 ==.
                                   5083 ;	..\COMMON\easyax5043.c:658: radio_write8(AX5043_REG_IRQMASK0, 0x08); // enable fifo free threshold
      00125D 90 40 07         [24] 5084 	mov	dptr,#0x4007
      001260 74 08            [12] 5085 	mov	a,#0x08
      001262 F0               [24] 5086 	movx	@dptr,a
                           000832  5087 	C$easyax5043.c$659$2$418 ==.
                                   5088 ;	..\COMMON\easyax5043.c:659: axradio_trxstate = trxstate_tx_longpreamble;
      001263 75 09 0A         [24] 5089 	mov	_axradio_trxstate,#0x0a
                           000835  5090 	C$easyax5043.c$661$2$418 ==.
                                   5091 ;	..\COMMON\easyax5043.c:661: if ((radio_read8(AX5043_REG_MODULATION) & 0x0F) == 9) { // 4-FSK
      001266 90 40 10         [24] 5092 	mov	dptr,#0x4010
      001269 E0               [24] 5093 	movx	a,@dptr
      00126A FF               [12] 5094 	mov	r7,a
      00126B 53 07 0F         [24] 5095 	anl	ar7,#0x0f
      00126E BF 09 11         [24] 5096 	cjne	r7,#0x09,00143$
                           000840  5097 	C$easyax5043.c$662$4$428 ==.
                                   5098 ;	..\COMMON\easyax5043.c:662: radio_write8(AX5043_REG_FIFODATA, (AX5043_FIFOCMD_DATA | (7 << 5)));
                           000840  5099 	C$easyax5043.c$663$4$429 ==.
                                   5100 ;	..\COMMON\easyax5043.c:663: radio_write8(AX5043_REG_FIFODATA, 2);  // length (including flags)
                           000840  5101 	C$easyax5043.c$664$4$430 ==.
                                   5102 ;	..\COMMON\easyax5043.c:664: radio_write8(AX5043_REG_FIFODATA, 0x01);  // flag PKTSTART -> dibit sync
      001271 90 40 29         [24] 5103 	mov	dptr,#0x4029
      001274 74 E1            [12] 5104 	mov	a,#0xe1
      001276 F0               [24] 5105 	movx	@dptr,a
      001277 74 02            [12] 5106 	mov	a,#0x02
      001279 F0               [24] 5107 	movx	@dptr,a
      00127A 14               [12] 5108 	dec	a
      00127B F0               [24] 5109 	movx	@dptr,a
                           00084B  5110 	C$easyax5043.c$665$4$431 ==.
                                   5111 ;	..\COMMON\easyax5043.c:665: radio_write8(AX5043_REG_FIFODATA, 0x11); // dummy byte for forcing dibit sync
      00127C 90 40 29         [24] 5112 	mov	dptr,#0x4029
      00127F 74 11            [12] 5113 	mov	a,#0x11
      001281 F0               [24] 5114 	movx	@dptr,a
      001282                       5115 00143$:
                           000851  5116 	C$easyax5043.c$672$2$418 ==.
                                   5117 ;	..\COMMON\easyax5043.c:672: transmit_isr();
      001282 12 0E 89         [24] 5118 	lcall	_transmit_isr
                           000854  5119 	C$easyax5043.c$673$3$432 ==.
                                   5120 ;	..\COMMON\easyax5043.c:673: radio_write8(AX5043_REG_PWRMODE, AX5043_PWRSTATE_FULL_TX);
      001285 90 40 02         [24] 5121 	mov	dptr,#0x4002
      001288 74 0D            [12] 5122 	mov	a,#0x0d
      00128A F0               [24] 5123 	movx	@dptr,a
                           00085A  5124 	C$easyax5043.c$674$2$418 ==.
                                   5125 ;	..\COMMON\easyax5043.c:674: update_timeanchor();
      00128B 12 0A 31         [24] 5126 	lcall	_update_timeanchor
                           00085D  5127 	C$easyax5043.c$675$2$418 ==.
                                   5128 ;	..\COMMON\easyax5043.c:675: wtimer_remove_callback(&axradio_cb_transmitstart.cb);
      00128E 90 02 70         [24] 5129 	mov	dptr,#_axradio_cb_transmitstart
      001291 12 52 63         [24] 5130 	lcall	_wtimer_remove_callback
                           000863  5131 	C$easyax5043.c$676$2$418 ==.
                                   5132 ;	..\COMMON\easyax5043.c:676: switch (axradio_mode) {
      001294 AF 08            [24] 5133 	mov	r7,_axradio_mode
      001296 BF 12 02         [24] 5134 	cjne	r7,#0x12,00354$
      001299 80 03            [24] 5135 	sjmp	00148$
      00129B                       5136 00354$:
      00129B BF 13 19         [24] 5137 	cjne	r7,#0x13,00151$
                           00086D  5138 	C$easyax5043.c$678$3$433 ==.
                                   5139 ;	..\COMMON\easyax5043.c:678: case AXRADIO_MODE_WOR_ACK_TRANSMIT:
      00129E                       5140 00148$:
                           00086D  5141 	C$easyax5043.c$679$3$433 ==.
                                   5142 ;	..\COMMON\easyax5043.c:679: if (axradio_ack_count != axradio_framing_ack_retransmissions) {
      00129E 90 00 0E         [24] 5143 	mov	dptr,#_axradio_ack_count
      0012A1 E0               [24] 5144 	movx	a,@dptr
      0012A2 FF               [12] 5145 	mov	r7,a
      0012A3 90 57 2C         [24] 5146 	mov	dptr,#_axradio_framing_ack_retransmissions
      0012A6 E4               [12] 5147 	clr	a
      0012A7 93               [24] 5148 	movc	a,@a+dptr
      0012A8 FE               [12] 5149 	mov	r6,a
      0012A9 EF               [12] 5150 	mov	a,r7
      0012AA B5 06 02         [24] 5151 	cjne	a,ar6,00357$
      0012AD 80 08            [24] 5152 	sjmp	00151$
      0012AF                       5153 00357$:
                           00087E  5154 	C$easyax5043.c$680$4$434 ==.
                                   5155 ;	..\COMMON\easyax5043.c:680: axradio_cb_transmitstart.st.error = AXRADIO_ERR_RETRANSMISSION;
      0012AF 90 02 75         [24] 5156 	mov	dptr,#(_axradio_cb_transmitstart + 0x0005)
      0012B2 74 08            [12] 5157 	mov	a,#0x08
      0012B4 F0               [24] 5158 	movx	@dptr,a
                           000884  5159 	C$easyax5043.c$681$4$434 ==.
                                   5160 ;	..\COMMON\easyax5043.c:681: break;
                           000884  5161 	C$easyax5043.c$684$3$433 ==.
                                   5162 ;	..\COMMON\easyax5043.c:684: default:
      0012B5 80 05            [24] 5163 	sjmp	00152$
      0012B7                       5164 00151$:
                           000886  5165 	C$easyax5043.c$685$3$433 ==.
                                   5166 ;	..\COMMON\easyax5043.c:685: axradio_cb_transmitstart.st.error = AXRADIO_ERR_NOERROR;
      0012B7 90 02 75         [24] 5167 	mov	dptr,#(_axradio_cb_transmitstart + 0x0005)
      0012BA E4               [12] 5168 	clr	a
      0012BB F0               [24] 5169 	movx	@dptr,a
                           00088B  5170 	C$easyax5043.c$687$2$418 ==.
                                   5171 ;	..\COMMON\easyax5043.c:687: }
      0012BC                       5172 00152$:
                           00088B  5173 	C$easyax5043.c$688$2$418 ==.
                                   5174 ;	..\COMMON\easyax5043.c:688: axradio_cb_transmitstart.st.time.t = axradio_timeanchor.radiotimer;
      0012BC 90 00 1A         [24] 5175 	mov	dptr,#(_axradio_timeanchor + 0x0004)
      0012BF E0               [24] 5176 	movx	a,@dptr
      0012C0 FC               [12] 5177 	mov	r4,a
      0012C1 A3               [24] 5178 	inc	dptr
      0012C2 E0               [24] 5179 	movx	a,@dptr
      0012C3 FD               [12] 5180 	mov	r5,a
      0012C4 A3               [24] 5181 	inc	dptr
      0012C5 E0               [24] 5182 	movx	a,@dptr
      0012C6 FE               [12] 5183 	mov	r6,a
      0012C7 A3               [24] 5184 	inc	dptr
      0012C8 E0               [24] 5185 	movx	a,@dptr
      0012C9 FF               [12] 5186 	mov	r7,a
      0012CA 90 02 76         [24] 5187 	mov	dptr,#(_axradio_cb_transmitstart + 0x0006)
      0012CD EC               [12] 5188 	mov	a,r4
      0012CE F0               [24] 5189 	movx	@dptr,a
      0012CF ED               [12] 5190 	mov	a,r5
      0012D0 A3               [24] 5191 	inc	dptr
      0012D1 F0               [24] 5192 	movx	@dptr,a
      0012D2 EE               [12] 5193 	mov	a,r6
      0012D3 A3               [24] 5194 	inc	dptr
      0012D4 F0               [24] 5195 	movx	@dptr,a
      0012D5 EF               [12] 5196 	mov	a,r7
      0012D6 A3               [24] 5197 	inc	dptr
      0012D7 F0               [24] 5198 	movx	@dptr,a
                           0008A7  5199 	C$easyax5043.c$689$2$418 ==.
                                   5200 ;	..\COMMON\easyax5043.c:689: wtimer_add_callback(&axradio_cb_transmitstart.cb);
      0012D8 90 02 70         [24] 5201 	mov	dptr,#_axradio_cb_transmitstart
      0012DB 12 46 F0         [24] 5202 	lcall	_wtimer_add_callback
                           0008AD  5203 	C$easyax5043.c$690$2$418 ==.
                                   5204 ;	..\COMMON\easyax5043.c:690: break;
      0012DE 02 15 DB         [24] 5205 	ljmp	00260$
                           0008B0  5206 	C$easyax5043.c$692$2$418 ==.
                                   5207 ;	..\COMMON\easyax5043.c:692: case trxstate_tx_longpreamble:
      0012E1                       5208 00153$:
                           0008B0  5209 	C$easyax5043.c$693$2$418 ==.
                                   5210 ;	..\COMMON\easyax5043.c:693: case trxstate_tx_shortpreamble:
      0012E1                       5211 00154$:
                           0008B0  5212 	C$easyax5043.c$694$2$418 ==.
                                   5213 ;	..\COMMON\easyax5043.c:694: case trxstate_tx_packet:
      0012E1                       5214 00155$:
                           0008B0  5215 	C$easyax5043.c$695$2$418 ==.
                                   5216 ;	..\COMMON\easyax5043.c:695: transmit_isr();
      0012E1 12 0E 89         [24] 5217 	lcall	_transmit_isr
                           0008B3  5218 	C$easyax5043.c$696$2$418 ==.
                                   5219 ;	..\COMMON\easyax5043.c:696: break;
      0012E4 02 15 DB         [24] 5220 	ljmp	00260$
                           0008B6  5221 	C$easyax5043.c$698$2$418 ==.
                                   5222 ;	..\COMMON\easyax5043.c:698: case trxstate_tx_waitdone:
      0012E7                       5223 00156$:
                           0008B6  5224 	C$easyax5043.c$699$2$418 ==.
                                   5225 ;	..\COMMON\easyax5043.c:699: radio_read8(AX5043_REG_RADIOEVENTREQ0);
      0012E7 90 40 0F         [24] 5226 	mov	dptr,#0x400f
      0012EA E0               [24] 5227 	movx	a,@dptr
                           0008BA  5228 	C$easyax5043.c$700$2$418 ==.
                                   5229 ;	..\COMMON\easyax5043.c:700: radioStateTemp = radio_read8(AX5043_REG_RADIOSTATE);
      0012EB 90 40 1C         [24] 5230 	mov	dptr,#0x401c
      0012EE E0               [24] 5231 	movx	a,@dptr
      0012EF 60 03            [24] 5232 	jz	00358$
      0012F1 02 15 DB         [24] 5233 	ljmp	00260$
      0012F4                       5234 00358$:
                           0008C3  5235 	C$easyax5043.c$701$2$418 ==.
                                   5236 ;	..\COMMON\easyax5043.c:701: if (radioStateTemp != 0)
                           0008C3  5237 	C$easyax5043.c$703$3$435 ==.
                                   5238 ;	..\COMMON\easyax5043.c:703: radio_write8(AX5043_REG_RADIOEVENTMASK0, 0x00);
      0012F4 90 40 09         [24] 5239 	mov	dptr,#0x4009
      0012F7 E4               [12] 5240 	clr	a
      0012F8 F0               [24] 5241 	movx	@dptr,a
                           0008C8  5242 	C$easyax5043.c$704$2$418 ==.
                                   5243 ;	..\COMMON\easyax5043.c:704: switch (axradio_mode) {
      0012F9 AF 08            [24] 5244 	mov	r7,_axradio_mode
      0012FB BF 12 02         [24] 5245 	cjne	r7,#0x12,00359$
      0012FE 80 6A            [24] 5246 	sjmp	00173$
      001300                       5247 00359$:
      001300 BF 13 02         [24] 5248 	cjne	r7,#0x13,00360$
      001303 80 65            [24] 5249 	sjmp	00173$
      001305                       5250 00360$:
      001305 BF 20 02         [24] 5251 	cjne	r7,#0x20,00361$
      001308 80 1D            [24] 5252 	sjmp	00162$
      00130A                       5253 00361$:
      00130A BF 21 02         [24] 5254 	cjne	r7,#0x21,00362$
      00130D 80 36            [24] 5255 	sjmp	00167$
      00130F                       5256 00362$:
      00130F BF 22 02         [24] 5257 	cjne	r7,#0x22,00363$
      001312 80 1C            [24] 5258 	sjmp	00163$
      001314                       5259 00363$:
      001314 BF 23 02         [24] 5260 	cjne	r7,#0x23,00364$
      001317 80 3C            [24] 5261 	sjmp	00170$
      001319                       5262 00364$:
      001319 BF 30 03         [24] 5263 	cjne	r7,#0x30,00365$
      00131C 02 13 9E         [24] 5264 	ljmp	00174$
      00131F                       5265 00365$:
      00131F BF 31 02         [24] 5266 	cjne	r7,#0x31,00366$
      001322 80 39            [24] 5267 	sjmp	00171$
      001324                       5268 00366$:
      001324 02 13 AB         [24] 5269 	ljmp	00175$
                           0008F6  5270 	C$easyax5043.c$705$3$436 ==.
                                   5271 ;	..\COMMON\easyax5043.c:705: case AXRADIO_MODE_ASYNC_RECEIVE:
      001327                       5272 00162$:
                           0008F6  5273 	C$easyax5043.c$706$3$436 ==.
                                   5274 ;	..\COMMON\easyax5043.c:706: ax5043_init_registers_rx();
      001327 12 0B 1C         [24] 5275 	lcall	_ax5043_init_registers_rx
                           0008F9  5276 	C$easyax5043.c$707$3$436 ==.
                                   5277 ;	..\COMMON\easyax5043.c:707: ax5043_receiver_on_continuous();
      00132A 12 15 F8         [24] 5278 	lcall	_ax5043_receiver_on_continuous
                           0008FC  5279 	C$easyax5043.c$708$3$436 ==.
                                   5280 ;	..\COMMON\easyax5043.c:708: break;
      00132D 02 13 AE         [24] 5281 	ljmp	00176$
                           0008FF  5282 	C$easyax5043.c$710$3$436 ==.
                                   5283 ;	..\COMMON\easyax5043.c:710: case AXRADIO_MODE_ACK_RECEIVE:
      001330                       5284 00163$:
                           0008FF  5285 	C$easyax5043.c$711$3$436 ==.
                                   5286 ;	..\COMMON\easyax5043.c:711: if (axradio_cb_receive.st.error == AXRADIO_ERR_PACKETDONE) {
      001330 90 02 3A         [24] 5287 	mov	dptr,#(_axradio_cb_receive + 0x0005)
      001333 E0               [24] 5288 	movx	a,@dptr
      001334 FF               [12] 5289 	mov	r7,a
      001335 BF F0 08         [24] 5290 	cjne	r7,#0xf0,00166$
                           000907  5291 	C$easyax5043.c$712$4$437 ==.
                                   5292 ;	..\COMMON\easyax5043.c:712: ax5043_init_registers_rx();
      001338 12 0B 1C         [24] 5293 	lcall	_ax5043_init_registers_rx
                           00090A  5294 	C$easyax5043.c$713$4$437 ==.
                                   5295 ;	..\COMMON\easyax5043.c:713: ax5043_receiver_on_continuous();
      00133B 12 15 F8         [24] 5296 	lcall	_ax5043_receiver_on_continuous
                           00090D  5297 	C$easyax5043.c$714$4$437 ==.
                                   5298 ;	..\COMMON\easyax5043.c:714: break;
                           00090D  5299 	C$easyax5043.c$716$3$436 ==.
                                   5300 ;	..\COMMON\easyax5043.c:716: offxtal:
      00133E 80 6E            [24] 5301 	sjmp	00176$
      001340                       5302 00166$:
                           00090F  5303 	C$easyax5043.c$717$3$436 ==.
                                   5304 ;	..\COMMON\easyax5043.c:717: ax5043_off_xtal();
      001340 12 17 50         [24] 5305 	lcall	_ax5043_off_xtal
                           000912  5306 	C$easyax5043.c$718$3$436 ==.
                                   5307 ;	..\COMMON\easyax5043.c:718: break;
                           000912  5308 	C$easyax5043.c$720$3$436 ==.
                                   5309 ;	..\COMMON\easyax5043.c:720: case AXRADIO_MODE_WOR_RECEIVE:
      001343 80 69            [24] 5310 	sjmp	00176$
      001345                       5311 00167$:
                           000914  5312 	C$easyax5043.c$721$3$436 ==.
                                   5313 ;	..\COMMON\easyax5043.c:721: if (axradio_cb_receive.st.error == AXRADIO_ERR_PACKETDONE) {
      001345 90 02 3A         [24] 5314 	mov	dptr,#(_axradio_cb_receive + 0x0005)
      001348 E0               [24] 5315 	movx	a,@dptr
      001349 FF               [12] 5316 	mov	r7,a
      00134A BF F0 F3         [24] 5317 	cjne	r7,#0xf0,00166$
                           00091C  5318 	C$easyax5043.c$722$4$438 ==.
                                   5319 ;	..\COMMON\easyax5043.c:722: ax5043_init_registers_rx();
      00134D 12 0B 1C         [24] 5320 	lcall	_ax5043_init_registers_rx
                           00091F  5321 	C$easyax5043.c$723$4$438 ==.
                                   5322 ;	..\COMMON\easyax5043.c:723: ax5043_receiver_on_wor();
      001350 12 16 5F         [24] 5323 	lcall	_ax5043_receiver_on_wor
                           000922  5324 	C$easyax5043.c$724$4$438 ==.
                                   5325 ;	..\COMMON\easyax5043.c:724: break;
                           000922  5326 	C$easyax5043.c$728$3$436 ==.
                                   5327 ;	..\COMMON\easyax5043.c:728: case AXRADIO_MODE_WOR_ACK_RECEIVE:
      001353 80 59            [24] 5328 	sjmp	00176$
      001355                       5329 00170$:
                           000924  5330 	C$easyax5043.c$729$3$436 ==.
                                   5331 ;	..\COMMON\easyax5043.c:729: ax5043_init_registers_rx();
      001355 12 0B 1C         [24] 5332 	lcall	_ax5043_init_registers_rx
                           000927  5333 	C$easyax5043.c$730$3$436 ==.
                                   5334 ;	..\COMMON\easyax5043.c:730: ax5043_receiver_on_wor();
      001358 12 16 5F         [24] 5335 	lcall	_ax5043_receiver_on_wor
                           00092A  5336 	C$easyax5043.c$731$3$436 ==.
                                   5337 ;	..\COMMON\easyax5043.c:731: break;
                           00092A  5338 	C$easyax5043.c$733$3$436 ==.
                                   5339 ;	..\COMMON\easyax5043.c:733: case AXRADIO_MODE_SYNC_ACK_MASTER:
      00135B 80 51            [24] 5340 	sjmp	00176$
      00135D                       5341 00171$:
                           00092C  5342 	C$easyax5043.c$734$3$436 ==.
                                   5343 ;	..\COMMON\easyax5043.c:734: axradio_txbuffer_len = axradio_framing_minpayloadlen;
      00135D 90 57 2E         [24] 5344 	mov	dptr,#_axradio_framing_minpayloadlen
      001360 E4               [12] 5345 	clr	a
      001361 93               [24] 5346 	movc	a,@a+dptr
      001362 FF               [12] 5347 	mov	r7,a
      001363 90 00 05         [24] 5348 	mov	dptr,#_axradio_txbuffer_len
      001366 F0               [24] 5349 	movx	@dptr,a
      001367 E4               [12] 5350 	clr	a
      001368 A3               [24] 5351 	inc	dptr
      001369 F0               [24] 5352 	movx	@dptr,a
                           000939  5353 	C$easyax5043.c$738$3$436 ==.
                                   5354 ;	..\COMMON\easyax5043.c:738: case AXRADIO_MODE_WOR_ACK_TRANSMIT:
      00136A                       5355 00173$:
                           000939  5356 	C$easyax5043.c$739$3$436 ==.
                                   5357 ;	..\COMMON\easyax5043.c:739: ax5043_init_registers_rx();
      00136A 12 0B 1C         [24] 5358 	lcall	_ax5043_init_registers_rx
                           00093C  5359 	C$easyax5043.c$740$3$436 ==.
                                   5360 ;	..\COMMON\easyax5043.c:740: ax5043_receiver_on_continuous();
      00136D 12 15 F8         [24] 5361 	lcall	_ax5043_receiver_on_continuous
                           00093F  5362 	C$easyax5043.c$741$3$436 ==.
                                   5363 ;	..\COMMON\easyax5043.c:741: wtimer_remove(&axradio_timer);
      001370 90 02 8E         [24] 5364 	mov	dptr,#_axradio_timer
      001373 12 50 55         [24] 5365 	lcall	_wtimer_remove
                           000945  5366 	C$easyax5043.c$742$3$436 ==.
                                   5367 ;	..\COMMON\easyax5043.c:742: axradio_timer.time = axradio_framing_ack_timeout;
      001376 90 57 24         [24] 5368 	mov	dptr,#_axradio_framing_ack_timeout
      001379 E4               [12] 5369 	clr	a
      00137A 93               [24] 5370 	movc	a,@a+dptr
      00137B FC               [12] 5371 	mov	r4,a
      00137C 74 01            [12] 5372 	mov	a,#0x01
      00137E 93               [24] 5373 	movc	a,@a+dptr
      00137F FD               [12] 5374 	mov	r5,a
      001380 74 02            [12] 5375 	mov	a,#0x02
      001382 93               [24] 5376 	movc	a,@a+dptr
      001383 FE               [12] 5377 	mov	r6,a
      001384 74 03            [12] 5378 	mov	a,#0x03
      001386 93               [24] 5379 	movc	a,@a+dptr
      001387 FF               [12] 5380 	mov	r7,a
      001388 90 02 92         [24] 5381 	mov	dptr,#(_axradio_timer + 0x0004)
      00138B EC               [12] 5382 	mov	a,r4
      00138C F0               [24] 5383 	movx	@dptr,a
      00138D ED               [12] 5384 	mov	a,r5
      00138E A3               [24] 5385 	inc	dptr
      00138F F0               [24] 5386 	movx	@dptr,a
      001390 EE               [12] 5387 	mov	a,r6
      001391 A3               [24] 5388 	inc	dptr
      001392 F0               [24] 5389 	movx	@dptr,a
      001393 EF               [12] 5390 	mov	a,r7
      001394 A3               [24] 5391 	inc	dptr
      001395 F0               [24] 5392 	movx	@dptr,a
                           000965  5393 	C$easyax5043.c$743$3$436 ==.
                                   5394 ;	..\COMMON\easyax5043.c:743: wtimer0_addrelative(&axradio_timer);
      001396 90 02 8E         [24] 5395 	mov	dptr,#_axradio_timer
      001399 12 47 0A         [24] 5396 	lcall	_wtimer0_addrelative
                           00096B  5397 	C$easyax5043.c$744$3$436 ==.
                                   5398 ;	..\COMMON\easyax5043.c:744: break;
                           00096B  5399 	C$easyax5043.c$746$3$436 ==.
                                   5400 ;	..\COMMON\easyax5043.c:746: case AXRADIO_MODE_SYNC_MASTER:
      00139C 80 10            [24] 5401 	sjmp	00176$
      00139E                       5402 00174$:
                           00096D  5403 	C$easyax5043.c$747$3$436 ==.
                                   5404 ;	..\COMMON\easyax5043.c:747: axradio_txbuffer_len = axradio_framing_minpayloadlen;
      00139E 90 57 2E         [24] 5405 	mov	dptr,#_axradio_framing_minpayloadlen
      0013A1 E4               [12] 5406 	clr	a
      0013A2 93               [24] 5407 	movc	a,@a+dptr
      0013A3 FF               [12] 5408 	mov	r7,a
      0013A4 90 00 05         [24] 5409 	mov	dptr,#_axradio_txbuffer_len
      0013A7 F0               [24] 5410 	movx	@dptr,a
      0013A8 E4               [12] 5411 	clr	a
      0013A9 A3               [24] 5412 	inc	dptr
      0013AA F0               [24] 5413 	movx	@dptr,a
                           00097A  5414 	C$easyax5043.c$750$3$436 ==.
                                   5415 ;	..\COMMON\easyax5043.c:750: default:
      0013AB                       5416 00175$:
                           00097A  5417 	C$easyax5043.c$751$3$436 ==.
                                   5418 ;	..\COMMON\easyax5043.c:751: ax5043_off();
      0013AB 12 17 47         [24] 5419 	lcall	_ax5043_off
                           00097D  5420 	C$easyax5043.c$753$2$418 ==.
                                   5421 ;	..\COMMON\easyax5043.c:753: }
      0013AE                       5422 00176$:
                           00097D  5423 	C$easyax5043.c$754$2$418 ==.
                                   5424 ;	..\COMMON\easyax5043.c:754: if (axradio_mode != AXRADIO_MODE_SYNC_MASTER &&
      0013AE 74 30            [12] 5425 	mov	a,#0x30
      0013B0 B5 08 02         [24] 5426 	cjne	a,_axradio_mode,00371$
      0013B3 80 1A            [24] 5427 	sjmp	00178$
      0013B5                       5428 00371$:
                           000984  5429 	C$easyax5043.c$755$2$418 ==.
                                   5430 ;	..\COMMON\easyax5043.c:755: axradio_mode != AXRADIO_MODE_SYNC_ACK_MASTER &&
      0013B5 74 31            [12] 5431 	mov	a,#0x31
      0013B7 B5 08 02         [24] 5432 	cjne	a,_axradio_mode,00372$
      0013BA 80 13            [24] 5433 	sjmp	00178$
      0013BC                       5434 00372$:
                           00098B  5435 	C$easyax5043.c$756$2$418 ==.
                                   5436 ;	..\COMMON\easyax5043.c:756: axradio_mode != AXRADIO_MODE_SYNC_SLAVE &&
      0013BC 74 32            [12] 5437 	mov	a,#0x32
      0013BE B5 08 02         [24] 5438 	cjne	a,_axradio_mode,00373$
      0013C1 80 0C            [24] 5439 	sjmp	00178$
      0013C3                       5440 00373$:
                           000992  5441 	C$easyax5043.c$757$2$418 ==.
                                   5442 ;	..\COMMON\easyax5043.c:757: axradio_mode != AXRADIO_MODE_SYNC_ACK_SLAVE)
      0013C3 74 33            [12] 5443 	mov	a,#0x33
      0013C5 B5 08 02         [24] 5444 	cjne	a,_axradio_mode,00374$
      0013C8 80 05            [24] 5445 	sjmp	00178$
      0013CA                       5446 00374$:
                           000999  5447 	C$easyax5043.c$758$2$418 ==.
                                   5448 ;	..\COMMON\easyax5043.c:758: axradio_syncstate = syncstate_off;
      0013CA 90 00 04         [24] 5449 	mov	dptr,#_axradio_syncstate
      0013CD E4               [12] 5450 	clr	a
      0013CE F0               [24] 5451 	movx	@dptr,a
      0013CF                       5452 00178$:
                           00099E  5453 	C$easyax5043.c$759$2$418 ==.
                                   5454 ;	..\COMMON\easyax5043.c:759: update_timeanchor();
      0013CF 12 0A 31         [24] 5455 	lcall	_update_timeanchor
                           0009A1  5456 	C$easyax5043.c$760$2$418 ==.
                                   5457 ;	..\COMMON\easyax5043.c:760: wtimer_remove_callback(&axradio_cb_transmitend.cb);
      0013D2 90 02 7A         [24] 5458 	mov	dptr,#_axradio_cb_transmitend
      0013D5 12 52 63         [24] 5459 	lcall	_wtimer_remove_callback
                           0009A7  5460 	C$easyax5043.c$761$2$418 ==.
                                   5461 ;	..\COMMON\easyax5043.c:761: axradio_cb_transmitend.st.error = AXRADIO_ERR_NOERROR;
      0013D8 90 02 7F         [24] 5462 	mov	dptr,#(_axradio_cb_transmitend + 0x0005)
      0013DB E4               [12] 5463 	clr	a
      0013DC F0               [24] 5464 	movx	@dptr,a
                           0009AC  5465 	C$easyax5043.c$762$2$418 ==.
                                   5466 ;	..\COMMON\easyax5043.c:762: if (axradio_mode == AXRADIO_MODE_ACK_TRANSMIT ||
      0013DD 74 12            [12] 5467 	mov	a,#0x12
      0013DF B5 08 02         [24] 5468 	cjne	a,_axradio_mode,00375$
      0013E2 80 0C            [24] 5469 	sjmp	00182$
      0013E4                       5470 00375$:
                           0009B3  5471 	C$easyax5043.c$763$2$418 ==.
                                   5472 ;	..\COMMON\easyax5043.c:763: axradio_mode == AXRADIO_MODE_WOR_ACK_TRANSMIT ||
      0013E4 74 13            [12] 5473 	mov	a,#0x13
      0013E6 B5 08 02         [24] 5474 	cjne	a,_axradio_mode,00376$
      0013E9 80 05            [24] 5475 	sjmp	00182$
      0013EB                       5476 00376$:
                           0009BA  5477 	C$easyax5043.c$764$2$418 ==.
                                   5478 ;	..\COMMON\easyax5043.c:764: axradio_mode == AXRADIO_MODE_SYNC_ACK_MASTER)
      0013EB 74 31            [12] 5479 	mov	a,#0x31
      0013ED B5 08 06         [24] 5480 	cjne	a,_axradio_mode,00183$
      0013F0                       5481 00182$:
                           0009BF  5482 	C$easyax5043.c$765$2$418 ==.
                                   5483 ;	..\COMMON\easyax5043.c:765: axradio_cb_transmitend.st.error = AXRADIO_ERR_BUSY;
      0013F0 90 02 7F         [24] 5484 	mov	dptr,#(_axradio_cb_transmitend + 0x0005)
      0013F3 74 02            [12] 5485 	mov	a,#0x02
      0013F5 F0               [24] 5486 	movx	@dptr,a
      0013F6                       5487 00183$:
                           0009C5  5488 	C$easyax5043.c$766$2$418 ==.
                                   5489 ;	..\COMMON\easyax5043.c:766: axradio_cb_transmitend.st.time.t = axradio_timeanchor.radiotimer;
      0013F6 90 00 1A         [24] 5490 	mov	dptr,#(_axradio_timeanchor + 0x0004)
      0013F9 E0               [24] 5491 	movx	a,@dptr
      0013FA FC               [12] 5492 	mov	r4,a
      0013FB A3               [24] 5493 	inc	dptr
      0013FC E0               [24] 5494 	movx	a,@dptr
      0013FD FD               [12] 5495 	mov	r5,a
      0013FE A3               [24] 5496 	inc	dptr
      0013FF E0               [24] 5497 	movx	a,@dptr
      001400 FE               [12] 5498 	mov	r6,a
      001401 A3               [24] 5499 	inc	dptr
      001402 E0               [24] 5500 	movx	a,@dptr
      001403 FF               [12] 5501 	mov	r7,a
      001404 90 02 80         [24] 5502 	mov	dptr,#(_axradio_cb_transmitend + 0x0006)
      001407 EC               [12] 5503 	mov	a,r4
      001408 F0               [24] 5504 	movx	@dptr,a
      001409 ED               [12] 5505 	mov	a,r5
      00140A A3               [24] 5506 	inc	dptr
      00140B F0               [24] 5507 	movx	@dptr,a
      00140C EE               [12] 5508 	mov	a,r6
      00140D A3               [24] 5509 	inc	dptr
      00140E F0               [24] 5510 	movx	@dptr,a
      00140F EF               [12] 5511 	mov	a,r7
      001410 A3               [24] 5512 	inc	dptr
      001411 F0               [24] 5513 	movx	@dptr,a
                           0009E1  5514 	C$easyax5043.c$767$2$418 ==.
                                   5515 ;	..\COMMON\easyax5043.c:767: wtimer_add_callback(&axradio_cb_transmitend.cb);
      001412 90 02 7A         [24] 5516 	mov	dptr,#_axradio_cb_transmitend
      001415 12 46 F0         [24] 5517 	lcall	_wtimer_add_callback
                           0009E7  5518 	C$easyax5043.c$768$2$418 ==.
                                   5519 ;	..\COMMON\easyax5043.c:768: break;
      001418 02 15 DB         [24] 5520 	ljmp	00260$
                           0009EA  5521 	C$easyax5043.c$771$2$418 ==.
                                   5522 ;	..\COMMON\easyax5043.c:771: case trxstate_txcw_xtalwait:
      00141B                       5523 00186$:
                           0009EA  5524 	C$easyax5043.c$772$3$439 ==.
                                   5525 ;	..\COMMON\easyax5043.c:772: radio_write8(AX5043_REG_IRQMASK1, 0x00);
      00141B 90 40 06         [24] 5526 	mov	dptr,#0x4006
      00141E E4               [12] 5527 	clr	a
      00141F F0               [24] 5528 	movx	@dptr,a
                           0009EF  5529 	C$easyax5043.c$773$3$440 ==.
                                   5530 ;	..\COMMON\easyax5043.c:773: radio_write8(AX5043_REG_IRQMASK0, 0x00);
      001420 90 40 07         [24] 5531 	mov	dptr,#0x4007
      001423 F0               [24] 5532 	movx	@dptr,a
                           0009F3  5533 	C$easyax5043.c$774$3$441 ==.
                                   5534 ;	..\COMMON\easyax5043.c:774: radio_write8(AX5043_REG_PWRMODE, AX5043_PWRSTATE_FULL_TX);
      001424 90 40 02         [24] 5535 	mov	dptr,#0x4002
      001427 74 0D            [12] 5536 	mov	a,#0x0d
      001429 F0               [24] 5537 	movx	@dptr,a
                           0009F9  5538 	C$easyax5043.c$775$2$418 ==.
                                   5539 ;	..\COMMON\easyax5043.c:775: axradio_trxstate = trxstate_off;
      00142A 75 09 00         [24] 5540 	mov	_axradio_trxstate,#0x00
                           0009FC  5541 	C$easyax5043.c$776$2$418 ==.
                                   5542 ;	..\COMMON\easyax5043.c:776: update_timeanchor();
      00142D 12 0A 31         [24] 5543 	lcall	_update_timeanchor
                           0009FF  5544 	C$easyax5043.c$777$2$418 ==.
                                   5545 ;	..\COMMON\easyax5043.c:777: wtimer_remove_callback(&axradio_cb_transmitstart.cb);
      001430 90 02 70         [24] 5546 	mov	dptr,#_axradio_cb_transmitstart
      001433 12 52 63         [24] 5547 	lcall	_wtimer_remove_callback
                           000A05  5548 	C$easyax5043.c$778$2$418 ==.
                                   5549 ;	..\COMMON\easyax5043.c:778: axradio_cb_transmitstart.st.error = AXRADIO_ERR_NOERROR;
      001436 90 02 75         [24] 5550 	mov	dptr,#(_axradio_cb_transmitstart + 0x0005)
      001439 E4               [12] 5551 	clr	a
      00143A F0               [24] 5552 	movx	@dptr,a
                           000A0A  5553 	C$easyax5043.c$779$2$418 ==.
                                   5554 ;	..\COMMON\easyax5043.c:779: axradio_cb_transmitstart.st.time.t = axradio_timeanchor.radiotimer;
      00143B 90 00 1A         [24] 5555 	mov	dptr,#(_axradio_timeanchor + 0x0004)
      00143E E0               [24] 5556 	movx	a,@dptr
      00143F FC               [12] 5557 	mov	r4,a
      001440 A3               [24] 5558 	inc	dptr
      001441 E0               [24] 5559 	movx	a,@dptr
      001442 FD               [12] 5560 	mov	r5,a
      001443 A3               [24] 5561 	inc	dptr
      001444 E0               [24] 5562 	movx	a,@dptr
      001445 FE               [12] 5563 	mov	r6,a
      001446 A3               [24] 5564 	inc	dptr
      001447 E0               [24] 5565 	movx	a,@dptr
      001448 FF               [12] 5566 	mov	r7,a
      001449 90 02 76         [24] 5567 	mov	dptr,#(_axradio_cb_transmitstart + 0x0006)
      00144C EC               [12] 5568 	mov	a,r4
      00144D F0               [24] 5569 	movx	@dptr,a
      00144E ED               [12] 5570 	mov	a,r5
      00144F A3               [24] 5571 	inc	dptr
      001450 F0               [24] 5572 	movx	@dptr,a
      001451 EE               [12] 5573 	mov	a,r6
      001452 A3               [24] 5574 	inc	dptr
      001453 F0               [24] 5575 	movx	@dptr,a
      001454 EF               [12] 5576 	mov	a,r7
      001455 A3               [24] 5577 	inc	dptr
      001456 F0               [24] 5578 	movx	@dptr,a
                           000A26  5579 	C$easyax5043.c$780$2$418 ==.
                                   5580 ;	..\COMMON\easyax5043.c:780: wtimer_add_callback(&axradio_cb_transmitstart.cb);
      001457 90 02 70         [24] 5581 	mov	dptr,#_axradio_cb_transmitstart
      00145A 12 46 F0         [24] 5582 	lcall	_wtimer_add_callback
                           000A2C  5583 	C$easyax5043.c$781$2$418 ==.
                                   5584 ;	..\COMMON\easyax5043.c:781: break;
      00145D 02 15 DB         [24] 5585 	ljmp	00260$
                           000A2F  5586 	C$easyax5043.c$783$2$418 ==.
                                   5587 ;	..\COMMON\easyax5043.c:783: case trxstate_txstream_xtalwait:
      001460                       5588 00196$:
                           000A2F  5589 	C$easyax5043.c$784$2$418 ==.
                                   5590 ;	..\COMMON\easyax5043.c:784: if (radio_read8(AX5043_REG_IRQREQUEST1) & 0x01) {
      001460 90 40 0C         [24] 5591 	mov	dptr,#0x400c
      001463 E0               [24] 5592 	movx	a,@dptr
      001464 FF               [12] 5593 	mov	r7,a
      001465 20 E0 03         [24] 5594 	jb	acc.0,00379$
      001468 02 15 3A         [24] 5595 	ljmp	00221$
      00146B                       5596 00379$:
                           000A3A  5597 	C$easyax5043.c$785$4$443 ==.
                                   5598 ;	..\COMMON\easyax5043.c:785: radio_write8(AX5043_REG_RADIOEVENTMASK0, 0x03); // enable PLL settled and done event
      00146B 90 40 09         [24] 5599 	mov	dptr,#0x4009
      00146E 74 03            [12] 5600 	mov	a,#0x03
      001470 F0               [24] 5601 	movx	@dptr,a
                           000A40  5602 	C$easyax5043.c$786$4$444 ==.
                                   5603 ;	..\COMMON\easyax5043.c:786: radio_write8(AX5043_REG_IRQMASK1, 0x00);
      001471 90 40 06         [24] 5604 	mov	dptr,#0x4006
      001474 E4               [12] 5605 	clr	a
      001475 F0               [24] 5606 	movx	@dptr,a
                           000A45  5607 	C$easyax5043.c$787$4$445 ==.
                                   5608 ;	..\COMMON\easyax5043.c:787: radio_write8(AX5043_REG_IRQMASK0, 0x40); // enable radio controller irq
      001476 90 40 07         [24] 5609 	mov	dptr,#0x4007
      001479 74 40            [12] 5610 	mov	a,#0x40
      00147B F0               [24] 5611 	movx	@dptr,a
                           000A4B  5612 	C$easyax5043.c$788$4$446 ==.
                                   5613 ;	..\COMMON\easyax5043.c:788: radio_write8(AX5043_REG_PWRMODE, AX5043_PWRSTATE_FULL_TX);
      00147C 90 40 02         [24] 5614 	mov	dptr,#0x4002
      00147F 74 0D            [12] 5615 	mov	a,#0x0d
      001481 F0               [24] 5616 	movx	@dptr,a
                           000A51  5617 	C$easyax5043.c$789$3$442 ==.
                                   5618 ;	..\COMMON\easyax5043.c:789: axradio_trxstate = trxstate_txstream;
      001482 75 09 10         [24] 5619 	mov	_axradio_trxstate,#0x10
                           000A54  5620 	C$easyax5043.c$791$2$418 ==.
                                   5621 ;	..\COMMON\easyax5043.c:791: goto txstreamdatacb;
      001485 02 15 3A         [24] 5622 	ljmp	00221$
                           000A57  5623 	C$easyax5043.c$793$2$418 ==.
                                   5624 ;	..\COMMON\easyax5043.c:793: case trxstate_txstream:
      001488                       5625 00211$:
                           000A57  5626 	C$easyax5043.c$795$3$447 ==.
                                   5627 ;	..\COMMON\easyax5043.c:795: uint8_t __autodata evt = radio_read8(AX5043_REG_RADIOEVENTREQ0);
      001488 90 40 0F         [24] 5628 	mov	dptr,#0x400f
      00148B E0               [24] 5629 	movx	a,@dptr
      00148C FF               [12] 5630 	mov	r7,a
                           000A5C  5631 	C$easyax5043.c$796$4$448 ==.
                                   5632 ;	..\COMMON\easyax5043.c:796: radio_write8(AX5043_REG_RADIOEVENTMASK0, 0x00);
      00148D 90 40 09         [24] 5633 	mov	dptr,#0x4009
      001490 E4               [12] 5634 	clr	a
      001491 F0               [24] 5635 	movx	@dptr,a
                           000A61  5636 	C$easyax5043.c$797$3$447 ==.
                                   5637 ;	..\COMMON\easyax5043.c:797: if (evt & 0x03)
      001492 EF               [12] 5638 	mov	a,r7
      001493 54 03            [12] 5639 	anl	a,#0x03
      001495 60 07            [24] 5640 	jz	00216$
                           000A66  5641 	C$easyax5043.c$798$3$447 ==.
                                   5642 ;	..\COMMON\easyax5043.c:798: update_timeanchor();
      001497 C0 07            [24] 5643 	push	ar7
      001499 12 0A 31         [24] 5644 	lcall	_update_timeanchor
      00149C D0 07            [24] 5645 	pop	ar7
      00149E                       5646 00216$:
                           000A6D  5647 	C$easyax5043.c$799$3$447 ==.
                                   5648 ;	..\COMMON\easyax5043.c:799: if (evt & 0x01) {
      00149E EF               [12] 5649 	mov	a,r7
      00149F 30 E0 34         [24] 5650 	jnb	acc.0,00218$
                           000A71  5651 	C$easyax5043.c$800$4$449 ==.
                                   5652 ;	..\COMMON\easyax5043.c:800: update_timeanchor();
      0014A2 C0 07            [24] 5653 	push	ar7
      0014A4 12 0A 31         [24] 5654 	lcall	_update_timeanchor
                           000A76  5655 	C$easyax5043.c$801$4$449 ==.
                                   5656 ;	..\COMMON\easyax5043.c:801: wtimer_remove_callback(&axradio_cb_transmitend.cb);
      0014A7 90 02 7A         [24] 5657 	mov	dptr,#_axradio_cb_transmitend
      0014AA 12 52 63         [24] 5658 	lcall	_wtimer_remove_callback
                           000A7C  5659 	C$easyax5043.c$802$4$449 ==.
                                   5660 ;	..\COMMON\easyax5043.c:802: axradio_cb_transmitend.st.error = AXRADIO_ERR_NOERROR;
      0014AD 90 02 7F         [24] 5661 	mov	dptr,#(_axradio_cb_transmitend + 0x0005)
      0014B0 E4               [12] 5662 	clr	a
      0014B1 F0               [24] 5663 	movx	@dptr,a
                           000A81  5664 	C$easyax5043.c$803$4$449 ==.
                                   5665 ;	..\COMMON\easyax5043.c:803: axradio_cb_transmitend.st.time.t = axradio_timeanchor.radiotimer;
      0014B2 90 00 1A         [24] 5666 	mov	dptr,#(_axradio_timeanchor + 0x0004)
      0014B5 E0               [24] 5667 	movx	a,@dptr
      0014B6 FB               [12] 5668 	mov	r3,a
      0014B7 A3               [24] 5669 	inc	dptr
      0014B8 E0               [24] 5670 	movx	a,@dptr
      0014B9 FC               [12] 5671 	mov	r4,a
      0014BA A3               [24] 5672 	inc	dptr
      0014BB E0               [24] 5673 	movx	a,@dptr
      0014BC FD               [12] 5674 	mov	r5,a
      0014BD A3               [24] 5675 	inc	dptr
      0014BE E0               [24] 5676 	movx	a,@dptr
      0014BF FE               [12] 5677 	mov	r6,a
      0014C0 90 02 80         [24] 5678 	mov	dptr,#(_axradio_cb_transmitend + 0x0006)
      0014C3 EB               [12] 5679 	mov	a,r3
      0014C4 F0               [24] 5680 	movx	@dptr,a
      0014C5 EC               [12] 5681 	mov	a,r4
      0014C6 A3               [24] 5682 	inc	dptr
      0014C7 F0               [24] 5683 	movx	@dptr,a
      0014C8 ED               [12] 5684 	mov	a,r5
      0014C9 A3               [24] 5685 	inc	dptr
      0014CA F0               [24] 5686 	movx	@dptr,a
      0014CB EE               [12] 5687 	mov	a,r6
      0014CC A3               [24] 5688 	inc	dptr
      0014CD F0               [24] 5689 	movx	@dptr,a
                           000A9D  5690 	C$easyax5043.c$804$4$449 ==.
                                   5691 ;	..\COMMON\easyax5043.c:804: wtimer_add_callback(&axradio_cb_transmitend.cb);
      0014CE 90 02 7A         [24] 5692 	mov	dptr,#_axradio_cb_transmitend
      0014D1 12 46 F0         [24] 5693 	lcall	_wtimer_add_callback
      0014D4 D0 07            [24] 5694 	pop	ar7
      0014D6                       5695 00218$:
                           000AA5  5696 	C$easyax5043.c$806$3$447 ==.
                                   5697 ;	..\COMMON\easyax5043.c:806: if (evt & 0x02) {
      0014D6 EF               [12] 5698 	mov	a,r7
      0014D7 30 E1 60         [24] 5699 	jnb	acc.1,00221$
                           000AA9  5700 	C$easyax5043.c$807$4$450 ==.
                                   5701 ;	..\COMMON\easyax5043.c:807: update_timeanchor();
      0014DA 12 0A 31         [24] 5702 	lcall	_update_timeanchor
                           000AAC  5703 	C$easyax5043.c$808$4$450 ==.
                                   5704 ;	..\COMMON\easyax5043.c:808: wtimer_remove_callback(&axradio_cb_transmitstart.cb);
      0014DD 90 02 70         [24] 5705 	mov	dptr,#_axradio_cb_transmitstart
      0014E0 12 52 63         [24] 5706 	lcall	_wtimer_remove_callback
                           000AB2  5707 	C$easyax5043.c$809$4$450 ==.
                                   5708 ;	..\COMMON\easyax5043.c:809: axradio_cb_transmitstart.st.error = AXRADIO_ERR_NOERROR;
      0014E3 90 02 75         [24] 5709 	mov	dptr,#(_axradio_cb_transmitstart + 0x0005)
      0014E6 E4               [12] 5710 	clr	a
      0014E7 F0               [24] 5711 	movx	@dptr,a
                           000AB7  5712 	C$easyax5043.c$810$4$450 ==.
                                   5713 ;	..\COMMON\easyax5043.c:810: axradio_cb_transmitstart.st.time.t = axradio_timeanchor.radiotimer;
      0014E8 90 00 1A         [24] 5714 	mov	dptr,#(_axradio_timeanchor + 0x0004)
      0014EB E0               [24] 5715 	movx	a,@dptr
      0014EC FC               [12] 5716 	mov	r4,a
      0014ED A3               [24] 5717 	inc	dptr
      0014EE E0               [24] 5718 	movx	a,@dptr
      0014EF FD               [12] 5719 	mov	r5,a
      0014F0 A3               [24] 5720 	inc	dptr
      0014F1 E0               [24] 5721 	movx	a,@dptr
      0014F2 FE               [12] 5722 	mov	r6,a
      0014F3 A3               [24] 5723 	inc	dptr
      0014F4 E0               [24] 5724 	movx	a,@dptr
      0014F5 FF               [12] 5725 	mov	r7,a
      0014F6 90 02 76         [24] 5726 	mov	dptr,#(_axradio_cb_transmitstart + 0x0006)
      0014F9 EC               [12] 5727 	mov	a,r4
      0014FA F0               [24] 5728 	movx	@dptr,a
      0014FB ED               [12] 5729 	mov	a,r5
      0014FC A3               [24] 5730 	inc	dptr
      0014FD F0               [24] 5731 	movx	@dptr,a
      0014FE EE               [12] 5732 	mov	a,r6
      0014FF A3               [24] 5733 	inc	dptr
      001500 F0               [24] 5734 	movx	@dptr,a
      001501 EF               [12] 5735 	mov	a,r7
      001502 A3               [24] 5736 	inc	dptr
      001503 F0               [24] 5737 	movx	@dptr,a
                           000AD3  5738 	C$easyax5043.c$811$4$450 ==.
                                   5739 ;	..\COMMON\easyax5043.c:811: wtimer_add_callback(&axradio_cb_transmitstart.cb);
      001504 90 02 70         [24] 5740 	mov	dptr,#_axradio_cb_transmitstart
      001507 12 46 F0         [24] 5741 	lcall	_wtimer_add_callback
                           000AD9  5742 	C$easyax5043.c$813$4$450 ==.
                                   5743 ;	..\COMMON\easyax5043.c:813: update_timeanchor();
      00150A 12 0A 31         [24] 5744 	lcall	_update_timeanchor
                           000ADC  5745 	C$easyax5043.c$814$4$450 ==.
                                   5746 ;	..\COMMON\easyax5043.c:814: wtimer_remove_callback(&axradio_cb_transmitdata.cb);
      00150D 90 02 84         [24] 5747 	mov	dptr,#_axradio_cb_transmitdata
      001510 12 52 63         [24] 5748 	lcall	_wtimer_remove_callback
                           000AE2  5749 	C$easyax5043.c$815$4$450 ==.
                                   5750 ;	..\COMMON\easyax5043.c:815: axradio_cb_transmitdata.st.error = AXRADIO_ERR_NOERROR;
      001513 90 02 89         [24] 5751 	mov	dptr,#(_axradio_cb_transmitdata + 0x0005)
      001516 E4               [12] 5752 	clr	a
      001517 F0               [24] 5753 	movx	@dptr,a
                           000AE7  5754 	C$easyax5043.c$816$4$450 ==.
                                   5755 ;	..\COMMON\easyax5043.c:816: axradio_cb_transmitdata.st.time.t = axradio_timeanchor.radiotimer;
      001518 90 00 1A         [24] 5756 	mov	dptr,#(_axradio_timeanchor + 0x0004)
      00151B E0               [24] 5757 	movx	a,@dptr
      00151C FC               [12] 5758 	mov	r4,a
      00151D A3               [24] 5759 	inc	dptr
      00151E E0               [24] 5760 	movx	a,@dptr
      00151F FD               [12] 5761 	mov	r5,a
      001520 A3               [24] 5762 	inc	dptr
      001521 E0               [24] 5763 	movx	a,@dptr
      001522 FE               [12] 5764 	mov	r6,a
      001523 A3               [24] 5765 	inc	dptr
      001524 E0               [24] 5766 	movx	a,@dptr
      001525 FF               [12] 5767 	mov	r7,a
      001526 90 02 8A         [24] 5768 	mov	dptr,#(_axradio_cb_transmitdata + 0x0006)
      001529 EC               [12] 5769 	mov	a,r4
      00152A F0               [24] 5770 	movx	@dptr,a
      00152B ED               [12] 5771 	mov	a,r5
      00152C A3               [24] 5772 	inc	dptr
      00152D F0               [24] 5773 	movx	@dptr,a
      00152E EE               [12] 5774 	mov	a,r6
      00152F A3               [24] 5775 	inc	dptr
      001530 F0               [24] 5776 	movx	@dptr,a
      001531 EF               [12] 5777 	mov	a,r7
      001532 A3               [24] 5778 	inc	dptr
      001533 F0               [24] 5779 	movx	@dptr,a
                           000B03  5780 	C$easyax5043.c$817$4$450 ==.
                                   5781 ;	..\COMMON\easyax5043.c:817: wtimer_add_callback(&axradio_cb_transmitdata.cb);
      001534 90 02 84         [24] 5782 	mov	dptr,#_axradio_cb_transmitdata
      001537 12 46 F0         [24] 5783 	lcall	_wtimer_add_callback
                           000B09  5784 	C$easyax5043.c$820$2$418 ==.
                                   5785 ;	..\COMMON\easyax5043.c:820: txstreamdatacb:
      00153A                       5786 00221$:
                           000B09  5787 	C$easyax5043.c$821$2$418 ==.
                                   5788 ;	..\COMMON\easyax5043.c:821: if (radio_read8(AX5043_REG_IRQREQUEST0) & radio_read8(AX5043_REG_IRQMASK0) & 0x08) {
      00153A 90 40 0D         [24] 5789 	mov	dptr,#0x400d
      00153D E0               [24] 5790 	movx	a,@dptr
      00153E FF               [12] 5791 	mov	r7,a
      00153F 90 40 07         [24] 5792 	mov	dptr,#0x4007
      001542 E0               [24] 5793 	movx	a,@dptr
      001543 FE               [12] 5794 	mov	r6,a
      001544 5F               [12] 5795 	anl	a,r7
      001545 20 E3 03         [24] 5796 	jb	acc.3,00383$
      001548 02 15 DB         [24] 5797 	ljmp	00260$
      00154B                       5798 00383$:
                           000B1A  5799 	C$easyax5043.c$822$4$452 ==.
                                   5800 ;	..\COMMON\easyax5043.c:822: radio_write8(AX5043_REG_IRQMASK0, (radio_read8(AX5043_REG_IRQMASK0) & (uint8_t)~0x08));
      00154B 90 40 07         [24] 5801 	mov	dptr,#0x4007
      00154E E0               [24] 5802 	movx	a,@dptr
      00154F 54 F7            [12] 5803 	anl	a,#0xf7
      001551 F0               [24] 5804 	movx	@dptr,a
                           000B21  5805 	C$easyax5043.c$823$3$451 ==.
                                   5806 ;	..\COMMON\easyax5043.c:823: update_timeanchor();
      001552 12 0A 31         [24] 5807 	lcall	_update_timeanchor
                           000B24  5808 	C$easyax5043.c$824$3$451 ==.
                                   5809 ;	..\COMMON\easyax5043.c:824: wtimer_remove_callback(&axradio_cb_transmitdata.cb);
      001555 90 02 84         [24] 5810 	mov	dptr,#_axradio_cb_transmitdata
      001558 12 52 63         [24] 5811 	lcall	_wtimer_remove_callback
                           000B2A  5812 	C$easyax5043.c$825$3$451 ==.
                                   5813 ;	..\COMMON\easyax5043.c:825: axradio_cb_transmitdata.st.error = AXRADIO_ERR_NOERROR;
      00155B 90 02 89         [24] 5814 	mov	dptr,#(_axradio_cb_transmitdata + 0x0005)
      00155E E4               [12] 5815 	clr	a
      00155F F0               [24] 5816 	movx	@dptr,a
                           000B2F  5817 	C$easyax5043.c$826$3$451 ==.
                                   5818 ;	..\COMMON\easyax5043.c:826: axradio_cb_transmitdata.st.time.t = axradio_timeanchor.radiotimer;
      001560 90 00 1A         [24] 5819 	mov	dptr,#(_axradio_timeanchor + 0x0004)
      001563 E0               [24] 5820 	movx	a,@dptr
      001564 FC               [12] 5821 	mov	r4,a
      001565 A3               [24] 5822 	inc	dptr
      001566 E0               [24] 5823 	movx	a,@dptr
      001567 FD               [12] 5824 	mov	r5,a
      001568 A3               [24] 5825 	inc	dptr
      001569 E0               [24] 5826 	movx	a,@dptr
      00156A FE               [12] 5827 	mov	r6,a
      00156B A3               [24] 5828 	inc	dptr
      00156C E0               [24] 5829 	movx	a,@dptr
      00156D FF               [12] 5830 	mov	r7,a
      00156E 90 02 8A         [24] 5831 	mov	dptr,#(_axradio_cb_transmitdata + 0x0006)
      001571 EC               [12] 5832 	mov	a,r4
      001572 F0               [24] 5833 	movx	@dptr,a
      001573 ED               [12] 5834 	mov	a,r5
      001574 A3               [24] 5835 	inc	dptr
      001575 F0               [24] 5836 	movx	@dptr,a
      001576 EE               [12] 5837 	mov	a,r6
      001577 A3               [24] 5838 	inc	dptr
      001578 F0               [24] 5839 	movx	@dptr,a
      001579 EF               [12] 5840 	mov	a,r7
      00157A A3               [24] 5841 	inc	dptr
      00157B F0               [24] 5842 	movx	@dptr,a
                           000B4B  5843 	C$easyax5043.c$827$3$451 ==.
                                   5844 ;	..\COMMON\easyax5043.c:827: wtimer_add_callback(&axradio_cb_transmitdata.cb);
      00157C 90 02 84         [24] 5845 	mov	dptr,#_axradio_cb_transmitdata
      00157F 12 46 F0         [24] 5846 	lcall	_wtimer_add_callback
                           000B51  5847 	C$easyax5043.c$829$2$418 ==.
                                   5848 ;	..\COMMON\easyax5043.c:829: break;
                           000B51  5849 	C$easyax5043.c$831$2$418 ==.
                                   5850 ;	..\COMMON\easyax5043.c:831: case trxstate_rxwor:
      001582 80 57            [24] 5851 	sjmp	00260$
      001584                       5852 00227$:
                           000B53  5853 	C$easyax5043.c$837$2$418 ==.
                                   5854 ;	..\COMMON\easyax5043.c:837: if (radio_read8(AX5043_REG_IRQREQUEST0) & 0x80) { // vdda ready (note irqinversion does not act upon AX5043_REG_IRQREQUEST0)
      001584 90 40 0D         [24] 5855 	mov	dptr,#0x400d
      001587 E0               [24] 5856 	movx	a,@dptr
      001588 FF               [12] 5857 	mov	r7,a
      001589 30 E7 0A         [24] 5858 	jnb	acc.7,00231$
                           000B5B  5859 	C$easyax5043.c$838$4$454 ==.
                                   5860 ;	..\COMMON\easyax5043.c:838: radio_write8(AX5043_REG_IRQINVERSION0, (radio_read8(AX5043_REG_IRQINVERSION0) | 0x80)); // invert pwr irq, so it does not fire continuously
      00158C 90 40 0B         [24] 5861 	mov	dptr,#0x400b
      00158F E0               [24] 5862 	movx	a,@dptr
      001590 44 80            [12] 5863 	orl	a,#0x80
      001592 FF               [12] 5864 	mov	r7,a
      001593 F0               [24] 5865 	movx	@dptr,a
                           000B63  5866 	C$easyax5043.c$840$3$455 ==.
                                   5867 ;	..\COMMON\easyax5043.c:840: radio_write8(AX5043_REG_IRQINVERSION0, (radio_read8(AX5043_REG_IRQINVERSION0) & (uint8_t)~0x80)); // drop pwr irq inversion --> armed again
      001594 80 08            [24] 5868 	sjmp	00236$
      001596                       5869 00231$:
      001596 90 40 0B         [24] 5870 	mov	dptr,#0x400b
      001599 E0               [24] 5871 	movx	a,@dptr
      00159A 54 7F            [12] 5872 	anl	a,#0x7f
      00159C FF               [12] 5873 	mov	r7,a
      00159D F0               [24] 5874 	movx	@dptr,a
      00159E                       5875 00236$:
                           000B6D  5876 	C$easyax5043.c$843$2$418 ==.
                                   5877 ;	..\COMMON\easyax5043.c:843: if (radio_read8(AX5043_REG_IRQREQUEST1) & 0x01) { // XTAL ready
      00159E 90 40 0C         [24] 5878 	mov	dptr,#0x400c
      0015A1 E0               [24] 5879 	movx	a,@dptr
      0015A2 FF               [12] 5880 	mov	r7,a
      0015A3 30 E0 0A         [24] 5881 	jnb	acc.0,00240$
                           000B75  5882 	C$easyax5043.c$844$4$458 ==.
                                   5883 ;	..\COMMON\easyax5043.c:844: radio_write8(AX5043_REG_IRQINVERSION1, (radio_read8(AX5043_REG_IRQINVERSION1) | 0x01)); // invert the xtal ready irq so it does not fire continuously
      0015A6 90 40 0A         [24] 5884 	mov	dptr,#0x400a
      0015A9 E0               [24] 5885 	movx	a,@dptr
      0015AA 44 01            [12] 5886 	orl	a,#0x01
      0015AC FF               [12] 5887 	mov	r7,a
      0015AD F0               [24] 5888 	movx	@dptr,a
                           000B7D  5889 	C$easyax5043.c$847$3$459 ==.
                                   5890 ;	..\COMMON\easyax5043.c:847: radio_write8(AX5043_REG_IRQINVERSION1, (radio_read8(AX5043_REG_IRQINVERSION1) & (uint8_t)~0x01)); // drop xtal ready irq inversion --> armed again for next wake-up
      0015AE 80 28            [24] 5891 	sjmp	00258$
      0015B0                       5892 00240$:
      0015B0 90 40 0A         [24] 5893 	mov	dptr,#0x400a
      0015B3 E0               [24] 5894 	movx	a,@dptr
      0015B4 54 FE            [12] 5895 	anl	a,#0xfe
      0015B6 F0               [24] 5896 	movx	@dptr,a
                           000B86  5897 	C$easyax5043.c$848$4$461 ==.
                                   5898 ;	..\COMMON\easyax5043.c:848: radio_write8(AX5043_REG_0xF30, f30_saved);
      0015B7 90 05 A8         [24] 5899 	mov	dptr,#_f30_saved
      0015BA E0               [24] 5900 	movx	a,@dptr
      0015BB 90 4F 30         [24] 5901 	mov	dptr,#0x4f30
      0015BE F0               [24] 5902 	movx	@dptr,a
                           000B8E  5903 	C$easyax5043.c$849$4$462 ==.
                                   5904 ;	..\COMMON\easyax5043.c:849: radio_write8(AX5043_REG_0xF31, f31_saved);
      0015BF 90 05 A9         [24] 5905 	mov	dptr,#_f31_saved
      0015C2 E0               [24] 5906 	movx	a,@dptr
      0015C3 90 4F 31         [24] 5907 	mov	dptr,#0x4f31
      0015C6 F0               [24] 5908 	movx	@dptr,a
                           000B96  5909 	C$easyax5043.c$850$4$463 ==.
                                   5910 ;	..\COMMON\easyax5043.c:850: radio_write8(AX5043_REG_0xF32, f32_saved);
      0015C7 90 05 AA         [24] 5911 	mov	dptr,#_f32_saved
      0015CA E0               [24] 5912 	movx	a,@dptr
      0015CB 90 4F 32         [24] 5913 	mov	dptr,#0x4f32
      0015CE F0               [24] 5914 	movx	@dptr,a
                           000B9E  5915 	C$easyax5043.c$851$4$464 ==.
                                   5916 ;	..\COMMON\easyax5043.c:851: radio_write8(AX5043_REG_0xF33, f33_saved);
      0015CF 90 05 AB         [24] 5917 	mov	dptr,#_f33_saved
      0015D2 E0               [24] 5918 	movx	a,@dptr
      0015D3 FF               [12] 5919 	mov	r7,a
      0015D4 90 4F 33         [24] 5920 	mov	dptr,#0x4f33
      0015D7 F0               [24] 5921 	movx	@dptr,a
                           000BA7  5922 	C$easyax5043.c$855$2$418 ==.
                                   5923 ;	..\COMMON\easyax5043.c:855: case trxstate_rx:
      0015D8                       5924 00258$:
                           000BA7  5925 	C$easyax5043.c$856$2$418 ==.
                                   5926 ;	..\COMMON\easyax5043.c:856: receive_isr();
      0015D8 12 0B 23         [24] 5927 	lcall	_receive_isr
                           000BAA  5928 	C$easyax5043.c$859$1$417 ==.
                                   5929 ;	..\COMMON\easyax5043.c:859: } // end switch(axradio_trxstate)
      0015DB                       5930 00260$:
      0015DB D0 D0            [24] 5931 	pop	psw
      0015DD D0 00            [24] 5932 	pop	(0+0)
      0015DF D0 01            [24] 5933 	pop	(0+1)
      0015E1 D0 02            [24] 5934 	pop	(0+2)
      0015E3 D0 03            [24] 5935 	pop	(0+3)
      0015E5 D0 04            [24] 5936 	pop	(0+4)
      0015E7 D0 05            [24] 5937 	pop	(0+5)
      0015E9 D0 06            [24] 5938 	pop	(0+6)
      0015EB D0 07            [24] 5939 	pop	(0+7)
      0015ED D0 83            [24] 5940 	pop	dph
      0015EF D0 82            [24] 5941 	pop	dpl
      0015F1 D0 F0            [24] 5942 	pop	b
      0015F3 D0 E0            [24] 5943 	pop	acc
      0015F5 D0 21            [24] 5944 	pop	bits
                           000BC6  5945 	C$easyax5043.c$860$1$417 ==.
                           000BC6  5946 	XG$axradio_isr$0$0 ==.
      0015F7 32               [24] 5947 	reti
                                   5948 ;------------------------------------------------------------
                                   5949 ;Allocation info for local variables in function 'ax5043_receiver_on_continuous'
                                   5950 ;------------------------------------------------------------
                                   5951 ;rschanged_int             Allocated to registers r6 
                                   5952 ;------------------------------------------------------------
                           000BC7  5953 	G$ax5043_receiver_on_continuous$0$0 ==.
                           000BC7  5954 	C$easyax5043.c$863$1$417 ==.
                                   5955 ;	..\COMMON\easyax5043.c:863: __reentrantb void ax5043_receiver_on_continuous(void) __reentrant
                                   5956 ;	-----------------------------------------
                                   5957 ;	 function ax5043_receiver_on_continuous
                                   5958 ;	-----------------------------------------
      0015F8                       5959 _ax5043_receiver_on_continuous:
                           000BC7  5960 	C$easyax5043.c$865$1$466 ==.
                                   5961 ;	..\COMMON\easyax5043.c:865: uint8_t rschanged_int = (axradio_framing_enable_sfdcallback | (axradio_mode == AXRADIO_MODE_SYNC_ACK_SLAVE) | (axradio_mode == AXRADIO_MODE_SYNC_SLAVE) );
      0015F8 74 33            [12] 5962 	mov	a,#0x33
      0015FA B5 08 04         [24] 5963 	cjne	a,_axradio_mode,00138$
      0015FD 74 01            [12] 5964 	mov	a,#0x01
      0015FF 80 01            [24] 5965 	sjmp	00139$
      001601                       5966 00138$:
      001601 E4               [12] 5967 	clr	a
      001602                       5968 00139$:
      001602 FF               [12] 5969 	mov	r7,a
      001603 90 57 23         [24] 5970 	mov	dptr,#_axradio_framing_enable_sfdcallback
      001606 E4               [12] 5971 	clr	a
      001607 93               [24] 5972 	movc	a,@a+dptr
      001608 FE               [12] 5973 	mov	r6,a
      001609 42 07            [12] 5974 	orl	ar7,a
      00160B 74 32            [12] 5975 	mov	a,#0x32
      00160D B5 08 04         [24] 5976 	cjne	a,_axradio_mode,00140$
      001610 74 01            [12] 5977 	mov	a,#0x01
      001612 80 01            [24] 5978 	sjmp	00141$
      001614                       5979 00140$:
      001614 E4               [12] 5980 	clr	a
      001615                       5981 00141$:
      001615 42 07            [12] 5982 	orl	ar7,a
                           000BE6  5983 	C$easyax5043.c$866$1$466 ==.
                                   5984 ;	..\COMMON\easyax5043.c:866: if (rschanged_int)
      001617 EF               [12] 5985 	mov	a,r7
      001618 FE               [12] 5986 	mov	r6,a
      001619 60 06            [24] 5987 	jz	00106$
                           000BEA  5988 	C$easyax5043.c$867$2$467 ==.
                                   5989 ;	..\COMMON\easyax5043.c:867: radio_write8(AX5043_REG_RADIOEVENTMASK0, 0x04);
      00161B 90 40 09         [24] 5990 	mov	dptr,#0x4009
      00161E 74 04            [12] 5991 	mov	a,#0x04
      001620 F0               [24] 5992 	movx	@dptr,a
                           000BF0  5993 	C$easyax5043.c$868$1$466 ==.
                                   5994 ;	..\COMMON\easyax5043.c:868: radio_write8(AX5043_REG_RSSIREFERENCE, axradio_phy_rssireference);
      001621                       5995 00106$:
      001621 90 57 02         [24] 5996 	mov	dptr,#_axradio_phy_rssireference
      001624 E4               [12] 5997 	clr	a
      001625 93               [24] 5998 	movc	a,@a+dptr
      001626 90 42 2C         [24] 5999 	mov	dptr,#0x422c
      001629 F0               [24] 6000 	movx	@dptr,a
                           000BF9  6001 	C$easyax5043.c$869$1$466 ==.
                                   6002 ;	..\COMMON\easyax5043.c:869: ax5043_set_registers_rxcont();
      00162A C0 06            [24] 6003 	push	ar6
      00162C 12 06 9E         [24] 6004 	lcall	_ax5043_set_registers_rxcont
      00162F D0 06            [24] 6005 	pop	ar6
                           000C00  6006 	C$easyax5043.c$882$2$469 ==.
                                   6007 ;	..\COMMON\easyax5043.c:882: radio_write8(AX5043_REG_PKTSTOREFLAGS, radio_read8(AX5043_REG_PKTSTOREFLAGS) & (uint8_t)~0x40);
      001631 90 42 32         [24] 6008 	mov	dptr,#0x4232
      001634 E0               [24] 6009 	movx	a,@dptr
      001635 54 BF            [12] 6010 	anl	a,#0xbf
      001637 FF               [12] 6011 	mov	r7,a
      001638 F0               [24] 6012 	movx	@dptr,a
                           000C08  6013 	C$easyax5043.c$885$2$470 ==.
                                   6014 ;	..\COMMON\easyax5043.c:885: radio_write8(AX5043_REG_FIFOSTAT, 3); // clear FIFO data & flags
      001639 90 40 28         [24] 6015 	mov	dptr,#0x4028
      00163C 74 03            [12] 6016 	mov	a,#0x03
      00163E F0               [24] 6017 	movx	@dptr,a
                           000C0E  6018 	C$easyax5043.c$886$2$471 ==.
                                   6019 ;	..\COMMON\easyax5043.c:886: radio_write8(AX5043_REG_PWRMODE, AX5043_PWRSTATE_FULL_RX);
      00163F 90 40 02         [24] 6020 	mov	dptr,#0x4002
      001642 74 09            [12] 6021 	mov	a,#0x09
      001644 F0               [24] 6022 	movx	@dptr,a
                           000C14  6023 	C$easyax5043.c$887$1$466 ==.
                                   6024 ;	..\COMMON\easyax5043.c:887: axradio_trxstate = trxstate_rx;
      001645 75 09 01         [24] 6025 	mov	_axradio_trxstate,#0x01
                           000C17  6026 	C$easyax5043.c$888$1$466 ==.
                                   6027 ;	..\COMMON\easyax5043.c:888: if (rschanged_int)
      001648 EE               [12] 6028 	mov	a,r6
      001649 60 08            [24] 6029 	jz	00121$
                           000C1A  6030 	C$easyax5043.c$889$2$472 ==.
                                   6031 ;	..\COMMON\easyax5043.c:889: radio_write8(AX5043_REG_IRQMASK0, 0x41); //  enable FIFO not empty / radio controller irq
      00164B 90 40 07         [24] 6032 	mov	dptr,#0x4007
      00164E 74 41            [12] 6033 	mov	a,#0x41
      001650 F0               [24] 6034 	movx	@dptr,a
                           000C20  6035 	C$easyax5043.c$891$1$466 ==.
                                   6036 ;	..\COMMON\easyax5043.c:891: radio_write8(AX5043_REG_IRQMASK0, 0x01); //  enable FIFO not empty
      001651 80 06            [24] 6037 	sjmp	00127$
      001653                       6038 00121$:
      001653 90 40 07         [24] 6039 	mov	dptr,#0x4007
      001656 74 01            [12] 6040 	mov	a,#0x01
      001658 F0               [24] 6041 	movx	@dptr,a
                           000C28  6042 	C$easyax5043.c$892$1$466 ==.
                                   6043 ;	..\COMMON\easyax5043.c:892: radio_write8(AX5043_REG_IRQMASK1, 0x00);
      001659                       6044 00127$:
      001659 90 40 06         [24] 6045 	mov	dptr,#0x4006
      00165C E4               [12] 6046 	clr	a
      00165D F0               [24] 6047 	movx	@dptr,a
                           000C2D  6048 	C$easyax5043.c$893$1$466 ==.
                           000C2D  6049 	XG$ax5043_receiver_on_continuous$0$0 ==.
      00165E 22               [24] 6050 	ret
                                   6051 ;------------------------------------------------------------
                                   6052 ;Allocation info for local variables in function 'ax5043_receiver_on_wor'
                                   6053 ;------------------------------------------------------------
                                   6054 ;wp                        Allocated to registers r6 r7 
                                   6055 ;------------------------------------------------------------
                           000C2E  6056 	G$ax5043_receiver_on_wor$0$0 ==.
                           000C2E  6057 	C$easyax5043.c$895$1$466 ==.
                                   6058 ;	..\COMMON\easyax5043.c:895: __reentrantb void ax5043_receiver_on_wor(void) __reentrant
                                   6059 ;	-----------------------------------------
                                   6060 ;	 function ax5043_receiver_on_wor
                                   6061 ;	-----------------------------------------
      00165F                       6062 _ax5043_receiver_on_wor:
                           000C2E  6063 	C$easyax5043.c$897$2$477 ==.
                                   6064 ;	..\COMMON\easyax5043.c:897: radio_write8(AX5043_REG_BGNDRSSIGAIN, 0x02);
      00165F 90 42 2E         [24] 6065 	mov	dptr,#0x422e
      001662 74 02            [12] 6066 	mov	a,#0x02
      001664 F0               [24] 6067 	movx	@dptr,a
                           000C34  6068 	C$easyax5043.c$898$1$476 ==.
                                   6069 ;	..\COMMON\easyax5043.c:898: if(axradio_framing_enable_sfdcallback)
      001665 90 57 23         [24] 6070 	mov	dptr,#_axradio_framing_enable_sfdcallback
      001668 E4               [12] 6071 	clr	a
      001669 93               [24] 6072 	movc	a,@a+dptr
      00166A 60 06            [24] 6073 	jz	00109$
                           000C3B  6074 	C$easyax5043.c$899$2$478 ==.
                                   6075 ;	..\COMMON\easyax5043.c:899: radio_write8(AX5043_REG_RADIOEVENTMASK0, 0x04);
      00166C 90 40 09         [24] 6076 	mov	dptr,#0x4009
      00166F 74 04            [12] 6077 	mov	a,#0x04
      001671 F0               [24] 6078 	movx	@dptr,a
                           000C41  6079 	C$easyax5043.c$900$1$476 ==.
                                   6080 ;	..\COMMON\easyax5043.c:900: radio_write8(AX5043_REG_FIFOSTAT, 3); // clear FIFO data & flags
      001672                       6081 00109$:
      001672 90 40 28         [24] 6082 	mov	dptr,#0x4028
      001675 74 03            [12] 6083 	mov	a,#0x03
      001677 F0               [24] 6084 	movx	@dptr,a
                           000C47  6085 	C$easyax5043.c$901$2$480 ==.
                                   6086 ;	..\COMMON\easyax5043.c:901: radio_write8(AX5043_REG_LPOSCCONFIG, 0x01); // start LPOSC, slow mode
      001678 90 43 10         [24] 6087 	mov	dptr,#0x4310
      00167B 74 01            [12] 6088 	mov	a,#0x01
      00167D F0               [24] 6089 	movx	@dptr,a
                           000C4D  6090 	C$easyax5043.c$902$2$481 ==.
                                   6091 ;	..\COMMON\easyax5043.c:902: radio_write8(AX5043_REG_RSSIREFERENCE, axradio_phy_rssireference);
      00167E 90 57 02         [24] 6092 	mov	dptr,#_axradio_phy_rssireference
      001681 E4               [12] 6093 	clr	a
      001682 93               [24] 6094 	movc	a,@a+dptr
      001683 90 42 2C         [24] 6095 	mov	dptr,#0x422c
      001686 F0               [24] 6096 	movx	@dptr,a
                           000C56  6097 	C$easyax5043.c$903$1$476 ==.
                                   6098 ;	..\COMMON\easyax5043.c:903: ax5043_set_registers_rxwor();
      001687 12 06 8B         [24] 6099 	lcall	_ax5043_set_registers_rxwor
                           000C59  6100 	C$easyax5043.c$904$2$482 ==.
                                   6101 ;	..\COMMON\easyax5043.c:904: radio_write8(AX5043_REG_PKTSTOREFLAGS, (radio_read8(AX5043_REG_PKTSTOREFLAGS) & (uint8_t)~0x40));
      00168A 90 42 32         [24] 6102 	mov	dptr,#0x4232
      00168D E0               [24] 6103 	movx	a,@dptr
      00168E 54 BF            [12] 6104 	anl	a,#0xbf
      001690 FF               [12] 6105 	mov	r7,a
      001691 F0               [24] 6106 	movx	@dptr,a
                           000C61  6107 	C$easyax5043.c$906$2$483 ==.
                                   6108 ;	..\COMMON\easyax5043.c:906: radio_write8(AX5043_REG_PWRMODE, AX5043_PWRSTATE_WOR_RX);
      001692 90 40 02         [24] 6109 	mov	dptr,#0x4002
      001695 74 0B            [12] 6110 	mov	a,#0x0b
      001697 F0               [24] 6111 	movx	@dptr,a
                           000C67  6112 	C$easyax5043.c$907$1$476 ==.
                                   6113 ;	..\COMMON\easyax5043.c:907: axradio_trxstate = trxstate_rxwor;
      001698 75 09 02         [24] 6114 	mov	_axradio_trxstate,#0x02
                           000C6A  6115 	C$easyax5043.c$908$1$476 ==.
                                   6116 ;	..\COMMON\easyax5043.c:908: if(axradio_framing_enable_sfdcallback)
      00169B 90 57 23         [24] 6117 	mov	dptr,#_axradio_framing_enable_sfdcallback
      00169E E4               [12] 6118 	clr	a
      00169F 93               [24] 6119 	movc	a,@a+dptr
      0016A0 60 08            [24] 6120 	jz	00127$
                           000C71  6121 	C$easyax5043.c$909$2$484 ==.
                                   6122 ;	..\COMMON\easyax5043.c:909: radio_write8(AX5043_REG_IRQMASK0, 0x41); //  enable FIFO not empty / radio controller irq
      0016A2 90 40 07         [24] 6123 	mov	dptr,#0x4007
      0016A5 74 41            [12] 6124 	mov	a,#0x41
      0016A7 F0               [24] 6125 	movx	@dptr,a
                           000C77  6126 	C$easyax5043.c$911$1$476 ==.
                                   6127 ;	..\COMMON\easyax5043.c:911: radio_write8(AX5043_REG_IRQMASK0, 0x01); //  enable FIFO not empty
      0016A8 80 06            [24] 6128 	sjmp	00132$
      0016AA                       6129 00127$:
      0016AA 90 40 07         [24] 6130 	mov	dptr,#0x4007
      0016AD 74 01            [12] 6131 	mov	a,#0x01
      0016AF F0               [24] 6132 	movx	@dptr,a
      0016B0                       6133 00132$:
                           000C7F  6134 	C$easyax5043.c$915$1$476 ==.
                                   6135 ;	..\COMMON\easyax5043.c:915: if (((PALTRADIO & 0x40) && ((radio_read8(AX5043_REG_PINFUNCPWRAMP) & 0x0F) == 0x07)) || ((PALTRADIO & 0x80) && ((radio_read8(AX5043_REG_PINFUNCANTSEL) & 0x07) == 0x04))) // pass through of TCXO_EN
      0016B0 90 70 46         [24] 6136 	mov	dptr,#_PALTRADIO
      0016B3 E0               [24] 6137 	movx	a,@dptr
      0016B4 FF               [12] 6138 	mov	r7,a
      0016B5 30 E6 0D         [24] 6139 	jnb	acc.6,00143$
      0016B8 90 40 26         [24] 6140 	mov	dptr,#0x4026
      0016BB E0               [24] 6141 	movx	a,@dptr
      0016BC FF               [12] 6142 	mov	r7,a
      0016BD 53 07 0F         [24] 6143 	anl	ar7,#0x0f
      0016C0 BF 07 02         [24] 6144 	cjne	r7,#0x07,00176$
      0016C3 80 13            [24] 6145 	sjmp	00133$
      0016C5                       6146 00176$:
      0016C5                       6147 00143$:
      0016C5 90 70 46         [24] 6148 	mov	dptr,#_PALTRADIO
      0016C8 E0               [24] 6149 	movx	a,@dptr
      0016C9 FF               [12] 6150 	mov	r7,a
      0016CA 30 E7 19         [24] 6151 	jnb	acc.7,00144$
      0016CD 90 40 25         [24] 6152 	mov	dptr,#0x4025
      0016D0 E0               [24] 6153 	movx	a,@dptr
      0016D1 FF               [12] 6154 	mov	r7,a
      0016D2 53 07 07         [24] 6155 	anl	ar7,#0x07
      0016D5 BF 04 0E         [24] 6156 	cjne	r7,#0x04,00144$
                           000CA7  6157 	C$easyax5043.c$918$2$486 ==.
                                   6158 ;	..\COMMON\easyax5043.c:918: radio_write8(AX5043_REG_IRQMASK0, radio_read8(AX5043_REG_IRQMASK0) | 0x80); // power irq (AX8052F143 WOR with TCXO)
      0016D8                       6159 00133$:
      0016D8 90 40 07         [24] 6160 	mov	dptr,#0x4007
      0016DB E0               [24] 6161 	movx	a,@dptr
      0016DC 44 80            [12] 6162 	orl	a,#0x80
      0016DE FF               [12] 6163 	mov	r7,a
      0016DF F0               [24] 6164 	movx	@dptr,a
                           000CAF  6165 	C$easyax5043.c$919$3$488 ==.
                                   6166 ;	..\COMMON\easyax5043.c:919: radio_write8(AX5043_REG_POWIRQMASK, 0x90); // interrupt when vddana ready (AX8052F143 WOR with TCXO)
      0016E0 90 40 05         [24] 6167 	mov	dptr,#0x4005
      0016E3 74 90            [12] 6168 	mov	a,#0x90
      0016E5 F0               [24] 6169 	movx	@dptr,a
                           000CB5  6170 	C$easyax5043.c$922$1$476 ==.
                                   6171 ;	..\COMMON\easyax5043.c:922: radio_write8(AX5043_REG_IRQMASK1, 0x01); // xtal ready
      0016E6                       6172 00144$:
      0016E6 90 40 06         [24] 6173 	mov	dptr,#0x4006
      0016E9 74 01            [12] 6174 	mov	a,#0x01
      0016EB F0               [24] 6175 	movx	@dptr,a
                           000CBB  6176 	C$easyax5043.c$924$2$476 ==.
                                   6177 ;	..\COMMON\easyax5043.c:924: uint16_t wp = axradio_wor_period;
      0016EC 90 57 2F         [24] 6178 	mov	dptr,#_axradio_wor_period
      0016EF E4               [12] 6179 	clr	a
      0016F0 93               [24] 6180 	movc	a,@a+dptr
      0016F1 FE               [12] 6181 	mov	r6,a
      0016F2 74 01            [12] 6182 	mov	a,#0x01
      0016F4 93               [24] 6183 	movc	a,@a+dptr
                           000CC4  6184 	C$easyax5043.c$925$3$491 ==.
                                   6185 ;	..\COMMON\easyax5043.c:925: radio_write8(AX5043_REG_WAKEUPFREQ1, ((wp >> 8) & 0xFF));
      0016F5 FF               [12] 6186 	mov	r7,a
      0016F6 FD               [12] 6187 	mov	r5,a
      0016F7 90 40 6C         [24] 6188 	mov	dptr,#0x406c
      0016FA ED               [12] 6189 	mov	a,r5
      0016FB F0               [24] 6190 	movx	@dptr,a
                           000CCB  6191 	C$easyax5043.c$926$3$492 ==.
                                   6192 ;	..\COMMON\easyax5043.c:926: radio_write8(AX5043_REG_WAKEUPFREQ0, ((wp >> 0) & 0xFF)); // actually wakeup period measured in LP OSC cycles
      0016FC 8E 05            [24] 6193 	mov	ar5,r6
      0016FE 90 40 6D         [24] 6194 	mov	dptr,#0x406d
      001701 ED               [12] 6195 	mov	a,r5
      001702 F0               [24] 6196 	movx	@dptr,a
                           000CD2  6197 	C$easyax5043.c$927$2$490 ==.
                                   6198 ;	..\COMMON\easyax5043.c:927: wp += radio_read16(AX5043_REG_WAKEUPTIMER1);
      001703 90 00 68         [24] 6199 	mov	dptr,#0x0068
      001706 12 4A 2F         [24] 6200 	lcall	_radio_read16
      001709 AC 82            [24] 6201 	mov	r4,dpl
      00170B AD 83            [24] 6202 	mov	r5,dph
      00170D EC               [12] 6203 	mov	a,r4
      00170E 2E               [12] 6204 	add	a,r6
      00170F FE               [12] 6205 	mov	r6,a
      001710 ED               [12] 6206 	mov	a,r5
      001711 3F               [12] 6207 	addc	a,r7
                           000CE1  6208 	C$easyax5043.c$928$3$493 ==.
                                   6209 ;	..\COMMON\easyax5043.c:928: radio_write8(AX5043_REG_WAKEUP1, ((wp >> 8) & 0xFF));
      001712 FD               [12] 6210 	mov	r5,a
      001713 90 40 6A         [24] 6211 	mov	dptr,#0x406a
      001716 ED               [12] 6212 	mov	a,r5
      001717 F0               [24] 6213 	movx	@dptr,a
                           000CE7  6214 	C$easyax5043.c$929$3$494 ==.
                                   6215 ;	..\COMMON\easyax5043.c:929: radio_write8(AX5043_REG_WAKEUP0, ((wp >> 0) & 0xFF));
      001718 90 40 6B         [24] 6216 	mov	dptr,#0x406b
      00171B EE               [12] 6217 	mov	a,r6
      00171C F0               [24] 6218 	movx	@dptr,a
                           000CEC  6219 	C$easyax5043.c$931$2$490 ==.
                           000CEC  6220 	XG$ax5043_receiver_on_wor$0$0 ==.
      00171D 22               [24] 6221 	ret
                                   6222 ;------------------------------------------------------------
                                   6223 ;Allocation info for local variables in function 'ax5043_prepare_tx'
                                   6224 ;------------------------------------------------------------
                           000CED  6225 	G$ax5043_prepare_tx$0$0 ==.
                           000CED  6226 	C$easyax5043.c$933$2$490 ==.
                                   6227 ;	..\COMMON\easyax5043.c:933: __reentrantb void ax5043_prepare_tx(void) __reentrant
                                   6228 ;	-----------------------------------------
                                   6229 ;	 function ax5043_prepare_tx
                                   6230 ;	-----------------------------------------
      00171E                       6231 _ax5043_prepare_tx:
                           000CED  6232 	C$easyax5043.c$935$2$497 ==.
                                   6233 ;	..\COMMON\easyax5043.c:935: radio_write8(AX5043_REG_PWRMODE, AX5043_PWRSTATE_XTAL_ON);
                           000CED  6234 	C$easyax5043.c$936$2$498 ==.
                                   6235 ;	..\COMMON\easyax5043.c:936: radio_write8(AX5043_REG_PWRMODE, AX5043_PWRSTATE_FIFO_ON);
      00171E 90 40 02         [24] 6236 	mov	dptr,#0x4002
      001721 74 05            [12] 6237 	mov	a,#0x05
      001723 F0               [24] 6238 	movx	@dptr,a
      001724 74 07            [12] 6239 	mov	a,#0x07
      001726 F0               [24] 6240 	movx	@dptr,a
                           000CF6  6241 	C$easyax5043.c$937$1$496 ==.
                                   6242 ;	..\COMMON\easyax5043.c:937: ax5043_init_registers_tx();
      001727 12 0B 15         [24] 6243 	lcall	_ax5043_init_registers_tx
                           000CF9  6244 	C$easyax5043.c$938$2$499 ==.
                                   6245 ;	..\COMMON\easyax5043.c:938: radio_write8(AX5043_REG_FIFOTHRESH1, 0);
      00172A 90 40 2E         [24] 6246 	mov	dptr,#0x402e
      00172D E4               [12] 6247 	clr	a
      00172E F0               [24] 6248 	movx	@dptr,a
                           000CFE  6249 	C$easyax5043.c$939$2$500 ==.
                                   6250 ;	..\COMMON\easyax5043.c:939: radio_write8(AX5043_REG_FIFOTHRESH0, 0x80);
      00172F 90 40 2F         [24] 6251 	mov	dptr,#0x402f
      001732 74 80            [12] 6252 	mov	a,#0x80
      001734 F0               [24] 6253 	movx	@dptr,a
                           000D04  6254 	C$easyax5043.c$940$1$496 ==.
                                   6255 ;	..\COMMON\easyax5043.c:940: axradio_trxstate = trxstate_tx_xtalwait;
      001735 75 09 09         [24] 6256 	mov	_axradio_trxstate,#0x09
                           000D07  6257 	C$easyax5043.c$941$2$501 ==.
                                   6258 ;	..\COMMON\easyax5043.c:941: radio_write8(AX5043_REG_IRQMASK0, 0x00);
      001738 90 40 07         [24] 6259 	mov	dptr,#0x4007
      00173B E4               [12] 6260 	clr	a
      00173C F0               [24] 6261 	movx	@dptr,a
                           000D0C  6262 	C$easyax5043.c$942$2$502 ==.
                                   6263 ;	..\COMMON\easyax5043.c:942: radio_write8(AX5043_REG_IRQMASK1, 0x01); // enable xtal ready interrupt
      00173D 90 40 06         [24] 6264 	mov	dptr,#0x4006
      001740 04               [12] 6265 	inc	a
      001741 F0               [24] 6266 	movx	@dptr,a
                           000D11  6267 	C$easyax5043.c$943$1$496 ==.
                                   6268 ;	..\COMMON\easyax5043.c:943: radio_read8(AX5043_REG_POWSTICKYSTAT); // clear pwr management sticky status --> brownout gate works
      001742 90 40 04         [24] 6269 	mov	dptr,#0x4004
      001745 E0               [24] 6270 	movx	a,@dptr
                           000D15  6271 	C$easyax5043.c$944$1$496 ==.
                           000D15  6272 	XG$ax5043_prepare_tx$0$0 ==.
      001746 22               [24] 6273 	ret
                                   6274 ;------------------------------------------------------------
                                   6275 ;Allocation info for local variables in function 'ax5043_off'
                                   6276 ;------------------------------------------------------------
                           000D16  6277 	G$ax5043_off$0$0 ==.
                           000D16  6278 	C$easyax5043.c$946$1$496 ==.
                                   6279 ;	..\COMMON\easyax5043.c:946: __reentrantb void ax5043_off(void) __reentrant
                                   6280 ;	-----------------------------------------
                                   6281 ;	 function ax5043_off
                                   6282 ;	-----------------------------------------
      001747                       6283 _ax5043_off:
                           000D16  6284 	C$easyax5043.c$948$1$504 ==.
                                   6285 ;	..\COMMON\easyax5043.c:948: ax5043_off_xtal();
      001747 12 17 50         [24] 6286 	lcall	_ax5043_off_xtal
                           000D19  6287 	C$easyax5043.c$949$2$505 ==.
                                   6288 ;	..\COMMON\easyax5043.c:949: radio_write8(AX5043_REG_PWRMODE, AX5043_PWRSTATE_POWERDOWN);
      00174A 90 40 02         [24] 6289 	mov	dptr,#0x4002
      00174D E4               [12] 6290 	clr	a
      00174E F0               [24] 6291 	movx	@dptr,a
                           000D1E  6292 	C$easyax5043.c$950$1$504 ==.
                           000D1E  6293 	XG$ax5043_off$0$0 ==.
      00174F 22               [24] 6294 	ret
                                   6295 ;------------------------------------------------------------
                                   6296 ;Allocation info for local variables in function 'ax5043_off_xtal'
                                   6297 ;------------------------------------------------------------
                           000D1F  6298 	G$ax5043_off_xtal$0$0 ==.
                           000D1F  6299 	C$easyax5043.c$952$1$504 ==.
                                   6300 ;	..\COMMON\easyax5043.c:952: __reentrantb void ax5043_off_xtal(void) __reentrant
                                   6301 ;	-----------------------------------------
                                   6302 ;	 function ax5043_off_xtal
                                   6303 ;	-----------------------------------------
      001750                       6304 _ax5043_off_xtal:
                           000D1F  6305 	C$easyax5043.c$954$2$508 ==.
                                   6306 ;	..\COMMON\easyax5043.c:954: radio_write8(AX5043_REG_IRQMASK0, 0x00); // IRQ off
      001750 90 40 07         [24] 6307 	mov	dptr,#0x4007
      001753 E4               [12] 6308 	clr	a
      001754 F0               [24] 6309 	movx	@dptr,a
                           000D24  6310 	C$easyax5043.c$955$2$509 ==.
                                   6311 ;	..\COMMON\easyax5043.c:955: radio_write8(AX5043_REG_IRQMASK1, 0x00);
      001755 90 40 06         [24] 6312 	mov	dptr,#0x4006
      001758 F0               [24] 6313 	movx	@dptr,a
                           000D28  6314 	C$easyax5043.c$956$2$510 ==.
                                   6315 ;	..\COMMON\easyax5043.c:956: radio_write8(AX5043_REG_PWRMODE, AX5043_PWRSTATE_XTAL_ON);
      001759 90 40 02         [24] 6316 	mov	dptr,#0x4002
      00175C 74 05            [12] 6317 	mov	a,#0x05
      00175E F0               [24] 6318 	movx	@dptr,a
                           000D2E  6319 	C$easyax5043.c$957$2$511 ==.
                                   6320 ;	..\COMMON\easyax5043.c:957: radio_write8(AX5043_REG_LPOSCCONFIG, 0x00); // LPOSC off
      00175F 90 43 10         [24] 6321 	mov	dptr,#0x4310
      001762 E4               [12] 6322 	clr	a
      001763 F0               [24] 6323 	movx	@dptr,a
                           000D33  6324 	C$easyax5043.c$958$1$507 ==.
                                   6325 ;	..\COMMON\easyax5043.c:958: axradio_trxstate = trxstate_off;
                                   6326 ;	1-genFromRTrack replaced	mov	_axradio_trxstate,#0x00
      001764 F5 09            [12] 6327 	mov	_axradio_trxstate,a
                           000D35  6328 	C$easyax5043.c$959$1$507 ==.
                           000D35  6329 	XG$ax5043_off_xtal$0$0 ==.
      001766 22               [24] 6330 	ret
                                   6331 ;------------------------------------------------------------
                                   6332 ;Allocation info for local variables in function 'axradio_wait_for_xtal'
                                   6333 ;------------------------------------------------------------
                                   6334 ;__00010016                Allocated to registers 
                                   6335 ;crit                      Allocated to registers r7 
                                   6336 ;crit                      Allocated to registers r7 
                                   6337 ;__00030019                Allocated to registers 
                                   6338 ;crit                      Allocated to registers 
                                   6339 ;__00020021                Allocated to registers 
                                   6340 ;crit                      Allocated to registers 
                                   6341 ;------------------------------------------------------------
                           000D36  6342 	G$axradio_wait_for_xtal$0$0 ==.
                           000D36  6343 	C$easyax5043.c$961$1$507 ==.
                                   6344 ;	..\COMMON\easyax5043.c:961: void axradio_wait_for_xtal(void)
                                   6345 ;	-----------------------------------------
                                   6346 ;	 function axradio_wait_for_xtal
                                   6347 ;	-----------------------------------------
      001767                       6348 _axradio_wait_for_xtal:
                           000D36  6349 	C$libmftypes.h$351$4$518 ==.
                                   6350 ;	C:/Program Files (x86)/ON Semiconductor/AXSDB/libmf/include/libmftypes.h:351: criticalsection_t crit = IE & 0x80;
      001767 74 80            [12] 6351 	mov	a,#0x80
      001769 55 A8            [12] 6352 	anl	a,_IE
      00176B FF               [12] 6353 	mov	r7,a
                           000D3B  6354 	C$easyax5043.c$963$4$518 ==.
                                   6355 ;	..\COMMON\easyax5043.c:963: criticalsection_t crit = enter_critical();
      00176C C2 AF            [12] 6356 	clr	_EA
                           000D3D  6357 	C$easyax5043.c$964$1$513 ==.
                                   6358 ;	..\COMMON\easyax5043.c:964: axradio_trxstate = trxstate_wait_xtal;
      00176E 75 09 03         [24] 6359 	mov	_axradio_trxstate,#0x03
                           000D40  6360 	C$easyax5043.c$965$2$514 ==.
                                   6361 ;	..\COMMON\easyax5043.c:965: radio_write8(AX5043_REG_IRQMASK1, (radio_read8(AX5043_REG_IRQMASK1) | 0x01)); // enable xtal ready interrupt
      001771 90 40 06         [24] 6362 	mov	dptr,#0x4006
      001774 E0               [24] 6363 	movx	a,@dptr
      001775 44 01            [12] 6364 	orl	a,#0x01
      001777 FE               [12] 6365 	mov	r6,a
      001778 F0               [24] 6366 	movx	@dptr,a
      001779                       6367 00111$:
                           000D48  6368 	C$libmftypes.h$373$5$521 ==.
                                   6369 ;	C:/Program Files (x86)/ON Semiconductor/AXSDB/libmf/include/libmftypes.h:373: EA = 0;
      001779 C2 AF            [12] 6370 	clr	_EA
                           000D4A  6371 	C$easyax5043.c$968$2$515 ==.
                                   6372 ;	..\COMMON\easyax5043.c:968: if (axradio_trxstate == trxstate_xtal_ready)
      00177B 74 04            [12] 6373 	mov	a,#0x04
      00177D B5 09 02         [24] 6374 	cjne	a,_axradio_trxstate,00121$
      001780 80 16            [24] 6375 	sjmp	00106$
      001782                       6376 00121$:
                           000D51  6377 	C$easyax5043.c$970$2$515 ==.
                                   6378 ;	..\COMMON\easyax5043.c:970: wtimer_idle(WTFLAG_CANSTANDBY);
      001782 75 82 02         [24] 6379 	mov	dpl,#0x02
      001785 C0 07            [24] 6380 	push	ar7
      001787 12 45 77         [24] 6381 	lcall	_wtimer_idle
      00178A D0 07            [24] 6382 	pop	ar7
                           000D5B  6383 	C$libmftypes.h$358$5$524 ==.
                                   6384 ;	C:/Program Files (x86)/ON Semiconductor/AXSDB/libmf/include/libmftypes.h:358: IE |= crit;
      00178C EF               [12] 6385 	mov	a,r7
      00178D 42 A8            [12] 6386 	orl	_IE,a
                           000D5E  6387 	C$easyax5043.c$972$2$515 ==.
                                   6388 ;	..\COMMON\easyax5043.c:972: wtimer_runcallbacks();
      00178F C0 07            [24] 6389 	push	ar7
      001791 12 45 FB         [24] 6390 	lcall	_wtimer_runcallbacks
      001794 D0 07            [24] 6391 	pop	ar7
      001796 80 E1            [24] 6392 	sjmp	00111$
      001798                       6393 00106$:
                           000D67  6394 	C$libmftypes.h$358$4$527 ==.
                                   6395 ;	C:/Program Files (x86)/ON Semiconductor/AXSDB/libmf/include/libmftypes.h:358: IE |= crit;
      001798 EF               [12] 6396 	mov	a,r7
      001799 42 A8            [12] 6397 	orl	_IE,a
                           000D6A  6398 	C$easyax5043.c$974$3$526 ==.
                                   6399 ;	..\COMMON\easyax5043.c:974: exit_critical(crit);     //  Restore all Interrupts
                           000D6A  6400 	C$easyax5043.c$975$3$526 ==.
                           000D6A  6401 	XG$axradio_wait_for_xtal$0$0 ==.
      00179B 22               [24] 6402 	ret
                                   6403 ;------------------------------------------------------------
                                   6404 ;Allocation info for local variables in function 'axradio_setaddrregs'
                                   6405 ;------------------------------------------------------------
                                   6406 ;pn                        Allocated to registers r6 r7 
                                   6407 ;inv                       Allocated to registers r5 
                                   6408 ;------------------------------------------------------------
                           000D6B  6409 	Feasyax5043$axradio_setaddrregs$0$0 ==.
                           000D6B  6410 	C$easyax5043.c$977$3$526 ==.
                                   6411 ;	..\COMMON\easyax5043.c:977: static void axradio_setaddrregs(void)
                                   6412 ;	-----------------------------------------
                                   6413 ;	 function axradio_setaddrregs
                                   6414 ;	-----------------------------------------
      00179C                       6415 _axradio_setaddrregs:
                           000D6B  6416 	C$easyax5043.c$979$2$530 ==.
                                   6417 ;	..\COMMON\easyax5043.c:979: radio_write8(AX5043_REG_PKTADDR0, axradio_localaddr.addr[0]);
      00179C 90 00 1E         [24] 6418 	mov	dptr,#_axradio_localaddr
      00179F E0               [24] 6419 	movx	a,@dptr
      0017A0 90 42 07         [24] 6420 	mov	dptr,#0x4207
      0017A3 F0               [24] 6421 	movx	@dptr,a
                           000D73  6422 	C$easyax5043.c$980$2$531 ==.
                                   6423 ;	..\COMMON\easyax5043.c:980: radio_write8(AX5043_REG_PKTADDR1, axradio_localaddr.addr[1]);
      0017A4 90 00 1F         [24] 6424 	mov	dptr,#(_axradio_localaddr + 0x0001)
      0017A7 E0               [24] 6425 	movx	a,@dptr
      0017A8 90 42 06         [24] 6426 	mov	dptr,#0x4206
      0017AB F0               [24] 6427 	movx	@dptr,a
                           000D7B  6428 	C$easyax5043.c$981$2$532 ==.
                                   6429 ;	..\COMMON\easyax5043.c:981: radio_write8(AX5043_REG_PKTADDR2, axradio_localaddr.addr[2]);
      0017AC 90 00 20         [24] 6430 	mov	dptr,#(_axradio_localaddr + 0x0002)
      0017AF E0               [24] 6431 	movx	a,@dptr
      0017B0 90 42 05         [24] 6432 	mov	dptr,#0x4205
      0017B3 F0               [24] 6433 	movx	@dptr,a
                           000D83  6434 	C$easyax5043.c$982$2$533 ==.
                                   6435 ;	..\COMMON\easyax5043.c:982: radio_write8(AX5043_REG_PKTADDR3, axradio_localaddr.addr[3]);
      0017B4 90 00 21         [24] 6436 	mov	dptr,#(_axradio_localaddr + 0x0003)
      0017B7 E0               [24] 6437 	movx	a,@dptr
      0017B8 90 42 04         [24] 6438 	mov	dptr,#0x4204
      0017BB F0               [24] 6439 	movx	@dptr,a
                           000D8B  6440 	C$easyax5043.c$984$2$534 ==.
                                   6441 ;	..\COMMON\easyax5043.c:984: radio_write8(AX5043_REG_PKTADDRMASK0, axradio_localaddr.mask[0]);
      0017BC 90 00 23         [24] 6442 	mov	dptr,#(_axradio_localaddr + 0x0005)
      0017BF E0               [24] 6443 	movx	a,@dptr
      0017C0 90 42 0B         [24] 6444 	mov	dptr,#0x420b
      0017C3 F0               [24] 6445 	movx	@dptr,a
                           000D93  6446 	C$easyax5043.c$985$2$535 ==.
                                   6447 ;	..\COMMON\easyax5043.c:985: radio_write8(AX5043_REG_PKTADDRMASK1, axradio_localaddr.mask[1]);
      0017C4 90 00 24         [24] 6448 	mov	dptr,#(_axradio_localaddr + 0x0006)
      0017C7 E0               [24] 6449 	movx	a,@dptr
      0017C8 90 42 0A         [24] 6450 	mov	dptr,#0x420a
      0017CB F0               [24] 6451 	movx	@dptr,a
                           000D9B  6452 	C$easyax5043.c$986$2$536 ==.
                                   6453 ;	..\COMMON\easyax5043.c:986: radio_write8(AX5043_REG_PKTADDRMASK2, axradio_localaddr.mask[2]);
      0017CC 90 00 25         [24] 6454 	mov	dptr,#(_axradio_localaddr + 0x0007)
      0017CF E0               [24] 6455 	movx	a,@dptr
      0017D0 90 42 09         [24] 6456 	mov	dptr,#0x4209
      0017D3 F0               [24] 6457 	movx	@dptr,a
                           000DA3  6458 	C$easyax5043.c$987$2$537 ==.
                                   6459 ;	..\COMMON\easyax5043.c:987: radio_write8(AX5043_REG_PKTADDRMASK3, axradio_localaddr.mask[3]);
      0017D4 90 00 26         [24] 6460 	mov	dptr,#(_axradio_localaddr + 0x0008)
      0017D7 E0               [24] 6461 	movx	a,@dptr
      0017D8 FF               [12] 6462 	mov	r7,a
      0017D9 90 42 08         [24] 6463 	mov	dptr,#0x4208
      0017DC F0               [24] 6464 	movx	@dptr,a
                           000DAC  6465 	C$easyax5043.c$989$1$529 ==.
                                   6466 ;	..\COMMON\easyax5043.c:989: if (axradio_phy_pn9 && axradio_framing_addrlen) {
      0017DD 90 56 F3         [24] 6467 	mov	dptr,#_axradio_phy_pn9
      0017E0 E4               [12] 6468 	clr	a
      0017E1 93               [24] 6469 	movc	a,@a+dptr
      0017E2 70 03            [24] 6470 	jnz	00153$
      0017E4 02 18 D3         [24] 6471 	ljmp	00142$
      0017E7                       6472 00153$:
      0017E7 90 57 16         [24] 6473 	mov	dptr,#_axradio_framing_addrlen
      0017EA E4               [12] 6474 	clr	a
      0017EB 93               [24] 6475 	movc	a,@a+dptr
      0017EC 70 03            [24] 6476 	jnz	00154$
      0017EE 02 18 D3         [24] 6477 	ljmp	00142$
      0017F1                       6478 00154$:
                           000DC0  6479 	C$easyax5043.c$990$2$529 ==.
                                   6480 ;	..\COMMON\easyax5043.c:990: uint16_t __autodata pn = 0x1ff;
      0017F1 7E FF            [12] 6481 	mov	r6,#0xff
      0017F3 7F 01            [12] 6482 	mov	r7,#0x01
                           000DC4  6483 	C$easyax5043.c$991$2$538 ==.
                                   6484 ;	..\COMMON\easyax5043.c:991: uint8_t __autodata inv = -(radio_read8(AX5043_REG_ENCODING) & 0x01);
      0017F5 90 40 11         [24] 6485 	mov	dptr,#0x4011
      0017F8 E0               [24] 6486 	movx	a,@dptr
      0017F9 FD               [12] 6487 	mov	r5,a
      0017FA 53 05 01         [24] 6488 	anl	ar5,#0x01
      0017FD C3               [12] 6489 	clr	c
      0017FE E4               [12] 6490 	clr	a
      0017FF 9D               [12] 6491 	subb	a,r5
      001800 FD               [12] 6492 	mov	r5,a
                           000DD0  6493 	C$easyax5043.c$992$2$538 ==.
                                   6494 ;	..\COMMON\easyax5043.c:992: if (axradio_framing_destaddrpos != 0xff)
      001801 90 57 17         [24] 6495 	mov	dptr,#_axradio_framing_destaddrpos
      001804 E4               [12] 6496 	clr	a
      001805 93               [24] 6497 	movc	a,@a+dptr
      001806 FC               [12] 6498 	mov	r4,a
      001807 BC FF 02         [24] 6499 	cjne	r4,#0xff,00155$
      00180A 80 26            [24] 6500 	sjmp	00127$
      00180C                       6501 00155$:
                           000DDB  6502 	C$easyax5043.c$993$2$538 ==.
                                   6503 ;	..\COMMON\easyax5043.c:993: pn = pn9_advance_bits(pn, axradio_framing_destaddrpos << 3);
      00180C E4               [12] 6504 	clr	a
      00180D C4               [12] 6505 	swap	a
      00180E 03               [12] 6506 	rr	a
      00180F 54 F8            [12] 6507 	anl	a,#0xf8
      001811 CC               [12] 6508 	xch	a,r4
      001812 C4               [12] 6509 	swap	a
      001813 03               [12] 6510 	rr	a
      001814 CC               [12] 6511 	xch	a,r4
      001815 6C               [12] 6512 	xrl	a,r4
      001816 CC               [12] 6513 	xch	a,r4
      001817 54 F8            [12] 6514 	anl	a,#0xf8
      001819 CC               [12] 6515 	xch	a,r4
      00181A 6C               [12] 6516 	xrl	a,r4
      00181B FB               [12] 6517 	mov	r3,a
      00181C C0 05            [24] 6518 	push	ar5
      00181E C0 04            [24] 6519 	push	ar4
      001820 C0 03            [24] 6520 	push	ar3
      001822 90 01 FF         [24] 6521 	mov	dptr,#0x01ff
      001825 12 54 DD         [24] 6522 	lcall	_pn9_advance_bits
      001828 AE 82            [24] 6523 	mov	r6,dpl
      00182A AF 83            [24] 6524 	mov	r7,dph
      00182C 15 81            [12] 6525 	dec	sp
      00182E 15 81            [12] 6526 	dec	sp
      001830 D0 05            [24] 6527 	pop	ar5
                           000E01  6528 	C$easyax5043.c$994$2$538 ==.
                                   6529 ;	..\COMMON\easyax5043.c:994: radio_write8(AX5043_REG_PKTADDR0, (radio_read8(AX5043_REG_PKTADDR0) ^ (pn ^ inv)));
      001832                       6530 00127$:
      001832 90 42 07         [24] 6531 	mov	dptr,#0x4207
      001835 E0               [24] 6532 	movx	a,@dptr
      001836 FC               [12] 6533 	mov	r4,a
      001837 7B 00            [12] 6534 	mov	r3,#0x00
      001839 ED               [12] 6535 	mov	a,r5
      00183A 6E               [12] 6536 	xrl	a,r6
      00183B F9               [12] 6537 	mov	r1,a
      00183C EB               [12] 6538 	mov	a,r3
      00183D 6F               [12] 6539 	xrl	a,r7
      00183E FA               [12] 6540 	mov	r2,a
      00183F 8C 00            [24] 6541 	mov	ar0,r4
      001841 7C 00            [12] 6542 	mov	r4,#0x00
      001843 E8               [12] 6543 	mov	a,r0
      001844 62 01            [12] 6544 	xrl	ar1,a
      001846 EC               [12] 6545 	mov	a,r4
      001847 62 02            [12] 6546 	xrl	ar2,a
      001849 90 42 07         [24] 6547 	mov	dptr,#0x4207
      00184C E9               [12] 6548 	mov	a,r1
      00184D F0               [24] 6549 	movx	@dptr,a
                           000E1D  6550 	C$easyax5043.c$995$2$538 ==.
                                   6551 ;	..\COMMON\easyax5043.c:995: pn = pn9_advance_byte(pn);
      00184E 8E 82            [24] 6552 	mov	dpl,r6
      001850 8F 83            [24] 6553 	mov	dph,r7
      001852 C0 05            [24] 6554 	push	ar5
      001854 C0 03            [24] 6555 	push	ar3
      001856 12 56 14         [24] 6556 	lcall	_pn9_advance_byte
      001859 AE 82            [24] 6557 	mov	r6,dpl
      00185B AF 83            [24] 6558 	mov	r7,dph
      00185D D0 03            [24] 6559 	pop	ar3
      00185F D0 05            [24] 6560 	pop	ar5
                           000E30  6561 	C$easyax5043.c$996$3$540 ==.
                                   6562 ;	..\COMMON\easyax5043.c:996: radio_write8(AX5043_REG_PKTADDR1, (radio_read8(AX5043_REG_PKTADDR1) ^ (pn ^ inv)));
      001861 90 42 06         [24] 6563 	mov	dptr,#0x4206
      001864 E0               [24] 6564 	movx	a,@dptr
      001865 FC               [12] 6565 	mov	r4,a
      001866 ED               [12] 6566 	mov	a,r5
      001867 6E               [12] 6567 	xrl	a,r6
      001868 F9               [12] 6568 	mov	r1,a
      001869 EB               [12] 6569 	mov	a,r3
      00186A 6F               [12] 6570 	xrl	a,r7
      00186B FA               [12] 6571 	mov	r2,a
      00186C 8C 00            [24] 6572 	mov	ar0,r4
      00186E 7C 00            [12] 6573 	mov	r4,#0x00
      001870 E8               [12] 6574 	mov	a,r0
      001871 62 01            [12] 6575 	xrl	ar1,a
      001873 EC               [12] 6576 	mov	a,r4
      001874 62 02            [12] 6577 	xrl	ar2,a
      001876 90 42 06         [24] 6578 	mov	dptr,#0x4206
      001879 E9               [12] 6579 	mov	a,r1
      00187A F0               [24] 6580 	movx	@dptr,a
                           000E4A  6581 	C$easyax5043.c$997$2$538 ==.
                                   6582 ;	..\COMMON\easyax5043.c:997: pn = pn9_advance_byte(pn);
      00187B 8E 82            [24] 6583 	mov	dpl,r6
      00187D 8F 83            [24] 6584 	mov	dph,r7
      00187F C0 05            [24] 6585 	push	ar5
      001881 C0 03            [24] 6586 	push	ar3
      001883 12 56 14         [24] 6587 	lcall	_pn9_advance_byte
      001886 AE 82            [24] 6588 	mov	r6,dpl
      001888 AF 83            [24] 6589 	mov	r7,dph
      00188A D0 03            [24] 6590 	pop	ar3
      00188C D0 05            [24] 6591 	pop	ar5
                           000E5D  6592 	C$easyax5043.c$998$3$541 ==.
                                   6593 ;	..\COMMON\easyax5043.c:998: radio_write8(AX5043_REG_PKTADDR2, (radio_read8(AX5043_REG_PKTADDR2) ^ (pn ^ inv)));
      00188E 90 42 05         [24] 6594 	mov	dptr,#0x4205
      001891 E0               [24] 6595 	movx	a,@dptr
      001892 FC               [12] 6596 	mov	r4,a
      001893 ED               [12] 6597 	mov	a,r5
      001894 6E               [12] 6598 	xrl	a,r6
      001895 F9               [12] 6599 	mov	r1,a
      001896 EB               [12] 6600 	mov	a,r3
      001897 6F               [12] 6601 	xrl	a,r7
      001898 FA               [12] 6602 	mov	r2,a
      001899 8C 00            [24] 6603 	mov	ar0,r4
      00189B 7C 00            [12] 6604 	mov	r4,#0x00
      00189D E8               [12] 6605 	mov	a,r0
      00189E 62 01            [12] 6606 	xrl	ar1,a
      0018A0 EC               [12] 6607 	mov	a,r4
      0018A1 62 02            [12] 6608 	xrl	ar2,a
      0018A3 90 42 05         [24] 6609 	mov	dptr,#0x4205
      0018A6 E9               [12] 6610 	mov	a,r1
      0018A7 F0               [24] 6611 	movx	@dptr,a
                           000E77  6612 	C$easyax5043.c$999$2$538 ==.
                                   6613 ;	..\COMMON\easyax5043.c:999: pn = pn9_advance_byte(pn);
      0018A8 8E 82            [24] 6614 	mov	dpl,r6
      0018AA 8F 83            [24] 6615 	mov	dph,r7
      0018AC C0 05            [24] 6616 	push	ar5
      0018AE C0 03            [24] 6617 	push	ar3
      0018B0 12 56 14         [24] 6618 	lcall	_pn9_advance_byte
      0018B3 AE 82            [24] 6619 	mov	r6,dpl
      0018B5 AF 83            [24] 6620 	mov	r7,dph
      0018B7 D0 03            [24] 6621 	pop	ar3
      0018B9 D0 05            [24] 6622 	pop	ar5
                           000E8A  6623 	C$easyax5043.c$1000$3$542 ==.
                                   6624 ;	..\COMMON\easyax5043.c:1000: radio_write8(AX5043_REG_PKTADDR3, (radio_read8(AX5043_REG_PKTADDR3) ^ (pn ^ inv)));
      0018BB 90 42 04         [24] 6625 	mov	dptr,#0x4204
      0018BE E0               [24] 6626 	movx	a,@dptr
      0018BF FC               [12] 6627 	mov	r4,a
      0018C0 ED               [12] 6628 	mov	a,r5
      0018C1 62 06            [12] 6629 	xrl	ar6,a
      0018C3 EB               [12] 6630 	mov	a,r3
      0018C4 62 07            [12] 6631 	xrl	ar7,a
      0018C6 7D 00            [12] 6632 	mov	r5,#0x00
      0018C8 EC               [12] 6633 	mov	a,r4
      0018C9 62 06            [12] 6634 	xrl	ar6,a
      0018CB ED               [12] 6635 	mov	a,r5
      0018CC 62 07            [12] 6636 	xrl	ar7,a
      0018CE 90 42 04         [24] 6637 	mov	dptr,#0x4204
      0018D1 EE               [12] 6638 	mov	a,r6
      0018D2 F0               [24] 6639 	movx	@dptr,a
      0018D3                       6640 00142$:
                           000EA2  6641 	C$easyax5043.c$1002$1$529 ==.
                           000EA2  6642 	XFeasyax5043$axradio_setaddrregs$0$0 ==.
      0018D3 22               [24] 6643 	ret
                                   6644 ;------------------------------------------------------------
                                   6645 ;Allocation info for local variables in function 'ax5043_init_registers'
                                   6646 ;------------------------------------------------------------
                           000EA3  6647 	Feasyax5043$ax5043_init_registers$0$0 ==.
                           000EA3  6648 	C$easyax5043.c$1004$1$529 ==.
                                   6649 ;	..\COMMON\easyax5043.c:1004: static void ax5043_init_registers(void)
                                   6650 ;	-----------------------------------------
                                   6651 ;	 function ax5043_init_registers
                                   6652 ;	-----------------------------------------
      0018D4                       6653 _ax5043_init_registers:
                           000EA3  6654 	C$easyax5043.c$1006$1$544 ==.
                                   6655 ;	..\COMMON\easyax5043.c:1006: ax5043_set_registers();
      0018D4 12 03 9B         [24] 6656 	lcall	_ax5043_set_registers
                           000EA6  6657 	C$easyax5043.c$1011$2$545 ==.
                                   6658 ;	..\COMMON\easyax5043.c:1011: radio_write8(AX5043_REG_PKTLENOFFSET, (radio_read8(AX5043_REG_PKTLENOFFSET) + axradio_framing_swcrclen)); // add len offs for software CRC16 (used for both, fixed and variable length packets
      0018D7 90 42 02         [24] 6659 	mov	dptr,#0x4202
      0018DA E0               [24] 6660 	movx	a,@dptr
      0018DB FF               [12] 6661 	mov	r7,a
      0018DC 90 57 1C         [24] 6662 	mov	dptr,#_axradio_framing_swcrclen
      0018DF E4               [12] 6663 	clr	a
      0018E0 93               [24] 6664 	movc	a,@a+dptr
      0018E1 FE               [12] 6665 	mov	r6,a
      0018E2 2F               [12] 6666 	add	a,r7
      0018E3 90 42 02         [24] 6667 	mov	dptr,#0x4202
      0018E6 F0               [24] 6668 	movx	@dptr,a
                           000EB6  6669 	C$easyax5043.c$1012$2$546 ==.
                                   6670 ;	..\COMMON\easyax5043.c:1012: radio_write8(AX5043_REG_PINFUNCIRQ, 0x03); // use as IRQ pin
      0018E7 90 40 24         [24] 6671 	mov	dptr,#0x4024
      0018EA 74 03            [12] 6672 	mov	a,#0x03
      0018EC F0               [24] 6673 	movx	@dptr,a
                           000EBC  6674 	C$easyax5043.c$1013$2$547 ==.
                                   6675 ;	..\COMMON\easyax5043.c:1013: radio_write8(AX5043_REG_PKTSTOREFLAGS, (axradio_phy_innerfreqloop ? 0x13 : 0x15)); // store RF offset, RSSI and delimiter timing
      0018ED 90 56 F2         [24] 6676 	mov	dptr,#_axradio_phy_innerfreqloop
      0018F0 E4               [12] 6677 	clr	a
      0018F1 93               [24] 6678 	movc	a,@a+dptr
      0018F2 FF               [12] 6679 	mov	r7,a
      0018F3 60 04            [24] 6680 	jz	00112$
      0018F5 7F 13            [12] 6681 	mov	r7,#0x13
      0018F7 80 02            [24] 6682 	sjmp	00113$
      0018F9                       6683 00112$:
      0018F9 7F 15            [12] 6684 	mov	r7,#0x15
      0018FB                       6685 00113$:
      0018FB 90 42 32         [24] 6686 	mov	dptr,#0x4232
      0018FE EF               [12] 6687 	mov	a,r7
      0018FF F0               [24] 6688 	movx	@dptr,a
                           000ECF  6689 	C$easyax5043.c$1014$1$544 ==.
                                   6690 ;	..\COMMON\easyax5043.c:1014: axradio_setaddrregs();
      001900 12 17 9C         [24] 6691 	lcall	_axradio_setaddrregs
                           000ED2  6692 	C$easyax5043.c$1015$1$544 ==.
                           000ED2  6693 	XFeasyax5043$ax5043_init_registers$0$0 ==.
      001903 22               [24] 6694 	ret
                                   6695 ;------------------------------------------------------------
                                   6696 ;Allocation info for local variables in function 'axradio_sync_addtime'
                                   6697 ;------------------------------------------------------------
                                   6698 ;dt                        Allocated to registers r4 r5 r6 r7 
                                   6699 ;------------------------------------------------------------
                           000ED3  6700 	Feasyax5043$axradio_sync_addtime$0$0 ==.
                           000ED3  6701 	C$easyax5043.c$1021$1$544 ==.
                                   6702 ;	..\COMMON\easyax5043.c:1021: static __reentrantb void axradio_sync_addtime(uint32_t dt) __reentrant
                                   6703 ;	-----------------------------------------
                                   6704 ;	 function axradio_sync_addtime
                                   6705 ;	-----------------------------------------
      001904                       6706 _axradio_sync_addtime:
      001904 AC 82            [24] 6707 	mov	r4,dpl
      001906 AD 83            [24] 6708 	mov	r5,dph
      001908 AE F0            [24] 6709 	mov	r6,b
      00190A FF               [12] 6710 	mov	r7,a
                           000EDA  6711 	C$easyax5043.c$1023$1$549 ==.
                                   6712 ;	..\COMMON\easyax5043.c:1023: axradio_sync_time += dt;
      00190B 90 00 10         [24] 6713 	mov	dptr,#_axradio_sync_time
      00190E E0               [24] 6714 	movx	a,@dptr
      00190F F8               [12] 6715 	mov	r0,a
      001910 A3               [24] 6716 	inc	dptr
      001911 E0               [24] 6717 	movx	a,@dptr
      001912 F9               [12] 6718 	mov	r1,a
      001913 A3               [24] 6719 	inc	dptr
      001914 E0               [24] 6720 	movx	a,@dptr
      001915 FA               [12] 6721 	mov	r2,a
      001916 A3               [24] 6722 	inc	dptr
      001917 E0               [24] 6723 	movx	a,@dptr
      001918 FB               [12] 6724 	mov	r3,a
      001919 90 00 10         [24] 6725 	mov	dptr,#_axradio_sync_time
      00191C EC               [12] 6726 	mov	a,r4
      00191D 28               [12] 6727 	add	a,r0
      00191E F0               [24] 6728 	movx	@dptr,a
      00191F ED               [12] 6729 	mov	a,r5
      001920 39               [12] 6730 	addc	a,r1
      001921 A3               [24] 6731 	inc	dptr
      001922 F0               [24] 6732 	movx	@dptr,a
      001923 EE               [12] 6733 	mov	a,r6
      001924 3A               [12] 6734 	addc	a,r2
      001925 A3               [24] 6735 	inc	dptr
      001926 F0               [24] 6736 	movx	@dptr,a
      001927 EF               [12] 6737 	mov	a,r7
      001928 3B               [12] 6738 	addc	a,r3
      001929 A3               [24] 6739 	inc	dptr
      00192A F0               [24] 6740 	movx	@dptr,a
                           000EFA  6741 	C$easyax5043.c$1024$1$549 ==.
                           000EFA  6742 	XFeasyax5043$axradio_sync_addtime$0$0 ==.
      00192B 22               [24] 6743 	ret
                                   6744 ;------------------------------------------------------------
                                   6745 ;Allocation info for local variables in function 'axradio_sync_subtime'
                                   6746 ;------------------------------------------------------------
                                   6747 ;dt                        Allocated to registers r4 r5 r6 r7 
                                   6748 ;------------------------------------------------------------
                           000EFB  6749 	Feasyax5043$axradio_sync_subtime$0$0 ==.
                           000EFB  6750 	C$easyax5043.c$1026$1$549 ==.
                                   6751 ;	..\COMMON\easyax5043.c:1026: static __reentrantb void axradio_sync_subtime(uint32_t dt) __reentrant
                                   6752 ;	-----------------------------------------
                                   6753 ;	 function axradio_sync_subtime
                                   6754 ;	-----------------------------------------
      00192C                       6755 _axradio_sync_subtime:
      00192C AC 82            [24] 6756 	mov	r4,dpl
      00192E AD 83            [24] 6757 	mov	r5,dph
      001930 AE F0            [24] 6758 	mov	r6,b
      001932 FF               [12] 6759 	mov	r7,a
                           000F02  6760 	C$easyax5043.c$1028$1$551 ==.
                                   6761 ;	..\COMMON\easyax5043.c:1028: axradio_sync_time -= dt;
      001933 90 00 10         [24] 6762 	mov	dptr,#_axradio_sync_time
      001936 E0               [24] 6763 	movx	a,@dptr
      001937 F8               [12] 6764 	mov	r0,a
      001938 A3               [24] 6765 	inc	dptr
      001939 E0               [24] 6766 	movx	a,@dptr
      00193A F9               [12] 6767 	mov	r1,a
      00193B A3               [24] 6768 	inc	dptr
      00193C E0               [24] 6769 	movx	a,@dptr
      00193D FA               [12] 6770 	mov	r2,a
      00193E A3               [24] 6771 	inc	dptr
      00193F E0               [24] 6772 	movx	a,@dptr
      001940 FB               [12] 6773 	mov	r3,a
      001941 90 00 10         [24] 6774 	mov	dptr,#_axradio_sync_time
      001944 E8               [12] 6775 	mov	a,r0
      001945 C3               [12] 6776 	clr	c
      001946 9C               [12] 6777 	subb	a,r4
      001947 F0               [24] 6778 	movx	@dptr,a
      001948 E9               [12] 6779 	mov	a,r1
      001949 9D               [12] 6780 	subb	a,r5
      00194A A3               [24] 6781 	inc	dptr
      00194B F0               [24] 6782 	movx	@dptr,a
      00194C EA               [12] 6783 	mov	a,r2
      00194D 9E               [12] 6784 	subb	a,r6
      00194E A3               [24] 6785 	inc	dptr
      00194F F0               [24] 6786 	movx	@dptr,a
      001950 EB               [12] 6787 	mov	a,r3
      001951 9F               [12] 6788 	subb	a,r7
      001952 A3               [24] 6789 	inc	dptr
      001953 F0               [24] 6790 	movx	@dptr,a
                           000F23  6791 	C$easyax5043.c$1029$1$551 ==.
                           000F23  6792 	XFeasyax5043$axradio_sync_subtime$0$0 ==.
      001954 22               [24] 6793 	ret
                                   6794 ;------------------------------------------------------------
                                   6795 ;Allocation info for local variables in function 'axradio_sync_settimeradv'
                                   6796 ;------------------------------------------------------------
                                   6797 ;dt                        Allocated to registers r4 r5 r6 r7 
                                   6798 ;------------------------------------------------------------
                           000F24  6799 	Feasyax5043$axradio_sync_settimeradv$0$0 ==.
                           000F24  6800 	C$easyax5043.c$1031$1$551 ==.
                                   6801 ;	..\COMMON\easyax5043.c:1031: static __reentrantb void axradio_sync_settimeradv(uint32_t dt) __reentrant
                                   6802 ;	-----------------------------------------
                                   6803 ;	 function axradio_sync_settimeradv
                                   6804 ;	-----------------------------------------
      001955                       6805 _axradio_sync_settimeradv:
      001955 AC 82            [24] 6806 	mov	r4,dpl
      001957 AD 83            [24] 6807 	mov	r5,dph
      001959 AE F0            [24] 6808 	mov	r6,b
      00195B FF               [12] 6809 	mov	r7,a
                           000F2B  6810 	C$easyax5043.c$1033$1$553 ==.
                                   6811 ;	..\COMMON\easyax5043.c:1033: axradio_timer.time = axradio_sync_time;
      00195C 90 00 10         [24] 6812 	mov	dptr,#_axradio_sync_time
      00195F E0               [24] 6813 	movx	a,@dptr
      001960 F8               [12] 6814 	mov	r0,a
      001961 A3               [24] 6815 	inc	dptr
      001962 E0               [24] 6816 	movx	a,@dptr
      001963 F9               [12] 6817 	mov	r1,a
      001964 A3               [24] 6818 	inc	dptr
      001965 E0               [24] 6819 	movx	a,@dptr
      001966 FA               [12] 6820 	mov	r2,a
      001967 A3               [24] 6821 	inc	dptr
      001968 E0               [24] 6822 	movx	a,@dptr
      001969 FB               [12] 6823 	mov	r3,a
      00196A 90 02 92         [24] 6824 	mov	dptr,#(_axradio_timer + 0x0004)
      00196D E8               [12] 6825 	mov	a,r0
      00196E F0               [24] 6826 	movx	@dptr,a
      00196F E9               [12] 6827 	mov	a,r1
      001970 A3               [24] 6828 	inc	dptr
      001971 F0               [24] 6829 	movx	@dptr,a
      001972 EA               [12] 6830 	mov	a,r2
      001973 A3               [24] 6831 	inc	dptr
      001974 F0               [24] 6832 	movx	@dptr,a
      001975 EB               [12] 6833 	mov	a,r3
      001976 A3               [24] 6834 	inc	dptr
      001977 F0               [24] 6835 	movx	@dptr,a
                           000F47  6836 	C$easyax5043.c$1034$1$553 ==.
                                   6837 ;	..\COMMON\easyax5043.c:1034: axradio_timer.time -= dt;
      001978 E8               [12] 6838 	mov	a,r0
      001979 C3               [12] 6839 	clr	c
      00197A 9C               [12] 6840 	subb	a,r4
      00197B FC               [12] 6841 	mov	r4,a
      00197C E9               [12] 6842 	mov	a,r1
      00197D 9D               [12] 6843 	subb	a,r5
      00197E FD               [12] 6844 	mov	r5,a
      00197F EA               [12] 6845 	mov	a,r2
      001980 9E               [12] 6846 	subb	a,r6
      001981 FE               [12] 6847 	mov	r6,a
      001982 EB               [12] 6848 	mov	a,r3
      001983 9F               [12] 6849 	subb	a,r7
      001984 FF               [12] 6850 	mov	r7,a
      001985 90 02 92         [24] 6851 	mov	dptr,#(_axradio_timer + 0x0004)
      001988 EC               [12] 6852 	mov	a,r4
      001989 F0               [24] 6853 	movx	@dptr,a
      00198A ED               [12] 6854 	mov	a,r5
      00198B A3               [24] 6855 	inc	dptr
      00198C F0               [24] 6856 	movx	@dptr,a
      00198D EE               [12] 6857 	mov	a,r6
      00198E A3               [24] 6858 	inc	dptr
      00198F F0               [24] 6859 	movx	@dptr,a
      001990 EF               [12] 6860 	mov	a,r7
      001991 A3               [24] 6861 	inc	dptr
      001992 F0               [24] 6862 	movx	@dptr,a
                           000F62  6863 	C$easyax5043.c$1035$1$553 ==.
                           000F62  6864 	XFeasyax5043$axradio_sync_settimeradv$0$0 ==.
      001993 22               [24] 6865 	ret
                                   6866 ;------------------------------------------------------------
                                   6867 ;Allocation info for local variables in function 'axradio_sync_adjustperiodcorr'
                                   6868 ;------------------------------------------------------------
                                   6869 ;dt                        Allocated to registers r4 r5 r6 r7 
                                   6870 ;------------------------------------------------------------
                           000F63  6871 	Feasyax5043$axradio_sync_adjustperiodcorr$0$0 ==.
                           000F63  6872 	C$easyax5043.c$1037$1$553 ==.
                                   6873 ;	..\COMMON\easyax5043.c:1037: static void axradio_sync_adjustperiodcorr(void)
                                   6874 ;	-----------------------------------------
                                   6875 ;	 function axradio_sync_adjustperiodcorr
                                   6876 ;	-----------------------------------------
      001994                       6877 _axradio_sync_adjustperiodcorr:
                           000F63  6878 	C$easyax5043.c$1039$1$555 ==.
                                   6879 ;	..\COMMON\easyax5043.c:1039: int32_t __autodata dt = axradio_conv_time_totimer0(axradio_cb_receive.st.time.t) - axradio_sync_time;
      001994 90 02 3B         [24] 6880 	mov	dptr,#(_axradio_cb_receive + 0x0006)
      001997 E0               [24] 6881 	movx	a,@dptr
      001998 FC               [12] 6882 	mov	r4,a
      001999 A3               [24] 6883 	inc	dptr
      00199A E0               [24] 6884 	movx	a,@dptr
      00199B FD               [12] 6885 	mov	r5,a
      00199C A3               [24] 6886 	inc	dptr
      00199D E0               [24] 6887 	movx	a,@dptr
      00199E FE               [12] 6888 	mov	r6,a
      00199F A3               [24] 6889 	inc	dptr
      0019A0 E0               [24] 6890 	movx	a,@dptr
      0019A1 8C 82            [24] 6891 	mov	dpl,r4
      0019A3 8D 83            [24] 6892 	mov	dph,r5
      0019A5 8E F0            [24] 6893 	mov	b,r6
      0019A7 12 0A 73         [24] 6894 	lcall	_axradio_conv_time_totimer0
      0019AA AC 82            [24] 6895 	mov	r4,dpl
      0019AC AD 83            [24] 6896 	mov	r5,dph
      0019AE AE F0            [24] 6897 	mov	r6,b
      0019B0 FF               [12] 6898 	mov	r7,a
      0019B1 90 00 10         [24] 6899 	mov	dptr,#_axradio_sync_time
      0019B4 E0               [24] 6900 	movx	a,@dptr
      0019B5 F8               [12] 6901 	mov	r0,a
      0019B6 A3               [24] 6902 	inc	dptr
      0019B7 E0               [24] 6903 	movx	a,@dptr
      0019B8 F9               [12] 6904 	mov	r1,a
      0019B9 A3               [24] 6905 	inc	dptr
      0019BA E0               [24] 6906 	movx	a,@dptr
      0019BB FA               [12] 6907 	mov	r2,a
      0019BC A3               [24] 6908 	inc	dptr
      0019BD E0               [24] 6909 	movx	a,@dptr
      0019BE FB               [12] 6910 	mov	r3,a
      0019BF EC               [12] 6911 	mov	a,r4
      0019C0 C3               [12] 6912 	clr	c
      0019C1 98               [12] 6913 	subb	a,r0
      0019C2 FC               [12] 6914 	mov	r4,a
      0019C3 ED               [12] 6915 	mov	a,r5
      0019C4 99               [12] 6916 	subb	a,r1
      0019C5 FD               [12] 6917 	mov	r5,a
      0019C6 EE               [12] 6918 	mov	a,r6
      0019C7 9A               [12] 6919 	subb	a,r2
      0019C8 FE               [12] 6920 	mov	r6,a
      0019C9 EF               [12] 6921 	mov	a,r7
      0019CA 9B               [12] 6922 	subb	a,r3
      0019CB FF               [12] 6923 	mov	r7,a
                           000F9B  6924 	C$easyax5043.c$1040$1$555 ==.
                                   6925 ;	..\COMMON\easyax5043.c:1040: axradio_cb_receive.st.rx.phy.timeoffset = dt;
      0019CC 8C 02            [24] 6926 	mov	ar2,r4
      0019CE 8D 03            [24] 6927 	mov	ar3,r5
      0019D0 90 02 45         [24] 6928 	mov	dptr,#(_axradio_cb_receive + 0x0010)
      0019D3 EA               [12] 6929 	mov	a,r2
      0019D4 F0               [24] 6930 	movx	@dptr,a
      0019D5 EB               [12] 6931 	mov	a,r3
      0019D6 A3               [24] 6932 	inc	dptr
      0019D7 F0               [24] 6933 	movx	@dptr,a
                           000FA7  6934 	C$easyax5043.c$1041$1$555 ==.
                                   6935 ;	..\COMMON\easyax5043.c:1041: if (!checksignedlimit16(axradio_sync_periodcorr, axradio_sync_slave_maxperiod)) {
      0019D8 90 00 14         [24] 6936 	mov	dptr,#_axradio_sync_periodcorr
      0019DB E0               [24] 6937 	movx	a,@dptr
      0019DC FA               [12] 6938 	mov	r2,a
      0019DD A3               [24] 6939 	inc	dptr
      0019DE E0               [24] 6940 	movx	a,@dptr
      0019DF FB               [12] 6941 	mov	r3,a
      0019E0 90 57 45         [24] 6942 	mov	dptr,#_axradio_sync_slave_maxperiod
      0019E3 E4               [12] 6943 	clr	a
      0019E4 93               [24] 6944 	movc	a,@a+dptr
      0019E5 C0 E0            [24] 6945 	push	acc
      0019E7 74 01            [12] 6946 	mov	a,#0x01
      0019E9 93               [24] 6947 	movc	a,@a+dptr
      0019EA C0 E0            [24] 6948 	push	acc
      0019EC 8A 82            [24] 6949 	mov	dpl,r2
      0019EE 8B 83            [24] 6950 	mov	dph,r3
      0019F0 12 4F 7B         [24] 6951 	lcall	_checksignedlimit16
      0019F3 AB 82            [24] 6952 	mov	r3,dpl
      0019F5 15 81            [12] 6953 	dec	sp
      0019F7 15 81            [12] 6954 	dec	sp
      0019F9 EB               [12] 6955 	mov	a,r3
      0019FA 70 4B            [24] 6956 	jnz	00102$
                           000FCB  6957 	C$easyax5043.c$1042$2$556 ==.
                                   6958 ;	..\COMMON\easyax5043.c:1042: axradio_sync_addtime(dt);
      0019FC 8C 82            [24] 6959 	mov	dpl,r4
      0019FE 8D 83            [24] 6960 	mov	dph,r5
      001A00 8E F0            [24] 6961 	mov	b,r6
      001A02 EF               [12] 6962 	mov	a,r7
      001A03 C0 07            [24] 6963 	push	ar7
      001A05 C0 06            [24] 6964 	push	ar6
      001A07 C0 05            [24] 6965 	push	ar5
      001A09 C0 04            [24] 6966 	push	ar4
      001A0B 12 19 04         [24] 6967 	lcall	_axradio_sync_addtime
      001A0E D0 04            [24] 6968 	pop	ar4
      001A10 D0 05            [24] 6969 	pop	ar5
      001A12 D0 06            [24] 6970 	pop	ar6
      001A14 D0 07            [24] 6971 	pop	ar7
                           000FE5  6972 	C$easyax5043.c$1043$2$556 ==.
                                   6973 ;	..\COMMON\easyax5043.c:1043: dt <<= SYNC_K1;
      001A16 EF               [12] 6974 	mov	a,r7
      001A17 C4               [12] 6975 	swap	a
      001A18 23               [12] 6976 	rl	a
      001A19 54 E0            [12] 6977 	anl	a,#0xe0
      001A1B CE               [12] 6978 	xch	a,r6
      001A1C C4               [12] 6979 	swap	a
      001A1D 23               [12] 6980 	rl	a
      001A1E CE               [12] 6981 	xch	a,r6
      001A1F 6E               [12] 6982 	xrl	a,r6
      001A20 CE               [12] 6983 	xch	a,r6
      001A21 54 E0            [12] 6984 	anl	a,#0xe0
      001A23 CE               [12] 6985 	xch	a,r6
      001A24 6E               [12] 6986 	xrl	a,r6
      001A25 FF               [12] 6987 	mov	r7,a
      001A26 ED               [12] 6988 	mov	a,r5
      001A27 C4               [12] 6989 	swap	a
      001A28 23               [12] 6990 	rl	a
      001A29 54 1F            [12] 6991 	anl	a,#0x1f
      001A2B 4E               [12] 6992 	orl	a,r6
      001A2C FE               [12] 6993 	mov	r6,a
      001A2D ED               [12] 6994 	mov	a,r5
      001A2E C4               [12] 6995 	swap	a
      001A2F 23               [12] 6996 	rl	a
      001A30 54 E0            [12] 6997 	anl	a,#0xe0
      001A32 CC               [12] 6998 	xch	a,r4
      001A33 C4               [12] 6999 	swap	a
      001A34 23               [12] 7000 	rl	a
      001A35 CC               [12] 7001 	xch	a,r4
      001A36 6C               [12] 7002 	xrl	a,r4
      001A37 CC               [12] 7003 	xch	a,r4
      001A38 54 E0            [12] 7004 	anl	a,#0xe0
      001A3A CC               [12] 7005 	xch	a,r4
      001A3B 6C               [12] 7006 	xrl	a,r4
      001A3C FD               [12] 7007 	mov	r5,a
                           00100C  7008 	C$easyax5043.c$1044$2$556 ==.
                                   7009 ;	..\COMMON\easyax5043.c:1044: axradio_sync_periodcorr = dt;
      001A3D 90 00 14         [24] 7010 	mov	dptr,#_axradio_sync_periodcorr
      001A40 EC               [12] 7011 	mov	a,r4
      001A41 F0               [24] 7012 	movx	@dptr,a
      001A42 ED               [12] 7013 	mov	a,r5
      001A43 A3               [24] 7014 	inc	dptr
      001A44 F0               [24] 7015 	movx	@dptr,a
      001A45 80 48            [24] 7016 	sjmp	00103$
      001A47                       7017 00102$:
                           001016  7018 	C$easyax5043.c$1046$2$557 ==.
                                   7019 ;	..\COMMON\easyax5043.c:1046: axradio_sync_periodcorr += dt;
      001A47 90 00 14         [24] 7020 	mov	dptr,#_axradio_sync_periodcorr
      001A4A E0               [24] 7021 	movx	a,@dptr
      001A4B FA               [12] 7022 	mov	r2,a
      001A4C A3               [24] 7023 	inc	dptr
      001A4D E0               [24] 7024 	movx	a,@dptr
      001A4E FB               [12] 7025 	mov	r3,a
      001A4F 8A 00            [24] 7026 	mov	ar0,r2
      001A51 EB               [12] 7027 	mov	a,r3
      001A52 F9               [12] 7028 	mov	r1,a
      001A53 33               [12] 7029 	rlc	a
      001A54 95 E0            [12] 7030 	subb	a,acc
      001A56 FA               [12] 7031 	mov	r2,a
      001A57 FB               [12] 7032 	mov	r3,a
      001A58 EC               [12] 7033 	mov	a,r4
      001A59 28               [12] 7034 	add	a,r0
      001A5A F8               [12] 7035 	mov	r0,a
      001A5B ED               [12] 7036 	mov	a,r5
      001A5C 39               [12] 7037 	addc	a,r1
      001A5D F9               [12] 7038 	mov	r1,a
      001A5E EE               [12] 7039 	mov	a,r6
      001A5F 3A               [12] 7040 	addc	a,r2
      001A60 EF               [12] 7041 	mov	a,r7
      001A61 3B               [12] 7042 	addc	a,r3
      001A62 90 00 14         [24] 7043 	mov	dptr,#_axradio_sync_periodcorr
      001A65 E8               [12] 7044 	mov	a,r0
      001A66 F0               [24] 7045 	movx	@dptr,a
      001A67 E9               [12] 7046 	mov	a,r1
      001A68 A3               [24] 7047 	inc	dptr
      001A69 F0               [24] 7048 	movx	@dptr,a
                           001039  7049 	C$easyax5043.c$1047$2$557 ==.
                                   7050 ;	..\COMMON\easyax5043.c:1047: dt >>= SYNC_K0;
      001A6A EF               [12] 7051 	mov	a,r7
      001A6B A2 E7            [12] 7052 	mov	c,acc.7
      001A6D 13               [12] 7053 	rrc	a
      001A6E FF               [12] 7054 	mov	r7,a
      001A6F EE               [12] 7055 	mov	a,r6
      001A70 13               [12] 7056 	rrc	a
      001A71 FE               [12] 7057 	mov	r6,a
      001A72 ED               [12] 7058 	mov	a,r5
      001A73 13               [12] 7059 	rrc	a
      001A74 FD               [12] 7060 	mov	r5,a
      001A75 EC               [12] 7061 	mov	a,r4
      001A76 13               [12] 7062 	rrc	a
      001A77 FC               [12] 7063 	mov	r4,a
      001A78 EF               [12] 7064 	mov	a,r7
      001A79 A2 E7            [12] 7065 	mov	c,acc.7
      001A7B 13               [12] 7066 	rrc	a
      001A7C FF               [12] 7067 	mov	r7,a
      001A7D EE               [12] 7068 	mov	a,r6
      001A7E 13               [12] 7069 	rrc	a
      001A7F FE               [12] 7070 	mov	r6,a
      001A80 ED               [12] 7071 	mov	a,r5
      001A81 13               [12] 7072 	rrc	a
      001A82 FD               [12] 7073 	mov	r5,a
      001A83 EC               [12] 7074 	mov	a,r4
      001A84 13               [12] 7075 	rrc	a
                           001054  7076 	C$easyax5043.c$1048$2$557 ==.
                                   7077 ;	..\COMMON\easyax5043.c:1048: axradio_sync_addtime(dt);
      001A85 F5 82            [12] 7078 	mov	dpl,a
      001A87 8D 83            [24] 7079 	mov	dph,r5
      001A89 8E F0            [24] 7080 	mov	b,r6
      001A8B EF               [12] 7081 	mov	a,r7
      001A8C 12 19 04         [24] 7082 	lcall	_axradio_sync_addtime
      001A8F                       7083 00103$:
                           00105E  7084 	C$easyax5043.c$1050$1$555 ==.
                                   7085 ;	..\COMMON\easyax5043.c:1050: axradio_sync_periodcorr = signedlimit16(axradio_sync_periodcorr, axradio_sync_slave_maxperiod);
      001A8F 90 00 14         [24] 7086 	mov	dptr,#_axradio_sync_periodcorr
      001A92 E0               [24] 7087 	movx	a,@dptr
      001A93 FE               [12] 7088 	mov	r6,a
      001A94 A3               [24] 7089 	inc	dptr
      001A95 E0               [24] 7090 	movx	a,@dptr
      001A96 FF               [12] 7091 	mov	r7,a
      001A97 90 57 45         [24] 7092 	mov	dptr,#_axradio_sync_slave_maxperiod
      001A9A E4               [12] 7093 	clr	a
      001A9B 93               [24] 7094 	movc	a,@a+dptr
      001A9C C0 E0            [24] 7095 	push	acc
      001A9E 74 01            [12] 7096 	mov	a,#0x01
      001AA0 93               [24] 7097 	movc	a,@a+dptr
      001AA1 C0 E0            [24] 7098 	push	acc
      001AA3 8E 82            [24] 7099 	mov	dpl,r6
      001AA5 8F 83            [24] 7100 	mov	dph,r7
      001AA7 12 4F A2         [24] 7101 	lcall	_signedlimit16
      001AAA AE 82            [24] 7102 	mov	r6,dpl
      001AAC AF 83            [24] 7103 	mov	r7,dph
      001AAE 15 81            [12] 7104 	dec	sp
      001AB0 15 81            [12] 7105 	dec	sp
      001AB2 90 00 14         [24] 7106 	mov	dptr,#_axradio_sync_periodcorr
      001AB5 EE               [12] 7107 	mov	a,r6
      001AB6 F0               [24] 7108 	movx	@dptr,a
      001AB7 EF               [12] 7109 	mov	a,r7
      001AB8 A3               [24] 7110 	inc	dptr
      001AB9 F0               [24] 7111 	movx	@dptr,a
                           001089  7112 	C$easyax5043.c$1051$1$555 ==.
                           001089  7113 	XFeasyax5043$axradio_sync_adjustperiodcorr$0$0 ==.
      001ABA 22               [24] 7114 	ret
                                   7115 ;------------------------------------------------------------
                                   7116 ;Allocation info for local variables in function 'axradio_sync_slave_nextperiod'
                                   7117 ;------------------------------------------------------------
                                   7118 ;c                         Allocated to registers r6 r7 
                                   7119 ;------------------------------------------------------------
                           00108A  7120 	Feasyax5043$axradio_sync_slave_nextperiod$0$0 ==.
                           00108A  7121 	C$easyax5043.c$1053$1$555 ==.
                                   7122 ;	..\COMMON\easyax5043.c:1053: static void axradio_sync_slave_nextperiod()
                                   7123 ;	-----------------------------------------
                                   7124 ;	 function axradio_sync_slave_nextperiod
                                   7125 ;	-----------------------------------------
      001ABB                       7126 _axradio_sync_slave_nextperiod:
                           00108A  7127 	C$easyax5043.c$1055$1$558 ==.
                                   7128 ;	..\COMMON\easyax5043.c:1055: axradio_sync_addtime(axradio_sync_period);
      001ABB 90 57 31         [24] 7129 	mov	dptr,#_axradio_sync_period
      001ABE E4               [12] 7130 	clr	a
      001ABF 93               [24] 7131 	movc	a,@a+dptr
      001AC0 FC               [12] 7132 	mov	r4,a
      001AC1 74 01            [12] 7133 	mov	a,#0x01
      001AC3 93               [24] 7134 	movc	a,@a+dptr
      001AC4 FD               [12] 7135 	mov	r5,a
      001AC5 74 02            [12] 7136 	mov	a,#0x02
      001AC7 93               [24] 7137 	movc	a,@a+dptr
      001AC8 FE               [12] 7138 	mov	r6,a
      001AC9 74 03            [12] 7139 	mov	a,#0x03
      001ACB 93               [24] 7140 	movc	a,@a+dptr
      001ACC 8C 82            [24] 7141 	mov	dpl,r4
      001ACE 8D 83            [24] 7142 	mov	dph,r5
      001AD0 8E F0            [24] 7143 	mov	b,r6
      001AD2 12 19 04         [24] 7144 	lcall	_axradio_sync_addtime
                           0010A4  7145 	C$easyax5043.c$1056$1$558 ==.
                                   7146 ;	..\COMMON\easyax5043.c:1056: if (!checksignedlimit16(axradio_sync_periodcorr, axradio_sync_slave_maxperiod))
      001AD5 90 00 14         [24] 7147 	mov	dptr,#_axradio_sync_periodcorr
      001AD8 E0               [24] 7148 	movx	a,@dptr
      001AD9 FE               [12] 7149 	mov	r6,a
      001ADA A3               [24] 7150 	inc	dptr
      001ADB E0               [24] 7151 	movx	a,@dptr
      001ADC FF               [12] 7152 	mov	r7,a
      001ADD 90 57 45         [24] 7153 	mov	dptr,#_axradio_sync_slave_maxperiod
      001AE0 E4               [12] 7154 	clr	a
      001AE1 93               [24] 7155 	movc	a,@a+dptr
      001AE2 C0 E0            [24] 7156 	push	acc
      001AE4 74 01            [12] 7157 	mov	a,#0x01
      001AE6 93               [24] 7158 	movc	a,@a+dptr
      001AE7 C0 E0            [24] 7159 	push	acc
      001AE9 8E 82            [24] 7160 	mov	dpl,r6
      001AEB 8F 83            [24] 7161 	mov	dph,r7
      001AED 12 4F 7B         [24] 7162 	lcall	_checksignedlimit16
      001AF0 AF 82            [24] 7163 	mov	r7,dpl
      001AF2 15 81            [12] 7164 	dec	sp
      001AF4 15 81            [12] 7165 	dec	sp
      001AF6 EF               [12] 7166 	mov	a,r7
      001AF7 70 02            [24] 7167 	jnz	00102$
                           0010C8  7168 	C$easyax5043.c$1057$1$558 ==.
                                   7169 ;	..\COMMON\easyax5043.c:1057: return;
      001AF9 80 29            [24] 7170 	sjmp	00103$
      001AFB                       7171 00102$:
                           0010CA  7172 	C$easyax5043.c$1059$2$558 ==.
                                   7173 ;	..\COMMON\easyax5043.c:1059: int16_t __autodata c = axradio_sync_periodcorr;
      001AFB 90 00 14         [24] 7174 	mov	dptr,#_axradio_sync_periodcorr
      001AFE E0               [24] 7175 	movx	a,@dptr
      001AFF FE               [12] 7176 	mov	r6,a
      001B00 A3               [24] 7177 	inc	dptr
      001B01 E0               [24] 7178 	movx	a,@dptr
                           0010D1  7179 	C$easyax5043.c$1060$2$559 ==.
                                   7180 ;	..\COMMON\easyax5043.c:1060: axradio_sync_addtime(c >> SYNC_K1);
      001B02 FF               [12] 7181 	mov	r7,a
      001B03 C4               [12] 7182 	swap	a
      001B04 03               [12] 7183 	rr	a
      001B05 CE               [12] 7184 	xch	a,r6
      001B06 C4               [12] 7185 	swap	a
      001B07 03               [12] 7186 	rr	a
      001B08 54 07            [12] 7187 	anl	a,#0x07
      001B0A 6E               [12] 7188 	xrl	a,r6
      001B0B CE               [12] 7189 	xch	a,r6
      001B0C 54 07            [12] 7190 	anl	a,#0x07
      001B0E CE               [12] 7191 	xch	a,r6
      001B0F 6E               [12] 7192 	xrl	a,r6
      001B10 CE               [12] 7193 	xch	a,r6
      001B11 30 E2 02         [24] 7194 	jnb	acc.2,00109$
      001B14 44 F8            [12] 7195 	orl	a,#0xf8
      001B16                       7196 00109$:
      001B16 FF               [12] 7197 	mov	r7,a
      001B17 33               [12] 7198 	rlc	a
      001B18 95 E0            [12] 7199 	subb	a,acc
      001B1A FD               [12] 7200 	mov	r5,a
      001B1B 8E 82            [24] 7201 	mov	dpl,r6
      001B1D 8F 83            [24] 7202 	mov	dph,r7
      001B1F 8D F0            [24] 7203 	mov	b,r5
      001B21 12 19 04         [24] 7204 	lcall	_axradio_sync_addtime
      001B24                       7205 00103$:
                           0010F3  7206 	C$easyax5043.c$1062$2$559 ==.
                           0010F3  7207 	XFeasyax5043$axradio_sync_slave_nextperiod$0$0 ==.
      001B24 22               [24] 7208 	ret
                                   7209 ;------------------------------------------------------------
                                   7210 ;Allocation info for local variables in function 'axradio_timer_callback'
                                   7211 ;------------------------------------------------------------
                                   7212 ;desc                      Allocated to registers 
                                   7213 ;r                         Allocated to registers r7 
                                   7214 ;idx                       Allocated to registers r7 
                                   7215 ;rs                        Allocated to registers r6 
                                   7216 ;idx                       Allocated to registers r7 
                                   7217 ;------------------------------------------------------------
                           0010F4  7218 	Feasyax5043$axradio_timer_callback$0$0 ==.
                           0010F4  7219 	C$easyax5043.c$1066$2$559 ==.
                                   7220 ;	..\COMMON\easyax5043.c:1066: static void axradio_timer_callback(struct wtimer_desc __xdata *desc)
                                   7221 ;	-----------------------------------------
                                   7222 ;	 function axradio_timer_callback
                                   7223 ;	-----------------------------------------
      001B25                       7224 _axradio_timer_callback:
                           0010F4  7225 	C$easyax5043.c$1069$1$561 ==.
                                   7226 ;	..\COMMON\easyax5043.c:1069: switch (axradio_mode) {
      001B25 AF 08            [24] 7227 	mov	r7,_axradio_mode
      001B27 BF 10 00         [24] 7228 	cjne	r7,#0x10,00326$
      001B2A                       7229 00326$:
      001B2A 50 03            [24] 7230 	jnc	00327$
      001B2C 02 23 80         [24] 7231 	ljmp	00237$
      001B2F                       7232 00327$:
      001B2F EF               [12] 7233 	mov	a,r7
      001B30 24 CC            [12] 7234 	add	a,#0xff - 0x33
      001B32 50 03            [24] 7235 	jnc	00328$
      001B34 02 23 80         [24] 7236 	ljmp	00237$
      001B37                       7237 00328$:
      001B37 EF               [12] 7238 	mov	a,r7
      001B38 24 F0            [12] 7239 	add	a,#0xf0
      001B3A FF               [12] 7240 	mov	r7,a
      001B3B 24 0A            [12] 7241 	add	a,#(00329$-3-.)
      001B3D 83               [24] 7242 	movc	a,@a+pc
      001B3E F5 82            [12] 7243 	mov	dpl,a
      001B40 EF               [12] 7244 	mov	a,r7
      001B41 24 28            [12] 7245 	add	a,#(00330$-3-.)
      001B43 83               [24] 7246 	movc	a,@a+pc
      001B44 F5 83            [12] 7247 	mov	dph,a
      001B46 E4               [12] 7248 	clr	a
      001B47 73               [24] 7249 	jmp	@a+dptr
      001B48                       7250 00329$:
      001B48 33                    7251 	.db	00112$
      001B49 33                    7252 	.db	00113$
      001B4A CC                    7253 	.db	00123$
      001B4B CC                    7254 	.db	00124$
      001B4C 80                    7255 	.db	00235$
      001B4D 80                    7256 	.db	00235$
      001B4E 80                    7257 	.db	00235$
      001B4F 80                    7258 	.db	00235$
      001B50 80                    7259 	.db	00235$
      001B51 80                    7260 	.db	00235$
      001B52 80                    7261 	.db	00235$
      001B53 80                    7262 	.db	00235$
      001B54 80                    7263 	.db	00235$
      001B55 80                    7264 	.db	00235$
      001B56 80                    7265 	.db	00235$
      001B57 80                    7266 	.db	00235$
      001B58 90                    7267 	.db	00106$
      001B59 90                    7268 	.db	00107$
      001B5A 34                    7269 	.db	00129$
      001B5B 34                    7270 	.db	00130$
      001B5C 80                    7271 	.db	00235$
      001B5D 80                    7272 	.db	00235$
      001B5E 80                    7273 	.db	00235$
      001B5F 80                    7274 	.db	00235$
      001B60 90                    7275 	.db	00102$
      001B61 90                    7276 	.db	00103$
      001B62 90                    7277 	.db	00104$
      001B63 90                    7278 	.db	00105$
      001B64 90                    7279 	.db	00101$
      001B65 80                    7280 	.db	00235$
      001B66 80                    7281 	.db	00235$
      001B67 80                    7282 	.db	00235$
      001B68 CF                    7283 	.db	00166$
      001B69 CF                    7284 	.db	00167$
      001B6A 77                    7285 	.db	00209$
      001B6B 77                    7286 	.db	00210$
      001B6C                       7287 00330$:
      001B6C 1C                    7288 	.db	00112$>>8
      001B6D 1C                    7289 	.db	00113$>>8
      001B6E 1C                    7290 	.db	00123$>>8
      001B6F 1C                    7291 	.db	00124$>>8
      001B70 23                    7292 	.db	00235$>>8
      001B71 23                    7293 	.db	00235$>>8
      001B72 23                    7294 	.db	00235$>>8
      001B73 23                    7295 	.db	00235$>>8
      001B74 23                    7296 	.db	00235$>>8
      001B75 23                    7297 	.db	00235$>>8
      001B76 23                    7298 	.db	00235$>>8
      001B77 23                    7299 	.db	00235$>>8
      001B78 23                    7300 	.db	00235$>>8
      001B79 23                    7301 	.db	00235$>>8
      001B7A 23                    7302 	.db	00235$>>8
      001B7B 23                    7303 	.db	00235$>>8
      001B7C 1B                    7304 	.db	00106$>>8
      001B7D 1B                    7305 	.db	00107$>>8
      001B7E 1D                    7306 	.db	00129$>>8
      001B7F 1D                    7307 	.db	00130$>>8
      001B80 23                    7308 	.db	00235$>>8
      001B81 23                    7309 	.db	00235$>>8
      001B82 23                    7310 	.db	00235$>>8
      001B83 23                    7311 	.db	00235$>>8
      001B84 1B                    7312 	.db	00102$>>8
      001B85 1B                    7313 	.db	00103$>>8
      001B86 1B                    7314 	.db	00104$>>8
      001B87 1B                    7315 	.db	00105$>>8
      001B88 1B                    7316 	.db	00101$>>8
      001B89 23                    7317 	.db	00235$>>8
      001B8A 23                    7318 	.db	00235$>>8
      001B8B 23                    7319 	.db	00235$>>8
      001B8C 1D                    7320 	.db	00166$>>8
      001B8D 1D                    7321 	.db	00167$>>8
      001B8E 1F                    7322 	.db	00209$>>8
      001B8F 1F                    7323 	.db	00210$>>8
                           00115F  7324 	C$easyax5043.c$1070$2$562 ==.
                                   7325 ;	..\COMMON\easyax5043.c:1070: case AXRADIO_MODE_STREAM_RECEIVE:
      001B90                       7326 00101$:
                           00115F  7327 	C$easyax5043.c$1071$2$562 ==.
                                   7328 ;	..\COMMON\easyax5043.c:1071: case AXRADIO_MODE_STREAM_RECEIVE_UNENC:
      001B90                       7329 00102$:
                           00115F  7330 	C$easyax5043.c$1072$2$562 ==.
                                   7331 ;	..\COMMON\easyax5043.c:1072: case AXRADIO_MODE_STREAM_RECEIVE_SCRAM:
      001B90                       7332 00103$:
                           00115F  7333 	C$easyax5043.c$1073$2$562 ==.
                                   7334 ;	..\COMMON\easyax5043.c:1073: case AXRADIO_MODE_STREAM_RECEIVE_UNENC_LSB:
      001B90                       7335 00104$:
                           00115F  7336 	C$easyax5043.c$1074$2$562 ==.
                                   7337 ;	..\COMMON\easyax5043.c:1074: case AXRADIO_MODE_STREAM_RECEIVE_SCRAM_LSB:
      001B90                       7338 00105$:
                           00115F  7339 	C$easyax5043.c$1075$2$562 ==.
                                   7340 ;	..\COMMON\easyax5043.c:1075: case AXRADIO_MODE_ASYNC_RECEIVE:
      001B90                       7341 00106$:
                           00115F  7342 	C$easyax5043.c$1076$2$562 ==.
                                   7343 ;	..\COMMON\easyax5043.c:1076: case AXRADIO_MODE_WOR_RECEIVE:
      001B90                       7344 00107$:
                           00115F  7345 	C$easyax5043.c$1077$2$562 ==.
                                   7346 ;	..\COMMON\easyax5043.c:1077: if (axradio_syncstate == syncstate_asynctx)
      001B90 90 00 04         [24] 7347 	mov	dptr,#_axradio_syncstate
      001B93 E0               [24] 7348 	movx	a,@dptr
      001B94 FF               [12] 7349 	mov	r7,a
      001B95 BF 02 03         [24] 7350 	cjne	r7,#0x02,00331$
      001B98 02 1C 33         [24] 7351 	ljmp	00114$
      001B9B                       7352 00331$:
                           00116A  7353 	C$easyax5043.c$1079$2$562 ==.
                                   7354 ;	..\COMMON\easyax5043.c:1079: wtimer_remove(&axradio_timer);
      001B9B 90 02 8E         [24] 7355 	mov	dptr,#_axradio_timer
      001B9E 12 50 55         [24] 7356 	lcall	_wtimer_remove
                           001170  7357 	C$easyax5043.c$1080$2$562 ==.
                                   7358 ;	..\COMMON\easyax5043.c:1080: rearmcstimer:
      001BA1                       7359 00110$:
                           001170  7360 	C$easyax5043.c$1081$2$562 ==.
                                   7361 ;	..\COMMON\easyax5043.c:1081: axradio_timer.time = axradio_phy_cs_period;
      001BA1 90 57 04         [24] 7362 	mov	dptr,#_axradio_phy_cs_period
      001BA4 E4               [12] 7363 	clr	a
      001BA5 93               [24] 7364 	movc	a,@a+dptr
      001BA6 FE               [12] 7365 	mov	r6,a
      001BA7 74 01            [12] 7366 	mov	a,#0x01
      001BA9 93               [24] 7367 	movc	a,@a+dptr
      001BAA FF               [12] 7368 	mov	r7,a
      001BAB 7D 00            [12] 7369 	mov	r5,#0x00
      001BAD 7C 00            [12] 7370 	mov	r4,#0x00
      001BAF 90 02 92         [24] 7371 	mov	dptr,#(_axradio_timer + 0x0004)
      001BB2 EE               [12] 7372 	mov	a,r6
      001BB3 F0               [24] 7373 	movx	@dptr,a
      001BB4 EF               [12] 7374 	mov	a,r7
      001BB5 A3               [24] 7375 	inc	dptr
      001BB6 F0               [24] 7376 	movx	@dptr,a
      001BB7 ED               [12] 7377 	mov	a,r5
      001BB8 A3               [24] 7378 	inc	dptr
      001BB9 F0               [24] 7379 	movx	@dptr,a
      001BBA EC               [12] 7380 	mov	a,r4
      001BBB A3               [24] 7381 	inc	dptr
      001BBC F0               [24] 7382 	movx	@dptr,a
                           00118C  7383 	C$easyax5043.c$1082$2$562 ==.
                                   7384 ;	..\COMMON\easyax5043.c:1082: wtimer0_addrelative(&axradio_timer);
      001BBD 90 02 8E         [24] 7385 	mov	dptr,#_axradio_timer
      001BC0 12 47 0A         [24] 7386 	lcall	_wtimer0_addrelative
                           001192  7387 	C$easyax5043.c$1083$2$562 ==.
                                   7388 ;	..\COMMON\easyax5043.c:1083: chanstatecb:
      001BC3                       7389 00111$:
                           001192  7390 	C$easyax5043.c$1084$2$562 ==.
                                   7391 ;	..\COMMON\easyax5043.c:1084: update_timeanchor();
      001BC3 12 0A 31         [24] 7392 	lcall	_update_timeanchor
                           001195  7393 	C$easyax5043.c$1085$2$562 ==.
                                   7394 ;	..\COMMON\easyax5043.c:1085: wtimer_remove_callback(&axradio_cb_channelstate.cb);
      001BC6 90 02 63         [24] 7395 	mov	dptr,#_axradio_cb_channelstate
      001BC9 12 52 63         [24] 7396 	lcall	_wtimer_remove_callback
                           00119B  7397 	C$easyax5043.c$1086$2$562 ==.
                                   7398 ;	..\COMMON\easyax5043.c:1086: axradio_cb_channelstate.st.error = AXRADIO_ERR_NOERROR;
      001BCC 90 02 68         [24] 7399 	mov	dptr,#(_axradio_cb_channelstate + 0x0005)
      001BCF E4               [12] 7400 	clr	a
      001BD0 F0               [24] 7401 	movx	@dptr,a
                           0011A0  7402 	C$easyax5043.c$1088$3$563 ==.
                                   7403 ;	..\COMMON\easyax5043.c:1088: int8_t __autodata r = radio_read8(AX5043_REG_RSSI);
      001BD1 90 40 40         [24] 7404 	mov	dptr,#0x4040
      001BD4 E0               [24] 7405 	movx	a,@dptr
                           0011A4  7406 	C$easyax5043.c$1089$3$563 ==.
                                   7407 ;	..\COMMON\easyax5043.c:1089: axradio_cb_channelstate.st.cs.rssi = r - (int16_t)axradio_phy_rssioffset;
      001BD5 FF               [12] 7408 	mov	r7,a
      001BD6 FD               [12] 7409 	mov	r5,a
      001BD7 33               [12] 7410 	rlc	a
      001BD8 95 E0            [12] 7411 	subb	a,acc
      001BDA FE               [12] 7412 	mov	r6,a
      001BDB 90 57 01         [24] 7413 	mov	dptr,#_axradio_phy_rssioffset
      001BDE E4               [12] 7414 	clr	a
      001BDF 93               [24] 7415 	movc	a,@a+dptr
      001BE0 FC               [12] 7416 	mov	r4,a
      001BE1 33               [12] 7417 	rlc	a
      001BE2 95 E0            [12] 7418 	subb	a,acc
      001BE4 FB               [12] 7419 	mov	r3,a
      001BE5 ED               [12] 7420 	mov	a,r5
      001BE6 C3               [12] 7421 	clr	c
      001BE7 9C               [12] 7422 	subb	a,r4
      001BE8 FD               [12] 7423 	mov	r5,a
      001BE9 EE               [12] 7424 	mov	a,r6
      001BEA 9B               [12] 7425 	subb	a,r3
      001BEB FE               [12] 7426 	mov	r6,a
      001BEC 90 02 6D         [24] 7427 	mov	dptr,#(_axradio_cb_channelstate + 0x000a)
      001BEF ED               [12] 7428 	mov	a,r5
      001BF0 F0               [24] 7429 	movx	@dptr,a
      001BF1 EE               [12] 7430 	mov	a,r6
      001BF2 A3               [24] 7431 	inc	dptr
      001BF3 F0               [24] 7432 	movx	@dptr,a
                           0011C3  7433 	C$easyax5043.c$1090$3$563 ==.
                                   7434 ;	..\COMMON\easyax5043.c:1090: axradio_cb_channelstate.st.cs.busy = r >= axradio_phy_channelbusy;
      001BF4 90 57 03         [24] 7435 	mov	dptr,#_axradio_phy_channelbusy
      001BF7 E4               [12] 7436 	clr	a
      001BF8 93               [24] 7437 	movc	a,@a+dptr
      001BF9 FE               [12] 7438 	mov	r6,a
      001BFA C3               [12] 7439 	clr	c
      001BFB EF               [12] 7440 	mov	a,r7
      001BFC 64 80            [12] 7441 	xrl	a,#0x80
      001BFE 8E F0            [24] 7442 	mov	b,r6
      001C00 63 F0 80         [24] 7443 	xrl	b,#0x80
      001C03 95 F0            [12] 7444 	subb	a,b
      001C05 B3               [12] 7445 	cpl	c
      001C06 92 00            [24] 7446 	mov	_axradio_timer_callback_sloc0_1_0,c
      001C08 E4               [12] 7447 	clr	a
      001C09 33               [12] 7448 	rlc	a
      001C0A 90 02 6F         [24] 7449 	mov	dptr,#(_axradio_cb_channelstate + 0x000c)
      001C0D F0               [24] 7450 	movx	@dptr,a
                           0011DD  7451 	C$easyax5043.c$1092$2$562 ==.
                                   7452 ;	..\COMMON\easyax5043.c:1092: axradio_cb_channelstate.st.time.t = axradio_timeanchor.radiotimer;
      001C0E 90 00 1A         [24] 7453 	mov	dptr,#(_axradio_timeanchor + 0x0004)
      001C11 E0               [24] 7454 	movx	a,@dptr
      001C12 FC               [12] 7455 	mov	r4,a
      001C13 A3               [24] 7456 	inc	dptr
      001C14 E0               [24] 7457 	movx	a,@dptr
      001C15 FD               [12] 7458 	mov	r5,a
      001C16 A3               [24] 7459 	inc	dptr
      001C17 E0               [24] 7460 	movx	a,@dptr
      001C18 FE               [12] 7461 	mov	r6,a
      001C19 A3               [24] 7462 	inc	dptr
      001C1A E0               [24] 7463 	movx	a,@dptr
      001C1B FF               [12] 7464 	mov	r7,a
      001C1C 90 02 69         [24] 7465 	mov	dptr,#(_axradio_cb_channelstate + 0x0006)
      001C1F EC               [12] 7466 	mov	a,r4
      001C20 F0               [24] 7467 	movx	@dptr,a
      001C21 ED               [12] 7468 	mov	a,r5
      001C22 A3               [24] 7469 	inc	dptr
      001C23 F0               [24] 7470 	movx	@dptr,a
      001C24 EE               [12] 7471 	mov	a,r6
      001C25 A3               [24] 7472 	inc	dptr
      001C26 F0               [24] 7473 	movx	@dptr,a
      001C27 EF               [12] 7474 	mov	a,r7
      001C28 A3               [24] 7475 	inc	dptr
      001C29 F0               [24] 7476 	movx	@dptr,a
                           0011F9  7477 	C$easyax5043.c$1093$2$562 ==.
                                   7478 ;	..\COMMON\easyax5043.c:1093: wtimer_add_callback(&axradio_cb_channelstate.cb);
      001C2A 90 02 63         [24] 7479 	mov	dptr,#_axradio_cb_channelstate
      001C2D 12 46 F0         [24] 7480 	lcall	_wtimer_add_callback
                           0011FF  7481 	C$easyax5043.c$1094$2$562 ==.
                                   7482 ;	..\COMMON\easyax5043.c:1094: break;
      001C30 02 23 80         [24] 7483 	ljmp	00237$
                           001202  7484 	C$easyax5043.c$1096$2$562 ==.
                                   7485 ;	..\COMMON\easyax5043.c:1096: case AXRADIO_MODE_ASYNC_TRANSMIT:
      001C33                       7486 00112$:
                           001202  7487 	C$easyax5043.c$1097$2$562 ==.
                                   7488 ;	..\COMMON\easyax5043.c:1097: case AXRADIO_MODE_WOR_TRANSMIT:
      001C33                       7489 00113$:
                           001202  7490 	C$easyax5043.c$1098$2$562 ==.
                                   7491 ;	..\COMMON\easyax5043.c:1098: transmitcs:
      001C33                       7492 00114$:
                           001202  7493 	C$easyax5043.c$1099$2$562 ==.
                                   7494 ;	..\COMMON\easyax5043.c:1099: if (axradio_ack_count)
      001C33 90 00 0E         [24] 7495 	mov	dptr,#_axradio_ack_count
      001C36 E0               [24] 7496 	movx	a,@dptr
      001C37 FF               [12] 7497 	mov	r7,a
      001C38 E0               [24] 7498 	movx	a,@dptr
      001C39 60 06            [24] 7499 	jz	00116$
                           00120A  7500 	C$easyax5043.c$1100$2$562 ==.
                                   7501 ;	..\COMMON\easyax5043.c:1100: --axradio_ack_count;
      001C3B EF               [12] 7502 	mov	a,r7
      001C3C 14               [12] 7503 	dec	a
      001C3D 90 00 0E         [24] 7504 	mov	dptr,#_axradio_ack_count
      001C40 F0               [24] 7505 	movx	@dptr,a
      001C41                       7506 00116$:
                           001210  7507 	C$easyax5043.c$1101$2$562 ==.
                                   7508 ;	..\COMMON\easyax5043.c:1101: wtimer_remove(&axradio_timer);
      001C41 90 02 8E         [24] 7509 	mov	dptr,#_axradio_timer
      001C44 12 50 55         [24] 7510 	lcall	_wtimer_remove
                           001216  7511 	C$easyax5043.c$1102$2$562 ==.
                                   7512 ;	..\COMMON\easyax5043.c:1102: if ((int8_t)radio_read8(AX5043_REG_RSSI) < axradio_phy_channelbusy ||
      001C47 90 40 40         [24] 7513 	mov	dptr,#0x4040
      001C4A E0               [24] 7514 	movx	a,@dptr
      001C4B FF               [12] 7515 	mov	r7,a
      001C4C 90 57 03         [24] 7516 	mov	dptr,#_axradio_phy_channelbusy
      001C4F E4               [12] 7517 	clr	a
      001C50 93               [24] 7518 	movc	a,@a+dptr
      001C51 FE               [12] 7519 	mov	r6,a
      001C52 C3               [12] 7520 	clr	c
      001C53 EF               [12] 7521 	mov	a,r7
      001C54 64 80            [12] 7522 	xrl	a,#0x80
      001C56 8E F0            [24] 7523 	mov	b,r6
      001C58 63 F0 80         [24] 7524 	xrl	b,#0x80
      001C5B 95 F0            [12] 7525 	subb	a,b
      001C5D 40 0F            [24] 7526 	jc	00117$
                           00122E  7527 	C$easyax5043.c$1103$2$562 ==.
                                   7528 ;	..\COMMON\easyax5043.c:1103: (!axradio_ack_count && axradio_phy_lbt_forcetx)) {
      001C5F 90 00 0E         [24] 7529 	mov	dptr,#_axradio_ack_count
      001C62 E0               [24] 7530 	movx	a,@dptr
      001C63 FF               [12] 7531 	mov	r7,a
      001C64 E0               [24] 7532 	movx	a,@dptr
      001C65 70 23            [24] 7533 	jnz	00118$
      001C67 90 57 08         [24] 7534 	mov	dptr,#_axradio_phy_lbt_forcetx
      001C6A E4               [12] 7535 	clr	a
      001C6B 93               [24] 7536 	movc	a,@a+dptr
      001C6C 60 1C            [24] 7537 	jz	00118$
      001C6E                       7538 00117$:
                           00123D  7539 	C$easyax5043.c$1104$3$564 ==.
                                   7540 ;	..\COMMON\easyax5043.c:1104: axradio_syncstate = syncstate_off;
      001C6E 90 00 04         [24] 7541 	mov	dptr,#_axradio_syncstate
      001C71 E4               [12] 7542 	clr	a
      001C72 F0               [24] 7543 	movx	@dptr,a
                           001242  7544 	C$easyax5043.c$1105$3$564 ==.
                                   7545 ;	..\COMMON\easyax5043.c:1105: axradio_txbuffer_cnt = axradio_phy_preamble_longlen;
      001C73 90 57 0D         [24] 7546 	mov	dptr,#_axradio_phy_preamble_longlen
                                   7547 ;	genFromRTrack removed	clr	a
      001C76 93               [24] 7548 	movc	a,@a+dptr
      001C77 FD               [12] 7549 	mov	r5,a
      001C78 74 01            [12] 7550 	mov	a,#0x01
      001C7A 93               [24] 7551 	movc	a,@a+dptr
      001C7B FE               [12] 7552 	mov	r6,a
      001C7C 90 00 07         [24] 7553 	mov	dptr,#_axradio_txbuffer_cnt
      001C7F ED               [12] 7554 	mov	a,r5
      001C80 F0               [24] 7555 	movx	@dptr,a
      001C81 EE               [12] 7556 	mov	a,r6
      001C82 A3               [24] 7557 	inc	dptr
      001C83 F0               [24] 7558 	movx	@dptr,a
                           001253  7559 	C$easyax5043.c$1106$3$564 ==.
                                   7560 ;	..\COMMON\easyax5043.c:1106: ax5043_prepare_tx();
      001C84 12 17 1E         [24] 7561 	lcall	_ax5043_prepare_tx
                           001256  7562 	C$easyax5043.c$1107$3$564 ==.
                                   7563 ;	..\COMMON\easyax5043.c:1107: goto chanstatecb;
      001C87 02 1B C3         [24] 7564 	ljmp	00111$
      001C8A                       7565 00118$:
                           001259  7566 	C$easyax5043.c$1109$2$562 ==.
                                   7567 ;	..\COMMON\easyax5043.c:1109: if (axradio_ack_count)
      001C8A EF               [12] 7568 	mov	a,r7
      001C8B 60 03            [24] 7569 	jz	00336$
      001C8D 02 1B A1         [24] 7570 	ljmp	00110$
      001C90                       7571 00336$:
                           00125F  7572 	C$easyax5043.c$1111$2$562 ==.
                                   7573 ;	..\COMMON\easyax5043.c:1111: update_timeanchor();
      001C90 12 0A 31         [24] 7574 	lcall	_update_timeanchor
                           001262  7575 	C$easyax5043.c$1112$2$562 ==.
                                   7576 ;	..\COMMON\easyax5043.c:1112: axradio_syncstate = syncstate_off;
      001C93 90 00 04         [24] 7577 	mov	dptr,#_axradio_syncstate
      001C96 E4               [12] 7578 	clr	a
      001C97 F0               [24] 7579 	movx	@dptr,a
                           001267  7580 	C$easyax5043.c$1113$2$562 ==.
                                   7581 ;	..\COMMON\easyax5043.c:1113: ax5043_off();
      001C98 12 17 47         [24] 7582 	lcall	_ax5043_off
                           00126A  7583 	C$easyax5043.c$1114$2$562 ==.
                                   7584 ;	..\COMMON\easyax5043.c:1114: wtimer_remove_callback(&axradio_cb_transmitstart.cb);
      001C9B 90 02 70         [24] 7585 	mov	dptr,#_axradio_cb_transmitstart
      001C9E 12 52 63         [24] 7586 	lcall	_wtimer_remove_callback
                           001270  7587 	C$easyax5043.c$1115$2$562 ==.
                                   7588 ;	..\COMMON\easyax5043.c:1115: axradio_cb_transmitstart.st.error = AXRADIO_ERR_TIMEOUT;
      001CA1 90 02 75         [24] 7589 	mov	dptr,#(_axradio_cb_transmitstart + 0x0005)
      001CA4 74 03            [12] 7590 	mov	a,#0x03
      001CA6 F0               [24] 7591 	movx	@dptr,a
                           001276  7592 	C$easyax5043.c$1116$2$562 ==.
                                   7593 ;	..\COMMON\easyax5043.c:1116: axradio_cb_transmitstart.st.time.t = axradio_timeanchor.radiotimer;
      001CA7 90 00 1A         [24] 7594 	mov	dptr,#(_axradio_timeanchor + 0x0004)
      001CAA E0               [24] 7595 	movx	a,@dptr
      001CAB FC               [12] 7596 	mov	r4,a
      001CAC A3               [24] 7597 	inc	dptr
      001CAD E0               [24] 7598 	movx	a,@dptr
      001CAE FD               [12] 7599 	mov	r5,a
      001CAF A3               [24] 7600 	inc	dptr
      001CB0 E0               [24] 7601 	movx	a,@dptr
      001CB1 FE               [12] 7602 	mov	r6,a
      001CB2 A3               [24] 7603 	inc	dptr
      001CB3 E0               [24] 7604 	movx	a,@dptr
      001CB4 FF               [12] 7605 	mov	r7,a
      001CB5 90 02 76         [24] 7606 	mov	dptr,#(_axradio_cb_transmitstart + 0x0006)
      001CB8 EC               [12] 7607 	mov	a,r4
      001CB9 F0               [24] 7608 	movx	@dptr,a
      001CBA ED               [12] 7609 	mov	a,r5
      001CBB A3               [24] 7610 	inc	dptr
      001CBC F0               [24] 7611 	movx	@dptr,a
      001CBD EE               [12] 7612 	mov	a,r6
      001CBE A3               [24] 7613 	inc	dptr
      001CBF F0               [24] 7614 	movx	@dptr,a
      001CC0 EF               [12] 7615 	mov	a,r7
      001CC1 A3               [24] 7616 	inc	dptr
      001CC2 F0               [24] 7617 	movx	@dptr,a
                           001292  7618 	C$easyax5043.c$1117$2$562 ==.
                                   7619 ;	..\COMMON\easyax5043.c:1117: wtimer_add_callback(&axradio_cb_transmitstart.cb);
      001CC3 90 02 70         [24] 7620 	mov	dptr,#_axradio_cb_transmitstart
      001CC6 12 46 F0         [24] 7621 	lcall	_wtimer_add_callback
                           001298  7622 	C$easyax5043.c$1118$2$562 ==.
                                   7623 ;	..\COMMON\easyax5043.c:1118: break;
      001CC9 02 23 80         [24] 7624 	ljmp	00237$
                           00129B  7625 	C$easyax5043.c$1120$2$562 ==.
                                   7626 ;	..\COMMON\easyax5043.c:1120: case AXRADIO_MODE_ACK_TRANSMIT:
      001CCC                       7627 00123$:
                           00129B  7628 	C$easyax5043.c$1121$2$562 ==.
                                   7629 ;	..\COMMON\easyax5043.c:1121: case AXRADIO_MODE_WOR_ACK_TRANSMIT:
      001CCC                       7630 00124$:
                           00129B  7631 	C$easyax5043.c$1122$2$562 ==.
                                   7632 ;	..\COMMON\easyax5043.c:1122: if (axradio_syncstate == syncstate_lbt)
      001CCC 90 00 04         [24] 7633 	mov	dptr,#_axradio_syncstate
      001CCF E0               [24] 7634 	movx	a,@dptr
      001CD0 FF               [12] 7635 	mov	r7,a
      001CD1 BF 01 03         [24] 7636 	cjne	r7,#0x01,00337$
      001CD4 02 1C 33         [24] 7637 	ljmp	00114$
      001CD7                       7638 00337$:
                           0012A6  7639 	C$easyax5043.c$1124$2$562 ==.
                                   7640 ;	..\COMMON\easyax5043.c:1124: ax5043_off();
      001CD7 12 17 47         [24] 7641 	lcall	_ax5043_off
                           0012A9  7642 	C$easyax5043.c$1125$2$562 ==.
                                   7643 ;	..\COMMON\easyax5043.c:1125: if (!axradio_ack_count) {
      001CDA 90 00 0E         [24] 7644 	mov	dptr,#_axradio_ack_count
      001CDD E0               [24] 7645 	movx	a,@dptr
      001CDE FF               [12] 7646 	mov	r7,a
      001CDF E0               [24] 7647 	movx	a,@dptr
      001CE0 70 34            [24] 7648 	jnz	00128$
                           0012B1  7649 	C$easyax5043.c$1126$3$565 ==.
                                   7650 ;	..\COMMON\easyax5043.c:1126: update_timeanchor();
      001CE2 12 0A 31         [24] 7651 	lcall	_update_timeanchor
                           0012B4  7652 	C$easyax5043.c$1127$3$565 ==.
                                   7653 ;	..\COMMON\easyax5043.c:1127: wtimer_remove_callback(&axradio_cb_transmitend.cb);
      001CE5 90 02 7A         [24] 7654 	mov	dptr,#_axradio_cb_transmitend
      001CE8 12 52 63         [24] 7655 	lcall	_wtimer_remove_callback
                           0012BA  7656 	C$easyax5043.c$1128$3$565 ==.
                                   7657 ;	..\COMMON\easyax5043.c:1128: axradio_cb_transmitend.st.error = AXRADIO_ERR_TIMEOUT;
      001CEB 90 02 7F         [24] 7658 	mov	dptr,#(_axradio_cb_transmitend + 0x0005)
      001CEE 74 03            [12] 7659 	mov	a,#0x03
      001CF0 F0               [24] 7660 	movx	@dptr,a
                           0012C0  7661 	C$easyax5043.c$1129$3$565 ==.
                                   7662 ;	..\COMMON\easyax5043.c:1129: axradio_cb_transmitend.st.time.t = axradio_timeanchor.radiotimer;
      001CF1 90 00 1A         [24] 7663 	mov	dptr,#(_axradio_timeanchor + 0x0004)
      001CF4 E0               [24] 7664 	movx	a,@dptr
      001CF5 FB               [12] 7665 	mov	r3,a
      001CF6 A3               [24] 7666 	inc	dptr
      001CF7 E0               [24] 7667 	movx	a,@dptr
      001CF8 FC               [12] 7668 	mov	r4,a
      001CF9 A3               [24] 7669 	inc	dptr
      001CFA E0               [24] 7670 	movx	a,@dptr
      001CFB FD               [12] 7671 	mov	r5,a
      001CFC A3               [24] 7672 	inc	dptr
      001CFD E0               [24] 7673 	movx	a,@dptr
      001CFE FE               [12] 7674 	mov	r6,a
      001CFF 90 02 80         [24] 7675 	mov	dptr,#(_axradio_cb_transmitend + 0x0006)
      001D02 EB               [12] 7676 	mov	a,r3
      001D03 F0               [24] 7677 	movx	@dptr,a
      001D04 EC               [12] 7678 	mov	a,r4
      001D05 A3               [24] 7679 	inc	dptr
      001D06 F0               [24] 7680 	movx	@dptr,a
      001D07 ED               [12] 7681 	mov	a,r5
      001D08 A3               [24] 7682 	inc	dptr
      001D09 F0               [24] 7683 	movx	@dptr,a
      001D0A EE               [12] 7684 	mov	a,r6
      001D0B A3               [24] 7685 	inc	dptr
      001D0C F0               [24] 7686 	movx	@dptr,a
                           0012DC  7687 	C$easyax5043.c$1130$3$565 ==.
                                   7688 ;	..\COMMON\easyax5043.c:1130: wtimer_add_callback(&axradio_cb_transmitend.cb);
      001D0D 90 02 7A         [24] 7689 	mov	dptr,#_axradio_cb_transmitend
      001D10 12 46 F0         [24] 7690 	lcall	_wtimer_add_callback
                           0012E2  7691 	C$easyax5043.c$1131$3$565 ==.
                                   7692 ;	..\COMMON\easyax5043.c:1131: break;
      001D13 02 23 80         [24] 7693 	ljmp	00237$
      001D16                       7694 00128$:
                           0012E5  7695 	C$easyax5043.c$1133$2$562 ==.
                                   7696 ;	..\COMMON\easyax5043.c:1133: --axradio_ack_count;
      001D16 EF               [12] 7697 	mov	a,r7
      001D17 14               [12] 7698 	dec	a
      001D18 90 00 0E         [24] 7699 	mov	dptr,#_axradio_ack_count
      001D1B F0               [24] 7700 	movx	@dptr,a
                           0012EB  7701 	C$easyax5043.c$1134$2$562 ==.
                                   7702 ;	..\COMMON\easyax5043.c:1134: axradio_txbuffer_cnt = axradio_phy_preamble_longlen;
      001D1C 90 57 0D         [24] 7703 	mov	dptr,#_axradio_phy_preamble_longlen
      001D1F E4               [12] 7704 	clr	a
      001D20 93               [24] 7705 	movc	a,@a+dptr
      001D21 FE               [12] 7706 	mov	r6,a
      001D22 74 01            [12] 7707 	mov	a,#0x01
      001D24 93               [24] 7708 	movc	a,@a+dptr
      001D25 FF               [12] 7709 	mov	r7,a
      001D26 90 00 07         [24] 7710 	mov	dptr,#_axradio_txbuffer_cnt
      001D29 EE               [12] 7711 	mov	a,r6
      001D2A F0               [24] 7712 	movx	@dptr,a
      001D2B EF               [12] 7713 	mov	a,r7
      001D2C A3               [24] 7714 	inc	dptr
      001D2D F0               [24] 7715 	movx	@dptr,a
                           0012FD  7716 	C$easyax5043.c$1135$2$562 ==.
                                   7717 ;	..\COMMON\easyax5043.c:1135: ax5043_prepare_tx();
      001D2E 12 17 1E         [24] 7718 	lcall	_ax5043_prepare_tx
                           001300  7719 	C$easyax5043.c$1136$2$562 ==.
                                   7720 ;	..\COMMON\easyax5043.c:1136: break;
      001D31 02 23 80         [24] 7721 	ljmp	00237$
                           001303  7722 	C$easyax5043.c$1138$2$562 ==.
                                   7723 ;	..\COMMON\easyax5043.c:1138: case AXRADIO_MODE_ACK_RECEIVE:
      001D34                       7724 00129$:
                           001303  7725 	C$easyax5043.c$1139$2$562 ==.
                                   7726 ;	..\COMMON\easyax5043.c:1139: case AXRADIO_MODE_WOR_ACK_RECEIVE:
      001D34                       7727 00130$:
                           001303  7728 	C$easyax5043.c$1140$2$562 ==.
                                   7729 ;	..\COMMON\easyax5043.c:1140: if (axradio_syncstate == syncstate_lbt)
      001D34 90 00 04         [24] 7730 	mov	dptr,#_axradio_syncstate
      001D37 E0               [24] 7731 	movx	a,@dptr
      001D38 FF               [12] 7732 	mov	r7,a
      001D39 BF 01 03         [24] 7733 	cjne	r7,#0x01,00339$
      001D3C 02 1C 33         [24] 7734 	ljmp	00114$
      001D3F                       7735 00339$:
                           00130E  7736 	C$easyax5043.c$1143$2$562 ==.
                                   7737 ;	..\COMMON\easyax5043.c:1143: radio_write8(AX5043_REG_FIFOSTAT, 3);
      001D3F                       7738 00134$:
      001D3F 90 40 28         [24] 7739 	mov	dptr,#0x4028
      001D42 74 03            [12] 7740 	mov	a,#0x03
      001D44 F0               [24] 7741 	movx	@dptr,a
                           001314  7742 	C$easyax5043.c$1144$3$567 ==.
                                   7743 ;	..\COMMON\easyax5043.c:1144: radio_write8(AX5043_REG_PWRMODE, AX5043_PWRSTATE_FULL_TX);
      001D45 90 40 02         [24] 7744 	mov	dptr,#0x4002
      001D48 74 0D            [12] 7745 	mov	a,#0x0d
      001D4A F0               [24] 7746 	movx	@dptr,a
                           00131A  7747 	C$easyax5043.c$1145$2$562 ==.
                                   7748 ;	..\COMMON\easyax5043.c:1145: while (!(radio_read8(AX5043_REG_POWSTAT) & 0x08)); // wait for modem vdd so writing the FIFO is safe
      001D4B                       7749 00140$:
      001D4B 90 40 03         [24] 7750 	mov	dptr,#0x4003
      001D4E E0               [24] 7751 	movx	a,@dptr
      001D4F FF               [12] 7752 	mov	r7,a
      001D50 30 E3 F8         [24] 7753 	jnb	acc.3,00140$
                           001322  7754 	C$easyax5043.c$1146$2$562 ==.
                                   7755 ;	..\COMMON\easyax5043.c:1146: ax5043_init_registers_tx();
      001D53 12 0B 15         [24] 7756 	lcall	_ax5043_init_registers_tx
                           001325  7757 	C$easyax5043.c$1147$2$562 ==.
                                   7758 ;	..\COMMON\easyax5043.c:1147: radio_read8(AX5043_REG_RADIOEVENTREQ0); // make sure REVRDONE bit is cleared, so it is a reliable indicator that the packet is out
      001D56 90 40 0F         [24] 7759 	mov	dptr,#0x400f
      001D59 E0               [24] 7760 	movx	a,@dptr
                           001329  7761 	C$easyax5043.c$1148$3$568 ==.
                                   7762 ;	..\COMMON\easyax5043.c:1148: radio_write8(AX5043_REG_FIFOTHRESH1, 0);
      001D5A 90 40 2E         [24] 7763 	mov	dptr,#0x402e
      001D5D E4               [12] 7764 	clr	a
      001D5E F0               [24] 7765 	movx	@dptr,a
                           00132E  7766 	C$easyax5043.c$1149$3$569 ==.
                                   7767 ;	..\COMMON\easyax5043.c:1149: radio_write8(AX5043_REG_FIFOTHRESH0, 0x80);
      001D5F 90 40 2F         [24] 7768 	mov	dptr,#0x402f
      001D62 74 80            [12] 7769 	mov	a,#0x80
      001D64 F0               [24] 7770 	movx	@dptr,a
                           001334  7771 	C$easyax5043.c$1150$2$562 ==.
                                   7772 ;	..\COMMON\easyax5043.c:1150: axradio_trxstate = trxstate_tx_longpreamble;
      001D65 75 09 0A         [24] 7773 	mov	_axradio_trxstate,#0x0a
                           001337  7774 	C$easyax5043.c$1151$2$562 ==.
                                   7775 ;	..\COMMON\easyax5043.c:1151: axradio_txbuffer_cnt = axradio_phy_preamble_longlen;
      001D68 90 57 0D         [24] 7776 	mov	dptr,#_axradio_phy_preamble_longlen
      001D6B E4               [12] 7777 	clr	a
      001D6C 93               [24] 7778 	movc	a,@a+dptr
      001D6D FE               [12] 7779 	mov	r6,a
      001D6E 74 01            [12] 7780 	mov	a,#0x01
      001D70 93               [24] 7781 	movc	a,@a+dptr
      001D71 FF               [12] 7782 	mov	r7,a
      001D72 90 00 07         [24] 7783 	mov	dptr,#_axradio_txbuffer_cnt
      001D75 EE               [12] 7784 	mov	a,r6
      001D76 F0               [24] 7785 	movx	@dptr,a
      001D77 EF               [12] 7786 	mov	a,r7
      001D78 A3               [24] 7787 	inc	dptr
      001D79 F0               [24] 7788 	movx	@dptr,a
                           001349  7789 	C$easyax5043.c$1153$2$562 ==.
                                   7790 ;	..\COMMON\easyax5043.c:1153: if ((radio_read8(AX5043_REG_MODULATION) & 0x0F) == 9) { // 4-FSK
      001D7A 90 40 10         [24] 7791 	mov	dptr,#0x4010
      001D7D E0               [24] 7792 	movx	a,@dptr
      001D7E FF               [12] 7793 	mov	r7,a
      001D7F 53 07 0F         [24] 7794 	anl	ar7,#0x0f
      001D82 BF 09 11         [24] 7795 	cjne	r7,#0x09,00163$
                           001354  7796 	C$easyax5043.c$1154$4$571 ==.
                                   7797 ;	..\COMMON\easyax5043.c:1154: radio_write8(AX5043_REG_FIFODATA, AX5043_FIFOCMD_DATA | (7 << 5));
                           001354  7798 	C$easyax5043.c$1155$4$572 ==.
                                   7799 ;	..\COMMON\easyax5043.c:1155: radio_write8(AX5043_REG_FIFODATA, 2);  // length (including flags)
                           001354  7800 	C$easyax5043.c$1156$4$573 ==.
                                   7801 ;	..\COMMON\easyax5043.c:1156: radio_write8(AX5043_REG_FIFODATA, 0x01);  // flag PKTSTART -> dibit sync
      001D85 90 40 29         [24] 7802 	mov	dptr,#0x4029
      001D88 74 E1            [12] 7803 	mov	a,#0xe1
      001D8A F0               [24] 7804 	movx	@dptr,a
      001D8B 74 02            [12] 7805 	mov	a,#0x02
      001D8D F0               [24] 7806 	movx	@dptr,a
      001D8E 14               [12] 7807 	dec	a
      001D8F F0               [24] 7808 	movx	@dptr,a
                           00135F  7809 	C$easyax5043.c$1157$4$574 ==.
                                   7810 ;	..\COMMON\easyax5043.c:1157: radio_write8(AX5043_REG_FIFODATA, 0x11); // dummy byte for forcing dibit sync
      001D90 90 40 29         [24] 7811 	mov	dptr,#0x4029
      001D93 74 11            [12] 7812 	mov	a,#0x11
      001D95 F0               [24] 7813 	movx	@dptr,a
                           001365  7814 	C$easyax5043.c$1164$2$562 ==.
                                   7815 ;	..\COMMON\easyax5043.c:1164: radio_write8(AX5043_REG_IRQMASK0, 0x08); // enable fifo free threshold
      001D96                       7816 00163$:
      001D96 90 40 07         [24] 7817 	mov	dptr,#0x4007
      001D99 74 08            [12] 7818 	mov	a,#0x08
      001D9B F0               [24] 7819 	movx	@dptr,a
                           00136B  7820 	C$easyax5043.c$1165$2$562 ==.
                                   7821 ;	..\COMMON\easyax5043.c:1165: update_timeanchor();
      001D9C 12 0A 31         [24] 7822 	lcall	_update_timeanchor
                           00136E  7823 	C$easyax5043.c$1166$2$562 ==.
                                   7824 ;	..\COMMON\easyax5043.c:1166: wtimer_remove_callback(&axradio_cb_transmitstart.cb);
      001D9F 90 02 70         [24] 7825 	mov	dptr,#_axradio_cb_transmitstart
      001DA2 12 52 63         [24] 7826 	lcall	_wtimer_remove_callback
                           001374  7827 	C$easyax5043.c$1167$2$562 ==.
                                   7828 ;	..\COMMON\easyax5043.c:1167: axradio_cb_transmitstart.st.error = AXRADIO_ERR_NOERROR;
      001DA5 90 02 75         [24] 7829 	mov	dptr,#(_axradio_cb_transmitstart + 0x0005)
      001DA8 E4               [12] 7830 	clr	a
      001DA9 F0               [24] 7831 	movx	@dptr,a
                           001379  7832 	C$easyax5043.c$1168$2$562 ==.
                                   7833 ;	..\COMMON\easyax5043.c:1168: axradio_cb_transmitstart.st.time.t = axradio_timeanchor.radiotimer;
      001DAA 90 00 1A         [24] 7834 	mov	dptr,#(_axradio_timeanchor + 0x0004)
      001DAD E0               [24] 7835 	movx	a,@dptr
      001DAE FC               [12] 7836 	mov	r4,a
      001DAF A3               [24] 7837 	inc	dptr
      001DB0 E0               [24] 7838 	movx	a,@dptr
      001DB1 FD               [12] 7839 	mov	r5,a
      001DB2 A3               [24] 7840 	inc	dptr
      001DB3 E0               [24] 7841 	movx	a,@dptr
      001DB4 FE               [12] 7842 	mov	r6,a
      001DB5 A3               [24] 7843 	inc	dptr
      001DB6 E0               [24] 7844 	movx	a,@dptr
      001DB7 FF               [12] 7845 	mov	r7,a
      001DB8 90 02 76         [24] 7846 	mov	dptr,#(_axradio_cb_transmitstart + 0x0006)
      001DBB EC               [12] 7847 	mov	a,r4
      001DBC F0               [24] 7848 	movx	@dptr,a
      001DBD ED               [12] 7849 	mov	a,r5
      001DBE A3               [24] 7850 	inc	dptr
      001DBF F0               [24] 7851 	movx	@dptr,a
      001DC0 EE               [12] 7852 	mov	a,r6
      001DC1 A3               [24] 7853 	inc	dptr
      001DC2 F0               [24] 7854 	movx	@dptr,a
      001DC3 EF               [12] 7855 	mov	a,r7
      001DC4 A3               [24] 7856 	inc	dptr
      001DC5 F0               [24] 7857 	movx	@dptr,a
                           001395  7858 	C$easyax5043.c$1169$2$562 ==.
                                   7859 ;	..\COMMON\easyax5043.c:1169: wtimer_add_callback(&axradio_cb_transmitstart.cb);
      001DC6 90 02 70         [24] 7860 	mov	dptr,#_axradio_cb_transmitstart
      001DC9 12 46 F0         [24] 7861 	lcall	_wtimer_add_callback
                           00139B  7862 	C$easyax5043.c$1170$2$562 ==.
                                   7863 ;	..\COMMON\easyax5043.c:1170: break;
      001DCC 02 23 80         [24] 7864 	ljmp	00237$
                           00139E  7865 	C$easyax5043.c$1172$2$562 ==.
                                   7866 ;	..\COMMON\easyax5043.c:1172: case AXRADIO_MODE_SYNC_MASTER:
      001DCF                       7867 00166$:
                           00139E  7868 	C$easyax5043.c$1173$2$562 ==.
                                   7869 ;	..\COMMON\easyax5043.c:1173: case AXRADIO_MODE_SYNC_ACK_MASTER:
      001DCF                       7870 00167$:
                           00139E  7871 	C$easyax5043.c$1174$2$562 ==.
                                   7872 ;	..\COMMON\easyax5043.c:1174: switch (axradio_syncstate) {
      001DCF 90 00 04         [24] 7873 	mov	dptr,#_axradio_syncstate
      001DD2 E0               [24] 7874 	movx	a,@dptr
      001DD3 FF               [12] 7875 	mov	r7,a
      001DD4 BF 04 02         [24] 7876 	cjne	r7,#0x04,00343$
      001DD7 80 5B            [24] 7877 	sjmp	00173$
      001DD9                       7878 00343$:
      001DD9 BF 05 03         [24] 7879 	cjne	r7,#0x05,00344$
      001DDC 02 1F 14         [24] 7880 	ljmp	00207$
      001DDF                       7881 00344$:
                           0013AE  7882 	C$easyax5043.c$1176$4$577 ==.
                                   7883 ;	..\COMMON\easyax5043.c:1176: radio_write8(AX5043_REG_PWRMODE, AX5043_PWRSTATE_XTAL_ON);
      001DDF 90 40 02         [24] 7884 	mov	dptr,#0x4002
      001DE2 74 05            [12] 7885 	mov	a,#0x05
      001DE4 F0               [24] 7886 	movx	@dptr,a
                           0013B4  7887 	C$easyax5043.c$1177$3$576 ==.
                                   7888 ;	..\COMMON\easyax5043.c:1177: ax5043_init_registers_tx();
      001DE5 12 0B 15         [24] 7889 	lcall	_ax5043_init_registers_tx
                           0013B7  7890 	C$easyax5043.c$1178$3$576 ==.
                                   7891 ;	..\COMMON\easyax5043.c:1178: axradio_syncstate = syncstate_master_xostartup;
      001DE8 90 00 04         [24] 7892 	mov	dptr,#_axradio_syncstate
      001DEB 74 04            [12] 7893 	mov	a,#0x04
      001DED F0               [24] 7894 	movx	@dptr,a
                           0013BD  7895 	C$easyax5043.c$1179$3$576 ==.
                                   7896 ;	..\COMMON\easyax5043.c:1179: wtimer_remove_callback(&axradio_cb_transmitdata.cb);
      001DEE 90 02 84         [24] 7897 	mov	dptr,#_axradio_cb_transmitdata
      001DF1 12 52 63         [24] 7898 	lcall	_wtimer_remove_callback
                           0013C3  7899 	C$easyax5043.c$1180$3$576 ==.
                                   7900 ;	..\COMMON\easyax5043.c:1180: axradio_cb_transmitdata.st.error = AXRADIO_ERR_NOERROR;
      001DF4 90 02 89         [24] 7901 	mov	dptr,#(_axradio_cb_transmitdata + 0x0005)
      001DF7 E4               [12] 7902 	clr	a
      001DF8 F0               [24] 7903 	movx	@dptr,a
                           0013C8  7904 	C$easyax5043.c$1181$3$576 ==.
                                   7905 ;	..\COMMON\easyax5043.c:1181: axradio_cb_transmitdata.st.time.t = 0;
      001DF9 90 02 8A         [24] 7906 	mov	dptr,#(_axradio_cb_transmitdata + 0x0006)
      001DFC F0               [24] 7907 	movx	@dptr,a
      001DFD A3               [24] 7908 	inc	dptr
      001DFE F0               [24] 7909 	movx	@dptr,a
      001DFF A3               [24] 7910 	inc	dptr
      001E00 F0               [24] 7911 	movx	@dptr,a
      001E01 A3               [24] 7912 	inc	dptr
      001E02 F0               [24] 7913 	movx	@dptr,a
                           0013D2  7914 	C$easyax5043.c$1182$3$576 ==.
                                   7915 ;	..\COMMON\easyax5043.c:1182: wtimer_add_callback(&axradio_cb_transmitdata.cb);
      001E03 90 02 84         [24] 7916 	mov	dptr,#_axradio_cb_transmitdata
      001E06 12 46 F0         [24] 7917 	lcall	_wtimer_add_callback
                           0013D8  7918 	C$easyax5043.c$1183$3$576 ==.
                                   7919 ;	..\COMMON\easyax5043.c:1183: wtimer_remove(&axradio_timer);
      001E09 90 02 8E         [24] 7920 	mov	dptr,#_axradio_timer
      001E0C 12 50 55         [24] 7921 	lcall	_wtimer_remove
                           0013DE  7922 	C$easyax5043.c$1184$3$576 ==.
                                   7923 ;	..\COMMON\easyax5043.c:1184: axradio_timer.time = axradio_sync_time;
      001E0F 90 00 10         [24] 7924 	mov	dptr,#_axradio_sync_time
      001E12 E0               [24] 7925 	movx	a,@dptr
      001E13 FC               [12] 7926 	mov	r4,a
      001E14 A3               [24] 7927 	inc	dptr
      001E15 E0               [24] 7928 	movx	a,@dptr
      001E16 FD               [12] 7929 	mov	r5,a
      001E17 A3               [24] 7930 	inc	dptr
      001E18 E0               [24] 7931 	movx	a,@dptr
      001E19 FE               [12] 7932 	mov	r6,a
      001E1A A3               [24] 7933 	inc	dptr
      001E1B E0               [24] 7934 	movx	a,@dptr
      001E1C FF               [12] 7935 	mov	r7,a
      001E1D 90 02 92         [24] 7936 	mov	dptr,#(_axradio_timer + 0x0004)
      001E20 EC               [12] 7937 	mov	a,r4
      001E21 F0               [24] 7938 	movx	@dptr,a
      001E22 ED               [12] 7939 	mov	a,r5
      001E23 A3               [24] 7940 	inc	dptr
      001E24 F0               [24] 7941 	movx	@dptr,a
      001E25 EE               [12] 7942 	mov	a,r6
      001E26 A3               [24] 7943 	inc	dptr
      001E27 F0               [24] 7944 	movx	@dptr,a
      001E28 EF               [12] 7945 	mov	a,r7
      001E29 A3               [24] 7946 	inc	dptr
      001E2A F0               [24] 7947 	movx	@dptr,a
                           0013FA  7948 	C$easyax5043.c$1185$3$576 ==.
                                   7949 ;	..\COMMON\easyax5043.c:1185: wtimer0_addabsolute(&axradio_timer);
      001E2B 90 02 8E         [24] 7950 	mov	dptr,#_axradio_timer
      001E2E 12 48 4E         [24] 7951 	lcall	_wtimer0_addabsolute
                           001400  7952 	C$easyax5043.c$1186$3$576 ==.
                                   7953 ;	..\COMMON\easyax5043.c:1186: break;
      001E31 02 23 80         [24] 7954 	ljmp	00237$
                           001403  7955 	C$easyax5043.c$1189$3$576 ==.
                                   7956 ;	..\COMMON\easyax5043.c:1189: radio_write8(AX5043_REG_FIFOSTAT, 3);
      001E34                       7957 00173$:
      001E34 90 40 28         [24] 7958 	mov	dptr,#0x4028
      001E37 74 03            [12] 7959 	mov	a,#0x03
      001E39 F0               [24] 7960 	movx	@dptr,a
                           001409  7961 	C$easyax5043.c$1190$4$579 ==.
                                   7962 ;	..\COMMON\easyax5043.c:1190: radio_write8(AX5043_REG_PWRMODE, AX5043_PWRSTATE_FULL_TX);
      001E3A 90 40 02         [24] 7963 	mov	dptr,#0x4002
      001E3D 74 0D            [12] 7964 	mov	a,#0x0d
      001E3F F0               [24] 7965 	movx	@dptr,a
                           00140F  7966 	C$easyax5043.c$1191$3$576 ==.
                                   7967 ;	..\COMMON\easyax5043.c:1191: while (!(radio_read8(AX5043_REG_POWSTAT) & 0x08)); // wait for modem vdd so writing the FIFO is safe
      001E40                       7968 00179$:
      001E40 90 40 03         [24] 7969 	mov	dptr,#0x4003
      001E43 E0               [24] 7970 	movx	a,@dptr
      001E44 FF               [12] 7971 	mov	r7,a
      001E45 30 E3 F8         [24] 7972 	jnb	acc.3,00179$
                           001417  7973 	C$easyax5043.c$1192$3$576 ==.
                                   7974 ;	..\COMMON\easyax5043.c:1192: radio_read8(AX5043_REG_RADIOEVENTREQ0); // make sure REVRDONE bit is cleared, so it is a reliable indicator that the packet is out
      001E48 90 40 0F         [24] 7975 	mov	dptr,#0x400f
      001E4B E0               [24] 7976 	movx	a,@dptr
                           00141B  7977 	C$easyax5043.c$1193$4$580 ==.
                                   7978 ;	..\COMMON\easyax5043.c:1193: radio_write8(AX5043_REG_FIFOTHRESH1, 0);
      001E4C 90 40 2E         [24] 7979 	mov	dptr,#0x402e
      001E4F E4               [12] 7980 	clr	a
      001E50 F0               [24] 7981 	movx	@dptr,a
                           001420  7982 	C$easyax5043.c$1194$4$581 ==.
                                   7983 ;	..\COMMON\easyax5043.c:1194: radio_write8(AX5043_REG_FIFOTHRESH0, 0x80);
      001E51 90 40 2F         [24] 7984 	mov	dptr,#0x402f
      001E54 74 80            [12] 7985 	mov	a,#0x80
      001E56 F0               [24] 7986 	movx	@dptr,a
                           001426  7987 	C$easyax5043.c$1195$3$576 ==.
                                   7988 ;	..\COMMON\easyax5043.c:1195: axradio_trxstate = trxstate_tx_longpreamble;
      001E57 75 09 0A         [24] 7989 	mov	_axradio_trxstate,#0x0a
                           001429  7990 	C$easyax5043.c$1196$3$576 ==.
                                   7991 ;	..\COMMON\easyax5043.c:1196: axradio_txbuffer_cnt = axradio_phy_preamble_longlen;
      001E5A 90 57 0D         [24] 7992 	mov	dptr,#_axradio_phy_preamble_longlen
      001E5D E4               [12] 7993 	clr	a
      001E5E 93               [24] 7994 	movc	a,@a+dptr
      001E5F FE               [12] 7995 	mov	r6,a
      001E60 74 01            [12] 7996 	mov	a,#0x01
      001E62 93               [24] 7997 	movc	a,@a+dptr
      001E63 FF               [12] 7998 	mov	r7,a
      001E64 90 00 07         [24] 7999 	mov	dptr,#_axradio_txbuffer_cnt
      001E67 EE               [12] 8000 	mov	a,r6
      001E68 F0               [24] 8001 	movx	@dptr,a
      001E69 EF               [12] 8002 	mov	a,r7
      001E6A A3               [24] 8003 	inc	dptr
      001E6B F0               [24] 8004 	movx	@dptr,a
                           00143B  8005 	C$easyax5043.c$1198$3$576 ==.
                                   8006 ;	..\COMMON\easyax5043.c:1198: if ((radio_read8(AX5043_REG_MODULATION) & 0x0F) == 9) { // 4-FSK
      001E6C 90 40 10         [24] 8007 	mov	dptr,#0x4010
      001E6F E0               [24] 8008 	movx	a,@dptr
      001E70 FF               [12] 8009 	mov	r7,a
      001E71 53 07 0F         [24] 8010 	anl	ar7,#0x0f
      001E74 BF 09 11         [24] 8011 	cjne	r7,#0x09,00201$
                           001446  8012 	C$easyax5043.c$1199$5$583 ==.
                                   8013 ;	..\COMMON\easyax5043.c:1199: radio_write8(AX5043_REG_FIFODATA, (AX5043_FIFOCMD_DATA | (7 << 5)));
                           001446  8014 	C$easyax5043.c$1200$5$584 ==.
                                   8015 ;	..\COMMON\easyax5043.c:1200: radio_write8(AX5043_REG_FIFODATA, 2);  // length (including flags)
                           001446  8016 	C$easyax5043.c$1201$5$585 ==.
                                   8017 ;	..\COMMON\easyax5043.c:1201: radio_write8(AX5043_REG_FIFODATA, 0x01);  // flag PKTSTART -> dibit sync
      001E77 90 40 29         [24] 8018 	mov	dptr,#0x4029
      001E7A 74 E1            [12] 8019 	mov	a,#0xe1
      001E7C F0               [24] 8020 	movx	@dptr,a
      001E7D 74 02            [12] 8021 	mov	a,#0x02
      001E7F F0               [24] 8022 	movx	@dptr,a
      001E80 14               [12] 8023 	dec	a
      001E81 F0               [24] 8024 	movx	@dptr,a
                           001451  8025 	C$easyax5043.c$1202$5$586 ==.
                                   8026 ;	..\COMMON\easyax5043.c:1202: radio_write8(AX5043_REG_FIFODATA, 0x11); // dummy byte for forcing dibit sync
      001E82 90 40 29         [24] 8027 	mov	dptr,#0x4029
      001E85 74 11            [12] 8028 	mov	a,#0x11
      001E87 F0               [24] 8029 	movx	@dptr,a
      001E88                       8030 00201$:
                           001457  8031 	C$easyax5043.c$1209$3$576 ==.
                                   8032 ;	..\COMMON\easyax5043.c:1209: wtimer_remove(&axradio_timer);
      001E88 90 02 8E         [24] 8033 	mov	dptr,#_axradio_timer
      001E8B 12 50 55         [24] 8034 	lcall	_wtimer_remove
                           00145D  8035 	C$easyax5043.c$1210$3$576 ==.
                                   8036 ;	..\COMMON\easyax5043.c:1210: update_timeanchor();
      001E8E 12 0A 31         [24] 8037 	lcall	_update_timeanchor
                           001460  8038 	C$easyax5043.c$1211$4$587 ==.
                                   8039 ;	..\COMMON\easyax5043.c:1211: radio_write8(AX5043_REG_IRQMASK0, 0x08); // enable fifo free threshold
      001E91 90 40 07         [24] 8040 	mov	dptr,#0x4007
      001E94 74 08            [12] 8041 	mov	a,#0x08
      001E96 F0               [24] 8042 	movx	@dptr,a
                           001466  8043 	C$easyax5043.c$1212$3$576 ==.
                                   8044 ;	..\COMMON\easyax5043.c:1212: axradio_sync_addtime(axradio_sync_period);
      001E97 90 57 31         [24] 8045 	mov	dptr,#_axradio_sync_period
      001E9A E4               [12] 8046 	clr	a
      001E9B 93               [24] 8047 	movc	a,@a+dptr
      001E9C FC               [12] 8048 	mov	r4,a
      001E9D 74 01            [12] 8049 	mov	a,#0x01
      001E9F 93               [24] 8050 	movc	a,@a+dptr
      001EA0 FD               [12] 8051 	mov	r5,a
      001EA1 74 02            [12] 8052 	mov	a,#0x02
      001EA3 93               [24] 8053 	movc	a,@a+dptr
      001EA4 FE               [12] 8054 	mov	r6,a
      001EA5 74 03            [12] 8055 	mov	a,#0x03
      001EA7 93               [24] 8056 	movc	a,@a+dptr
      001EA8 8C 82            [24] 8057 	mov	dpl,r4
      001EAA 8D 83            [24] 8058 	mov	dph,r5
      001EAC 8E F0            [24] 8059 	mov	b,r6
      001EAE 12 19 04         [24] 8060 	lcall	_axradio_sync_addtime
                           001480  8061 	C$easyax5043.c$1213$3$576 ==.
                                   8062 ;	..\COMMON\easyax5043.c:1213: axradio_syncstate = syncstate_master_waitack;
      001EB1 90 00 04         [24] 8063 	mov	dptr,#_axradio_syncstate
      001EB4 74 05            [12] 8064 	mov	a,#0x05
      001EB6 F0               [24] 8065 	movx	@dptr,a
                           001486  8066 	C$easyax5043.c$1214$3$576 ==.
                                   8067 ;	..\COMMON\easyax5043.c:1214: if (axradio_mode != AXRADIO_MODE_SYNC_ACK_MASTER) {
      001EB7 74 31            [12] 8068 	mov	a,#0x31
      001EB9 B5 08 02         [24] 8069 	cjne	a,_axradio_mode,00348$
      001EBC 80 26            [24] 8070 	sjmp	00206$
      001EBE                       8071 00348$:
                           00148D  8072 	C$easyax5043.c$1215$4$588 ==.
                                   8073 ;	..\COMMON\easyax5043.c:1215: axradio_syncstate = syncstate_master_normal;
      001EBE 90 00 04         [24] 8074 	mov	dptr,#_axradio_syncstate
      001EC1 74 03            [12] 8075 	mov	a,#0x03
      001EC3 F0               [24] 8076 	movx	@dptr,a
                           001493  8077 	C$easyax5043.c$1216$4$588 ==.
                                   8078 ;	..\COMMON\easyax5043.c:1216: axradio_sync_settimeradv(axradio_sync_xoscstartup);
      001EC4 90 57 35         [24] 8079 	mov	dptr,#_axradio_sync_xoscstartup
      001EC7 E4               [12] 8080 	clr	a
      001EC8 93               [24] 8081 	movc	a,@a+dptr
      001EC9 FC               [12] 8082 	mov	r4,a
      001ECA 74 01            [12] 8083 	mov	a,#0x01
      001ECC 93               [24] 8084 	movc	a,@a+dptr
      001ECD FD               [12] 8085 	mov	r5,a
      001ECE 74 02            [12] 8086 	mov	a,#0x02
      001ED0 93               [24] 8087 	movc	a,@a+dptr
      001ED1 FE               [12] 8088 	mov	r6,a
      001ED2 74 03            [12] 8089 	mov	a,#0x03
      001ED4 93               [24] 8090 	movc	a,@a+dptr
      001ED5 8C 82            [24] 8091 	mov	dpl,r4
      001ED7 8D 83            [24] 8092 	mov	dph,r5
      001ED9 8E F0            [24] 8093 	mov	b,r6
      001EDB 12 19 55         [24] 8094 	lcall	_axradio_sync_settimeradv
                           0014AD  8095 	C$easyax5043.c$1217$4$588 ==.
                                   8096 ;	..\COMMON\easyax5043.c:1217: wtimer0_addabsolute(&axradio_timer);
      001EDE 90 02 8E         [24] 8097 	mov	dptr,#_axradio_timer
      001EE1 12 48 4E         [24] 8098 	lcall	_wtimer0_addabsolute
      001EE4                       8099 00206$:
                           0014B3  8100 	C$easyax5043.c$1219$3$576 ==.
                                   8101 ;	..\COMMON\easyax5043.c:1219: wtimer_remove_callback(&axradio_cb_transmitstart.cb);
      001EE4 90 02 70         [24] 8102 	mov	dptr,#_axradio_cb_transmitstart
      001EE7 12 52 63         [24] 8103 	lcall	_wtimer_remove_callback
                           0014B9  8104 	C$easyax5043.c$1220$3$576 ==.
                                   8105 ;	..\COMMON\easyax5043.c:1220: axradio_cb_transmitstart.st.error = AXRADIO_ERR_NOERROR;
      001EEA 90 02 75         [24] 8106 	mov	dptr,#(_axradio_cb_transmitstart + 0x0005)
      001EED E4               [12] 8107 	clr	a
      001EEE F0               [24] 8108 	movx	@dptr,a
                           0014BE  8109 	C$easyax5043.c$1221$3$576 ==.
                                   8110 ;	..\COMMON\easyax5043.c:1221: axradio_cb_transmitstart.st.time.t = axradio_timeanchor.radiotimer;
      001EEF 90 00 1A         [24] 8111 	mov	dptr,#(_axradio_timeanchor + 0x0004)
      001EF2 E0               [24] 8112 	movx	a,@dptr
      001EF3 FC               [12] 8113 	mov	r4,a
      001EF4 A3               [24] 8114 	inc	dptr
      001EF5 E0               [24] 8115 	movx	a,@dptr
      001EF6 FD               [12] 8116 	mov	r5,a
      001EF7 A3               [24] 8117 	inc	dptr
      001EF8 E0               [24] 8118 	movx	a,@dptr
      001EF9 FE               [12] 8119 	mov	r6,a
      001EFA A3               [24] 8120 	inc	dptr
      001EFB E0               [24] 8121 	movx	a,@dptr
      001EFC FF               [12] 8122 	mov	r7,a
      001EFD 90 02 76         [24] 8123 	mov	dptr,#(_axradio_cb_transmitstart + 0x0006)
      001F00 EC               [12] 8124 	mov	a,r4
      001F01 F0               [24] 8125 	movx	@dptr,a
      001F02 ED               [12] 8126 	mov	a,r5
      001F03 A3               [24] 8127 	inc	dptr
      001F04 F0               [24] 8128 	movx	@dptr,a
      001F05 EE               [12] 8129 	mov	a,r6
      001F06 A3               [24] 8130 	inc	dptr
      001F07 F0               [24] 8131 	movx	@dptr,a
      001F08 EF               [12] 8132 	mov	a,r7
      001F09 A3               [24] 8133 	inc	dptr
      001F0A F0               [24] 8134 	movx	@dptr,a
                           0014DA  8135 	C$easyax5043.c$1222$3$576 ==.
                                   8136 ;	..\COMMON\easyax5043.c:1222: wtimer_add_callback(&axradio_cb_transmitstart.cb);
      001F0B 90 02 70         [24] 8137 	mov	dptr,#_axradio_cb_transmitstart
      001F0E 12 46 F0         [24] 8138 	lcall	_wtimer_add_callback
                           0014E0  8139 	C$easyax5043.c$1223$3$576 ==.
                                   8140 ;	..\COMMON\easyax5043.c:1223: break;
      001F11 02 23 80         [24] 8141 	ljmp	00237$
                           0014E3  8142 	C$easyax5043.c$1225$3$576 ==.
                                   8143 ;	..\COMMON\easyax5043.c:1225: case syncstate_master_waitack:
      001F14                       8144 00207$:
                           0014E3  8145 	C$easyax5043.c$1226$3$576 ==.
                                   8146 ;	..\COMMON\easyax5043.c:1226: ax5043_off();
      001F14 12 17 47         [24] 8147 	lcall	_ax5043_off
                           0014E6  8148 	C$easyax5043.c$1227$3$576 ==.
                                   8149 ;	..\COMMON\easyax5043.c:1227: axradio_syncstate = syncstate_master_normal;
      001F17 90 00 04         [24] 8150 	mov	dptr,#_axradio_syncstate
      001F1A 74 03            [12] 8151 	mov	a,#0x03
      001F1C F0               [24] 8152 	movx	@dptr,a
                           0014EC  8153 	C$easyax5043.c$1228$3$576 ==.
                                   8154 ;	..\COMMON\easyax5043.c:1228: wtimer_remove(&axradio_timer);
      001F1D 90 02 8E         [24] 8155 	mov	dptr,#_axradio_timer
      001F20 12 50 55         [24] 8156 	lcall	_wtimer_remove
                           0014F2  8157 	C$easyax5043.c$1229$3$576 ==.
                                   8158 ;	..\COMMON\easyax5043.c:1229: axradio_sync_settimeradv(axradio_sync_xoscstartup);
      001F23 90 57 35         [24] 8159 	mov	dptr,#_axradio_sync_xoscstartup
      001F26 E4               [12] 8160 	clr	a
      001F27 93               [24] 8161 	movc	a,@a+dptr
      001F28 FC               [12] 8162 	mov	r4,a
      001F29 74 01            [12] 8163 	mov	a,#0x01
      001F2B 93               [24] 8164 	movc	a,@a+dptr
      001F2C FD               [12] 8165 	mov	r5,a
      001F2D 74 02            [12] 8166 	mov	a,#0x02
      001F2F 93               [24] 8167 	movc	a,@a+dptr
      001F30 FE               [12] 8168 	mov	r6,a
      001F31 74 03            [12] 8169 	mov	a,#0x03
      001F33 93               [24] 8170 	movc	a,@a+dptr
      001F34 8C 82            [24] 8171 	mov	dpl,r4
      001F36 8D 83            [24] 8172 	mov	dph,r5
      001F38 8E F0            [24] 8173 	mov	b,r6
      001F3A 12 19 55         [24] 8174 	lcall	_axradio_sync_settimeradv
                           00150C  8175 	C$easyax5043.c$1230$3$576 ==.
                                   8176 ;	..\COMMON\easyax5043.c:1230: wtimer0_addabsolute(&axradio_timer);
      001F3D 90 02 8E         [24] 8177 	mov	dptr,#_axradio_timer
      001F40 12 48 4E         [24] 8178 	lcall	_wtimer0_addabsolute
                           001512  8179 	C$easyax5043.c$1231$3$576 ==.
                                   8180 ;	..\COMMON\easyax5043.c:1231: update_timeanchor();
      001F43 12 0A 31         [24] 8181 	lcall	_update_timeanchor
                           001515  8182 	C$easyax5043.c$1232$3$576 ==.
                                   8183 ;	..\COMMON\easyax5043.c:1232: wtimer_remove_callback(&axradio_cb_transmitend.cb);
      001F46 90 02 7A         [24] 8184 	mov	dptr,#_axradio_cb_transmitend
      001F49 12 52 63         [24] 8185 	lcall	_wtimer_remove_callback
                           00151B  8186 	C$easyax5043.c$1233$3$576 ==.
                                   8187 ;	..\COMMON\easyax5043.c:1233: axradio_cb_transmitend.st.error = AXRADIO_ERR_TIMEOUT;
      001F4C 90 02 7F         [24] 8188 	mov	dptr,#(_axradio_cb_transmitend + 0x0005)
      001F4F 74 03            [12] 8189 	mov	a,#0x03
      001F51 F0               [24] 8190 	movx	@dptr,a
                           001521  8191 	C$easyax5043.c$1234$3$576 ==.
                                   8192 ;	..\COMMON\easyax5043.c:1234: axradio_cb_transmitend.st.time.t = axradio_timeanchor.radiotimer;
      001F52 90 00 1A         [24] 8193 	mov	dptr,#(_axradio_timeanchor + 0x0004)
      001F55 E0               [24] 8194 	movx	a,@dptr
      001F56 FC               [12] 8195 	mov	r4,a
      001F57 A3               [24] 8196 	inc	dptr
      001F58 E0               [24] 8197 	movx	a,@dptr
      001F59 FD               [12] 8198 	mov	r5,a
      001F5A A3               [24] 8199 	inc	dptr
      001F5B E0               [24] 8200 	movx	a,@dptr
      001F5C FE               [12] 8201 	mov	r6,a
      001F5D A3               [24] 8202 	inc	dptr
      001F5E E0               [24] 8203 	movx	a,@dptr
      001F5F FF               [12] 8204 	mov	r7,a
      001F60 90 02 80         [24] 8205 	mov	dptr,#(_axradio_cb_transmitend + 0x0006)
      001F63 EC               [12] 8206 	mov	a,r4
      001F64 F0               [24] 8207 	movx	@dptr,a
      001F65 ED               [12] 8208 	mov	a,r5
      001F66 A3               [24] 8209 	inc	dptr
      001F67 F0               [24] 8210 	movx	@dptr,a
      001F68 EE               [12] 8211 	mov	a,r6
      001F69 A3               [24] 8212 	inc	dptr
      001F6A F0               [24] 8213 	movx	@dptr,a
      001F6B EF               [12] 8214 	mov	a,r7
      001F6C A3               [24] 8215 	inc	dptr
      001F6D F0               [24] 8216 	movx	@dptr,a
                           00153D  8217 	C$easyax5043.c$1235$3$576 ==.
                                   8218 ;	..\COMMON\easyax5043.c:1235: wtimer_add_callback(&axradio_cb_transmitend.cb);
      001F6E 90 02 7A         [24] 8219 	mov	dptr,#_axradio_cb_transmitend
      001F71 12 46 F0         [24] 8220 	lcall	_wtimer_add_callback
                           001543  8221 	C$easyax5043.c$1238$2$562 ==.
                                   8222 ;	..\COMMON\easyax5043.c:1238: break;
      001F74 02 23 80         [24] 8223 	ljmp	00237$
                           001546  8224 	C$easyax5043.c$1240$2$562 ==.
                                   8225 ;	..\COMMON\easyax5043.c:1240: case AXRADIO_MODE_SYNC_SLAVE:
      001F77                       8226 00209$:
                           001546  8227 	C$easyax5043.c$1241$2$562 ==.
                                   8228 ;	..\COMMON\easyax5043.c:1241: case AXRADIO_MODE_SYNC_ACK_SLAVE:
      001F77                       8229 00210$:
                           001546  8230 	C$easyax5043.c$1242$2$562 ==.
                                   8231 ;	..\COMMON\easyax5043.c:1242: switch (axradio_syncstate) {
      001F77 90 00 04         [24] 8232 	mov	dptr,#_axradio_syncstate
      001F7A E0               [24] 8233 	movx	a,@dptr
      001F7B FF               [12] 8234 	mov  r7,a
      001F7C 24 F3            [12] 8235 	add	a,#0xff - 0x0c
      001F7E 50 03            [24] 8236 	jnc	00349$
      001F80 02 1F AE         [24] 8237 	ljmp	00212$
      001F83                       8238 00349$:
      001F83 EF               [12] 8239 	mov	a,r7
      001F84 F5 F0            [12] 8240 	mov	b,a
      001F86 24 0B            [12] 8241 	add	a,#(00350$-3-.)
      001F88 83               [24] 8242 	movc	a,@a+pc
      001F89 F5 82            [12] 8243 	mov	dpl,a
      001F8B E5 F0            [12] 8244 	mov	a,b
      001F8D 24 11            [12] 8245 	add	a,#(00351$-3-.)
      001F8F 83               [24] 8246 	movc	a,@a+pc
      001F90 F5 83            [12] 8247 	mov	dph,a
      001F92 E4               [12] 8248 	clr	a
      001F93 73               [24] 8249 	jmp	@a+dptr
      001F94                       8250 00350$:
      001F94 AE                    8251 	.db	00211$
      001F95 AE                    8252 	.db	00211$
      001F96 AE                    8253 	.db	00211$
      001F97 AE                    8254 	.db	00211$
      001F98 AE                    8255 	.db	00211$
      001F99 AE                    8256 	.db	00211$
      001F9A AE                    8257 	.db	00212$
      001F9B 3C                    8258 	.db	00213$
      001F9C CD                    8259 	.db	00214$
      001F9D 22                    8260 	.db	00218$
      001F9E D6                    8261 	.db	00221$
      001F9F 39                    8262 	.db	00226$
      001FA0 51                    8263 	.db	00233$
      001FA1                       8264 00351$:
      001FA1 1F                    8265 	.db	00211$>>8
      001FA2 1F                    8266 	.db	00211$>>8
      001FA3 1F                    8267 	.db	00211$>>8
      001FA4 1F                    8268 	.db	00211$>>8
      001FA5 1F                    8269 	.db	00211$>>8
      001FA6 1F                    8270 	.db	00211$>>8
      001FA7 1F                    8271 	.db	00212$>>8
      001FA8 20                    8272 	.db	00213$>>8
      001FA9 20                    8273 	.db	00214$>>8
      001FAA 21                    8274 	.db	00218$>>8
      001FAB 21                    8275 	.db	00221$>>8
      001FAC 22                    8276 	.db	00226$>>8
      001FAD 23                    8277 	.db	00233$>>8
                           00157D  8278 	C$easyax5043.c$1243$3$589 ==.
                                   8279 ;	..\COMMON\easyax5043.c:1243: default:
      001FAE                       8280 00211$:
                           00157D  8281 	C$easyax5043.c$1244$3$589 ==.
                                   8282 ;	..\COMMON\easyax5043.c:1244: case syncstate_slave_synchunt:
      001FAE                       8283 00212$:
                           00157D  8284 	C$easyax5043.c$1245$3$589 ==.
                                   8285 ;	..\COMMON\easyax5043.c:1245: ax5043_off();
      001FAE 12 17 47         [24] 8286 	lcall	_ax5043_off
                           001580  8287 	C$easyax5043.c$1246$3$589 ==.
                                   8288 ;	..\COMMON\easyax5043.c:1246: axradio_syncstate = syncstate_slave_syncpause;
      001FB1 90 00 04         [24] 8289 	mov	dptr,#_axradio_syncstate
      001FB4 74 07            [12] 8290 	mov	a,#0x07
      001FB6 F0               [24] 8291 	movx	@dptr,a
                           001586  8292 	C$easyax5043.c$1247$3$589 ==.
                                   8293 ;	..\COMMON\easyax5043.c:1247: axradio_sync_addtime(axradio_sync_slave_syncpause);
      001FB7 90 57 41         [24] 8294 	mov	dptr,#_axradio_sync_slave_syncpause
      001FBA E4               [12] 8295 	clr	a
      001FBB 93               [24] 8296 	movc	a,@a+dptr
      001FBC FC               [12] 8297 	mov	r4,a
      001FBD 74 01            [12] 8298 	mov	a,#0x01
      001FBF 93               [24] 8299 	movc	a,@a+dptr
      001FC0 FD               [12] 8300 	mov	r5,a
      001FC1 74 02            [12] 8301 	mov	a,#0x02
      001FC3 93               [24] 8302 	movc	a,@a+dptr
      001FC4 FE               [12] 8303 	mov	r6,a
      001FC5 74 03            [12] 8304 	mov	a,#0x03
      001FC7 93               [24] 8305 	movc	a,@a+dptr
      001FC8 8C 82            [24] 8306 	mov	dpl,r4
      001FCA 8D 83            [24] 8307 	mov	dph,r5
      001FCC 8E F0            [24] 8308 	mov	b,r6
      001FCE 12 19 04         [24] 8309 	lcall	_axradio_sync_addtime
                           0015A0  8310 	C$easyax5043.c$1248$3$589 ==.
                                   8311 ;	..\COMMON\easyax5043.c:1248: wtimer_remove(&axradio_timer);
      001FD1 90 02 8E         [24] 8312 	mov	dptr,#_axradio_timer
      001FD4 12 50 55         [24] 8313 	lcall	_wtimer_remove
                           0015A6  8314 	C$easyax5043.c$1249$3$589 ==.
                                   8315 ;	..\COMMON\easyax5043.c:1249: axradio_timer.time = axradio_sync_time;
      001FD7 90 00 10         [24] 8316 	mov	dptr,#_axradio_sync_time
      001FDA E0               [24] 8317 	movx	a,@dptr
      001FDB FC               [12] 8318 	mov	r4,a
      001FDC A3               [24] 8319 	inc	dptr
      001FDD E0               [24] 8320 	movx	a,@dptr
      001FDE FD               [12] 8321 	mov	r5,a
      001FDF A3               [24] 8322 	inc	dptr
      001FE0 E0               [24] 8323 	movx	a,@dptr
      001FE1 FE               [12] 8324 	mov	r6,a
      001FE2 A3               [24] 8325 	inc	dptr
      001FE3 E0               [24] 8326 	movx	a,@dptr
      001FE4 FF               [12] 8327 	mov	r7,a
      001FE5 90 02 92         [24] 8328 	mov	dptr,#(_axradio_timer + 0x0004)
      001FE8 EC               [12] 8329 	mov	a,r4
      001FE9 F0               [24] 8330 	movx	@dptr,a
      001FEA ED               [12] 8331 	mov	a,r5
      001FEB A3               [24] 8332 	inc	dptr
      001FEC F0               [24] 8333 	movx	@dptr,a
      001FED EE               [12] 8334 	mov	a,r6
      001FEE A3               [24] 8335 	inc	dptr
      001FEF F0               [24] 8336 	movx	@dptr,a
      001FF0 EF               [12] 8337 	mov	a,r7
      001FF1 A3               [24] 8338 	inc	dptr
      001FF2 F0               [24] 8339 	movx	@dptr,a
                           0015C2  8340 	C$easyax5043.c$1250$3$589 ==.
                                   8341 ;	..\COMMON\easyax5043.c:1250: wtimer0_addabsolute(&axradio_timer);
      001FF3 90 02 8E         [24] 8342 	mov	dptr,#_axradio_timer
      001FF6 12 48 4E         [24] 8343 	lcall	_wtimer0_addabsolute
                           0015C8  8344 	C$easyax5043.c$1251$3$589 ==.
                                   8345 ;	..\COMMON\easyax5043.c:1251: wtimer_remove_callback(&axradio_cb_receive.cb);
      001FF9 90 02 35         [24] 8346 	mov	dptr,#_axradio_cb_receive
      001FFC 12 52 63         [24] 8347 	lcall	_wtimer_remove_callback
                           0015CE  8348 	C$easyax5043.c$1252$3$589 ==.
                                   8349 ;	..\COMMON\easyax5043.c:1252: memset_xdata(&axradio_cb_receive.st, 0, sizeof(axradio_cb_receive.st));
      001FFF 75 34 00         [24] 8350 	mov	_memset_PARM_2,#0x00
      002002 75 35 20         [24] 8351 	mov	_memset_PARM_3,#0x20
      002005 75 36 00         [24] 8352 	mov	(_memset_PARM_3 + 1),#0x00
      002008 90 02 39         [24] 8353 	mov	dptr,#(_axradio_cb_receive + 0x0004)
      00200B 75 F0 00         [24] 8354 	mov	b,#0x00
      00200E 12 46 7C         [24] 8355 	lcall	_memset
                           0015E0  8356 	C$easyax5043.c$1253$3$589 ==.
                                   8357 ;	..\COMMON\easyax5043.c:1253: axradio_cb_receive.st.time.t = axradio_timeanchor.radiotimer;
      002011 90 00 1A         [24] 8358 	mov	dptr,#(_axradio_timeanchor + 0x0004)
      002014 E0               [24] 8359 	movx	a,@dptr
      002015 FC               [12] 8360 	mov	r4,a
      002016 A3               [24] 8361 	inc	dptr
      002017 E0               [24] 8362 	movx	a,@dptr
      002018 FD               [12] 8363 	mov	r5,a
      002019 A3               [24] 8364 	inc	dptr
      00201A E0               [24] 8365 	movx	a,@dptr
      00201B FE               [12] 8366 	mov	r6,a
      00201C A3               [24] 8367 	inc	dptr
      00201D E0               [24] 8368 	movx	a,@dptr
      00201E FF               [12] 8369 	mov	r7,a
      00201F 90 02 3B         [24] 8370 	mov	dptr,#(_axradio_cb_receive + 0x0006)
      002022 EC               [12] 8371 	mov	a,r4
      002023 F0               [24] 8372 	movx	@dptr,a
      002024 ED               [12] 8373 	mov	a,r5
      002025 A3               [24] 8374 	inc	dptr
      002026 F0               [24] 8375 	movx	@dptr,a
      002027 EE               [12] 8376 	mov	a,r6
      002028 A3               [24] 8377 	inc	dptr
      002029 F0               [24] 8378 	movx	@dptr,a
      00202A EF               [12] 8379 	mov	a,r7
      00202B A3               [24] 8380 	inc	dptr
      00202C F0               [24] 8381 	movx	@dptr,a
                           0015FC  8382 	C$easyax5043.c$1254$3$589 ==.
                                   8383 ;	..\COMMON\easyax5043.c:1254: axradio_cb_receive.st.error = AXRADIO_ERR_RESYNCTIMEOUT;
      00202D 90 02 3A         [24] 8384 	mov	dptr,#(_axradio_cb_receive + 0x0005)
      002030 74 0A            [12] 8385 	mov	a,#0x0a
      002032 F0               [24] 8386 	movx	@dptr,a
                           001602  8387 	C$easyax5043.c$1255$3$589 ==.
                                   8388 ;	..\COMMON\easyax5043.c:1255: wtimer_add_callback(&axradio_cb_receive.cb);
      002033 90 02 35         [24] 8389 	mov	dptr,#_axradio_cb_receive
      002036 12 46 F0         [24] 8390 	lcall	_wtimer_add_callback
                           001608  8391 	C$easyax5043.c$1256$3$589 ==.
                                   8392 ;	..\COMMON\easyax5043.c:1256: break;
      002039 02 23 80         [24] 8393 	ljmp	00237$
                           00160B  8394 	C$easyax5043.c$1258$3$589 ==.
                                   8395 ;	..\COMMON\easyax5043.c:1258: case syncstate_slave_syncpause:
      00203C                       8396 00213$:
                           00160B  8397 	C$easyax5043.c$1259$3$589 ==.
                                   8398 ;	..\COMMON\easyax5043.c:1259: ax5043_receiver_on_continuous();
      00203C 12 15 F8         [24] 8399 	lcall	_ax5043_receiver_on_continuous
                           00160E  8400 	C$easyax5043.c$1260$3$589 ==.
                                   8401 ;	..\COMMON\easyax5043.c:1260: axradio_syncstate = syncstate_slave_synchunt;
      00203F 90 00 04         [24] 8402 	mov	dptr,#_axradio_syncstate
      002042 74 06            [12] 8403 	mov	a,#0x06
      002044 F0               [24] 8404 	movx	@dptr,a
                           001614  8405 	C$easyax5043.c$1261$3$589 ==.
                                   8406 ;	..\COMMON\easyax5043.c:1261: axradio_sync_addtime(axradio_sync_slave_syncwindow);
      002045 90 57 39         [24] 8407 	mov	dptr,#_axradio_sync_slave_syncwindow
      002048 E4               [12] 8408 	clr	a
      002049 93               [24] 8409 	movc	a,@a+dptr
      00204A FC               [12] 8410 	mov	r4,a
      00204B 74 01            [12] 8411 	mov	a,#0x01
      00204D 93               [24] 8412 	movc	a,@a+dptr
      00204E FD               [12] 8413 	mov	r5,a
      00204F 74 02            [12] 8414 	mov	a,#0x02
      002051 93               [24] 8415 	movc	a,@a+dptr
      002052 FE               [12] 8416 	mov	r6,a
      002053 74 03            [12] 8417 	mov	a,#0x03
      002055 93               [24] 8418 	movc	a,@a+dptr
      002056 8C 82            [24] 8419 	mov	dpl,r4
      002058 8D 83            [24] 8420 	mov	dph,r5
      00205A 8E F0            [24] 8421 	mov	b,r6
      00205C 12 19 04         [24] 8422 	lcall	_axradio_sync_addtime
                           00162E  8423 	C$easyax5043.c$1262$3$589 ==.
                                   8424 ;	..\COMMON\easyax5043.c:1262: wtimer_remove(&axradio_timer);
      00205F 90 02 8E         [24] 8425 	mov	dptr,#_axradio_timer
      002062 12 50 55         [24] 8426 	lcall	_wtimer_remove
                           001634  8427 	C$easyax5043.c$1263$3$589 ==.
                                   8428 ;	..\COMMON\easyax5043.c:1263: axradio_timer.time = axradio_sync_time;
      002065 90 00 10         [24] 8429 	mov	dptr,#_axradio_sync_time
      002068 E0               [24] 8430 	movx	a,@dptr
      002069 FC               [12] 8431 	mov	r4,a
      00206A A3               [24] 8432 	inc	dptr
      00206B E0               [24] 8433 	movx	a,@dptr
      00206C FD               [12] 8434 	mov	r5,a
      00206D A3               [24] 8435 	inc	dptr
      00206E E0               [24] 8436 	movx	a,@dptr
      00206F FE               [12] 8437 	mov	r6,a
      002070 A3               [24] 8438 	inc	dptr
      002071 E0               [24] 8439 	movx	a,@dptr
      002072 FF               [12] 8440 	mov	r7,a
      002073 90 02 92         [24] 8441 	mov	dptr,#(_axradio_timer + 0x0004)
      002076 EC               [12] 8442 	mov	a,r4
      002077 F0               [24] 8443 	movx	@dptr,a
      002078 ED               [12] 8444 	mov	a,r5
      002079 A3               [24] 8445 	inc	dptr
      00207A F0               [24] 8446 	movx	@dptr,a
      00207B EE               [12] 8447 	mov	a,r6
      00207C A3               [24] 8448 	inc	dptr
      00207D F0               [24] 8449 	movx	@dptr,a
      00207E EF               [12] 8450 	mov	a,r7
      00207F A3               [24] 8451 	inc	dptr
      002080 F0               [24] 8452 	movx	@dptr,a
                           001650  8453 	C$easyax5043.c$1264$3$589 ==.
                                   8454 ;	..\COMMON\easyax5043.c:1264: wtimer0_addabsolute(&axradio_timer);
      002081 90 02 8E         [24] 8455 	mov	dptr,#_axradio_timer
      002084 12 48 4E         [24] 8456 	lcall	_wtimer0_addabsolute
                           001656  8457 	C$easyax5043.c$1265$3$589 ==.
                                   8458 ;	..\COMMON\easyax5043.c:1265: update_timeanchor();
      002087 12 0A 31         [24] 8459 	lcall	_update_timeanchor
                           001659  8460 	C$easyax5043.c$1266$3$589 ==.
                                   8461 ;	..\COMMON\easyax5043.c:1266: wtimer_remove_callback(&axradio_cb_receive.cb);
      00208A 90 02 35         [24] 8462 	mov	dptr,#_axradio_cb_receive
      00208D 12 52 63         [24] 8463 	lcall	_wtimer_remove_callback
                           00165F  8464 	C$easyax5043.c$1267$3$589 ==.
                                   8465 ;	..\COMMON\easyax5043.c:1267: memset_xdata(&axradio_cb_receive.st, 0, sizeof(axradio_cb_receive.st));
      002090 75 34 00         [24] 8466 	mov	_memset_PARM_2,#0x00
      002093 75 35 20         [24] 8467 	mov	_memset_PARM_3,#0x20
      002096 75 36 00         [24] 8468 	mov	(_memset_PARM_3 + 1),#0x00
      002099 90 02 39         [24] 8469 	mov	dptr,#(_axradio_cb_receive + 0x0004)
      00209C 75 F0 00         [24] 8470 	mov	b,#0x00
      00209F 12 46 7C         [24] 8471 	lcall	_memset
                           001671  8472 	C$easyax5043.c$1268$3$589 ==.
                                   8473 ;	..\COMMON\easyax5043.c:1268: axradio_cb_receive.st.time.t = axradio_timeanchor.radiotimer;
      0020A2 90 00 1A         [24] 8474 	mov	dptr,#(_axradio_timeanchor + 0x0004)
      0020A5 E0               [24] 8475 	movx	a,@dptr
      0020A6 FC               [12] 8476 	mov	r4,a
      0020A7 A3               [24] 8477 	inc	dptr
      0020A8 E0               [24] 8478 	movx	a,@dptr
      0020A9 FD               [12] 8479 	mov	r5,a
      0020AA A3               [24] 8480 	inc	dptr
      0020AB E0               [24] 8481 	movx	a,@dptr
      0020AC FE               [12] 8482 	mov	r6,a
      0020AD A3               [24] 8483 	inc	dptr
      0020AE E0               [24] 8484 	movx	a,@dptr
      0020AF FF               [12] 8485 	mov	r7,a
      0020B0 90 02 3B         [24] 8486 	mov	dptr,#(_axradio_cb_receive + 0x0006)
      0020B3 EC               [12] 8487 	mov	a,r4
      0020B4 F0               [24] 8488 	movx	@dptr,a
      0020B5 ED               [12] 8489 	mov	a,r5
      0020B6 A3               [24] 8490 	inc	dptr
      0020B7 F0               [24] 8491 	movx	@dptr,a
      0020B8 EE               [12] 8492 	mov	a,r6
      0020B9 A3               [24] 8493 	inc	dptr
      0020BA F0               [24] 8494 	movx	@dptr,a
      0020BB EF               [12] 8495 	mov	a,r7
      0020BC A3               [24] 8496 	inc	dptr
      0020BD F0               [24] 8497 	movx	@dptr,a
                           00168D  8498 	C$easyax5043.c$1269$3$589 ==.
                                   8499 ;	..\COMMON\easyax5043.c:1269: axradio_cb_receive.st.error = AXRADIO_ERR_RESYNC;
      0020BE 90 02 3A         [24] 8500 	mov	dptr,#(_axradio_cb_receive + 0x0005)
      0020C1 74 09            [12] 8501 	mov	a,#0x09
      0020C3 F0               [24] 8502 	movx	@dptr,a
                           001693  8503 	C$easyax5043.c$1270$3$589 ==.
                                   8504 ;	..\COMMON\easyax5043.c:1270: wtimer_add_callback(&axradio_cb_receive.cb);
      0020C4 90 02 35         [24] 8505 	mov	dptr,#_axradio_cb_receive
      0020C7 12 46 F0         [24] 8506 	lcall	_wtimer_add_callback
                           001699  8507 	C$easyax5043.c$1271$3$589 ==.
                                   8508 ;	..\COMMON\easyax5043.c:1271: break;
      0020CA 02 23 80         [24] 8509 	ljmp	00237$
                           00169C  8510 	C$easyax5043.c$1273$3$589 ==.
                                   8511 ;	..\COMMON\easyax5043.c:1273: case syncstate_slave_rxidle:
      0020CD                       8512 00214$:
                           00169C  8513 	C$easyax5043.c$1274$4$590 ==.
                                   8514 ;	..\COMMON\easyax5043.c:1274: radio_write8(AX5043_REG_PWRMODE, AX5043_PWRSTATE_XTAL_ON);
      0020CD 90 40 02         [24] 8515 	mov	dptr,#0x4002
      0020D0 74 05            [12] 8516 	mov	a,#0x05
      0020D2 F0               [24] 8517 	movx	@dptr,a
                           0016A2  8518 	C$easyax5043.c$1275$3$589 ==.
                                   8519 ;	..\COMMON\easyax5043.c:1275: axradio_syncstate = syncstate_slave_rxxosc;
      0020D3 90 00 04         [24] 8520 	mov	dptr,#_axradio_syncstate
      0020D6 74 09            [12] 8521 	mov	a,#0x09
      0020D8 F0               [24] 8522 	movx	@dptr,a
                           0016A8  8523 	C$easyax5043.c$1276$3$589 ==.
                                   8524 ;	..\COMMON\easyax5043.c:1276: wtimer_remove(&axradio_timer);
      0020D9 90 02 8E         [24] 8525 	mov	dptr,#_axradio_timer
      0020DC 12 50 55         [24] 8526 	lcall	_wtimer_remove
                           0016AE  8527 	C$easyax5043.c$1277$3$589 ==.
                                   8528 ;	..\COMMON\easyax5043.c:1277: axradio_timer.time += axradio_sync_xoscstartup;
      0020DF 90 02 92         [24] 8529 	mov	dptr,#(_axradio_timer + 0x0004)
      0020E2 E0               [24] 8530 	movx	a,@dptr
      0020E3 FC               [12] 8531 	mov	r4,a
      0020E4 A3               [24] 8532 	inc	dptr
      0020E5 E0               [24] 8533 	movx	a,@dptr
      0020E6 FD               [12] 8534 	mov	r5,a
      0020E7 A3               [24] 8535 	inc	dptr
      0020E8 E0               [24] 8536 	movx	a,@dptr
      0020E9 FE               [12] 8537 	mov	r6,a
      0020EA A3               [24] 8538 	inc	dptr
      0020EB E0               [24] 8539 	movx	a,@dptr
      0020EC FF               [12] 8540 	mov	r7,a
      0020ED 90 57 35         [24] 8541 	mov	dptr,#_axradio_sync_xoscstartup
      0020F0 E4               [12] 8542 	clr	a
      0020F1 93               [24] 8543 	movc	a,@a+dptr
      0020F2 F8               [12] 8544 	mov	r0,a
      0020F3 74 01            [12] 8545 	mov	a,#0x01
      0020F5 93               [24] 8546 	movc	a,@a+dptr
      0020F6 F9               [12] 8547 	mov	r1,a
      0020F7 74 02            [12] 8548 	mov	a,#0x02
      0020F9 93               [24] 8549 	movc	a,@a+dptr
      0020FA FA               [12] 8550 	mov	r2,a
      0020FB 74 03            [12] 8551 	mov	a,#0x03
      0020FD 93               [24] 8552 	movc	a,@a+dptr
      0020FE FB               [12] 8553 	mov	r3,a
      0020FF E8               [12] 8554 	mov	a,r0
      002100 2C               [12] 8555 	add	a,r4
      002101 FC               [12] 8556 	mov	r4,a
      002102 E9               [12] 8557 	mov	a,r1
      002103 3D               [12] 8558 	addc	a,r5
      002104 FD               [12] 8559 	mov	r5,a
      002105 EA               [12] 8560 	mov	a,r2
      002106 3E               [12] 8561 	addc	a,r6
      002107 FE               [12] 8562 	mov	r6,a
      002108 EB               [12] 8563 	mov	a,r3
      002109 3F               [12] 8564 	addc	a,r7
      00210A FF               [12] 8565 	mov	r7,a
      00210B 90 02 92         [24] 8566 	mov	dptr,#(_axradio_timer + 0x0004)
      00210E EC               [12] 8567 	mov	a,r4
      00210F F0               [24] 8568 	movx	@dptr,a
      002110 ED               [12] 8569 	mov	a,r5
      002111 A3               [24] 8570 	inc	dptr
      002112 F0               [24] 8571 	movx	@dptr,a
      002113 EE               [12] 8572 	mov	a,r6
      002114 A3               [24] 8573 	inc	dptr
      002115 F0               [24] 8574 	movx	@dptr,a
      002116 EF               [12] 8575 	mov	a,r7
      002117 A3               [24] 8576 	inc	dptr
      002118 F0               [24] 8577 	movx	@dptr,a
                           0016E8  8578 	C$easyax5043.c$1278$3$589 ==.
                                   8579 ;	..\COMMON\easyax5043.c:1278: wtimer0_addabsolute(&axradio_timer);
      002119 90 02 8E         [24] 8580 	mov	dptr,#_axradio_timer
      00211C 12 48 4E         [24] 8581 	lcall	_wtimer0_addabsolute
                           0016EE  8582 	C$easyax5043.c$1279$3$589 ==.
                                   8583 ;	..\COMMON\easyax5043.c:1279: break;
      00211F 02 23 80         [24] 8584 	ljmp	00237$
                           0016F1  8585 	C$easyax5043.c$1281$3$589 ==.
                                   8586 ;	..\COMMON\easyax5043.c:1281: case syncstate_slave_rxxosc:
      002122                       8587 00218$:
                           0016F1  8588 	C$easyax5043.c$1282$3$589 ==.
                                   8589 ;	..\COMMON\easyax5043.c:1282: ax5043_receiver_on_continuous();
      002122 12 15 F8         [24] 8590 	lcall	_ax5043_receiver_on_continuous
                           0016F4  8591 	C$easyax5043.c$1283$3$589 ==.
                                   8592 ;	..\COMMON\easyax5043.c:1283: axradio_syncstate = syncstate_slave_rxsfdwindow;
      002125 90 00 04         [24] 8593 	mov	dptr,#_axradio_syncstate
      002128 74 0A            [12] 8594 	mov	a,#0x0a
      00212A F0               [24] 8595 	movx	@dptr,a
                           0016FA  8596 	C$easyax5043.c$1284$3$589 ==.
                                   8597 ;	..\COMMON\easyax5043.c:1284: update_timeanchor();
      00212B 12 0A 31         [24] 8598 	lcall	_update_timeanchor
                           0016FD  8599 	C$easyax5043.c$1285$3$589 ==.
                                   8600 ;	..\COMMON\easyax5043.c:1285: wtimer_remove_callback(&axradio_cb_receive.cb);
      00212E 90 02 35         [24] 8601 	mov	dptr,#_axradio_cb_receive
      002131 12 52 63         [24] 8602 	lcall	_wtimer_remove_callback
                           001703  8603 	C$easyax5043.c$1286$3$589 ==.
                                   8604 ;	..\COMMON\easyax5043.c:1286: memset_xdata(&axradio_cb_receive.st, 0, sizeof(axradio_cb_receive.st));
      002134 75 34 00         [24] 8605 	mov	_memset_PARM_2,#0x00
      002137 75 35 20         [24] 8606 	mov	_memset_PARM_3,#0x20
      00213A 75 36 00         [24] 8607 	mov	(_memset_PARM_3 + 1),#0x00
      00213D 90 02 39         [24] 8608 	mov	dptr,#(_axradio_cb_receive + 0x0004)
      002140 75 F0 00         [24] 8609 	mov	b,#0x00
      002143 12 46 7C         [24] 8610 	lcall	_memset
                           001715  8611 	C$easyax5043.c$1287$3$589 ==.
                                   8612 ;	..\COMMON\easyax5043.c:1287: axradio_cb_receive.st.time.t = axradio_timeanchor.radiotimer;
      002146 90 00 1A         [24] 8613 	mov	dptr,#(_axradio_timeanchor + 0x0004)
      002149 E0               [24] 8614 	movx	a,@dptr
      00214A FC               [12] 8615 	mov	r4,a
      00214B A3               [24] 8616 	inc	dptr
      00214C E0               [24] 8617 	movx	a,@dptr
      00214D FD               [12] 8618 	mov	r5,a
      00214E A3               [24] 8619 	inc	dptr
      00214F E0               [24] 8620 	movx	a,@dptr
      002150 FE               [12] 8621 	mov	r6,a
      002151 A3               [24] 8622 	inc	dptr
      002152 E0               [24] 8623 	movx	a,@dptr
      002153 FF               [12] 8624 	mov	r7,a
      002154 90 02 3B         [24] 8625 	mov	dptr,#(_axradio_cb_receive + 0x0006)
      002157 EC               [12] 8626 	mov	a,r4
      002158 F0               [24] 8627 	movx	@dptr,a
      002159 ED               [12] 8628 	mov	a,r5
      00215A A3               [24] 8629 	inc	dptr
      00215B F0               [24] 8630 	movx	@dptr,a
      00215C EE               [12] 8631 	mov	a,r6
      00215D A3               [24] 8632 	inc	dptr
      00215E F0               [24] 8633 	movx	@dptr,a
      00215F EF               [12] 8634 	mov	a,r7
      002160 A3               [24] 8635 	inc	dptr
      002161 F0               [24] 8636 	movx	@dptr,a
                           001731  8637 	C$easyax5043.c$1288$3$589 ==.
                                   8638 ;	..\COMMON\easyax5043.c:1288: axradio_cb_receive.st.error = AXRADIO_ERR_RECEIVESTART;
      002162 90 02 3A         [24] 8639 	mov	dptr,#(_axradio_cb_receive + 0x0005)
      002165 74 0B            [12] 8640 	mov	a,#0x0b
      002167 F0               [24] 8641 	movx	@dptr,a
                           001737  8642 	C$easyax5043.c$1289$3$589 ==.
                                   8643 ;	..\COMMON\easyax5043.c:1289: wtimer_add_callback(&axradio_cb_receive.cb);
      002168 90 02 35         [24] 8644 	mov	dptr,#_axradio_cb_receive
      00216B 12 46 F0         [24] 8645 	lcall	_wtimer_add_callback
                           00173D  8646 	C$easyax5043.c$1290$3$589 ==.
                                   8647 ;	..\COMMON\easyax5043.c:1290: wtimer_remove(&axradio_timer);
      00216E 90 02 8E         [24] 8648 	mov	dptr,#_axradio_timer
      002171 12 50 55         [24] 8649 	lcall	_wtimer_remove
                           001743  8650 	C$easyax5043.c$1292$4$589 ==.
                                   8651 ;	..\COMMON\easyax5043.c:1292: uint8_t __autodata idx = axradio_sync_seqnr;
      002174 90 00 0F         [24] 8652 	mov	dptr,#_axradio_ack_seqnr
      002177 E0               [24] 8653 	movx	a,@dptr
      002178 FF               [12] 8654 	mov	r7,a
                           001748  8655 	C$easyax5043.c$1293$4$591 ==.
                                   8656 ;	..\COMMON\easyax5043.c:1293: if (idx >= axradio_sync_slave_nrrx)
      002179 90 57 48         [24] 8657 	mov	dptr,#_axradio_sync_slave_nrrx
      00217C E4               [12] 8658 	clr	a
      00217D 93               [24] 8659 	movc	a,@a+dptr
      00217E FE               [12] 8660 	mov	r6,a
      00217F C3               [12] 8661 	clr	c
      002180 EF               [12] 8662 	mov	a,r7
      002181 9E               [12] 8663 	subb	a,r6
      002182 40 03            [24] 8664 	jc	00220$
                           001753  8665 	C$easyax5043.c$1294$4$591 ==.
                                   8666 ;	..\COMMON\easyax5043.c:1294: idx = axradio_sync_slave_nrrx - 1;
      002184 EE               [12] 8667 	mov	a,r6
      002185 14               [12] 8668 	dec	a
      002186 FF               [12] 8669 	mov	r7,a
      002187                       8670 00220$:
                           001756  8671 	C$easyax5043.c$1295$4$591 ==.
                                   8672 ;	..\COMMON\easyax5043.c:1295: axradio_timer.time += axradio_sync_slave_rxwindow[idx];
      002187 90 02 92         [24] 8673 	mov	dptr,#(_axradio_timer + 0x0004)
      00218A E0               [24] 8674 	movx	a,@dptr
      00218B FB               [12] 8675 	mov	r3,a
      00218C A3               [24] 8676 	inc	dptr
      00218D E0               [24] 8677 	movx	a,@dptr
      00218E FC               [12] 8678 	mov	r4,a
      00218F A3               [24] 8679 	inc	dptr
      002190 E0               [24] 8680 	movx	a,@dptr
      002191 FD               [12] 8681 	mov	r5,a
      002192 A3               [24] 8682 	inc	dptr
      002193 E0               [24] 8683 	movx	a,@dptr
      002194 FE               [12] 8684 	mov	r6,a
      002195 EF               [12] 8685 	mov	a,r7
      002196 75 F0 04         [24] 8686 	mov	b,#0x04
      002199 A4               [48] 8687 	mul	ab
      00219A 24 55            [12] 8688 	add	a,#_axradio_sync_slave_rxwindow
      00219C F5 82            [12] 8689 	mov	dpl,a
      00219E 74 57            [12] 8690 	mov	a,#(_axradio_sync_slave_rxwindow >> 8)
      0021A0 35 F0            [12] 8691 	addc	a,b
      0021A2 F5 83            [12] 8692 	mov	dph,a
      0021A4 E4               [12] 8693 	clr	a
      0021A5 93               [24] 8694 	movc	a,@a+dptr
      0021A6 F8               [12] 8695 	mov	r0,a
      0021A7 A3               [24] 8696 	inc	dptr
      0021A8 E4               [12] 8697 	clr	a
      0021A9 93               [24] 8698 	movc	a,@a+dptr
      0021AA F9               [12] 8699 	mov	r1,a
      0021AB A3               [24] 8700 	inc	dptr
      0021AC E4               [12] 8701 	clr	a
      0021AD 93               [24] 8702 	movc	a,@a+dptr
      0021AE FA               [12] 8703 	mov	r2,a
      0021AF A3               [24] 8704 	inc	dptr
      0021B0 E4               [12] 8705 	clr	a
      0021B1 93               [24] 8706 	movc	a,@a+dptr
      0021B2 FF               [12] 8707 	mov	r7,a
      0021B3 E8               [12] 8708 	mov	a,r0
      0021B4 2B               [12] 8709 	add	a,r3
      0021B5 FB               [12] 8710 	mov	r3,a
      0021B6 E9               [12] 8711 	mov	a,r1
      0021B7 3C               [12] 8712 	addc	a,r4
      0021B8 FC               [12] 8713 	mov	r4,a
      0021B9 EA               [12] 8714 	mov	a,r2
      0021BA 3D               [12] 8715 	addc	a,r5
      0021BB FD               [12] 8716 	mov	r5,a
      0021BC EF               [12] 8717 	mov	a,r7
      0021BD 3E               [12] 8718 	addc	a,r6
      0021BE FE               [12] 8719 	mov	r6,a
      0021BF 90 02 92         [24] 8720 	mov	dptr,#(_axradio_timer + 0x0004)
      0021C2 EB               [12] 8721 	mov	a,r3
      0021C3 F0               [24] 8722 	movx	@dptr,a
      0021C4 EC               [12] 8723 	mov	a,r4
      0021C5 A3               [24] 8724 	inc	dptr
      0021C6 F0               [24] 8725 	movx	@dptr,a
      0021C7 ED               [12] 8726 	mov	a,r5
      0021C8 A3               [24] 8727 	inc	dptr
      0021C9 F0               [24] 8728 	movx	@dptr,a
      0021CA EE               [12] 8729 	mov	a,r6
      0021CB A3               [24] 8730 	inc	dptr
      0021CC F0               [24] 8731 	movx	@dptr,a
                           00179C  8732 	C$easyax5043.c$1297$3$589 ==.
                                   8733 ;	..\COMMON\easyax5043.c:1297: wtimer0_addabsolute(&axradio_timer);
      0021CD 90 02 8E         [24] 8734 	mov	dptr,#_axradio_timer
      0021D0 12 48 4E         [24] 8735 	lcall	_wtimer0_addabsolute
                           0017A2  8736 	C$easyax5043.c$1298$3$589 ==.
                                   8737 ;	..\COMMON\easyax5043.c:1298: break;
      0021D3 02 23 80         [24] 8738 	ljmp	00237$
                           0017A5  8739 	C$easyax5043.c$1300$3$589 ==.
                                   8740 ;	..\COMMON\easyax5043.c:1300: case syncstate_slave_rxsfdwindow:
      0021D6                       8741 00221$:
                           0017A5  8742 	C$easyax5043.c$1302$4$592 ==.
                                   8743 ;	..\COMMON\easyax5043.c:1302: uint8_t __autodata rs = radio_read8(AX5043_REG_RADIOSTATE);
      0021D6 90 40 1C         [24] 8744 	mov	dptr,#0x401c
      0021D9 E0               [24] 8745 	movx	a,@dptr
                           0017A9  8746 	C$easyax5043.c$1303$4$592 ==.
                                   8747 ;	..\COMMON\easyax5043.c:1303: if (!rs)
      0021DA FF               [12] 8748 	mov	r7,a
      0021DB FE               [12] 8749 	mov	r6,a
      0021DC 70 03            [24] 8750 	jnz	00353$
      0021DE 02 23 80         [24] 8751 	ljmp	00237$
      0021E1                       8752 00353$:
                           0017B0  8753 	C$easyax5043.c$1306$4$592 ==.
                                   8754 ;	..\COMMON\easyax5043.c:1306: if (!(0x0F & (uint8_t)~rs)) {
      0021E1 EE               [12] 8755 	mov	a,r6
      0021E2 F4               [12] 8756 	cpl	a
      0021E3 FE               [12] 8757 	mov	r6,a
      0021E4 54 0F            [12] 8758 	anl	a,#0x0f
      0021E6 60 02            [24] 8759 	jz	00355$
      0021E8 80 4F            [24] 8760 	sjmp	00226$
      0021EA                       8761 00355$:
                           0017B9  8762 	C$easyax5043.c$1307$5$593 ==.
                                   8763 ;	..\COMMON\easyax5043.c:1307: axradio_syncstate = syncstate_slave_rxpacket;
      0021EA 90 00 04         [24] 8764 	mov	dptr,#_axradio_syncstate
      0021ED 74 0B            [12] 8765 	mov	a,#0x0b
      0021EF F0               [24] 8766 	movx	@dptr,a
                           0017BF  8767 	C$easyax5043.c$1308$5$593 ==.
                                   8768 ;	..\COMMON\easyax5043.c:1308: wtimer_remove(&axradio_timer);
      0021F0 90 02 8E         [24] 8769 	mov	dptr,#_axradio_timer
      0021F3 12 50 55         [24] 8770 	lcall	_wtimer_remove
                           0017C5  8771 	C$easyax5043.c$1309$5$593 ==.
                                   8772 ;	..\COMMON\easyax5043.c:1309: axradio_timer.time += axradio_sync_slave_rxtimeout;
      0021F6 90 02 92         [24] 8773 	mov	dptr,#(_axradio_timer + 0x0004)
      0021F9 E0               [24] 8774 	movx	a,@dptr
      0021FA FC               [12] 8775 	mov	r4,a
      0021FB A3               [24] 8776 	inc	dptr
      0021FC E0               [24] 8777 	movx	a,@dptr
      0021FD FD               [12] 8778 	mov	r5,a
      0021FE A3               [24] 8779 	inc	dptr
      0021FF E0               [24] 8780 	movx	a,@dptr
      002200 FE               [12] 8781 	mov	r6,a
      002201 A3               [24] 8782 	inc	dptr
      002202 E0               [24] 8783 	movx	a,@dptr
      002203 FF               [12] 8784 	mov	r7,a
      002204 90 57 61         [24] 8785 	mov	dptr,#_axradio_sync_slave_rxtimeout
      002207 E4               [12] 8786 	clr	a
      002208 93               [24] 8787 	movc	a,@a+dptr
      002209 F8               [12] 8788 	mov	r0,a
      00220A 74 01            [12] 8789 	mov	a,#0x01
      00220C 93               [24] 8790 	movc	a,@a+dptr
      00220D F9               [12] 8791 	mov	r1,a
      00220E 74 02            [12] 8792 	mov	a,#0x02
      002210 93               [24] 8793 	movc	a,@a+dptr
      002211 FA               [12] 8794 	mov	r2,a
      002212 74 03            [12] 8795 	mov	a,#0x03
      002214 93               [24] 8796 	movc	a,@a+dptr
      002215 FB               [12] 8797 	mov	r3,a
      002216 E8               [12] 8798 	mov	a,r0
      002217 2C               [12] 8799 	add	a,r4
      002218 FC               [12] 8800 	mov	r4,a
      002219 E9               [12] 8801 	mov	a,r1
      00221A 3D               [12] 8802 	addc	a,r5
      00221B FD               [12] 8803 	mov	r5,a
      00221C EA               [12] 8804 	mov	a,r2
      00221D 3E               [12] 8805 	addc	a,r6
      00221E FE               [12] 8806 	mov	r6,a
      00221F EB               [12] 8807 	mov	a,r3
      002220 3F               [12] 8808 	addc	a,r7
      002221 FF               [12] 8809 	mov	r7,a
      002222 90 02 92         [24] 8810 	mov	dptr,#(_axradio_timer + 0x0004)
      002225 EC               [12] 8811 	mov	a,r4
      002226 F0               [24] 8812 	movx	@dptr,a
      002227 ED               [12] 8813 	mov	a,r5
      002228 A3               [24] 8814 	inc	dptr
      002229 F0               [24] 8815 	movx	@dptr,a
      00222A EE               [12] 8816 	mov	a,r6
      00222B A3               [24] 8817 	inc	dptr
      00222C F0               [24] 8818 	movx	@dptr,a
      00222D EF               [12] 8819 	mov	a,r7
      00222E A3               [24] 8820 	inc	dptr
      00222F F0               [24] 8821 	movx	@dptr,a
                           0017FF  8822 	C$easyax5043.c$1310$5$593 ==.
                                   8823 ;	..\COMMON\easyax5043.c:1310: wtimer0_addabsolute(&axradio_timer);
      002230 90 02 8E         [24] 8824 	mov	dptr,#_axradio_timer
      002233 12 48 4E         [24] 8825 	lcall	_wtimer0_addabsolute
                           001805  8826 	C$easyax5043.c$1311$5$593 ==.
                                   8827 ;	..\COMMON\easyax5043.c:1311: break;
      002236 02 23 80         [24] 8828 	ljmp	00237$
                           001808  8829 	C$easyax5043.c$1316$3$589 ==.
                                   8830 ;	..\COMMON\easyax5043.c:1316: case syncstate_slave_rxpacket:
      002239                       8831 00226$:
                           001808  8832 	C$easyax5043.c$1317$3$589 ==.
                                   8833 ;	..\COMMON\easyax5043.c:1317: ax5043_off();
      002239 12 17 47         [24] 8834 	lcall	_ax5043_off
                           00180B  8835 	C$easyax5043.c$1318$3$589 ==.
                                   8836 ;	..\COMMON\easyax5043.c:1318: if (!axradio_sync_seqnr)
      00223C 90 00 0F         [24] 8837 	mov	dptr,#_axradio_ack_seqnr
      00223F E0               [24] 8838 	movx	a,@dptr
      002240 70 06            [24] 8839 	jnz	00228$
                           001811  8840 	C$easyax5043.c$1319$3$589 ==.
                                   8841 ;	..\COMMON\easyax5043.c:1319: axradio_sync_seqnr = 1;
      002242 90 00 0F         [24] 8842 	mov	dptr,#_axradio_ack_seqnr
      002245 74 01            [12] 8843 	mov	a,#0x01
      002247 F0               [24] 8844 	movx	@dptr,a
      002248                       8845 00228$:
                           001817  8846 	C$easyax5043.c$1320$3$589 ==.
                                   8847 ;	..\COMMON\easyax5043.c:1320: ++axradio_sync_seqnr;
      002248 90 00 0F         [24] 8848 	mov	dptr,#_axradio_ack_seqnr
      00224B E0               [24] 8849 	movx	a,@dptr
      00224C 24 01            [12] 8850 	add	a,#0x01
      00224E F0               [24] 8851 	movx	@dptr,a
                           00181E  8852 	C$easyax5043.c$1321$3$589 ==.
                                   8853 ;	..\COMMON\easyax5043.c:1321: update_timeanchor();
      00224F 12 0A 31         [24] 8854 	lcall	_update_timeanchor
                           001821  8855 	C$easyax5043.c$1322$3$589 ==.
                                   8856 ;	..\COMMON\easyax5043.c:1322: wtimer_remove_callback(&axradio_cb_receive.cb);
      002252 90 02 35         [24] 8857 	mov	dptr,#_axradio_cb_receive
      002255 12 52 63         [24] 8858 	lcall	_wtimer_remove_callback
                           001827  8859 	C$easyax5043.c$1323$3$589 ==.
                                   8860 ;	..\COMMON\easyax5043.c:1323: memset_xdata(&axradio_cb_receive.st, 0, sizeof(axradio_cb_receive.st));
      002258 75 34 00         [24] 8861 	mov	_memset_PARM_2,#0x00
      00225B 75 35 20         [24] 8862 	mov	_memset_PARM_3,#0x20
      00225E 75 36 00         [24] 8863 	mov	(_memset_PARM_3 + 1),#0x00
      002261 90 02 39         [24] 8864 	mov	dptr,#(_axradio_cb_receive + 0x0004)
      002264 75 F0 00         [24] 8865 	mov	b,#0x00
      002267 12 46 7C         [24] 8866 	lcall	_memset
                           001839  8867 	C$easyax5043.c$1324$3$589 ==.
                                   8868 ;	..\COMMON\easyax5043.c:1324: axradio_cb_receive.st.time.t = axradio_timeanchor.radiotimer;
      00226A 90 00 1A         [24] 8869 	mov	dptr,#(_axradio_timeanchor + 0x0004)
      00226D E0               [24] 8870 	movx	a,@dptr
      00226E FC               [12] 8871 	mov	r4,a
      00226F A3               [24] 8872 	inc	dptr
      002270 E0               [24] 8873 	movx	a,@dptr
      002271 FD               [12] 8874 	mov	r5,a
      002272 A3               [24] 8875 	inc	dptr
      002273 E0               [24] 8876 	movx	a,@dptr
      002274 FE               [12] 8877 	mov	r6,a
      002275 A3               [24] 8878 	inc	dptr
      002276 E0               [24] 8879 	movx	a,@dptr
      002277 FF               [12] 8880 	mov	r7,a
      002278 90 02 3B         [24] 8881 	mov	dptr,#(_axradio_cb_receive + 0x0006)
      00227B EC               [12] 8882 	mov	a,r4
      00227C F0               [24] 8883 	movx	@dptr,a
      00227D ED               [12] 8884 	mov	a,r5
      00227E A3               [24] 8885 	inc	dptr
      00227F F0               [24] 8886 	movx	@dptr,a
      002280 EE               [12] 8887 	mov	a,r6
      002281 A3               [24] 8888 	inc	dptr
      002282 F0               [24] 8889 	movx	@dptr,a
      002283 EF               [12] 8890 	mov	a,r7
      002284 A3               [24] 8891 	inc	dptr
      002285 F0               [24] 8892 	movx	@dptr,a
                           001855  8893 	C$easyax5043.c$1325$3$589 ==.
                                   8894 ;	..\COMMON\easyax5043.c:1325: axradio_cb_receive.st.error = AXRADIO_ERR_TIMEOUT;
      002286 90 02 3A         [24] 8895 	mov	dptr,#(_axradio_cb_receive + 0x0005)
      002289 74 03            [12] 8896 	mov	a,#0x03
      00228B F0               [24] 8897 	movx	@dptr,a
                           00185B  8898 	C$easyax5043.c$1326$3$589 ==.
                                   8899 ;	..\COMMON\easyax5043.c:1326: if (axradio_sync_seqnr <= axradio_sync_slave_resyncloss) {
      00228C 90 00 0F         [24] 8900 	mov	dptr,#_axradio_ack_seqnr
      00228F E0               [24] 8901 	movx	a,@dptr
      002290 FF               [12] 8902 	mov	r7,a
      002291 90 57 47         [24] 8903 	mov	dptr,#_axradio_sync_slave_resyncloss
      002294 E4               [12] 8904 	clr	a
      002295 93               [24] 8905 	movc	a,@a+dptr
      002296 FE               [12] 8906 	mov	r6,a
      002297 C3               [12] 8907 	clr	c
      002298 9F               [12] 8908 	subb	a,r7
      002299 40 57            [24] 8909 	jc	00232$
                           00186A  8910 	C$easyax5043.c$1327$4$594 ==.
                                   8911 ;	..\COMMON\easyax5043.c:1327: wtimer_add_callback(&axradio_cb_receive.cb);
      00229B 90 02 35         [24] 8912 	mov	dptr,#_axradio_cb_receive
      00229E 12 46 F0         [24] 8913 	lcall	_wtimer_add_callback
                           001870  8914 	C$easyax5043.c$1328$4$594 ==.
                                   8915 ;	..\COMMON\easyax5043.c:1328: axradio_sync_slave_nextperiod();
      0022A1 12 1A BB         [24] 8916 	lcall	_axradio_sync_slave_nextperiod
                           001873  8917 	C$easyax5043.c$1329$4$594 ==.
                                   8918 ;	..\COMMON\easyax5043.c:1329: axradio_syncstate = syncstate_slave_rxidle;
      0022A4 90 00 04         [24] 8919 	mov	dptr,#_axradio_syncstate
      0022A7 74 08            [12] 8920 	mov	a,#0x08
      0022A9 F0               [24] 8921 	movx	@dptr,a
                           001879  8922 	C$easyax5043.c$1330$4$594 ==.
                                   8923 ;	..\COMMON\easyax5043.c:1330: wtimer_remove(&axradio_timer);
      0022AA 90 02 8E         [24] 8924 	mov	dptr,#_axradio_timer
      0022AD 12 50 55         [24] 8925 	lcall	_wtimer_remove
                           00187F  8926 	C$easyax5043.c$1332$5$594 ==.
                                   8927 ;	..\COMMON\easyax5043.c:1332: uint8_t __autodata idx = axradio_sync_seqnr;
      0022B0 90 00 0F         [24] 8928 	mov	dptr,#_axradio_ack_seqnr
      0022B3 E0               [24] 8929 	movx	a,@dptr
      0022B4 FF               [12] 8930 	mov	r7,a
                           001884  8931 	C$easyax5043.c$1333$5$595 ==.
                                   8932 ;	..\COMMON\easyax5043.c:1333: if (idx >= axradio_sync_slave_nrrx)
      0022B5 90 57 48         [24] 8933 	mov	dptr,#_axradio_sync_slave_nrrx
      0022B8 E4               [12] 8934 	clr	a
      0022B9 93               [24] 8935 	movc	a,@a+dptr
      0022BA FE               [12] 8936 	mov	r6,a
      0022BB C3               [12] 8937 	clr	c
      0022BC EF               [12] 8938 	mov	a,r7
      0022BD 9E               [12] 8939 	subb	a,r6
      0022BE 40 03            [24] 8940 	jc	00230$
                           00188F  8941 	C$easyax5043.c$1334$5$595 ==.
                                   8942 ;	..\COMMON\easyax5043.c:1334: idx = axradio_sync_slave_nrrx - 1;
      0022C0 EE               [12] 8943 	mov	a,r6
      0022C1 14               [12] 8944 	dec	a
      0022C2 FF               [12] 8945 	mov	r7,a
      0022C3                       8946 00230$:
                           001892  8947 	C$easyax5043.c$1335$5$595 ==.
                                   8948 ;	..\COMMON\easyax5043.c:1335: axradio_sync_settimeradv(axradio_sync_slave_rxadvance[idx]);
      0022C3 EF               [12] 8949 	mov	a,r7
      0022C4 75 F0 04         [24] 8950 	mov	b,#0x04
      0022C7 A4               [48] 8951 	mul	ab
      0022C8 24 49            [12] 8952 	add	a,#_axradio_sync_slave_rxadvance
      0022CA F5 82            [12] 8953 	mov	dpl,a
      0022CC 74 57            [12] 8954 	mov	a,#(_axradio_sync_slave_rxadvance >> 8)
      0022CE 35 F0            [12] 8955 	addc	a,b
      0022D0 F5 83            [12] 8956 	mov	dph,a
      0022D2 E4               [12] 8957 	clr	a
      0022D3 93               [24] 8958 	movc	a,@a+dptr
      0022D4 FC               [12] 8959 	mov	r4,a
      0022D5 A3               [24] 8960 	inc	dptr
      0022D6 E4               [12] 8961 	clr	a
      0022D7 93               [24] 8962 	movc	a,@a+dptr
      0022D8 FD               [12] 8963 	mov	r5,a
      0022D9 A3               [24] 8964 	inc	dptr
      0022DA E4               [12] 8965 	clr	a
      0022DB 93               [24] 8966 	movc	a,@a+dptr
      0022DC FE               [12] 8967 	mov	r6,a
      0022DD A3               [24] 8968 	inc	dptr
      0022DE E4               [12] 8969 	clr	a
      0022DF 93               [24] 8970 	movc	a,@a+dptr
      0022E0 8C 82            [24] 8971 	mov	dpl,r4
      0022E2 8D 83            [24] 8972 	mov	dph,r5
      0022E4 8E F0            [24] 8973 	mov	b,r6
      0022E6 12 19 55         [24] 8974 	lcall	_axradio_sync_settimeradv
                           0018B8  8975 	C$easyax5043.c$1337$4$594 ==.
                                   8976 ;	..\COMMON\easyax5043.c:1337: wtimer0_addabsolute(&axradio_timer);
      0022E9 90 02 8E         [24] 8977 	mov	dptr,#_axradio_timer
      0022EC 12 48 4E         [24] 8978 	lcall	_wtimer0_addabsolute
                           0018BE  8979 	C$easyax5043.c$1338$4$594 ==.
                                   8980 ;	..\COMMON\easyax5043.c:1338: break;
      0022EF 02 23 80         [24] 8981 	ljmp	00237$
      0022F2                       8982 00232$:
                           0018C1  8983 	C$easyax5043.c$1340$3$589 ==.
                                   8984 ;	..\COMMON\easyax5043.c:1340: axradio_cb_receive.st.error = AXRADIO_ERR_RESYNC;
      0022F2 90 02 3A         [24] 8985 	mov	dptr,#(_axradio_cb_receive + 0x0005)
      0022F5 74 09            [12] 8986 	mov	a,#0x09
      0022F7 F0               [24] 8987 	movx	@dptr,a
                           0018C7  8988 	C$easyax5043.c$1341$3$589 ==.
                                   8989 ;	..\COMMON\easyax5043.c:1341: wtimer_add_callback(&axradio_cb_receive.cb);
      0022F8 90 02 35         [24] 8990 	mov	dptr,#_axradio_cb_receive
      0022FB 12 46 F0         [24] 8991 	lcall	_wtimer_add_callback
                           0018CD  8992 	C$easyax5043.c$1342$3$589 ==.
                                   8993 ;	..\COMMON\easyax5043.c:1342: ax5043_receiver_on_continuous();
      0022FE 12 15 F8         [24] 8994 	lcall	_ax5043_receiver_on_continuous
                           0018D0  8995 	C$easyax5043.c$1343$3$589 ==.
                                   8996 ;	..\COMMON\easyax5043.c:1343: axradio_syncstate = syncstate_slave_synchunt;
      002301 90 00 04         [24] 8997 	mov	dptr,#_axradio_syncstate
      002304 74 06            [12] 8998 	mov	a,#0x06
      002306 F0               [24] 8999 	movx	@dptr,a
                           0018D6  9000 	C$easyax5043.c$1344$3$589 ==.
                                   9001 ;	..\COMMON\easyax5043.c:1344: wtimer_remove(&axradio_timer);
      002307 90 02 8E         [24] 9002 	mov	dptr,#_axradio_timer
      00230A 12 50 55         [24] 9003 	lcall	_wtimer_remove
                           0018DC  9004 	C$easyax5043.c$1345$3$589 ==.
                                   9005 ;	..\COMMON\easyax5043.c:1345: axradio_timer.time = axradio_sync_slave_syncwindow;
      00230D 90 57 39         [24] 9006 	mov	dptr,#_axradio_sync_slave_syncwindow
      002310 E4               [12] 9007 	clr	a
      002311 93               [24] 9008 	movc	a,@a+dptr
      002312 FC               [12] 9009 	mov	r4,a
      002313 74 01            [12] 9010 	mov	a,#0x01
      002315 93               [24] 9011 	movc	a,@a+dptr
      002316 FD               [12] 9012 	mov	r5,a
      002317 74 02            [12] 9013 	mov	a,#0x02
      002319 93               [24] 9014 	movc	a,@a+dptr
      00231A FE               [12] 9015 	mov	r6,a
      00231B 74 03            [12] 9016 	mov	a,#0x03
      00231D 93               [24] 9017 	movc	a,@a+dptr
      00231E FF               [12] 9018 	mov	r7,a
      00231F 90 02 92         [24] 9019 	mov	dptr,#(_axradio_timer + 0x0004)
      002322 EC               [12] 9020 	mov	a,r4
      002323 F0               [24] 9021 	movx	@dptr,a
      002324 ED               [12] 9022 	mov	a,r5
      002325 A3               [24] 9023 	inc	dptr
      002326 F0               [24] 9024 	movx	@dptr,a
      002327 EE               [12] 9025 	mov	a,r6
      002328 A3               [24] 9026 	inc	dptr
      002329 F0               [24] 9027 	movx	@dptr,a
      00232A EF               [12] 9028 	mov	a,r7
      00232B A3               [24] 9029 	inc	dptr
      00232C F0               [24] 9030 	movx	@dptr,a
                           0018FC  9031 	C$easyax5043.c$1346$3$589 ==.
                                   9032 ;	..\COMMON\easyax5043.c:1346: wtimer0_addrelative(&axradio_timer);
      00232D 90 02 8E         [24] 9033 	mov	dptr,#_axradio_timer
      002330 12 47 0A         [24] 9034 	lcall	_wtimer0_addrelative
                           001902  9035 	C$easyax5043.c$1347$3$589 ==.
                                   9036 ;	..\COMMON\easyax5043.c:1347: axradio_sync_time = axradio_timer.time;
      002333 90 02 92         [24] 9037 	mov	dptr,#(_axradio_timer + 0x0004)
      002336 E0               [24] 9038 	movx	a,@dptr
      002337 FC               [12] 9039 	mov	r4,a
      002338 A3               [24] 9040 	inc	dptr
      002339 E0               [24] 9041 	movx	a,@dptr
      00233A FD               [12] 9042 	mov	r5,a
      00233B A3               [24] 9043 	inc	dptr
      00233C E0               [24] 9044 	movx	a,@dptr
      00233D FE               [12] 9045 	mov	r6,a
      00233E A3               [24] 9046 	inc	dptr
      00233F E0               [24] 9047 	movx	a,@dptr
      002340 FF               [12] 9048 	mov	r7,a
      002341 90 00 10         [24] 9049 	mov	dptr,#_axradio_sync_time
      002344 EC               [12] 9050 	mov	a,r4
      002345 F0               [24] 9051 	movx	@dptr,a
      002346 ED               [12] 9052 	mov	a,r5
      002347 A3               [24] 9053 	inc	dptr
      002348 F0               [24] 9054 	movx	@dptr,a
      002349 EE               [12] 9055 	mov	a,r6
      00234A A3               [24] 9056 	inc	dptr
      00234B F0               [24] 9057 	movx	@dptr,a
      00234C EF               [12] 9058 	mov	a,r7
      00234D A3               [24] 9059 	inc	dptr
      00234E F0               [24] 9060 	movx	@dptr,a
                           00191E  9061 	C$easyax5043.c$1348$3$589 ==.
                                   9062 ;	..\COMMON\easyax5043.c:1348: break;
                           00191E  9063 	C$easyax5043.c$1350$3$589 ==.
                                   9064 ;	..\COMMON\easyax5043.c:1350: case syncstate_slave_rxack:
      00234F 80 2F            [24] 9065 	sjmp	00237$
      002351                       9066 00233$:
                           001920  9067 	C$easyax5043.c$1351$3$589 ==.
                                   9068 ;	..\COMMON\easyax5043.c:1351: axradio_syncstate = syncstate_slave_rxidle;
      002351 90 00 04         [24] 9069 	mov	dptr,#_axradio_syncstate
      002354 74 08            [12] 9070 	mov	a,#0x08
      002356 F0               [24] 9071 	movx	@dptr,a
                           001926  9072 	C$easyax5043.c$1352$3$589 ==.
                                   9073 ;	..\COMMON\easyax5043.c:1352: wtimer_remove(&axradio_timer);
      002357 90 02 8E         [24] 9074 	mov	dptr,#_axradio_timer
      00235A 12 50 55         [24] 9075 	lcall	_wtimer_remove
                           00192C  9076 	C$easyax5043.c$1353$3$589 ==.
                                   9077 ;	..\COMMON\easyax5043.c:1353: axradio_sync_settimeradv(axradio_sync_slave_rxadvance[1]);
      00235D 90 57 4D         [24] 9078 	mov	dptr,#(_axradio_sync_slave_rxadvance + 0x0004)
      002360 E4               [12] 9079 	clr	a
      002361 93               [24] 9080 	movc	a,@a+dptr
      002362 FC               [12] 9081 	mov	r4,a
      002363 A3               [24] 9082 	inc	dptr
      002364 E4               [12] 9083 	clr	a
      002365 93               [24] 9084 	movc	a,@a+dptr
      002366 FD               [12] 9085 	mov	r5,a
      002367 A3               [24] 9086 	inc	dptr
      002368 E4               [12] 9087 	clr	a
      002369 93               [24] 9088 	movc	a,@a+dptr
      00236A FE               [12] 9089 	mov	r6,a
      00236B A3               [24] 9090 	inc	dptr
      00236C E4               [12] 9091 	clr	a
      00236D 93               [24] 9092 	movc	a,@a+dptr
      00236E 8C 82            [24] 9093 	mov	dpl,r4
      002370 8D 83            [24] 9094 	mov	dph,r5
      002372 8E F0            [24] 9095 	mov	b,r6
      002374 12 19 55         [24] 9096 	lcall	_axradio_sync_settimeradv
                           001946  9097 	C$easyax5043.c$1354$3$589 ==.
                                   9098 ;	..\COMMON\easyax5043.c:1354: wtimer0_addabsolute(&axradio_timer);
      002377 90 02 8E         [24] 9099 	mov	dptr,#_axradio_timer
      00237A 12 48 4E         [24] 9100 	lcall	_wtimer0_addabsolute
                           00194C  9101 	C$easyax5043.c$1355$3$589 ==.
                                   9102 ;	..\COMMON\easyax5043.c:1355: goto transmitack;
      00237D 02 1D 3F         [24] 9103 	ljmp	00134$
                           00194F  9104 	C$easyax5043.c$1359$2$562 ==.
                                   9105 ;	..\COMMON\easyax5043.c:1359: default:
      002380                       9106 00235$:
                           00194F  9107 	C$easyax5043.c$1361$1$561 ==.
                                   9108 ;	..\COMMON\easyax5043.c:1361: }
      002380                       9109 00237$:
                           00194F  9110 	C$easyax5043.c$1362$1$561 ==.
                           00194F  9111 	XFeasyax5043$axradio_timer_callback$0$0 ==.
      002380 22               [24] 9112 	ret
                                   9113 ;------------------------------------------------------------
                                   9114 ;Allocation info for local variables in function 'axradio_callback_fwd'
                                   9115 ;------------------------------------------------------------
                                   9116 ;desc                      Allocated to registers r6 r7 
                                   9117 ;------------------------------------------------------------
                           001950  9118 	Feasyax5043$axradio_callback_fwd$0$0 ==.
                           001950  9119 	C$easyax5043.c$1364$1$561 ==.
                                   9120 ;	..\COMMON\easyax5043.c:1364: static __reentrantb void axradio_callback_fwd(struct wtimer_callback __xdata *desc) __reentrant
                                   9121 ;	-----------------------------------------
                                   9122 ;	 function axradio_callback_fwd
                                   9123 ;	-----------------------------------------
      002381                       9124 _axradio_callback_fwd:
      002381 AE 82            [24] 9125 	mov	r6,dpl
      002383 AF 83            [24] 9126 	mov	r7,dph
                           001954  9127 	C$easyax5043.c$1366$1$597 ==.
                                   9128 ;	..\COMMON\easyax5043.c:1366: axradio_statuschange((struct axradio_status __xdata *)(desc + 1));
      002385 74 04            [12] 9129 	mov	a,#0x04
      002387 2E               [12] 9130 	add	a,r6
      002388 FE               [12] 9131 	mov	r6,a
      002389 E4               [12] 9132 	clr	a
      00238A 3F               [12] 9133 	addc	a,r7
      00238B FF               [12] 9134 	mov	r7,a
      00238C 8E 82            [24] 9135 	mov	dpl,r6
      00238E 8F 83            [24] 9136 	mov	dph,r7
      002390 12 3D 17         [24] 9137 	lcall	_axradio_statuschange
                           001962  9138 	C$easyax5043.c$1367$1$597 ==.
                           001962  9139 	XFeasyax5043$axradio_callback_fwd$0$0 ==.
      002393 22               [24] 9140 	ret
                                   9141 ;------------------------------------------------------------
                                   9142 ;Allocation info for local variables in function 'axradio_receive_callback_fwd'
                                   9143 ;------------------------------------------------------------
                                   9144 ;desc                      Allocated to registers 
                                   9145 ;len                       Allocated to registers r6 r7 
                                   9146 ;len                       Allocated to registers r6 r7 
                                   9147 ;seqnr                     Allocated to registers r6 
                                   9148 ;len_byte                  Allocated to registers r6 
                                   9149 ;trxst                     Allocated to registers r6 
                                   9150 ;__00030023                Allocated to registers 
                                   9151 ;crit                      Allocated to registers 
                                   9152 ;crit                      Allocated to registers r7 
                                   9153 ;__00040025                Allocated to registers 
                                   9154 ;crit                      Allocated to registers 
                                   9155 ;------------------------------------------------------------
                           001963  9156 	Feasyax5043$axradio_receive_callback_fwd$0$0 ==.
                           001963  9157 	C$easyax5043.c$1369$1$597 ==.
                                   9158 ;	..\COMMON\easyax5043.c:1369: static void axradio_receive_callback_fwd(struct wtimer_callback __xdata *desc)
                                   9159 ;	-----------------------------------------
                                   9160 ;	 function axradio_receive_callback_fwd
                                   9161 ;	-----------------------------------------
      002394                       9162 _axradio_receive_callback_fwd:
                           001963  9163 	C$easyax5043.c$1373$1$599 ==.
                                   9164 ;	..\COMMON\easyax5043.c:1373: if (axradio_cb_receive.st.error != AXRADIO_ERR_NOERROR) {
      002394 90 02 3A         [24] 9165 	mov	dptr,#(_axradio_cb_receive + 0x0005)
      002397 E0               [24] 9166 	movx	a,@dptr
      002398 60 09            [24] 9167 	jz	00102$
                           001969  9168 	C$easyax5043.c$1374$2$600 ==.
                                   9169 ;	..\COMMON\easyax5043.c:1374: axradio_statuschange((struct axradio_status __xdata *)&axradio_cb_receive.st);
      00239A 90 02 39         [24] 9170 	mov	dptr,#(_axradio_cb_receive + 0x0004)
      00239D 12 3D 17         [24] 9171 	lcall	_axradio_statuschange
                           00196F  9172 	C$easyax5043.c$1375$2$600 ==.
                                   9173 ;	..\COMMON\easyax5043.c:1375: return;
      0023A0 02 28 7F         [24] 9174 	ljmp	00193$
      0023A3                       9175 00102$:
                           001972  9176 	C$easyax5043.c$1377$1$599 ==.
                                   9177 ;	..\COMMON\easyax5043.c:1377: if (axradio_phy_pn9 && !AXRADIO_MODE_IS_STREAM_RECEIVE(axradio_mode)) {
      0023A3 90 56 F3         [24] 9178 	mov	dptr,#_axradio_phy_pn9
      0023A6 E4               [12] 9179 	clr	a
      0023A7 93               [24] 9180 	movc	a,@a+dptr
      0023A8 60 51            [24] 9181 	jz	00104$
      0023AA 74 F8            [12] 9182 	mov	a,#0xf8
      0023AC 55 08            [12] 9183 	anl	a,_axradio_mode
      0023AE FF               [12] 9184 	mov	r7,a
      0023AF BF 28 02         [24] 9185 	cjne	r7,#0x28,00299$
      0023B2 80 47            [24] 9186 	sjmp	00104$
      0023B4                       9187 00299$:
                           001983  9188 	C$easyax5043.c$1378$2$601 ==.
                                   9189 ;	..\COMMON\easyax5043.c:1378: uint16_t __autodata len = axradio_cb_receive.st.rx.pktlen;
      0023B4 90 02 57         [24] 9190 	mov	dptr,#(_axradio_cb_receive + 0x0022)
      0023B7 E0               [24] 9191 	movx	a,@dptr
      0023B8 FE               [12] 9192 	mov	r6,a
      0023B9 A3               [24] 9193 	inc	dptr
      0023BA E0               [24] 9194 	movx	a,@dptr
      0023BB FF               [12] 9195 	mov	r7,a
                           00198B  9196 	C$easyax5043.c$1379$2$601 ==.
                                   9197 ;	..\COMMON\easyax5043.c:1379: len += axradio_framing_maclen;
      0023BC 90 57 15         [24] 9198 	mov	dptr,#_axradio_framing_maclen
      0023BF E4               [12] 9199 	clr	a
      0023C0 93               [24] 9200 	movc	a,@a+dptr
      0023C1 7C 00            [12] 9201 	mov	r4,#0x00
      0023C3 2E               [12] 9202 	add	a,r6
      0023C4 FE               [12] 9203 	mov	r6,a
      0023C5 EC               [12] 9204 	mov	a,r4
      0023C6 3F               [12] 9205 	addc	a,r7
      0023C7 FF               [12] 9206 	mov	r7,a
                           001997  9207 	C$easyax5043.c$1380$2$601 ==.
                                   9208 ;	..\COMMON\easyax5043.c:1380: pn9_buffer((__xdata uint8_t *)axradio_cb_receive.st.rx.mac.raw, len, 0x1ff, -(radio_read8(AX5043_REG_ENCODING) & 0x01));
      0023C8 90 40 11         [24] 9209 	mov	dptr,#0x4011
      0023CB E0               [24] 9210 	movx	a,@dptr
      0023CC FD               [12] 9211 	mov	r5,a
      0023CD 53 05 01         [24] 9212 	anl	ar5,#0x01
      0023D0 C3               [12] 9213 	clr	c
      0023D1 E4               [12] 9214 	clr	a
      0023D2 9D               [12] 9215 	subb	a,r5
      0023D3 FD               [12] 9216 	mov	r5,a
      0023D4 90 02 53         [24] 9217 	mov	dptr,#(_axradio_cb_receive + 0x001e)
      0023D7 E0               [24] 9218 	movx	a,@dptr
      0023D8 FB               [12] 9219 	mov	r3,a
      0023D9 A3               [24] 9220 	inc	dptr
      0023DA E0               [24] 9221 	movx	a,@dptr
      0023DB FC               [12] 9222 	mov	r4,a
      0023DC 7A 00            [12] 9223 	mov	r2,#0x00
      0023DE C0 05            [24] 9224 	push	ar5
      0023E0 74 FF            [12] 9225 	mov	a,#0xff
      0023E2 C0 E0            [24] 9226 	push	acc
      0023E4 74 01            [12] 9227 	mov	a,#0x01
      0023E6 C0 E0            [24] 9228 	push	acc
      0023E8 C0 06            [24] 9229 	push	ar6
      0023EA C0 07            [24] 9230 	push	ar7
      0023EC 8B 82            [24] 9231 	mov	dpl,r3
      0023EE 8C 83            [24] 9232 	mov	dph,r4
      0023F0 8A F0            [24] 9233 	mov	b,r2
      0023F2 12 49 1D         [24] 9234 	lcall	_pn9_buffer
      0023F5 E5 81            [12] 9235 	mov	a,sp
      0023F7 24 FB            [12] 9236 	add	a,#0xfb
      0023F9 F5 81            [12] 9237 	mov	sp,a
      0023FB                       9238 00104$:
                           0019CA  9239 	C$easyax5043.c$1382$1$599 ==.
                                   9240 ;	..\COMMON\easyax5043.c:1382: if (axradio_framing_swcrclen && !AXRADIO_MODE_IS_STREAM_RECEIVE(axradio_mode)) {
      0023FB 90 57 1C         [24] 9241 	mov	dptr,#_axradio_framing_swcrclen
      0023FE E4               [12] 9242 	clr	a
      0023FF 93               [24] 9243 	movc	a,@a+dptr
      002400 60 66            [24] 9244 	jz	00109$
      002402 74 F8            [12] 9245 	mov	a,#0xf8
      002404 55 08            [12] 9246 	anl	a,_axradio_mode
      002406 FF               [12] 9247 	mov	r7,a
      002407 BF 28 02         [24] 9248 	cjne	r7,#0x28,00301$
      00240A 80 5C            [24] 9249 	sjmp	00109$
      00240C                       9250 00301$:
                           0019DB  9251 	C$easyax5043.c$1383$2$602 ==.
                                   9252 ;	..\COMMON\easyax5043.c:1383: uint16_t __autodata len = axradio_cb_receive.st.rx.pktlen;
      00240C 90 02 57         [24] 9253 	mov	dptr,#(_axradio_cb_receive + 0x0022)
      00240F E0               [24] 9254 	movx	a,@dptr
      002410 FE               [12] 9255 	mov	r6,a
      002411 A3               [24] 9256 	inc	dptr
      002412 E0               [24] 9257 	movx	a,@dptr
      002413 FF               [12] 9258 	mov	r7,a
                           0019E3  9259 	C$easyax5043.c$1384$2$602 ==.
                                   9260 ;	..\COMMON\easyax5043.c:1384: len += axradio_framing_maclen;
      002414 90 57 15         [24] 9261 	mov	dptr,#_axradio_framing_maclen
      002417 E4               [12] 9262 	clr	a
      002418 93               [24] 9263 	movc	a,@a+dptr
      002419 7C 00            [12] 9264 	mov	r4,#0x00
      00241B 2E               [12] 9265 	add	a,r6
      00241C FE               [12] 9266 	mov	r6,a
      00241D EC               [12] 9267 	mov	a,r4
      00241E 3F               [12] 9268 	addc	a,r7
      00241F FF               [12] 9269 	mov	r7,a
                           0019EF  9270 	C$easyax5043.c$1385$2$602 ==.
                                   9271 ;	..\COMMON\easyax5043.c:1385: len = axradio_framing_check_crc((uint8_t __xdata *)axradio_cb_receive.st.rx.mac.raw, len);
      002420 90 02 53         [24] 9272 	mov	dptr,#(_axradio_cb_receive + 0x001e)
      002423 E0               [24] 9273 	movx	a,@dptr
      002424 FC               [12] 9274 	mov	r4,a
      002425 A3               [24] 9275 	inc	dptr
      002426 E0               [24] 9276 	movx	a,@dptr
      002427 FD               [12] 9277 	mov	r5,a
      002428 C0 06            [24] 9278 	push	ar6
      00242A C0 07            [24] 9279 	push	ar7
      00242C 8C 82            [24] 9280 	mov	dpl,r4
      00242E 8D 83            [24] 9281 	mov	dph,r5
      002430 12 09 79         [24] 9282 	lcall	_axradio_framing_check_crc
      002433 AE 82            [24] 9283 	mov	r6,dpl
      002435 AF 83            [24] 9284 	mov	r7,dph
      002437 15 81            [12] 9285 	dec	sp
      002439 15 81            [12] 9286 	dec	sp
                           001A0A  9287 	C$easyax5043.c$1386$2$602 ==.
                                   9288 ;	..\COMMON\easyax5043.c:1386: if (!len)
      00243B EE               [12] 9289 	mov	a,r6
      00243C 4F               [12] 9290 	orl	a,r7
      00243D 70 03            [24] 9291 	jnz	00302$
      00243F 02 28 33         [24] 9292 	ljmp	00171$
      002442                       9293 00302$:
                           001A11  9294 	C$easyax5043.c$1389$2$602 ==.
                                   9295 ;	..\COMMON\easyax5043.c:1389: len -= axradio_framing_maclen;
      002442 90 57 15         [24] 9296 	mov	dptr,#_axradio_framing_maclen
      002445 E4               [12] 9297 	clr	a
      002446 93               [24] 9298 	movc	a,@a+dptr
      002447 FD               [12] 9299 	mov	r5,a
      002448 7C 00            [12] 9300 	mov	r4,#0x00
      00244A EE               [12] 9301 	mov	a,r6
      00244B C3               [12] 9302 	clr	c
      00244C 9D               [12] 9303 	subb	a,r5
      00244D FE               [12] 9304 	mov	r6,a
      00244E EF               [12] 9305 	mov	a,r7
      00244F 9C               [12] 9306 	subb	a,r4
      002450 FF               [12] 9307 	mov	r7,a
                           001A20  9308 	C$easyax5043.c$1390$2$602 ==.
                                   9309 ;	..\COMMON\easyax5043.c:1390: len -= axradio_framing_swcrclen; // drop crc
      002451 90 57 1C         [24] 9310 	mov	dptr,#_axradio_framing_swcrclen
      002454 E4               [12] 9311 	clr	a
      002455 93               [24] 9312 	movc	a,@a+dptr
      002456 FD               [12] 9313 	mov	r5,a
      002457 7C 00            [12] 9314 	mov	r4,#0x00
      002459 EE               [12] 9315 	mov	a,r6
      00245A C3               [12] 9316 	clr	c
      00245B 9D               [12] 9317 	subb	a,r5
      00245C FE               [12] 9318 	mov	r6,a
      00245D EF               [12] 9319 	mov	a,r7
      00245E 9C               [12] 9320 	subb	a,r4
      00245F FF               [12] 9321 	mov	r7,a
                           001A2F  9322 	C$easyax5043.c$1391$2$602 ==.
                                   9323 ;	..\COMMON\easyax5043.c:1391: axradio_cb_receive.st.rx.pktlen = len;
      002460 90 02 57         [24] 9324 	mov	dptr,#(_axradio_cb_receive + 0x0022)
      002463 EE               [12] 9325 	mov	a,r6
      002464 F0               [24] 9326 	movx	@dptr,a
      002465 EF               [12] 9327 	mov	a,r7
      002466 A3               [24] 9328 	inc	dptr
      002467 F0               [24] 9329 	movx	@dptr,a
      002468                       9330 00109$:
                           001A37  9331 	C$easyax5043.c$1395$1$599 ==.
                                   9332 ;	..\COMMON\easyax5043.c:1395: axradio_cb_receive.st.rx.phy.timeoffset = 0;
      002468 90 02 45         [24] 9333 	mov	dptr,#(_axradio_cb_receive + 0x0010)
      00246B E4               [12] 9334 	clr	a
      00246C F0               [24] 9335 	movx	@dptr,a
      00246D A3               [24] 9336 	inc	dptr
      00246E F0               [24] 9337 	movx	@dptr,a
                           001A3E  9338 	C$easyax5043.c$1396$1$599 ==.
                                   9339 ;	..\COMMON\easyax5043.c:1396: axradio_cb_receive.st.rx.phy.period = 0;
      00246F 90 02 47         [24] 9340 	mov	dptr,#(_axradio_cb_receive + 0x0012)
      002472 F0               [24] 9341 	movx	@dptr,a
      002473 A3               [24] 9342 	inc	dptr
      002474 F0               [24] 9343 	movx	@dptr,a
                           001A44  9344 	C$easyax5043.c$1397$1$599 ==.
                                   9345 ;	..\COMMON\easyax5043.c:1397: if (axradio_mode == AXRADIO_MODE_ACK_TRANSMIT ||
      002475 74 12            [12] 9346 	mov	a,#0x12
      002477 B5 08 02         [24] 9347 	cjne	a,_axradio_mode,00303$
      00247A 80 0C            [24] 9348 	sjmp	00113$
      00247C                       9349 00303$:
                           001A4B  9350 	C$easyax5043.c$1398$1$599 ==.
                                   9351 ;	..\COMMON\easyax5043.c:1398: axradio_mode == AXRADIO_MODE_WOR_ACK_TRANSMIT ||
      00247C 74 13            [12] 9352 	mov	a,#0x13
      00247E B5 08 02         [24] 9353 	cjne	a,_axradio_mode,00304$
      002481 80 05            [24] 9354 	sjmp	00113$
      002483                       9355 00304$:
                           001A52  9356 	C$easyax5043.c$1399$1$599 ==.
                                   9357 ;	..\COMMON\easyax5043.c:1399: axradio_mode == AXRADIO_MODE_SYNC_ACK_MASTER) {
      002483 74 31            [12] 9358 	mov	a,#0x31
      002485 B5 08 60         [24] 9359 	cjne	a,_axradio_mode,00114$
      002488                       9360 00113$:
                           001A57  9361 	C$easyax5043.c$1400$2$603 ==.
                                   9362 ;	..\COMMON\easyax5043.c:1400: ax5043_off();
      002488 12 17 47         [24] 9363 	lcall	_ax5043_off
                           001A5A  9364 	C$easyax5043.c$1401$2$603 ==.
                                   9365 ;	..\COMMON\easyax5043.c:1401: wtimer_remove(&axradio_timer);
      00248B 90 02 8E         [24] 9366 	mov	dptr,#_axradio_timer
      00248E 12 50 55         [24] 9367 	lcall	_wtimer_remove
                           001A60  9368 	C$easyax5043.c$1402$2$603 ==.
                                   9369 ;	..\COMMON\easyax5043.c:1402: if (axradio_mode == AXRADIO_MODE_SYNC_ACK_MASTER) {
      002491 74 31            [12] 9370 	mov	a,#0x31
      002493 B5 08 26         [24] 9371 	cjne	a,_axradio_mode,00112$
                           001A65  9372 	C$easyax5043.c$1403$3$604 ==.
                                   9373 ;	..\COMMON\easyax5043.c:1403: axradio_syncstate = syncstate_master_normal;
      002496 90 00 04         [24] 9374 	mov	dptr,#_axradio_syncstate
      002499 74 03            [12] 9375 	mov	a,#0x03
      00249B F0               [24] 9376 	movx	@dptr,a
                           001A6B  9377 	C$easyax5043.c$1404$3$604 ==.
                                   9378 ;	..\COMMON\easyax5043.c:1404: axradio_sync_settimeradv(axradio_sync_xoscstartup);
      00249C 90 57 35         [24] 9379 	mov	dptr,#_axradio_sync_xoscstartup
      00249F E4               [12] 9380 	clr	a
      0024A0 93               [24] 9381 	movc	a,@a+dptr
      0024A1 FC               [12] 9382 	mov	r4,a
      0024A2 74 01            [12] 9383 	mov	a,#0x01
      0024A4 93               [24] 9384 	movc	a,@a+dptr
      0024A5 FD               [12] 9385 	mov	r5,a
      0024A6 74 02            [12] 9386 	mov	a,#0x02
      0024A8 93               [24] 9387 	movc	a,@a+dptr
      0024A9 FE               [12] 9388 	mov	r6,a
      0024AA 74 03            [12] 9389 	mov	a,#0x03
      0024AC 93               [24] 9390 	movc	a,@a+dptr
      0024AD 8C 82            [24] 9391 	mov	dpl,r4
      0024AF 8D 83            [24] 9392 	mov	dph,r5
      0024B1 8E F0            [24] 9393 	mov	b,r6
      0024B3 12 19 55         [24] 9394 	lcall	_axradio_sync_settimeradv
                           001A85  9395 	C$easyax5043.c$1405$3$604 ==.
                                   9396 ;	..\COMMON\easyax5043.c:1405: wtimer0_addabsolute(&axradio_timer);
      0024B6 90 02 8E         [24] 9397 	mov	dptr,#_axradio_timer
      0024B9 12 48 4E         [24] 9398 	lcall	_wtimer0_addabsolute
      0024BC                       9399 00112$:
                           001A8B  9400 	C$easyax5043.c$1407$2$603 ==.
                                   9401 ;	..\COMMON\easyax5043.c:1407: wtimer_remove_callback(&axradio_cb_transmitend.cb);
      0024BC 90 02 7A         [24] 9402 	mov	dptr,#_axradio_cb_transmitend
      0024BF 12 52 63         [24] 9403 	lcall	_wtimer_remove_callback
                           001A91  9404 	C$easyax5043.c$1408$2$603 ==.
                                   9405 ;	..\COMMON\easyax5043.c:1408: axradio_cb_transmitend.st.error = AXRADIO_ERR_NOERROR;
      0024C2 90 02 7F         [24] 9406 	mov	dptr,#(_axradio_cb_transmitend + 0x0005)
      0024C5 E4               [12] 9407 	clr	a
      0024C6 F0               [24] 9408 	movx	@dptr,a
                           001A96  9409 	C$easyax5043.c$1409$2$603 ==.
                                   9410 ;	..\COMMON\easyax5043.c:1409: axradio_cb_transmitend.st.time.t = radio_read24(AX5043_REG_TIMER2);
      0024C7 90 00 59         [24] 9411 	mov	dptr,#0x0059
      0024CA 12 48 F6         [24] 9412 	lcall	_radio_read24
      0024CD AC 82            [24] 9413 	mov	r4,dpl
      0024CF AD 83            [24] 9414 	mov	r5,dph
      0024D1 AE F0            [24] 9415 	mov	r6,b
      0024D3 FF               [12] 9416 	mov	r7,a
      0024D4 90 02 80         [24] 9417 	mov	dptr,#(_axradio_cb_transmitend + 0x0006)
      0024D7 EC               [12] 9418 	mov	a,r4
      0024D8 F0               [24] 9419 	movx	@dptr,a
      0024D9 ED               [12] 9420 	mov	a,r5
      0024DA A3               [24] 9421 	inc	dptr
      0024DB F0               [24] 9422 	movx	@dptr,a
      0024DC EE               [12] 9423 	mov	a,r6
      0024DD A3               [24] 9424 	inc	dptr
      0024DE F0               [24] 9425 	movx	@dptr,a
      0024DF EF               [12] 9426 	mov	a,r7
      0024E0 A3               [24] 9427 	inc	dptr
      0024E1 F0               [24] 9428 	movx	@dptr,a
                           001AB1  9429 	C$easyax5043.c$1410$2$603 ==.
                                   9430 ;	..\COMMON\easyax5043.c:1410: wtimer_add_callback(&axradio_cb_transmitend.cb);
      0024E2 90 02 7A         [24] 9431 	mov	dptr,#_axradio_cb_transmitend
      0024E5 12 46 F0         [24] 9432 	lcall	_wtimer_add_callback
      0024E8                       9433 00114$:
                           001AB7  9434 	C$easyax5043.c$1412$1$599 ==.
                                   9435 ;	..\COMMON\easyax5043.c:1412: if (axradio_framing_destaddrpos != 0xff)
      0024E8 90 57 17         [24] 9436 	mov	dptr,#_axradio_framing_destaddrpos
      0024EB E4               [12] 9437 	clr	a
      0024EC 93               [24] 9438 	movc	a,@a+dptr
      0024ED FF               [12] 9439 	mov	r7,a
      0024EE BF FF 02         [24] 9440 	cjne	r7,#0xff,00309$
      0024F1 80 29            [24] 9441 	sjmp	00118$
      0024F3                       9442 00309$:
                           001AC2  9443 	C$easyax5043.c$1413$1$599 ==.
                                   9444 ;	..\COMMON\easyax5043.c:1413: memcpy_xdata(&axradio_cb_receive.st.rx.mac.localaddr, &axradio_cb_receive.st.rx.mac.raw[axradio_framing_destaddrpos], axradio_framing_addrlen);
      0024F3 90 02 53         [24] 9445 	mov	dptr,#(_axradio_cb_receive + 0x001e)
      0024F6 E0               [24] 9446 	movx	a,@dptr
      0024F7 FD               [12] 9447 	mov	r5,a
      0024F8 A3               [24] 9448 	inc	dptr
      0024F9 E0               [24] 9449 	movx	a,@dptr
      0024FA FE               [12] 9450 	mov	r6,a
      0024FB EF               [12] 9451 	mov	a,r7
      0024FC 2D               [12] 9452 	add	a,r5
      0024FD FF               [12] 9453 	mov	r7,a
      0024FE E4               [12] 9454 	clr	a
      0024FF 3E               [12] 9455 	addc	a,r6
      002500 FC               [12] 9456 	mov	r4,a
      002501 8F 34            [24] 9457 	mov	_memcpy_PARM_2,r7
      002503 8C 35            [24] 9458 	mov	(_memcpy_PARM_2 + 1),r4
      002505 75 36 00         [24] 9459 	mov	(_memcpy_PARM_2 + 2),#0x00
      002508 90 57 16         [24] 9460 	mov	dptr,#_axradio_framing_addrlen
      00250B E4               [12] 9461 	clr	a
      00250C 93               [24] 9462 	movc	a,@a+dptr
      00250D FF               [12] 9463 	mov	r7,a
      00250E 8F 37            [24] 9464 	mov	_memcpy_PARM_3,r7
      002510 75 38 00         [24] 9465 	mov	(_memcpy_PARM_3 + 1),#0x00
      002513 90 02 4E         [24] 9466 	mov	dptr,#(_axradio_cb_receive + 0x0019)
      002516 75 F0 00         [24] 9467 	mov	b,#0x00
      002519 12 46 9B         [24] 9468 	lcall	_memcpy
      00251C                       9469 00118$:
                           001AEB  9470 	C$easyax5043.c$1414$1$599 ==.
                                   9471 ;	..\COMMON\easyax5043.c:1414: if (axradio_framing_sourceaddrpos != 0xff)
      00251C 90 57 18         [24] 9472 	mov	dptr,#_axradio_framing_sourceaddrpos
      00251F E4               [12] 9473 	clr	a
      002520 93               [24] 9474 	movc	a,@a+dptr
      002521 FF               [12] 9475 	mov	r7,a
      002522 BF FF 02         [24] 9476 	cjne	r7,#0xff,00310$
      002525 80 29            [24] 9477 	sjmp	00120$
      002527                       9478 00310$:
                           001AF6  9479 	C$easyax5043.c$1415$1$599 ==.
                                   9480 ;	..\COMMON\easyax5043.c:1415: memcpy_xdata(&axradio_cb_receive.st.rx.mac.remoteaddr, &axradio_cb_receive.st.rx.mac.raw[axradio_framing_sourceaddrpos], axradio_framing_addrlen);
      002527 90 02 53         [24] 9481 	mov	dptr,#(_axradio_cb_receive + 0x001e)
      00252A E0               [24] 9482 	movx	a,@dptr
      00252B FD               [12] 9483 	mov	r5,a
      00252C A3               [24] 9484 	inc	dptr
      00252D E0               [24] 9485 	movx	a,@dptr
      00252E FE               [12] 9486 	mov	r6,a
      00252F EF               [12] 9487 	mov	a,r7
      002530 2D               [12] 9488 	add	a,r5
      002531 FF               [12] 9489 	mov	r7,a
      002532 E4               [12] 9490 	clr	a
      002533 3E               [12] 9491 	addc	a,r6
      002534 FC               [12] 9492 	mov	r4,a
      002535 8F 34            [24] 9493 	mov	_memcpy_PARM_2,r7
      002537 8C 35            [24] 9494 	mov	(_memcpy_PARM_2 + 1),r4
      002539 75 36 00         [24] 9495 	mov	(_memcpy_PARM_2 + 2),#0x00
      00253C 90 57 16         [24] 9496 	mov	dptr,#_axradio_framing_addrlen
      00253F E4               [12] 9497 	clr	a
      002540 93               [24] 9498 	movc	a,@a+dptr
      002541 FF               [12] 9499 	mov	r7,a
      002542 8F 37            [24] 9500 	mov	_memcpy_PARM_3,r7
      002544 75 38 00         [24] 9501 	mov	(_memcpy_PARM_3 + 1),#0x00
      002547 90 02 49         [24] 9502 	mov	dptr,#(_axradio_cb_receive + 0x0014)
      00254A 75 F0 00         [24] 9503 	mov	b,#0x00
      00254D 12 46 9B         [24] 9504 	lcall	_memcpy
      002550                       9505 00120$:
                           001B1F  9506 	C$easyax5043.c$1416$1$599 ==.
                                   9507 ;	..\COMMON\easyax5043.c:1416: if (axradio_mode == AXRADIO_MODE_ACK_RECEIVE ||
      002550 74 22            [12] 9508 	mov	a,#0x22
      002552 B5 08 02         [24] 9509 	cjne	a,_axradio_mode,00311$
      002555 80 11            [24] 9510 	sjmp	00154$
      002557                       9511 00311$:
                           001B26  9512 	C$easyax5043.c$1417$1$599 ==.
                                   9513 ;	..\COMMON\easyax5043.c:1417: axradio_mode == AXRADIO_MODE_WOR_ACK_RECEIVE ||
      002557 74 23            [12] 9514 	mov	a,#0x23
      002559 B5 08 02         [24] 9515 	cjne	a,_axradio_mode,00312$
      00255C 80 0A            [24] 9516 	sjmp	00154$
      00255E                       9517 00312$:
                           001B2D  9518 	C$easyax5043.c$1418$1$599 ==.
                                   9519 ;	..\COMMON\easyax5043.c:1418: axradio_mode == AXRADIO_MODE_SYNC_ACK_SLAVE) {
      00255E 74 33            [12] 9520 	mov	a,#0x33
      002560 B5 08 02         [24] 9521 	cjne	a,_axradio_mode,00313$
      002563 80 03            [24] 9522 	sjmp	00314$
      002565                       9523 00313$:
      002565 02 27 49         [24] 9524 	ljmp	00155$
      002568                       9525 00314$:
      002568                       9526 00154$:
                           001B37  9527 	C$easyax5043.c$1419$2$605 ==.
                                   9528 ;	..\COMMON\easyax5043.c:1419: axradio_ack_count = 0;
      002568 90 00 0E         [24] 9529 	mov	dptr,#_axradio_ack_count
      00256B E4               [12] 9530 	clr	a
      00256C F0               [24] 9531 	movx	@dptr,a
                           001B3C  9532 	C$easyax5043.c$1420$2$605 ==.
                                   9533 ;	..\COMMON\easyax5043.c:1420: axradio_txbuffer_len = axradio_framing_maclen + axradio_framing_minpayloadlen;
      00256D 90 57 15         [24] 9534 	mov	dptr,#_axradio_framing_maclen
                                   9535 ;	genFromRTrack removed	clr	a
      002570 93               [24] 9536 	movc	a,@a+dptr
      002571 FF               [12] 9537 	mov	r7,a
      002572 FD               [12] 9538 	mov	r5,a
      002573 7E 00            [12] 9539 	mov	r6,#0x00
      002575 90 57 2E         [24] 9540 	mov	dptr,#_axradio_framing_minpayloadlen
      002578 E4               [12] 9541 	clr	a
      002579 93               [24] 9542 	movc	a,@a+dptr
      00257A FC               [12] 9543 	mov	r4,a
      00257B 7B 00            [12] 9544 	mov	r3,#0x00
      00257D 90 00 05         [24] 9545 	mov	dptr,#_axradio_txbuffer_len
      002580 EC               [12] 9546 	mov	a,r4
      002581 2D               [12] 9547 	add	a,r5
      002582 F0               [24] 9548 	movx	@dptr,a
      002583 EB               [12] 9549 	mov	a,r3
      002584 3E               [12] 9550 	addc	a,r6
      002585 A3               [24] 9551 	inc	dptr
      002586 F0               [24] 9552 	movx	@dptr,a
                           001B56  9553 	C$easyax5043.c$1421$2$605 ==.
                                   9554 ;	..\COMMON\easyax5043.c:1421: memset_xdata(axradio_txbuffer, 0, axradio_framing_maclen);
      002587 8F 35            [24] 9555 	mov	_memset_PARM_3,r7
                                   9556 ;	1-genFromRTrack replaced	mov	(_memset_PARM_3 + 1),#0x00
      002589 8E 36            [24] 9557 	mov	(_memset_PARM_3 + 1),r6
                                   9558 ;	1-genFromRTrack replaced	mov	_memset_PARM_2,#0x00
      00258B 8E 34            [24] 9559 	mov	_memset_PARM_2,r6
      00258D 90 00 2D         [24] 9560 	mov	dptr,#_axradio_txbuffer
      002590 75 F0 00         [24] 9561 	mov	b,#0x00
      002593 12 46 7C         [24] 9562 	lcall	_memset
                           001B65  9563 	C$easyax5043.c$1422$2$605 ==.
                                   9564 ;	..\COMMON\easyax5043.c:1422: if (axradio_framing_ack_seqnrpos != 0xff) {
      002596 90 57 2D         [24] 9565 	mov	dptr,#_axradio_framing_ack_seqnrpos
      002599 E4               [12] 9566 	clr	a
      00259A 93               [24] 9567 	movc	a,@a+dptr
      00259B FF               [12] 9568 	mov	r7,a
      00259C BF FF 02         [24] 9569 	cjne	r7,#0xff,00315$
      00259F 80 35            [24] 9570 	sjmp	00125$
      0025A1                       9571 00315$:
                           001B70  9572 	C$easyax5043.c$1423$3$606 ==.
                                   9573 ;	..\COMMON\easyax5043.c:1423: uint8_t seqnr = axradio_cb_receive.st.rx.mac.raw[axradio_framing_ack_seqnrpos];
      0025A1 90 02 53         [24] 9574 	mov	dptr,#(_axradio_cb_receive + 0x001e)
      0025A4 E0               [24] 9575 	movx	a,@dptr
      0025A5 FD               [12] 9576 	mov	r5,a
      0025A6 A3               [24] 9577 	inc	dptr
      0025A7 E0               [24] 9578 	movx	a,@dptr
      0025A8 FE               [12] 9579 	mov	r6,a
      0025A9 EF               [12] 9580 	mov	a,r7
      0025AA 2D               [12] 9581 	add	a,r5
      0025AB F5 82            [12] 9582 	mov	dpl,a
      0025AD E4               [12] 9583 	clr	a
      0025AE 3E               [12] 9584 	addc	a,r6
      0025AF F5 83            [12] 9585 	mov	dph,a
      0025B1 E0               [24] 9586 	movx	a,@dptr
      0025B2 FE               [12] 9587 	mov	r6,a
                           001B82  9588 	C$easyax5043.c$1424$3$606 ==.
                                   9589 ;	..\COMMON\easyax5043.c:1424: axradio_txbuffer[axradio_framing_ack_seqnrpos] = seqnr;
      0025B3 EF               [12] 9590 	mov	a,r7
      0025B4 24 2D            [12] 9591 	add	a,#_axradio_txbuffer
      0025B6 F5 82            [12] 9592 	mov	dpl,a
      0025B8 E4               [12] 9593 	clr	a
      0025B9 34 00            [12] 9594 	addc	a,#(_axradio_txbuffer >> 8)
      0025BB F5 83            [12] 9595 	mov	dph,a
      0025BD EE               [12] 9596 	mov	a,r6
      0025BE F0               [24] 9597 	movx	@dptr,a
                           001B8E  9598 	C$easyax5043.c$1425$3$606 ==.
                                   9599 ;	..\COMMON\easyax5043.c:1425: if (axradio_ack_seqnr != seqnr)
      0025BF 90 00 0F         [24] 9600 	mov	dptr,#_axradio_ack_seqnr
      0025C2 E0               [24] 9601 	movx	a,@dptr
      0025C3 FF               [12] 9602 	mov	r7,a
      0025C4 B5 06 02         [24] 9603 	cjne	a,ar6,00316$
      0025C7 80 07            [24] 9604 	sjmp	00122$
      0025C9                       9605 00316$:
                           001B98  9606 	C$easyax5043.c$1426$3$606 ==.
                                   9607 ;	..\COMMON\easyax5043.c:1426: axradio_ack_seqnr = seqnr;
      0025C9 90 00 0F         [24] 9608 	mov	dptr,#_axradio_ack_seqnr
      0025CC EE               [12] 9609 	mov	a,r6
      0025CD F0               [24] 9610 	movx	@dptr,a
      0025CE 80 06            [24] 9611 	sjmp	00125$
      0025D0                       9612 00122$:
                           001B9F  9613 	C$easyax5043.c$1428$3$606 ==.
                                   9614 ;	..\COMMON\easyax5043.c:1428: axradio_cb_receive.st.error = AXRADIO_ERR_RETRANSMISSION;
      0025D0 90 02 3A         [24] 9615 	mov	dptr,#(_axradio_cb_receive + 0x0005)
      0025D3 74 08            [12] 9616 	mov	a,#0x08
      0025D5 F0               [24] 9617 	movx	@dptr,a
      0025D6                       9618 00125$:
                           001BA5  9619 	C$easyax5043.c$1430$2$605 ==.
                                   9620 ;	..\COMMON\easyax5043.c:1430: if (axradio_framing_destaddrpos != 0xff) {
      0025D6 90 57 17         [24] 9621 	mov	dptr,#_axradio_framing_destaddrpos
      0025D9 E4               [12] 9622 	clr	a
      0025DA 93               [24] 9623 	movc	a,@a+dptr
      0025DB FF               [12] 9624 	mov	r7,a
      0025DC BF FF 02         [24] 9625 	cjne	r7,#0xff,00317$
      0025DF 80 57            [24] 9626 	sjmp	00130$
      0025E1                       9627 00317$:
                           001BB0  9628 	C$easyax5043.c$1431$3$607 ==.
                                   9629 ;	..\COMMON\easyax5043.c:1431: if (axradio_framing_sourceaddrpos != 0xff)
      0025E1 90 57 18         [24] 9630 	mov	dptr,#_axradio_framing_sourceaddrpos
      0025E4 E4               [12] 9631 	clr	a
      0025E5 93               [24] 9632 	movc	a,@a+dptr
      0025E6 FE               [12] 9633 	mov	r6,a
      0025E7 BE FF 02         [24] 9634 	cjne	r6,#0xff,00318$
      0025EA 80 27            [24] 9635 	sjmp	00127$
      0025EC                       9636 00318$:
                           001BBB  9637 	C$easyax5043.c$1432$3$607 ==.
                                   9638 ;	..\COMMON\easyax5043.c:1432: memcpy_xdata(&axradio_txbuffer[axradio_framing_destaddrpos], &axradio_cb_receive.st.rx.mac.remoteaddr, axradio_framing_addrlen);
      0025EC EF               [12] 9639 	mov	a,r7
      0025ED 24 2D            [12] 9640 	add	a,#_axradio_txbuffer
      0025EF FD               [12] 9641 	mov	r5,a
      0025F0 E4               [12] 9642 	clr	a
      0025F1 34 00            [12] 9643 	addc	a,#(_axradio_txbuffer >> 8)
      0025F3 FE               [12] 9644 	mov	r6,a
      0025F4 7C 00            [12] 9645 	mov	r4,#0x00
      0025F6 75 34 49         [24] 9646 	mov	_memcpy_PARM_2,#(_axradio_cb_receive + 0x0014)
      0025F9 75 35 02         [24] 9647 	mov	(_memcpy_PARM_2 + 1),#((_axradio_cb_receive + 0x0014) >> 8)
                                   9648 ;	1-genFromRTrack replaced	mov	(_memcpy_PARM_2 + 2),#0x00
      0025FC 8C 36            [24] 9649 	mov	(_memcpy_PARM_2 + 2),r4
      0025FE 90 57 16         [24] 9650 	mov	dptr,#_axradio_framing_addrlen
      002601 E4               [12] 9651 	clr	a
      002602 93               [24] 9652 	movc	a,@a+dptr
      002603 FB               [12] 9653 	mov	r3,a
      002604 8B 37            [24] 9654 	mov	_memcpy_PARM_3,r3
                                   9655 ;	1-genFromRTrack replaced	mov	(_memcpy_PARM_3 + 1),#0x00
      002606 8C 38            [24] 9656 	mov	(_memcpy_PARM_3 + 1),r4
      002608 8D 82            [24] 9657 	mov	dpl,r5
      00260A 8E 83            [24] 9658 	mov	dph,r6
      00260C 8C F0            [24] 9659 	mov	b,r4
      00260E 12 46 9B         [24] 9660 	lcall	_memcpy
      002611 80 25            [24] 9661 	sjmp	00130$
      002613                       9662 00127$:
                           001BE2  9663 	C$easyax5043.c$1434$3$607 ==.
                                   9664 ;	..\COMMON\easyax5043.c:1434: memcpy_xdata(&axradio_txbuffer[axradio_framing_destaddrpos], &axradio_default_remoteaddr, axradio_framing_addrlen);
      002613 EF               [12] 9665 	mov	a,r7
      002614 24 2D            [12] 9666 	add	a,#_axradio_txbuffer
      002616 FF               [12] 9667 	mov	r7,a
      002617 E4               [12] 9668 	clr	a
      002618 34 00            [12] 9669 	addc	a,#(_axradio_txbuffer >> 8)
      00261A FE               [12] 9670 	mov	r6,a
      00261B 7D 00            [12] 9671 	mov	r5,#0x00
      00261D 75 34 28         [24] 9672 	mov	_memcpy_PARM_2,#_axradio_default_remoteaddr
      002620 75 35 00         [24] 9673 	mov	(_memcpy_PARM_2 + 1),#(_axradio_default_remoteaddr >> 8)
                                   9674 ;	1-genFromRTrack replaced	mov	(_memcpy_PARM_2 + 2),#0x00
      002623 8D 36            [24] 9675 	mov	(_memcpy_PARM_2 + 2),r5
      002625 90 57 16         [24] 9676 	mov	dptr,#_axradio_framing_addrlen
      002628 E4               [12] 9677 	clr	a
      002629 93               [24] 9678 	movc	a,@a+dptr
      00262A FC               [12] 9679 	mov	r4,a
      00262B 8C 37            [24] 9680 	mov	_memcpy_PARM_3,r4
                                   9681 ;	1-genFromRTrack replaced	mov	(_memcpy_PARM_3 + 1),#0x00
      00262D 8D 38            [24] 9682 	mov	(_memcpy_PARM_3 + 1),r5
      00262F 8F 82            [24] 9683 	mov	dpl,r7
      002631 8E 83            [24] 9684 	mov	dph,r6
      002633 8D F0            [24] 9685 	mov	b,r5
      002635 12 46 9B         [24] 9686 	lcall	_memcpy
      002638                       9687 00130$:
                           001C07  9688 	C$easyax5043.c$1436$2$605 ==.
                                   9689 ;	..\COMMON\easyax5043.c:1436: if (axradio_framing_sourceaddrpos != 0xff)
      002638 90 57 18         [24] 9690 	mov	dptr,#_axradio_framing_sourceaddrpos
      00263B E4               [12] 9691 	clr	a
      00263C 93               [24] 9692 	movc	a,@a+dptr
      00263D FF               [12] 9693 	mov	r7,a
      00263E BF FF 02         [24] 9694 	cjne	r7,#0xff,00319$
      002641 80 25            [24] 9695 	sjmp	00132$
      002643                       9696 00319$:
                           001C12  9697 	C$easyax5043.c$1437$2$605 ==.
                                   9698 ;	..\COMMON\easyax5043.c:1437: memcpy_xdata(&axradio_txbuffer[axradio_framing_sourceaddrpos], &axradio_localaddr.addr, axradio_framing_addrlen);
      002643 EF               [12] 9699 	mov	a,r7
      002644 24 2D            [12] 9700 	add	a,#_axradio_txbuffer
      002646 FF               [12] 9701 	mov	r7,a
      002647 E4               [12] 9702 	clr	a
      002648 34 00            [12] 9703 	addc	a,#(_axradio_txbuffer >> 8)
      00264A FE               [12] 9704 	mov	r6,a
      00264B 7D 00            [12] 9705 	mov	r5,#0x00
      00264D 75 34 1E         [24] 9706 	mov	_memcpy_PARM_2,#_axradio_localaddr
      002650 75 35 00         [24] 9707 	mov	(_memcpy_PARM_2 + 1),#(_axradio_localaddr >> 8)
                                   9708 ;	1-genFromRTrack replaced	mov	(_memcpy_PARM_2 + 2),#0x00
      002653 8D 36            [24] 9709 	mov	(_memcpy_PARM_2 + 2),r5
      002655 90 57 16         [24] 9710 	mov	dptr,#_axradio_framing_addrlen
      002658 E4               [12] 9711 	clr	a
      002659 93               [24] 9712 	movc	a,@a+dptr
      00265A FC               [12] 9713 	mov	r4,a
      00265B 8C 37            [24] 9714 	mov	_memcpy_PARM_3,r4
                                   9715 ;	1-genFromRTrack replaced	mov	(_memcpy_PARM_3 + 1),#0x00
      00265D 8D 38            [24] 9716 	mov	(_memcpy_PARM_3 + 1),r5
      00265F 8F 82            [24] 9717 	mov	dpl,r7
      002661 8E 83            [24] 9718 	mov	dph,r6
      002663 8D F0            [24] 9719 	mov	b,r5
      002665 12 46 9B         [24] 9720 	lcall	_memcpy
      002668                       9721 00132$:
                           001C37  9722 	C$easyax5043.c$1438$2$605 ==.
                                   9723 ;	..\COMMON\easyax5043.c:1438: if (axradio_framing_lenmask) {
      002668 90 57 1B         [24] 9724 	mov	dptr,#_axradio_framing_lenmask
      00266B E4               [12] 9725 	clr	a
      00266C 93               [24] 9726 	movc	a,@a+dptr
      00266D FF               [12] 9727 	mov	r7,a
      00266E 60 30            [24] 9728 	jz	00134$
                           001C3F  9729 	C$easyax5043.c$1439$3$608 ==.
                                   9730 ;	..\COMMON\easyax5043.c:1439: uint8_t len_byte = (uint8_t)(axradio_txbuffer_len - axradio_framing_lenoffs) & axradio_framing_lenmask; // if you prefer not counting the len byte itself, set LENOFFS = 1
      002670 90 00 05         [24] 9731 	mov	dptr,#_axradio_txbuffer_len
      002673 E0               [24] 9732 	movx	a,@dptr
      002674 FD               [12] 9733 	mov	r5,a
      002675 A3               [24] 9734 	inc	dptr
      002676 E0               [24] 9735 	movx	a,@dptr
      002677 90 57 1A         [24] 9736 	mov	dptr,#_axradio_framing_lenoffs
      00267A E4               [12] 9737 	clr	a
      00267B 93               [24] 9738 	movc	a,@a+dptr
      00267C FE               [12] 9739 	mov	r6,a
      00267D ED               [12] 9740 	mov	a,r5
      00267E C3               [12] 9741 	clr	c
      00267F 9E               [12] 9742 	subb	a,r6
      002680 5F               [12] 9743 	anl	a,r7
      002681 FE               [12] 9744 	mov	r6,a
                           001C51  9745 	C$easyax5043.c$1440$3$608 ==.
                                   9746 ;	..\COMMON\easyax5043.c:1440: axradio_txbuffer[axradio_framing_lenpos] = (axradio_txbuffer[axradio_framing_lenpos] & (uint8_t)~axradio_framing_lenmask) | len_byte;
      002682 90 57 19         [24] 9747 	mov	dptr,#_axradio_framing_lenpos
      002685 E4               [12] 9748 	clr	a
      002686 93               [24] 9749 	movc	a,@a+dptr
      002687 24 2D            [12] 9750 	add	a,#_axradio_txbuffer
      002689 FD               [12] 9751 	mov	r5,a
      00268A E4               [12] 9752 	clr	a
      00268B 34 00            [12] 9753 	addc	a,#(_axradio_txbuffer >> 8)
      00268D FC               [12] 9754 	mov	r4,a
      00268E 8D 82            [24] 9755 	mov	dpl,r5
      002690 8C 83            [24] 9756 	mov	dph,r4
      002692 E0               [24] 9757 	movx	a,@dptr
      002693 FB               [12] 9758 	mov	r3,a
      002694 EF               [12] 9759 	mov	a,r7
      002695 F4               [12] 9760 	cpl	a
      002696 FF               [12] 9761 	mov	r7,a
      002697 5B               [12] 9762 	anl	a,r3
      002698 42 06            [12] 9763 	orl	ar6,a
      00269A 8D 82            [24] 9764 	mov	dpl,r5
      00269C 8C 83            [24] 9765 	mov	dph,r4
      00269E EE               [12] 9766 	mov	a,r6
      00269F F0               [24] 9767 	movx	@dptr,a
      0026A0                       9768 00134$:
                           001C6F  9769 	C$easyax5043.c$1442$2$605 ==.
                                   9770 ;	..\COMMON\easyax5043.c:1442: if (axradio_framing_swcrclen)
      0026A0 90 57 1C         [24] 9771 	mov	dptr,#_axradio_framing_swcrclen
      0026A3 E4               [12] 9772 	clr	a
      0026A4 93               [24] 9773 	movc	a,@a+dptr
      0026A5 60 20            [24] 9774 	jz	00136$
                           001C76  9775 	C$easyax5043.c$1443$2$605 ==.
                                   9776 ;	..\COMMON\easyax5043.c:1443: axradio_txbuffer_len = axradio_framing_append_crc(axradio_txbuffer, axradio_txbuffer_len);
      0026A7 90 00 05         [24] 9777 	mov	dptr,#_axradio_txbuffer_len
      0026AA E0               [24] 9778 	movx	a,@dptr
      0026AB C0 E0            [24] 9779 	push	acc
      0026AD A3               [24] 9780 	inc	dptr
      0026AE E0               [24] 9781 	movx	a,@dptr
      0026AF C0 E0            [24] 9782 	push	acc
      0026B1 90 00 2D         [24] 9783 	mov	dptr,#_axradio_txbuffer
      0026B4 12 09 C3         [24] 9784 	lcall	_axradio_framing_append_crc
      0026B7 AE 82            [24] 9785 	mov	r6,dpl
      0026B9 AF 83            [24] 9786 	mov	r7,dph
      0026BB 15 81            [12] 9787 	dec	sp
      0026BD 15 81            [12] 9788 	dec	sp
      0026BF 90 00 05         [24] 9789 	mov	dptr,#_axradio_txbuffer_len
      0026C2 EE               [12] 9790 	mov	a,r6
      0026C3 F0               [24] 9791 	movx	@dptr,a
      0026C4 EF               [12] 9792 	mov	a,r7
      0026C5 A3               [24] 9793 	inc	dptr
      0026C6 F0               [24] 9794 	movx	@dptr,a
      0026C7                       9795 00136$:
                           001C96  9796 	C$easyax5043.c$1444$2$605 ==.
                                   9797 ;	..\COMMON\easyax5043.c:1444: if (axradio_phy_pn9) {
      0026C7 90 56 F3         [24] 9798 	mov	dptr,#_axradio_phy_pn9
      0026CA E4               [12] 9799 	clr	a
      0026CB 93               [24] 9800 	movc	a,@a+dptr
      0026CC 60 2F            [24] 9801 	jz	00139$
                           001C9D  9802 	C$easyax5043.c$1445$3$609 ==.
                                   9803 ;	..\COMMON\easyax5043.c:1445: pn9_buffer(axradio_txbuffer, axradio_txbuffer_len, 0x1ff, -(radio_read8(AX5043_REG_ENCODING) & 0x01));
      0026CE 90 40 11         [24] 9804 	mov	dptr,#0x4011
      0026D1 E0               [24] 9805 	movx	a,@dptr
      0026D2 FF               [12] 9806 	mov	r7,a
      0026D3 53 07 01         [24] 9807 	anl	ar7,#0x01
      0026D6 C3               [12] 9808 	clr	c
      0026D7 E4               [12] 9809 	clr	a
      0026D8 9F               [12] 9810 	subb	a,r7
      0026D9 FF               [12] 9811 	mov	r7,a
      0026DA C0 07            [24] 9812 	push	ar7
      0026DC 74 FF            [12] 9813 	mov	a,#0xff
      0026DE C0 E0            [24] 9814 	push	acc
      0026E0 74 01            [12] 9815 	mov	a,#0x01
      0026E2 C0 E0            [24] 9816 	push	acc
      0026E4 90 00 05         [24] 9817 	mov	dptr,#_axradio_txbuffer_len
      0026E7 E0               [24] 9818 	movx	a,@dptr
      0026E8 C0 E0            [24] 9819 	push	acc
      0026EA A3               [24] 9820 	inc	dptr
      0026EB E0               [24] 9821 	movx	a,@dptr
      0026EC C0 E0            [24] 9822 	push	acc
      0026EE 90 00 2D         [24] 9823 	mov	dptr,#_axradio_txbuffer
      0026F1 75 F0 00         [24] 9824 	mov	b,#0x00
      0026F4 12 49 1D         [24] 9825 	lcall	_pn9_buffer
      0026F7 E5 81            [12] 9826 	mov	a,sp
      0026F9 24 FB            [12] 9827 	add	a,#0xfb
      0026FB F5 81            [12] 9828 	mov	sp,a
                           001CCC  9829 	C$easyax5043.c$1447$2$605 ==.
                                   9830 ;	..\COMMON\easyax5043.c:1447: radio_write8(AX5043_REG_IRQMASK1, 0x00);
      0026FD                       9831 00139$:
      0026FD 90 40 06         [24] 9832 	mov	dptr,#0x4006
      002700 E4               [12] 9833 	clr	a
      002701 F0               [24] 9834 	movx	@dptr,a
                           001CD1  9835 	C$easyax5043.c$1448$3$611 ==.
                                   9836 ;	..\COMMON\easyax5043.c:1448: radio_write8(AX5043_REG_IRQMASK0, 0x00);
      002702 90 40 07         [24] 9837 	mov	dptr,#0x4007
      002705 F0               [24] 9838 	movx	@dptr,a
                           001CD5  9839 	C$easyax5043.c$1449$3$612 ==.
                                   9840 ;	..\COMMON\easyax5043.c:1449: radio_write8(AX5043_REG_PWRMODE, AX5043_PWRSTATE_XTAL_ON);
      002706 90 40 02         [24] 9841 	mov	dptr,#0x4002
      002709 74 05            [12] 9842 	mov	a,#0x05
      00270B F0               [24] 9843 	movx	@dptr,a
                           001CDB  9844 	C$easyax5043.c$1450$3$613 ==.
                                   9845 ;	..\COMMON\easyax5043.c:1450: radio_write8(AX5043_REG_FIFOSTAT, 3);
      00270C 90 40 28         [24] 9846 	mov	dptr,#0x4028
      00270F 74 03            [12] 9847 	mov	a,#0x03
      002711 F0               [24] 9848 	movx	@dptr,a
                           001CE1  9849 	C$easyax5043.c$1451$2$605 ==.
                                   9850 ;	..\COMMON\easyax5043.c:1451: axradio_trxstate = trxstate_tx_longpreamble; // ensure that trxstate != off, otherwise we would prematurely enable the receiver, see below
      002712 75 09 0A         [24] 9851 	mov	_axradio_trxstate,#0x0a
                           001CE4  9852 	C$easyax5043.c$1452$2$605 ==.
                                   9853 ;	..\COMMON\easyax5043.c:1452: while (radio_read8(AX5043_REG_POWSTAT) & 0x08);
      002715                       9854 00151$:
      002715 90 40 03         [24] 9855 	mov	dptr,#0x4003
      002718 E0               [24] 9856 	movx	a,@dptr
      002719 FF               [12] 9857 	mov	r7,a
      00271A 20 E3 F8         [24] 9858 	jb	acc.3,00151$
                           001CEC  9859 	C$easyax5043.c$1453$2$605 ==.
                                   9860 ;	..\COMMON\easyax5043.c:1453: wtimer_remove(&axradio_timer);
      00271D 90 02 8E         [24] 9861 	mov	dptr,#_axradio_timer
      002720 12 50 55         [24] 9862 	lcall	_wtimer_remove
                           001CF2  9863 	C$easyax5043.c$1454$2$605 ==.
                                   9864 ;	..\COMMON\easyax5043.c:1454: axradio_timer.time = axradio_framing_ack_delay;
      002723 90 57 28         [24] 9865 	mov	dptr,#_axradio_framing_ack_delay
      002726 E4               [12] 9866 	clr	a
      002727 93               [24] 9867 	movc	a,@a+dptr
      002728 FC               [12] 9868 	mov	r4,a
      002729 74 01            [12] 9869 	mov	a,#0x01
      00272B 93               [24] 9870 	movc	a,@a+dptr
      00272C FD               [12] 9871 	mov	r5,a
      00272D 74 02            [12] 9872 	mov	a,#0x02
      00272F 93               [24] 9873 	movc	a,@a+dptr
      002730 FE               [12] 9874 	mov	r6,a
      002731 74 03            [12] 9875 	mov	a,#0x03
      002733 93               [24] 9876 	movc	a,@a+dptr
      002734 FF               [12] 9877 	mov	r7,a
      002735 90 02 92         [24] 9878 	mov	dptr,#(_axradio_timer + 0x0004)
      002738 EC               [12] 9879 	mov	a,r4
      002739 F0               [24] 9880 	movx	@dptr,a
      00273A ED               [12] 9881 	mov	a,r5
      00273B A3               [24] 9882 	inc	dptr
      00273C F0               [24] 9883 	movx	@dptr,a
      00273D EE               [12] 9884 	mov	a,r6
      00273E A3               [24] 9885 	inc	dptr
      00273F F0               [24] 9886 	movx	@dptr,a
      002740 EF               [12] 9887 	mov	a,r7
      002741 A3               [24] 9888 	inc	dptr
      002742 F0               [24] 9889 	movx	@dptr,a
                           001D12  9890 	C$easyax5043.c$1455$2$605 ==.
                                   9891 ;	..\COMMON\easyax5043.c:1455: wtimer1_addrelative(&axradio_timer);
      002743 90 02 8E         [24] 9892 	mov	dptr,#_axradio_timer
      002746 12 47 51         [24] 9893 	lcall	_wtimer1_addrelative
      002749                       9894 00155$:
                           001D18  9895 	C$easyax5043.c$1457$1$599 ==.
                                   9896 ;	..\COMMON\easyax5043.c:1457: if (axradio_mode == AXRADIO_MODE_SYNC_SLAVE ||
      002749 74 32            [12] 9897 	mov	a,#0x32
      00274B B5 08 02         [24] 9898 	cjne	a,_axradio_mode,00324$
      00274E 80 0A            [24] 9899 	sjmp	00168$
      002750                       9900 00324$:
                           001D1F  9901 	C$easyax5043.c$1458$1$599 ==.
                                   9902 ;	..\COMMON\easyax5043.c:1458: axradio_mode == AXRADIO_MODE_SYNC_ACK_SLAVE) {
      002750 74 33            [12] 9903 	mov	a,#0x33
      002752 B5 08 02         [24] 9904 	cjne	a,_axradio_mode,00325$
      002755 80 03            [24] 9905 	sjmp	00326$
      002757                       9906 00325$:
      002757 02 28 2D         [24] 9907 	ljmp	00169$
      00275A                       9908 00326$:
      00275A                       9909 00168$:
                           001D29  9910 	C$easyax5043.c$1459$2$614 ==.
                                   9911 ;	..\COMMON\easyax5043.c:1459: if (axradio_mode != AXRADIO_MODE_SYNC_ACK_SLAVE)
      00275A 74 33            [12] 9912 	mov	a,#0x33
      00275C B5 08 02         [24] 9913 	cjne	a,_axradio_mode,00327$
      00275F 80 03            [24] 9914 	sjmp	00159$
      002761                       9915 00327$:
                           001D30  9916 	C$easyax5043.c$1460$2$614 ==.
                                   9917 ;	..\COMMON\easyax5043.c:1460: ax5043_off();
      002761 12 17 47         [24] 9918 	lcall	_ax5043_off
      002764                       9919 00159$:
                           001D33  9920 	C$easyax5043.c$1461$2$614 ==.
                                   9921 ;	..\COMMON\easyax5043.c:1461: switch (axradio_syncstate) {
      002764 90 00 04         [24] 9922 	mov	dptr,#_axradio_syncstate
      002767 E0               [24] 9923 	movx	a,@dptr
      002768 FF               [12] 9924 	mov	r7,a
      002769 BF 08 02         [24] 9925 	cjne	r7,#0x08,00328$
      00276C 80 45            [24] 9926 	sjmp	00163$
      00276E                       9927 00328$:
      00276E BF 0A 02         [24] 9928 	cjne	r7,#0x0a,00329$
      002771 80 40            [24] 9929 	sjmp	00163$
      002773                       9930 00329$:
      002773 BF 0B 02         [24] 9931 	cjne	r7,#0x0b,00330$
      002776 80 3B            [24] 9932 	sjmp	00163$
      002778                       9933 00330$:
                           001D47  9934 	C$easyax5043.c$1465$3$615 ==.
                                   9935 ;	..\COMMON\easyax5043.c:1465: axradio_sync_time = axradio_conv_time_totimer0(axradio_cb_receive.st.time.t);
      002778 90 02 3B         [24] 9936 	mov	dptr,#(_axradio_cb_receive + 0x0006)
      00277B E0               [24] 9937 	movx	a,@dptr
      00277C FC               [12] 9938 	mov	r4,a
      00277D A3               [24] 9939 	inc	dptr
      00277E E0               [24] 9940 	movx	a,@dptr
      00277F FD               [12] 9941 	mov	r5,a
      002780 A3               [24] 9942 	inc	dptr
      002781 E0               [24] 9943 	movx	a,@dptr
      002782 FE               [12] 9944 	mov	r6,a
      002783 A3               [24] 9945 	inc	dptr
      002784 E0               [24] 9946 	movx	a,@dptr
      002785 8C 82            [24] 9947 	mov	dpl,r4
      002787 8D 83            [24] 9948 	mov	dph,r5
      002789 8E F0            [24] 9949 	mov	b,r6
      00278B 12 0A 73         [24] 9950 	lcall	_axradio_conv_time_totimer0
      00278E AC 82            [24] 9951 	mov	r4,dpl
      002790 AD 83            [24] 9952 	mov	r5,dph
      002792 AE F0            [24] 9953 	mov	r6,b
      002794 FF               [12] 9954 	mov	r7,a
      002795 90 00 10         [24] 9955 	mov	dptr,#_axradio_sync_time
      002798 EC               [12] 9956 	mov	a,r4
      002799 F0               [24] 9957 	movx	@dptr,a
      00279A ED               [12] 9958 	mov	a,r5
      00279B A3               [24] 9959 	inc	dptr
      00279C F0               [24] 9960 	movx	@dptr,a
      00279D EE               [12] 9961 	mov	a,r6
      00279E A3               [24] 9962 	inc	dptr
      00279F F0               [24] 9963 	movx	@dptr,a
      0027A0 EF               [12] 9964 	mov	a,r7
      0027A1 A3               [24] 9965 	inc	dptr
      0027A2 F0               [24] 9966 	movx	@dptr,a
                           001D72  9967 	C$easyax5043.c$1466$3$615 ==.
                                   9968 ;	..\COMMON\easyax5043.c:1466: axradio_sync_periodcorr = -32768;
      0027A3 90 00 14         [24] 9969 	mov	dptr,#_axradio_sync_periodcorr
      0027A6 E4               [12] 9970 	clr	a
      0027A7 F0               [24] 9971 	movx	@dptr,a
      0027A8 74 80            [12] 9972 	mov	a,#0x80
      0027AA A3               [24] 9973 	inc	dptr
      0027AB F0               [24] 9974 	movx	@dptr,a
                           001D7B  9975 	C$easyax5043.c$1467$3$615 ==.
                                   9976 ;	..\COMMON\easyax5043.c:1467: axradio_sync_seqnr = 0;
      0027AC 90 00 0F         [24] 9977 	mov	dptr,#_axradio_ack_seqnr
      0027AF E4               [12] 9978 	clr	a
      0027B0 F0               [24] 9979 	movx	@dptr,a
                           001D80  9980 	C$easyax5043.c$1468$3$615 ==.
                                   9981 ;	..\COMMON\easyax5043.c:1468: break;
                           001D80  9982 	C$easyax5043.c$1472$3$615 ==.
                                   9983 ;	..\COMMON\easyax5043.c:1472: case syncstate_slave_rxpacket:
      0027B1 80 2D            [24] 9984 	sjmp	00164$
      0027B3                       9985 00163$:
                           001D82  9986 	C$easyax5043.c$1473$3$615 ==.
                                   9987 ;	..\COMMON\easyax5043.c:1473: axradio_sync_adjustperiodcorr();
      0027B3 12 19 94         [24] 9988 	lcall	_axradio_sync_adjustperiodcorr
                           001D85  9989 	C$easyax5043.c$1474$3$615 ==.
                                   9990 ;	..\COMMON\easyax5043.c:1474: axradio_cb_receive.st.rx.phy.period = axradio_sync_periodcorr >> SYNC_K1;
      0027B6 90 00 14         [24] 9991 	mov	dptr,#_axradio_sync_periodcorr
      0027B9 E0               [24] 9992 	movx	a,@dptr
      0027BA FE               [12] 9993 	mov	r6,a
      0027BB A3               [24] 9994 	inc	dptr
      0027BC E0               [24] 9995 	movx	a,@dptr
      0027BD FF               [12] 9996 	mov	r7,a
      0027BE C4               [12] 9997 	swap	a
      0027BF 03               [12] 9998 	rr	a
      0027C0 CE               [12] 9999 	xch	a,r6
      0027C1 C4               [12]10000 	swap	a
      0027C2 03               [12]10001 	rr	a
      0027C3 54 07            [12]10002 	anl	a,#0x07
      0027C5 6E               [12]10003 	xrl	a,r6
      0027C6 CE               [12]10004 	xch	a,r6
      0027C7 54 07            [12]10005 	anl	a,#0x07
      0027C9 CE               [12]10006 	xch	a,r6
      0027CA 6E               [12]10007 	xrl	a,r6
      0027CB CE               [12]10008 	xch	a,r6
      0027CC 30 E2 02         [24]10009 	jnb	acc.2,00331$
      0027CF 44 F8            [12]10010 	orl	a,#0xf8
      0027D1                      10011 00331$:
      0027D1 FF               [12]10012 	mov	r7,a
      0027D2 90 02 47         [24]10013 	mov	dptr,#(_axradio_cb_receive + 0x0012)
      0027D5 EE               [12]10014 	mov	a,r6
      0027D6 F0               [24]10015 	movx	@dptr,a
      0027D7 EF               [12]10016 	mov	a,r7
      0027D8 A3               [24]10017 	inc	dptr
      0027D9 F0               [24]10018 	movx	@dptr,a
                           001DA9 10019 	C$easyax5043.c$1475$3$615 ==.
                                  10020 ;	..\COMMON\easyax5043.c:1475: axradio_sync_seqnr = 1;
      0027DA 90 00 0F         [24]10021 	mov	dptr,#_axradio_ack_seqnr
      0027DD 74 01            [12]10022 	mov	a,#0x01
      0027DF F0               [24]10023 	movx	@dptr,a
                           001DAF 10024 	C$easyax5043.c$1477$2$614 ==.
                                  10025 ;	..\COMMON\easyax5043.c:1477: };
      0027E0                      10026 00164$:
                           001DAF 10027 	C$easyax5043.c$1478$2$614 ==.
                                  10028 ;	..\COMMON\easyax5043.c:1478: axradio_sync_slave_nextperiod();
      0027E0 12 1A BB         [24]10029 	lcall	_axradio_sync_slave_nextperiod
                           001DB2 10030 	C$easyax5043.c$1479$2$614 ==.
                                  10031 ;	..\COMMON\easyax5043.c:1479: if (axradio_mode != AXRADIO_MODE_SYNC_ACK_SLAVE) {
      0027E3 74 33            [12]10032 	mov	a,#0x33
      0027E5 B5 08 02         [24]10033 	cjne	a,_axradio_mode,00332$
      0027E8 80 3D            [24]10034 	sjmp	00166$
      0027EA                      10035 00332$:
                           001DB9 10036 	C$easyax5043.c$1480$3$616 ==.
                                  10037 ;	..\COMMON\easyax5043.c:1480: axradio_syncstate = syncstate_slave_rxidle;
      0027EA 90 00 04         [24]10038 	mov	dptr,#_axradio_syncstate
      0027ED 74 08            [12]10039 	mov	a,#0x08
      0027EF F0               [24]10040 	movx	@dptr,a
                           001DBF 10041 	C$easyax5043.c$1481$3$616 ==.
                                  10042 ;	..\COMMON\easyax5043.c:1481: wtimer_remove(&axradio_timer);
      0027F0 90 02 8E         [24]10043 	mov	dptr,#_axradio_timer
      0027F3 12 50 55         [24]10044 	lcall	_wtimer_remove
                           001DC5 10045 	C$easyax5043.c$1482$3$616 ==.
                                  10046 ;	..\COMMON\easyax5043.c:1482: axradio_sync_settimeradv(axradio_sync_slave_rxadvance[axradio_sync_seqnr]);
      0027F6 90 00 0F         [24]10047 	mov	dptr,#_axradio_ack_seqnr
      0027F9 E0               [24]10048 	movx	a,@dptr
      0027FA 75 F0 04         [24]10049 	mov	b,#0x04
      0027FD A4               [48]10050 	mul	ab
      0027FE 24 49            [12]10051 	add	a,#_axradio_sync_slave_rxadvance
      002800 F5 82            [12]10052 	mov	dpl,a
      002802 74 57            [12]10053 	mov	a,#(_axradio_sync_slave_rxadvance >> 8)
      002804 35 F0            [12]10054 	addc	a,b
      002806 F5 83            [12]10055 	mov	dph,a
      002808 E4               [12]10056 	clr	a
      002809 93               [24]10057 	movc	a,@a+dptr
      00280A FC               [12]10058 	mov	r4,a
      00280B A3               [24]10059 	inc	dptr
      00280C E4               [12]10060 	clr	a
      00280D 93               [24]10061 	movc	a,@a+dptr
      00280E FD               [12]10062 	mov	r5,a
      00280F A3               [24]10063 	inc	dptr
      002810 E4               [12]10064 	clr	a
      002811 93               [24]10065 	movc	a,@a+dptr
      002812 FE               [12]10066 	mov	r6,a
      002813 A3               [24]10067 	inc	dptr
      002814 E4               [12]10068 	clr	a
      002815 93               [24]10069 	movc	a,@a+dptr
      002816 8C 82            [24]10070 	mov	dpl,r4
      002818 8D 83            [24]10071 	mov	dph,r5
      00281A 8E F0            [24]10072 	mov	b,r6
      00281C 12 19 55         [24]10073 	lcall	_axradio_sync_settimeradv
                           001DEE 10074 	C$easyax5043.c$1483$3$616 ==.
                                  10075 ;	..\COMMON\easyax5043.c:1483: wtimer0_addabsolute(&axradio_timer);
      00281F 90 02 8E         [24]10076 	mov	dptr,#_axradio_timer
      002822 12 48 4E         [24]10077 	lcall	_wtimer0_addabsolute
      002825 80 06            [24]10078 	sjmp	00169$
      002827                      10079 00166$:
                           001DF6 10080 	C$easyax5043.c$1485$3$617 ==.
                                  10081 ;	..\COMMON\easyax5043.c:1485: axradio_syncstate = syncstate_slave_rxack;
      002827 90 00 04         [24]10082 	mov	dptr,#_axradio_syncstate
      00282A 74 0C            [12]10083 	mov	a,#0x0c
      00282C F0               [24]10084 	movx	@dptr,a
      00282D                      10085 00169$:
                           001DFC 10086 	C$easyax5043.c$1488$1$599 ==.
                                  10087 ;	..\COMMON\easyax5043.c:1488: axradio_statuschange((struct axradio_status __xdata *)&axradio_cb_receive.st);
      00282D 90 02 39         [24]10088 	mov	dptr,#(_axradio_cb_receive + 0x0004)
      002830 12 3D 17         [24]10089 	lcall	_axradio_statuschange
                           001E02 10090 	C$easyax5043.c$1489$1$599 ==.
                                  10091 ;	..\COMMON\easyax5043.c:1489: endcb:
      002833                      10092 00171$:
                           001E02 10093 	C$easyax5043.c$1490$1$599 ==.
                                  10094 ;	..\COMMON\easyax5043.c:1490: if (axradio_mode == AXRADIO_MODE_WOR_RECEIVE) {
      002833 74 21            [12]10095 	mov	a,#0x21
      002835 B5 08 05         [24]10096 	cjne	a,_axradio_mode,00189$
                           001E07 10097 	C$easyax5043.c$1491$2$618 ==.
                                  10098 ;	..\COMMON\easyax5043.c:1491: ax5043_receiver_on_wor();
      002838 12 16 5F         [24]10099 	lcall	_ax5043_receiver_on_wor
      00283B 80 42            [24]10100 	sjmp	00193$
      00283D                      10101 00189$:
                           001E0C 10102 	C$easyax5043.c$1492$1$599 ==.
                                  10103 ;	..\COMMON\easyax5043.c:1492: } else if (axradio_mode == AXRADIO_MODE_ACK_RECEIVE ||
      00283D 74 22            [12]10104 	mov	a,#0x22
      00283F B5 08 02         [24]10105 	cjne	a,_axradio_mode,00335$
      002842 80 05            [24]10106 	sjmp	00184$
      002844                      10107 00335$:
                           001E13 10108 	C$easyax5043.c$1493$1$599 ==.
                                  10109 ;	..\COMMON\easyax5043.c:1493: axradio_mode == AXRADIO_MODE_WOR_ACK_RECEIVE) {
      002844 74 23            [12]10110 	mov	a,#0x23
      002846 B5 08 24         [24]10111 	cjne	a,_axradio_mode,00185$
      002849                      10112 00184$:
                           001E18 10113 	C$libmftypes.h$351$6$627 ==.
                                  10114 ;	C:/Program Files (x86)/ON Semiconductor/AXSDB/libmf/include/libmftypes.h:351: criticalsection_t crit = IE & 0x80;
      002849 74 80            [12]10115 	mov	a,#0x80
      00284B 55 A8            [12]10116 	anl	a,_IE
      00284D FF               [12]10117 	mov	r7,a
                           001E1D 10118 	C$easyax5043.c$1496$6$627 ==.
                                  10119 ;	..\COMMON\easyax5043.c:1496: criticalsection_t crit = enter_critical();
      00284E C2 AF            [12]10120 	clr	_EA
                           001E1F 10121 	C$easyax5043.c$1497$3$620 ==.
                                  10122 ;	..\COMMON\easyax5043.c:1497: trxst = axradio_trxstate;
      002850 AE 09            [24]10123 	mov	r6,_axradio_trxstate
                           001E21 10124 	C$easyax5043.c$1498$3$620 ==.
                                  10125 ;	..\COMMON\easyax5043.c:1498: axradio_cb_receive.st.error = AXRADIO_ERR_PACKETDONE;
      002852 90 02 3A         [24]10126 	mov	dptr,#(_axradio_cb_receive + 0x0005)
      002855 74 F0            [12]10127 	mov	a,#0xf0
      002857 F0               [24]10128 	movx	@dptr,a
                           001E27 10129 	C$libmftypes.h$358$6$630 ==.
                                  10130 ;	C:/Program Files (x86)/ON Semiconductor/AXSDB/libmf/include/libmftypes.h:358: IE |= crit;
      002858 EF               [12]10131 	mov	a,r7
      002859 42 A8            [12]10132 	orl	_IE,a
                           001E2A 10133 	C$easyax5043.c$1501$2$619 ==.
                                  10134 ;	..\COMMON\easyax5043.c:1501: if (trxst == trxstate_off) {
      00285B EE               [12]10135 	mov	a,r6
      00285C 70 21            [24]10136 	jnz	00193$
                           001E2D 10137 	C$easyax5043.c$1502$3$621 ==.
                                  10138 ;	..\COMMON\easyax5043.c:1502: if (axradio_mode == AXRADIO_MODE_WOR_ACK_RECEIVE)
      00285E 74 23            [12]10139 	mov	a,#0x23
      002860 B5 08 05         [24]10140 	cjne	a,_axradio_mode,00173$
                           001E32 10141 	C$easyax5043.c$1503$3$621 ==.
                                  10142 ;	..\COMMON\easyax5043.c:1503: ax5043_receiver_on_wor();
      002863 12 16 5F         [24]10143 	lcall	_ax5043_receiver_on_wor
      002866 80 17            [24]10144 	sjmp	00193$
      002868                      10145 00173$:
                           001E37 10146 	C$easyax5043.c$1505$3$621 ==.
                                  10147 ;	..\COMMON\easyax5043.c:1505: ax5043_receiver_on_continuous();
      002868 12 15 F8         [24]10148 	lcall	_ax5043_receiver_on_continuous
      00286B 80 12            [24]10149 	sjmp	00193$
      00286D                      10150 00185$:
                           001E3C 10151 	C$easyax5043.c$1508$2$622 ==.
                                  10152 ;	..\COMMON\easyax5043.c:1508: switch (axradio_trxstate) {
      00286D AF 09            [24]10153 	mov	r7,_axradio_trxstate
      00286F BF 01 02         [24]10154 	cjne	r7,#0x01,00341$
      002872 80 03            [24]10155 	sjmp	00179$
      002874                      10156 00341$:
      002874 BF 02 08         [24]10157 	cjne	r7,#0x02,00193$
                           001E46 10158 	C$easyax5043.c$1511$3$623 ==.
                                  10159 ;	..\COMMON\easyax5043.c:1511: radio_write8(AX5043_REG_IRQMASK0, (radio_read8(AX5043_REG_IRQMASK0) | 0x01)); // re-enable FIFO not empty irq
      002877                      10160 00179$:
      002877 90 40 07         [24]10161 	mov	dptr,#0x4007
      00287A E0               [24]10162 	movx	a,@dptr
      00287B 44 01            [12]10163 	orl	a,#0x01
      00287D FF               [12]10164 	mov	r7,a
      00287E F0               [24]10165 	movx	@dptr,a
                           001E4E 10166 	C$easyax5043.c$1516$1$599 ==.
                                  10167 ;	..\COMMON\easyax5043.c:1516: }
      00287F                      10168 00193$:
                           001E4E 10169 	C$easyax5043.c$1518$1$599 ==.
                           001E4E 10170 	XFeasyax5043$axradio_receive_callback_fwd$0$0 ==.
      00287F 22               [24]10171 	ret
                                  10172 ;------------------------------------------------------------
                                  10173 ;Allocation info for local variables in function 'axradio_killallcb'
                                  10174 ;------------------------------------------------------------
                           001E4F 10175 	Feasyax5043$axradio_killallcb$0$0 ==.
                           001E4F 10176 	C$easyax5043.c$1520$1$599 ==.
                                  10177 ;	..\COMMON\easyax5043.c:1520: static void axradio_killallcb(void)
                                  10178 ;	-----------------------------------------
                                  10179 ;	 function axradio_killallcb
                                  10180 ;	-----------------------------------------
      002880                      10181 _axradio_killallcb:
                           001E4F 10182 	C$easyax5043.c$1522$1$632 ==.
                                  10183 ;	..\COMMON\easyax5043.c:1522: wtimer_remove_callback(&axradio_cb_receive.cb);
      002880 90 02 35         [24]10184 	mov	dptr,#_axradio_cb_receive
      002883 12 52 63         [24]10185 	lcall	_wtimer_remove_callback
                           001E55 10186 	C$easyax5043.c$1523$1$632 ==.
                                  10187 ;	..\COMMON\easyax5043.c:1523: wtimer_remove_callback(&axradio_cb_receivesfd.cb);
      002886 90 02 59         [24]10188 	mov	dptr,#_axradio_cb_receivesfd
      002889 12 52 63         [24]10189 	lcall	_wtimer_remove_callback
                           001E5B 10190 	C$easyax5043.c$1524$1$632 ==.
                                  10191 ;	..\COMMON\easyax5043.c:1524: wtimer_remove_callback(&axradio_cb_channelstate.cb);
      00288C 90 02 63         [24]10192 	mov	dptr,#_axradio_cb_channelstate
      00288F 12 52 63         [24]10193 	lcall	_wtimer_remove_callback
                           001E61 10194 	C$easyax5043.c$1525$1$632 ==.
                                  10195 ;	..\COMMON\easyax5043.c:1525: wtimer_remove_callback(&axradio_cb_transmitstart.cb);
      002892 90 02 70         [24]10196 	mov	dptr,#_axradio_cb_transmitstart
      002895 12 52 63         [24]10197 	lcall	_wtimer_remove_callback
                           001E67 10198 	C$easyax5043.c$1526$1$632 ==.
                                  10199 ;	..\COMMON\easyax5043.c:1526: wtimer_remove_callback(&axradio_cb_transmitend.cb);
      002898 90 02 7A         [24]10200 	mov	dptr,#_axradio_cb_transmitend
      00289B 12 52 63         [24]10201 	lcall	_wtimer_remove_callback
                           001E6D 10202 	C$easyax5043.c$1527$1$632 ==.
                                  10203 ;	..\COMMON\easyax5043.c:1527: wtimer_remove_callback(&axradio_cb_transmitdata.cb);
      00289E 90 02 84         [24]10204 	mov	dptr,#_axradio_cb_transmitdata
      0028A1 12 52 63         [24]10205 	lcall	_wtimer_remove_callback
                           001E73 10206 	C$easyax5043.c$1528$1$632 ==.
                                  10207 ;	..\COMMON\easyax5043.c:1528: wtimer_remove(&axradio_timer);
      0028A4 90 02 8E         [24]10208 	mov	dptr,#_axradio_timer
      0028A7 12 50 55         [24]10209 	lcall	_wtimer_remove
                           001E79 10210 	C$easyax5043.c$1529$1$632 ==.
                           001E79 10211 	XFeasyax5043$axradio_killallcb$0$0 ==.
      0028AA 22               [24]10212 	ret
                                  10213 ;------------------------------------------------------------
                                  10214 ;Allocation info for local variables in function 'axradio_tunevoltage'
                                  10215 ;------------------------------------------------------------
                                  10216 ;r                         Allocated to registers r6 r7 
                                  10217 ;cnt                       Allocated to registers r5 
                                  10218 ;x                         Allocated to registers r4 r3 
                                  10219 ;------------------------------------------------------------
                           001E7A 10220 	Feasyax5043$axradio_tunevoltage$0$0 ==.
                           001E7A 10221 	C$easyax5043.c$1555$1$632 ==.
                                  10222 ;	..\COMMON\easyax5043.c:1555: static int16_t axradio_tunevoltage(void)
                                  10223 ;	-----------------------------------------
                                  10224 ;	 function axradio_tunevoltage
                                  10225 ;	-----------------------------------------
      0028AB                      10226 _axradio_tunevoltage:
                           001E7A 10227 	C$easyax5043.c$1557$1$632 ==.
                                  10228 ;	..\COMMON\easyax5043.c:1557: int16_t __autodata r = 0;
      0028AB 7E 00            [12]10229 	mov	r6,#0x00
      0028AD 7F 00            [12]10230 	mov	r7,#0x00
                           001E7E 10231 	C$easyax5043.c$1560$1$634 ==.
                                  10232 ;	..\COMMON\easyax5043.c:1560: radio_write8(AX5043_REG_GPADCCTRL, 0x84);
      0028AF 7D 40            [12]10233 	mov	r5,#0x40
      0028B1                      10234 00101$:
      0028B1 90 43 00         [24]10235 	mov	dptr,#0x4300
      0028B4 74 84            [12]10236 	mov	a,#0x84
      0028B6 F0               [24]10237 	movx	@dptr,a
                           001E86 10238 	C$easyax5043.c$1561$2$635 ==.
                                  10239 ;	..\COMMON\easyax5043.c:1561: do {} while (radio_read8(AX5043_REG_GPADCCTRL) & 0x80);
      0028B7                      10240 00104$:
      0028B7 90 43 00         [24]10241 	mov	dptr,#0x4300
      0028BA E0               [24]10242 	movx	a,@dptr
      0028BB FC               [12]10243 	mov	r4,a
      0028BC 20 E7 F8         [24]10244 	jb	acc.7,00104$
                           001E8E 10245 	C$easyax5043.c$1562$1$634 ==.
                                  10246 ;	..\COMMON\easyax5043.c:1562: } while (--cnt);
      0028BF DD F0            [24]10247 	djnz	r5,00101$
                           001E90 10248 	C$easyax5043.c$1565$1$634 ==.
                                  10249 ;	..\COMMON\easyax5043.c:1565: radio_write8(AX5043_REG_GPADCCTRL, 0x84);
      0028C1 7D 20            [12]10250 	mov	r5,#0x20
      0028C3                      10251 00109$:
      0028C3 90 43 00         [24]10252 	mov	dptr,#0x4300
      0028C6 74 84            [12]10253 	mov	a,#0x84
      0028C8 F0               [24]10254 	movx	@dptr,a
                           001E98 10255 	C$easyax5043.c$1566$2$638 ==.
                                  10256 ;	..\COMMON\easyax5043.c:1566: do {} while (radio_read8(AX5043_REG_GPADCCTRL) & 0x80);
      0028C9                      10257 00112$:
      0028C9 90 43 00         [24]10258 	mov	dptr,#0x4300
      0028CC E0               [24]10259 	movx	a,@dptr
      0028CD FC               [12]10260 	mov	r4,a
      0028CE 20 E7 F8         [24]10261 	jb	acc.7,00112$
                           001EA0 10262 	C$easyax5043.c$1568$3$641 ==.
                                  10263 ;	..\COMMON\easyax5043.c:1568: int16_t x = radio_read8(AX5043_REG_GPADC13VALUE1) & 0x03;
      0028D1 90 43 08         [24]10264 	mov	dptr,#0x4308
      0028D4 E0               [24]10265 	movx	a,@dptr
      0028D5 FC               [12]10266 	mov	r4,a
      0028D6 53 04 03         [24]10267 	anl	ar4,#0x03
                           001EA8 10268 	C$easyax5043.c$1569$3$641 ==.
                                  10269 ;	..\COMMON\easyax5043.c:1569: x <<= 8;
      0028D9 8C 03            [24]10270 	mov	ar3,r4
      0028DB 7C 00            [12]10271 	mov	r4,#0x00
                           001EAC 10272 	C$easyax5043.c$1570$3$641 ==.
                                  10273 ;	..\COMMON\easyax5043.c:1570: x |= radio_read8(AX5043_REG_GPADC13VALUE0);
      0028DD 90 43 09         [24]10274 	mov	dptr,#0x4309
      0028E0 E0               [24]10275 	movx	a,@dptr
      0028E1 F9               [12]10276 	mov	r1,a
      0028E2 7A 00            [12]10277 	mov	r2,#0x00
      0028E4 E9               [12]10278 	mov	a,r1
      0028E5 42 04            [12]10279 	orl	ar4,a
      0028E7 EA               [12]10280 	mov	a,r2
      0028E8 42 03            [12]10281 	orl	ar3,a
                           001EB9 10282 	C$easyax5043.c$1571$3$641 ==.
                                  10283 ;	..\COMMON\easyax5043.c:1571: r += x;
      0028EA EC               [12]10284 	mov	a,r4
      0028EB 2E               [12]10285 	add	a,r6
      0028EC FE               [12]10286 	mov	r6,a
      0028ED EB               [12]10287 	mov	a,r3
      0028EE 3F               [12]10288 	addc	a,r7
      0028EF FF               [12]10289 	mov	r7,a
                           001EBF 10290 	C$easyax5043.c$1573$1$634 ==.
                                  10291 ;	..\COMMON\easyax5043.c:1573: } while (--cnt);
      0028F0 DD D1            [24]10292 	djnz	r5,00109$
                           001EC1 10293 	C$easyax5043.c$1574$1$634 ==.
                                  10294 ;	..\COMMON\easyax5043.c:1574: return r;
      0028F2 8E 82            [24]10295 	mov	dpl,r6
      0028F4 8F 83            [24]10296 	mov	dph,r7
                           001EC5 10297 	C$easyax5043.c$1575$1$634 ==.
                           001EC5 10298 	XFeasyax5043$axradio_tunevoltage$0$0 ==.
      0028F6 22               [24]10299 	ret
                                  10300 ;------------------------------------------------------------
                                  10301 ;Allocation info for local variables in function 'axradio_adjustvcoi'
                                  10302 ;------------------------------------------------------------
                                  10303 ;rng                       Allocated to registers r7 
                                  10304 ;offs                      Allocated to registers r3 
                                  10305 ;bestrng                   Allocated to registers r4 
                                  10306 ;bestval                   Allocated to registers r5 r6 
                                  10307 ;val                       Allocated to stack - _bp +1
                                  10308 ;------------------------------------------------------------
                           001EC6 10309 	Feasyax5043$axradio_adjustvcoi$0$0 ==.
                           001EC6 10310 	C$easyax5043.c$1579$1$634 ==.
                                  10311 ;	..\COMMON\easyax5043.c:1579: static __reentrantb uint8_t axradio_adjustvcoi(uint8_t rng) __reentrant
                                  10312 ;	-----------------------------------------
                                  10313 ;	 function axradio_adjustvcoi
                                  10314 ;	-----------------------------------------
      0028F7                      10315 _axradio_adjustvcoi:
      0028F7 C0 2B            [24]10316 	push	_bp
      0028F9 85 81 2B         [24]10317 	mov	_bp,sp
      0028FC 05 81            [12]10318 	inc	sp
      0028FE 05 81            [12]10319 	inc	sp
      002900 AF 82            [24]10320 	mov	r7,dpl
                           001ED1 10321 	C$easyax5043.c$1583$1$634 ==.
                                  10322 ;	..\COMMON\easyax5043.c:1583: uint16_t bestval = (uint16_t)~0;
      002902 7D FF            [12]10323 	mov	r5,#0xff
      002904 7E FF            [12]10324 	mov	r6,#0xff
                           001ED5 10325 	C$easyax5043.c$1584$1$643 ==.
                                  10326 ;	..\COMMON\easyax5043.c:1584: rng &= 0x7F;
      002906 53 07 7F         [24]10327 	anl	ar7,#0x7f
                           001ED8 10328 	C$easyax5043.c$1585$1$643 ==.
                                  10329 ;	..\COMMON\easyax5043.c:1585: bestrng = rng;
      002909 8F 04            [24]10330 	mov	ar4,r7
                           001EDA 10331 	C$easyax5043.c$1586$1$643 ==.
                                  10332 ;	..\COMMON\easyax5043.c:1586: for (offs = 0; offs != 16; ++offs) {
      00290B 7B 00            [12]10333 	mov	r3,#0x00
      00290D                      10334 00121$:
                           001EDC 10335 	C$easyax5043.c$1588$2$644 ==.
                                  10336 ;	..\COMMON\easyax5043.c:1588: if (!((uint8_t)(rng + offs) & 0xC0)) {
      00290D EB               [12]10337 	mov	a,r3
      00290E 2F               [12]10338 	add	a,r7
      00290F 54 C0            [12]10339 	anl	a,#0xc0
      002911 60 02            [24]10340 	jz	00150$
      002913 80 42            [24]10341 	sjmp	00107$
      002915                      10342 00150$:
                           001EE4 10343 	C$easyax5043.c$1589$1$643 ==.
                                  10344 ;	..\COMMON\easyax5043.c:1589: radio_write8(AX5043_REG_PLLVCOI, (0x80 | (rng + offs)));
      002915 C0 04            [24]10345 	push	ar4
      002917 EB               [12]10346 	mov	a,r3
      002918 2F               [12]10347 	add	a,r7
      002919 44 80            [12]10348 	orl	a,#0x80
      00291B 90 41 80         [24]10349 	mov	dptr,#0x4180
      00291E F0               [24]10350 	movx	@dptr,a
                           001EEE 10351 	C$easyax5043.c$1590$3$645 ==.
                                  10352 ;	..\COMMON\easyax5043.c:1590: val = axradio_tunevoltage();
      00291F C0 07            [24]10353 	push	ar7
      002921 C0 06            [24]10354 	push	ar6
      002923 C0 05            [24]10355 	push	ar5
      002925 C0 03            [24]10356 	push	ar3
      002927 12 28 AB         [24]10357 	lcall	_axradio_tunevoltage
      00292A AA 82            [24]10358 	mov	r2,dpl
      00292C AC 83            [24]10359 	mov	r4,dph
      00292E D0 03            [24]10360 	pop	ar3
      002930 D0 05            [24]10361 	pop	ar5
      002932 D0 06            [24]10362 	pop	ar6
      002934 D0 07            [24]10363 	pop	ar7
      002936 A8 2B            [24]10364 	mov	r0,_bp
      002938 08               [12]10365 	inc	r0
      002939 A6 02            [24]10366 	mov	@r0,ar2
      00293B 08               [12]10367 	inc	r0
      00293C A6 04            [24]10368 	mov	@r0,ar4
                           001F0D 10369 	C$easyax5043.c$1591$3$645 ==.
                                  10370 ;	..\COMMON\easyax5043.c:1591: if (val < bestval) {
      00293E A8 2B            [24]10371 	mov	r0,_bp
      002940 08               [12]10372 	inc	r0
      002941 C3               [12]10373 	clr	c
      002942 E6               [12]10374 	mov	a,@r0
      002943 9D               [12]10375 	subb	a,r5
      002944 08               [12]10376 	inc	r0
      002945 E6               [12]10377 	mov	a,@r0
      002946 9E               [12]10378 	subb	a,r6
      002947 D0 04            [24]10379 	pop	ar4
      002949 50 0C            [24]10380 	jnc	00107$
                           001F1A 10381 	C$easyax5043.c$1592$4$647 ==.
                                  10382 ;	..\COMMON\easyax5043.c:1592: bestval = val;
      00294B A8 2B            [24]10383 	mov	r0,_bp
      00294D 08               [12]10384 	inc	r0
      00294E 86 05            [24]10385 	mov	ar5,@r0
      002950 08               [12]10386 	inc	r0
      002951 86 06            [24]10387 	mov	ar6,@r0
                           001F22 10388 	C$easyax5043.c$1593$4$647 ==.
                                  10389 ;	..\COMMON\easyax5043.c:1593: bestrng = rng + offs;
      002953 EB               [12]10390 	mov	a,r3
      002954 2F               [12]10391 	add	a,r7
      002955 FA               [12]10392 	mov	r2,a
      002956 FC               [12]10393 	mov	r4,a
      002957                      10394 00107$:
                           001F26 10395 	C$easyax5043.c$1596$2$644 ==.
                                  10396 ;	..\COMMON\easyax5043.c:1596: if (!offs)
      002957 EB               [12]10397 	mov	a,r3
      002958 60 4D            [24]10398 	jz	00117$
                           001F29 10399 	C$easyax5043.c$1598$2$644 ==.
                                  10400 ;	..\COMMON\easyax5043.c:1598: if (!((uint8_t)(rng - offs) & 0xC0)) {
      00295A EF               [12]10401 	mov	a,r7
      00295B C3               [12]10402 	clr	c
      00295C 9B               [12]10403 	subb	a,r3
      00295D 54 C0            [12]10404 	anl	a,#0xc0
      00295F 60 02            [24]10405 	jz	00154$
      002961 80 44            [24]10406 	sjmp	00117$
      002963                      10407 00154$:
                           001F32 10408 	C$easyax5043.c$1599$1$643 ==.
                                  10409 ;	..\COMMON\easyax5043.c:1599: radio_write8(AX5043_REG_PLLVCOI, (0x80 | (rng - offs)));
      002963 C0 04            [24]10410 	push	ar4
      002965 EF               [12]10411 	mov	a,r7
      002966 C3               [12]10412 	clr	c
      002967 9B               [12]10413 	subb	a,r3
      002968 44 80            [12]10414 	orl	a,#0x80
      00296A 90 41 80         [24]10415 	mov	dptr,#0x4180
      00296D F0               [24]10416 	movx	@dptr,a
                           001F3D 10417 	C$easyax5043.c$1600$3$648 ==.
                                  10418 ;	..\COMMON\easyax5043.c:1600: val = axradio_tunevoltage();
      00296E C0 07            [24]10419 	push	ar7
      002970 C0 06            [24]10420 	push	ar6
      002972 C0 05            [24]10421 	push	ar5
      002974 C0 03            [24]10422 	push	ar3
      002976 12 28 AB         [24]10423 	lcall	_axradio_tunevoltage
      002979 AA 82            [24]10424 	mov	r2,dpl
      00297B AC 83            [24]10425 	mov	r4,dph
      00297D D0 03            [24]10426 	pop	ar3
      00297F D0 05            [24]10427 	pop	ar5
      002981 D0 06            [24]10428 	pop	ar6
      002983 D0 07            [24]10429 	pop	ar7
      002985 A8 2B            [24]10430 	mov	r0,_bp
      002987 08               [12]10431 	inc	r0
      002988 A6 02            [24]10432 	mov	@r0,ar2
      00298A 08               [12]10433 	inc	r0
      00298B A6 04            [24]10434 	mov	@r0,ar4
                           001F5C 10435 	C$easyax5043.c$1601$3$648 ==.
                                  10436 ;	..\COMMON\easyax5043.c:1601: if (val < bestval) {
      00298D A8 2B            [24]10437 	mov	r0,_bp
      00298F 08               [12]10438 	inc	r0
      002990 C3               [12]10439 	clr	c
      002991 E6               [12]10440 	mov	a,@r0
      002992 9D               [12]10441 	subb	a,r5
      002993 08               [12]10442 	inc	r0
      002994 E6               [12]10443 	mov	a,@r0
      002995 9E               [12]10444 	subb	a,r6
      002996 D0 04            [24]10445 	pop	ar4
      002998 50 0D            [24]10446 	jnc	00117$
                           001F69 10447 	C$easyax5043.c$1602$4$650 ==.
                                  10448 ;	..\COMMON\easyax5043.c:1602: bestval = val;
      00299A A8 2B            [24]10449 	mov	r0,_bp
      00299C 08               [12]10450 	inc	r0
      00299D 86 05            [24]10451 	mov	ar5,@r0
      00299F 08               [12]10452 	inc	r0
      0029A0 86 06            [24]10453 	mov	ar6,@r0
                           001F71 10454 	C$easyax5043.c$1603$4$650 ==.
                                  10455 ;	..\COMMON\easyax5043.c:1603: bestrng = rng - offs;
      0029A2 EF               [12]10456 	mov	a,r7
      0029A3 C3               [12]10457 	clr	c
      0029A4 9B               [12]10458 	subb	a,r3
      0029A5 FA               [12]10459 	mov	r2,a
      0029A6 FC               [12]10460 	mov	r4,a
      0029A7                      10461 00117$:
                           001F76 10462 	C$easyax5043.c$1586$1$643 ==.
                                  10463 ;	..\COMMON\easyax5043.c:1586: for (offs = 0; offs != 16; ++offs) {
      0029A7 0B               [12]10464 	inc	r3
      0029A8 BB 10 02         [24]10465 	cjne	r3,#0x10,00156$
      0029AB 80 03            [24]10466 	sjmp	00157$
      0029AD                      10467 00156$:
      0029AD 02 29 0D         [24]10468 	ljmp	00121$
      0029B0                      10469 00157$:
                           001F7F 10470 	C$easyax5043.c$1608$1$643 ==.
                                  10471 ;	..\COMMON\easyax5043.c:1608: if (bestval <= 0x0010)
      0029B0 C3               [12]10472 	clr	c
      0029B1 74 10            [12]10473 	mov	a,#0x10
      0029B3 9D               [12]10474 	subb	a,r5
      0029B4 E4               [12]10475 	clr	a
      0029B5 9E               [12]10476 	subb	a,r6
      0029B6 40 07            [24]10477 	jc	00120$
                           001F87 10478 	C$easyax5043.c$1609$1$643 ==.
                                  10479 ;	..\COMMON\easyax5043.c:1609: return rng | 0x80;
      0029B8 74 80            [12]10480 	mov	a,#0x80
      0029BA 4F               [12]10481 	orl	a,r7
      0029BB F5 82            [12]10482 	mov	dpl,a
      0029BD 80 05            [24]10483 	sjmp	00122$
      0029BF                      10484 00120$:
                           001F8E 10485 	C$easyax5043.c$1610$1$643 ==.
                                  10486 ;	..\COMMON\easyax5043.c:1610: return bestrng | 0x80;
      0029BF 74 80            [12]10487 	mov	a,#0x80
      0029C1 4C               [12]10488 	orl	a,r4
      0029C2 F5 82            [12]10489 	mov	dpl,a
      0029C4                      10490 00122$:
      0029C4 85 2B 81         [24]10491 	mov	sp,_bp
      0029C7 D0 2B            [24]10492 	pop	_bp
                           001F98 10493 	C$easyax5043.c$1611$1$643 ==.
                           001F98 10494 	XFeasyax5043$axradio_adjustvcoi$0$0 ==.
      0029C9 22               [24]10495 	ret
                                  10496 ;------------------------------------------------------------
                                  10497 ;Allocation info for local variables in function 'axradio_calvcoi'
                                  10498 ;------------------------------------------------------------
                                  10499 ;i                         Allocated to registers r2 
                                  10500 ;r                         Allocated to registers r7 
                                  10501 ;vmin                      Allocated to registers r5 r6 
                                  10502 ;vmax                      Allocated to registers r3 r4 
                                  10503 ;curtune                   Allocated to stack - _bp +1
                                  10504 ;------------------------------------------------------------
                           001F99 10505 	Feasyax5043$axradio_calvcoi$0$0 ==.
                           001F99 10506 	C$easyax5043.c$1613$1$643 ==.
                                  10507 ;	..\COMMON\easyax5043.c:1613: static __reentrantb uint8_t axradio_calvcoi(void) __reentrant
                                  10508 ;	-----------------------------------------
                                  10509 ;	 function axradio_calvcoi
                                  10510 ;	-----------------------------------------
      0029CA                      10511 _axradio_calvcoi:
      0029CA C0 2B            [24]10512 	push	_bp
      0029CC 85 81 2B         [24]10513 	mov	_bp,sp
      0029CF 05 81            [12]10514 	inc	sp
      0029D1 05 81            [12]10515 	inc	sp
                           001FA2 10516 	C$easyax5043.c$1616$1$643 ==.
                                  10517 ;	..\COMMON\easyax5043.c:1616: uint8_t r = 0;
      0029D3 7F 00            [12]10518 	mov	r7,#0x00
                           001FA4 10519 	C$easyax5043.c$1617$1$643 ==.
                                  10520 ;	..\COMMON\easyax5043.c:1617: uint16_t vmin = 0xffff;
      0029D5 7D FF            [12]10521 	mov	r5,#0xff
      0029D7 7E FF            [12]10522 	mov	r6,#0xff
                           001FA8 10523 	C$easyax5043.c$1618$1$643 ==.
                                  10524 ;	..\COMMON\easyax5043.c:1618: uint16_t vmax = 0x0000;
      0029D9 7B 00            [12]10525 	mov	r3,#0x00
      0029DB 7C 00            [12]10526 	mov	r4,#0x00
                           001FAC 10527 	C$easyax5043.c$1619$2$653 ==.
                                  10528 ;	..\COMMON\easyax5043.c:1619: for (i = 0x40; i != 0;) {
      0029DD 7A 40            [12]10529 	mov	r2,#0x40
      0029DF                      10530 00116$:
                           001FAE 10531 	C$easyax5043.c$1621$1$652 ==.
                                  10532 ;	..\COMMON\easyax5043.c:1621: --i;
      0029DF C0 07            [24]10533 	push	ar7
      0029E1 1A               [12]10534 	dec	r2
                           001FB1 10535 	C$easyax5043.c$1622$3$654 ==.
                                  10536 ;	..\COMMON\easyax5043.c:1622: radio_write8(AX5043_REG_PLLVCOI, (0x80 | i));
      0029E2 74 80            [12]10537 	mov	a,#0x80
      0029E4 4A               [12]10538 	orl	a,r2
      0029E5 FF               [12]10539 	mov	r7,a
      0029E6 90 41 80         [24]10540 	mov	dptr,#0x4180
      0029E9 F0               [24]10541 	movx	@dptr,a
                           001FB9 10542 	C$easyax5043.c$1623$2$653 ==.
                                  10543 ;	..\COMMON\easyax5043.c:1623: radio_read8(AX5043_REG_PLLRANGINGA); // clear PLL lock loss
      0029EA 90 40 33         [24]10544 	mov	dptr,#0x4033
      0029ED E0               [24]10545 	movx	a,@dptr
                           001FBD 10546 	C$easyax5043.c$1624$2$653 ==.
                                  10547 ;	..\COMMON\easyax5043.c:1624: curtune = axradio_tunevoltage();
      0029EE C0 07            [24]10548 	push	ar7
      0029F0 C0 06            [24]10549 	push	ar6
      0029F2 C0 05            [24]10550 	push	ar5
      0029F4 C0 04            [24]10551 	push	ar4
      0029F6 C0 03            [24]10552 	push	ar3
      0029F8 C0 02            [24]10553 	push	ar2
      0029FA 12 28 AB         [24]10554 	lcall	_axradio_tunevoltage
      0029FD A8 2B            [24]10555 	mov	r0,_bp
      0029FF 08               [12]10556 	inc	r0
      002A00 A6 82            [24]10557 	mov	@r0,dpl
      002A02 08               [12]10558 	inc	r0
      002A03 A6 83            [24]10559 	mov	@r0,dph
      002A05 D0 02            [24]10560 	pop	ar2
      002A07 D0 03            [24]10561 	pop	ar3
      002A09 D0 04            [24]10562 	pop	ar4
      002A0B D0 05            [24]10563 	pop	ar5
      002A0D D0 06            [24]10564 	pop	ar6
      002A0F D0 07            [24]10565 	pop	ar7
      002A11 A8 2B            [24]10566 	mov	r0,_bp
      002A13 08               [12]10567 	inc	r0
                           001FE3 10568 	C$easyax5043.c$1625$2$653 ==.
                                  10569 ;	..\COMMON\easyax5043.c:1625: radio_read8(AX5043_REG_PLLRANGINGA); // clear PLL lock loss
      002A14 90 40 33         [24]10570 	mov	dptr,#0x4033
      002A17 E0               [24]10571 	movx	a,@dptr
                           001FE7 10572 	C$easyax5043.c$1626$2$653 ==.
                                  10573 ;	..\COMMON\easyax5043.c:1626: ((uint16_t __xdata *)axradio_rxbuffer)[i] = curtune;
      002A18 EA               [12]10574 	mov	a,r2
      002A19 75 F0 02         [24]10575 	mov	b,#0x02
      002A1C A4               [48]10576 	mul	ab
      002A1D 24 31            [12]10577 	add	a,#_axradio_rxbuffer
      002A1F F5 82            [12]10578 	mov	dpl,a
      002A21 74 01            [12]10579 	mov	a,#(_axradio_rxbuffer >> 8)
      002A23 35 F0            [12]10580 	addc	a,b
      002A25 F5 83            [12]10581 	mov	dph,a
      002A27 A8 2B            [24]10582 	mov	r0,_bp
      002A29 08               [12]10583 	inc	r0
      002A2A E6               [12]10584 	mov	a,@r0
      002A2B F0               [24]10585 	movx	@dptr,a
      002A2C 08               [12]10586 	inc	r0
      002A2D E6               [12]10587 	mov	a,@r0
      002A2E A3               [24]10588 	inc	dptr
      002A2F F0               [24]10589 	movx	@dptr,a
                           001FFF 10590 	C$easyax5043.c$1627$2$653 ==.
                                  10591 ;	..\COMMON\easyax5043.c:1627: if (curtune > vmax)
      002A30 A8 2B            [24]10592 	mov	r0,_bp
      002A32 08               [12]10593 	inc	r0
      002A33 C3               [12]10594 	clr	c
      002A34 EB               [12]10595 	mov	a,r3
      002A35 96               [12]10596 	subb	a,@r0
      002A36 EC               [12]10597 	mov	a,r4
      002A37 08               [12]10598 	inc	r0
      002A38 96               [12]10599 	subb	a,@r0
      002A39 D0 07            [24]10600 	pop	ar7
      002A3B 50 08            [24]10601 	jnc	00105$
                           00200C 10602 	C$easyax5043.c$1628$2$653 ==.
                                  10603 ;	..\COMMON\easyax5043.c:1628: vmax = curtune;
      002A3D A8 2B            [24]10604 	mov	r0,_bp
      002A3F 08               [12]10605 	inc	r0
      002A40 86 03            [24]10606 	mov	ar3,@r0
      002A42 08               [12]10607 	inc	r0
      002A43 86 04            [24]10608 	mov	ar4,@r0
      002A45                      10609 00105$:
                           002014 10610 	C$easyax5043.c$1629$2$653 ==.
                                  10611 ;	..\COMMON\easyax5043.c:1629: if (curtune < vmin) {
      002A45 A8 2B            [24]10612 	mov	r0,_bp
      002A47 08               [12]10613 	inc	r0
      002A48 C3               [12]10614 	clr	c
      002A49 E6               [12]10615 	mov	a,@r0
      002A4A 9D               [12]10616 	subb	a,r5
      002A4B 08               [12]10617 	inc	r0
      002A4C E6               [12]10618 	mov	a,@r0
      002A4D 9E               [12]10619 	subb	a,r6
      002A4E 50 1E            [24]10620 	jnc	00117$
                           00201F 10621 	C$easyax5043.c$1630$1$652 ==.
                                  10622 ;	..\COMMON\easyax5043.c:1630: vmin = curtune;
      002A50 C0 07            [24]10623 	push	ar7
      002A52 A8 2B            [24]10624 	mov	r0,_bp
      002A54 08               [12]10625 	inc	r0
      002A55 86 05            [24]10626 	mov	ar5,@r0
      002A57 08               [12]10627 	inc	r0
      002A58 86 06            [24]10628 	mov	ar6,@r0
                           002029 10629 	C$easyax5043.c$1632$3$655 ==.
                                  10630 ;	..\COMMON\easyax5043.c:1632: if (!(0xC0 & (uint8_t)~(radio_read8(AX5043_REG_PLLRANGINGA))))
      002A5A 90 40 33         [24]10631 	mov	dptr,#0x4033
      002A5D E0               [24]10632 	movx	a,@dptr
      002A5E F4               [12]10633 	cpl	a
      002A5F FF               [12]10634 	mov	r7,a
      002A60 54 C0            [12]10635 	anl	a,#0xc0
      002A62 60 04            [24]10636 	jz	00150$
      002A64 D0 07            [24]10637 	pop	ar7
      002A66 80 06            [24]10638 	sjmp	00117$
      002A68                      10639 00150$:
      002A68 D0 07            [24]10640 	pop	ar7
                           002039 10641 	C$easyax5043.c$1633$3$655 ==.
                                  10642 ;	..\COMMON\easyax5043.c:1633: r = i | 0x80;
      002A6A 74 80            [12]10643 	mov	a,#0x80
      002A6C 4A               [12]10644 	orl	a,r2
      002A6D FF               [12]10645 	mov	r7,a
      002A6E                      10646 00117$:
                           00203D 10647 	C$easyax5043.c$1619$1$652 ==.
                                  10648 ;	..\COMMON\easyax5043.c:1619: for (i = 0x40; i != 0;) {
      002A6E EA               [12]10649 	mov	a,r2
      002A6F 60 03            [24]10650 	jz	00151$
      002A71 02 29 DF         [24]10651 	ljmp	00116$
      002A74                      10652 00151$:
                           002043 10653 	C$easyax5043.c$1636$1$652 ==.
                                  10654 ;	..\COMMON\easyax5043.c:1636: if (!(r & 0x80) || vmax >= 0xFF00 || vmin < 0x0100 || vmax - vmin < 0x4000)
      002A74 EF               [12]10655 	mov	a,r7
      002A75 30 E7 16         [24]10656 	jnb	acc.7,00111$
      002A78 74 01            [12]10657 	mov	a,#0x100 - 0xff
      002A7A 2C               [12]10658 	add	a,r4
      002A7B 40 11            [24]10659 	jc	00111$
      002A7D 74 FF            [12]10660 	mov	a,#0x100 - 0x01
      002A7F 2E               [12]10661 	add	a,r6
      002A80 50 0C            [24]10662 	jnc	00111$
      002A82 EB               [12]10663 	mov	a,r3
      002A83 C3               [12]10664 	clr	c
      002A84 9D               [12]10665 	subb	a,r5
      002A85 FD               [12]10666 	mov	r5,a
      002A86 EC               [12]10667 	mov	a,r4
      002A87 9E               [12]10668 	subb	a,r6
      002A88 FE               [12]10669 	mov	r6,a
      002A89 C3               [12]10670 	clr	c
      002A8A 94 40            [12]10671 	subb	a,#0x40
      002A8C 50 05            [24]10672 	jnc	00112$
      002A8E                      10673 00111$:
                           00205D 10674 	C$easyax5043.c$1637$1$652 ==.
                                  10675 ;	..\COMMON\easyax5043.c:1637: return 0;
      002A8E 75 82 00         [24]10676 	mov	dpl,#0x00
      002A91 80 02            [24]10677 	sjmp	00118$
      002A93                      10678 00112$:
                           002062 10679 	C$easyax5043.c$1638$1$652 ==.
                                  10680 ;	..\COMMON\easyax5043.c:1638: return r;
      002A93 8F 82            [24]10681 	mov	dpl,r7
      002A95                      10682 00118$:
      002A95 85 2B 81         [24]10683 	mov	sp,_bp
      002A98 D0 2B            [24]10684 	pop	_bp
                           002069 10685 	C$easyax5043.c$1639$1$652 ==.
                           002069 10686 	XFeasyax5043$axradio_calvcoi$0$0 ==.
      002A9A 22               [24]10687 	ret
                                  10688 ;------------------------------------------------------------
                                  10689 ;Allocation info for local variables in function 'axradio_init'
                                  10690 ;------------------------------------------------------------
                                  10691 ;i                         Allocated with name '_axradio_init_i_1_657'
                                  10692 ;crit                      Allocated to registers r6 
                                  10693 ;__00020027                Allocated to registers 
                                  10694 ;f                         Allocated to registers r3 r4 r5 r6 
                                  10695 ;crit                      Allocated to registers r6 
                                  10696 ;r                         Allocated to registers r4 
                                  10697 ;__00040030                Allocated to registers 
                                  10698 ;crit                      Allocated to registers 
                                  10699 ;__00030032                Allocated to registers 
                                  10700 ;crit                      Allocated to registers 
                                  10701 ;x                         Allocated to registers r7 
                                  10702 ;vcoisave                  Allocated with name '_axradio_init_vcoisave_3_687'
                                  10703 ;j                         Allocated with name '_axradio_init_j_3_687'
                                  10704 ;f                         Allocated with name '_axradio_init_f_5_690'
                                  10705 ;x                         Allocated to registers r7 
                                  10706 ;f                         Allocated to registers r4 r5 r6 r7 
                                  10707 ;sloc0                     Allocated with name '_axradio_init_sloc0_1_0'
                                  10708 ;------------------------------------------------------------
                           00206A 10709 	G$axradio_init$0$0 ==.
                           00206A 10710 	C$easyax5043.c$1645$1$652 ==.
                                  10711 ;	..\COMMON\easyax5043.c:1645: uint8_t axradio_init(void)
                                  10712 ;	-----------------------------------------
                                  10713 ;	 function axradio_init
                                  10714 ;	-----------------------------------------
      002A9B                      10715 _axradio_init:
                           00206A 10716 	C$easyax5043.c$1649$1$657 ==.
                                  10717 ;	..\COMMON\easyax5043.c:1649: axradio_mode = AXRADIO_MODE_UNINIT;
      002A9B 75 08 00         [24]10718 	mov	_axradio_mode,#0x00
                           00206D 10719 	C$easyax5043.c$1650$1$657 ==.
                                  10720 ;	..\COMMON\easyax5043.c:1650: axradio_killallcb();
      002A9E 12 28 80         [24]10721 	lcall	_axradio_killallcb
                           002070 10722 	C$easyax5043.c$1651$1$657 ==.
                                  10723 ;	..\COMMON\easyax5043.c:1651: axradio_cb_receive.cb.handler = axradio_receive_callback_fwd;
      002AA1 90 02 37         [24]10724 	mov	dptr,#(_axradio_cb_receive + 0x0002)
      002AA4 74 94            [12]10725 	mov	a,#_axradio_receive_callback_fwd
      002AA6 F0               [24]10726 	movx	@dptr,a
      002AA7 74 23            [12]10727 	mov	a,#(_axradio_receive_callback_fwd >> 8)
      002AA9 A3               [24]10728 	inc	dptr
      002AAA F0               [24]10729 	movx	@dptr,a
                           00207A 10730 	C$easyax5043.c$1652$1$657 ==.
                                  10731 ;	..\COMMON\easyax5043.c:1652: axradio_cb_receive.st.status = AXRADIO_STAT_RECEIVE;
      002AAB 90 02 39         [24]10732 	mov	dptr,#(_axradio_cb_receive + 0x0004)
      002AAE E4               [12]10733 	clr	a
      002AAF F0               [24]10734 	movx	@dptr,a
                           00207F 10735 	C$easyax5043.c$1653$1$657 ==.
                                  10736 ;	..\COMMON\easyax5043.c:1653: memset_xdata(axradio_cb_receive.st.rx.mac.remoteaddr, 0, sizeof(axradio_cb_receive.st.rx.mac.remoteaddr));
                                  10737 ;	1-genFromRTrack replaced	mov	_memset_PARM_2,#0x00
      002AB0 F5 34            [12]10738 	mov	_memset_PARM_2,a
      002AB2 75 35 05         [24]10739 	mov	_memset_PARM_3,#0x05
                                  10740 ;	1-genFromRTrack replaced	mov	(_memset_PARM_3 + 1),#0x00
      002AB5 F5 36            [12]10741 	mov	(_memset_PARM_3 + 1),a
      002AB7 90 02 49         [24]10742 	mov	dptr,#(_axradio_cb_receive + 0x0014)
      002ABA 75 F0 00         [24]10743 	mov	b,#0x00
      002ABD 12 46 7C         [24]10744 	lcall	_memset
                           00208F 10745 	C$easyax5043.c$1654$1$657 ==.
                                  10746 ;	..\COMMON\easyax5043.c:1654: memset_xdata(axradio_cb_receive.st.rx.mac.localaddr, 0, sizeof(axradio_cb_receive.st.rx.mac.localaddr));
      002AC0 75 34 00         [24]10747 	mov	_memset_PARM_2,#0x00
      002AC3 75 35 05         [24]10748 	mov	_memset_PARM_3,#0x05
      002AC6 75 36 00         [24]10749 	mov	(_memset_PARM_3 + 1),#0x00
      002AC9 90 02 4E         [24]10750 	mov	dptr,#(_axradio_cb_receive + 0x0019)
      002ACC 75 F0 00         [24]10751 	mov	b,#0x00
      002ACF 12 46 7C         [24]10752 	lcall	_memset
                           0020A1 10753 	C$easyax5043.c$1655$1$657 ==.
                                  10754 ;	..\COMMON\easyax5043.c:1655: axradio_cb_receivesfd.cb.handler = axradio_callback_fwd;
      002AD2 90 02 5B         [24]10755 	mov	dptr,#(_axradio_cb_receivesfd + 0x0002)
      002AD5 74 81            [12]10756 	mov	a,#_axradio_callback_fwd
      002AD7 F0               [24]10757 	movx	@dptr,a
      002AD8 74 23            [12]10758 	mov	a,#(_axradio_callback_fwd >> 8)
      002ADA A3               [24]10759 	inc	dptr
      002ADB F0               [24]10760 	movx	@dptr,a
                           0020AB 10761 	C$easyax5043.c$1656$1$657 ==.
                                  10762 ;	..\COMMON\easyax5043.c:1656: axradio_cb_receivesfd.st.status = AXRADIO_STAT_RECEIVESFD;
      002ADC 90 02 5D         [24]10763 	mov	dptr,#(_axradio_cb_receivesfd + 0x0004)
      002ADF 74 01            [12]10764 	mov	a,#0x01
      002AE1 F0               [24]10765 	movx	@dptr,a
                           0020B1 10766 	C$easyax5043.c$1657$1$657 ==.
                                  10767 ;	..\COMMON\easyax5043.c:1657: axradio_cb_channelstate.cb.handler = axradio_callback_fwd;
      002AE2 90 02 65         [24]10768 	mov	dptr,#(_axradio_cb_channelstate + 0x0002)
      002AE5 74 81            [12]10769 	mov	a,#_axradio_callback_fwd
      002AE7 F0               [24]10770 	movx	@dptr,a
      002AE8 74 23            [12]10771 	mov	a,#(_axradio_callback_fwd >> 8)
      002AEA A3               [24]10772 	inc	dptr
      002AEB F0               [24]10773 	movx	@dptr,a
                           0020BB 10774 	C$easyax5043.c$1658$1$657 ==.
                                  10775 ;	..\COMMON\easyax5043.c:1658: axradio_cb_channelstate.st.status = AXRADIO_STAT_CHANNELSTATE;
      002AEC 90 02 67         [24]10776 	mov	dptr,#(_axradio_cb_channelstate + 0x0004)
      002AEF 74 02            [12]10777 	mov	a,#0x02
      002AF1 F0               [24]10778 	movx	@dptr,a
                           0020C1 10779 	C$easyax5043.c$1659$1$657 ==.
                                  10780 ;	..\COMMON\easyax5043.c:1659: axradio_cb_transmitstart.cb.handler = axradio_callback_fwd;
      002AF2 90 02 72         [24]10781 	mov	dptr,#(_axradio_cb_transmitstart + 0x0002)
      002AF5 74 81            [12]10782 	mov	a,#_axradio_callback_fwd
      002AF7 F0               [24]10783 	movx	@dptr,a
      002AF8 74 23            [12]10784 	mov	a,#(_axradio_callback_fwd >> 8)
      002AFA A3               [24]10785 	inc	dptr
      002AFB F0               [24]10786 	movx	@dptr,a
                           0020CB 10787 	C$easyax5043.c$1660$1$657 ==.
                                  10788 ;	..\COMMON\easyax5043.c:1660: axradio_cb_transmitstart.st.status = AXRADIO_STAT_TRANSMITSTART;
      002AFC 90 02 74         [24]10789 	mov	dptr,#(_axradio_cb_transmitstart + 0x0004)
      002AFF 74 03            [12]10790 	mov	a,#0x03
      002B01 F0               [24]10791 	movx	@dptr,a
                           0020D1 10792 	C$easyax5043.c$1661$1$657 ==.
                                  10793 ;	..\COMMON\easyax5043.c:1661: axradio_cb_transmitend.cb.handler = axradio_callback_fwd;
      002B02 90 02 7C         [24]10794 	mov	dptr,#(_axradio_cb_transmitend + 0x0002)
      002B05 74 81            [12]10795 	mov	a,#_axradio_callback_fwd
      002B07 F0               [24]10796 	movx	@dptr,a
      002B08 74 23            [12]10797 	mov	a,#(_axradio_callback_fwd >> 8)
      002B0A A3               [24]10798 	inc	dptr
      002B0B F0               [24]10799 	movx	@dptr,a
                           0020DB 10800 	C$easyax5043.c$1662$1$657 ==.
                                  10801 ;	..\COMMON\easyax5043.c:1662: axradio_cb_transmitend.st.status = AXRADIO_STAT_TRANSMITEND;
      002B0C 90 02 7E         [24]10802 	mov	dptr,#(_axradio_cb_transmitend + 0x0004)
      002B0F 74 04            [12]10803 	mov	a,#0x04
      002B11 F0               [24]10804 	movx	@dptr,a
                           0020E1 10805 	C$easyax5043.c$1663$1$657 ==.
                                  10806 ;	..\COMMON\easyax5043.c:1663: axradio_cb_transmitdata.cb.handler = axradio_callback_fwd;
      002B12 90 02 86         [24]10807 	mov	dptr,#(_axradio_cb_transmitdata + 0x0002)
      002B15 74 81            [12]10808 	mov	a,#_axradio_callback_fwd
      002B17 F0               [24]10809 	movx	@dptr,a
      002B18 74 23            [12]10810 	mov	a,#(_axradio_callback_fwd >> 8)
      002B1A A3               [24]10811 	inc	dptr
      002B1B F0               [24]10812 	movx	@dptr,a
                           0020EB 10813 	C$easyax5043.c$1664$1$657 ==.
                                  10814 ;	..\COMMON\easyax5043.c:1664: axradio_cb_transmitdata.st.status = AXRADIO_STAT_TRANSMITDATA;
      002B1C 90 02 88         [24]10815 	mov	dptr,#(_axradio_cb_transmitdata + 0x0004)
      002B1F 74 05            [12]10816 	mov	a,#0x05
      002B21 F0               [24]10817 	movx	@dptr,a
                           0020F1 10818 	C$easyax5043.c$1665$1$657 ==.
                                  10819 ;	..\COMMON\easyax5043.c:1665: axradio_timer.handler = axradio_timer_callback;
      002B22 90 02 90         [24]10820 	mov	dptr,#(_axradio_timer + 0x0002)
      002B25 74 25            [12]10821 	mov	a,#_axradio_timer_callback
      002B27 F0               [24]10822 	movx	@dptr,a
      002B28 74 1B            [12]10823 	mov	a,#(_axradio_timer_callback >> 8)
      002B2A A3               [24]10824 	inc	dptr
      002B2B F0               [24]10825 	movx	@dptr,a
                           0020FB 10826 	C$easyax5043.c$1666$1$657 ==.
                                  10827 ;	..\COMMON\easyax5043.c:1666: axradio_curchannel = 0;
      002B2C 90 00 09         [24]10828 	mov	dptr,#_axradio_curchannel
      002B2F E4               [12]10829 	clr	a
      002B30 F0               [24]10830 	movx	@dptr,a
                           002100 10831 	C$easyax5043.c$1667$1$657 ==.
                                  10832 ;	..\COMMON\easyax5043.c:1667: axradio_curfreqoffset = 0;
      002B31 90 00 0A         [24]10833 	mov	dptr,#_axradio_curfreqoffset
      002B34 F0               [24]10834 	movx	@dptr,a
      002B35 A3               [24]10835 	inc	dptr
      002B36 F0               [24]10836 	movx	@dptr,a
      002B37 A3               [24]10837 	inc	dptr
      002B38 F0               [24]10838 	movx	@dptr,a
      002B39 A3               [24]10839 	inc	dptr
      002B3A F0               [24]10840 	movx	@dptr,a
                           00210A 10841 	C$easyax5043.c$1668$1$657 ==.
                                  10842 ;	..\COMMON\easyax5043.c:1668: disable_radio_interrupt_in_mcu_pin();
      002B3B 12 3D 7A         [24]10843 	lcall	_disable_radio_interrupt_in_mcu_pin
                           00210D 10844 	C$easyax5043.c$1669$1$657 ==.
                                  10845 ;	..\COMMON\easyax5043.c:1669: axradio_trxstate = trxstate_off;
      002B3E 75 09 00         [24]10846 	mov	_axradio_trxstate,#0x00
                           002110 10847 	C$easyax5043.c$1670$1$657 ==.
                                  10848 ;	..\COMMON\easyax5043.c:1670: if (ax5043_reset())
      002B41 12 42 31         [24]10849 	lcall	_ax5043_reset
      002B44 E5 82            [12]10850 	mov	a,dpl
      002B46 60 06            [24]10851 	jz	00102$
                           002117 10852 	C$easyax5043.c$1671$1$657 ==.
                                  10853 ;	..\COMMON\easyax5043.c:1671: return AXRADIO_ERR_NOCHIP;
      002B48 75 82 05         [24]10854 	mov	dpl,#0x05
      002B4B 02 2E 8C         [24]10855 	ljmp	00246$
      002B4E                      10856 00102$:
                           00211D 10857 	C$easyax5043.c$1672$1$657 ==.
                                  10858 ;	..\COMMON\easyax5043.c:1672: ax5043_init_registers();
      002B4E 12 18 D4         [24]10859 	lcall	_ax5043_init_registers
                           002120 10860 	C$easyax5043.c$1673$1$657 ==.
                                  10861 ;	..\COMMON\easyax5043.c:1673: ax5043_set_registers_tx();
      002B51 12 06 43         [24]10862 	lcall	_ax5043_set_registers_tx
                           002123 10863 	C$easyax5043.c$1674$2$658 ==.
                                  10864 ;	..\COMMON\easyax5043.c:1674: radio_write8(AX5043_REG_PLLLOOP, 0x09); // default 100kHz loop BW for ranging
      002B54 90 40 30         [24]10865 	mov	dptr,#0x4030
      002B57 74 09            [12]10866 	mov	a,#0x09
      002B59 F0               [24]10867 	movx	@dptr,a
                           002129 10868 	C$easyax5043.c$1675$2$659 ==.
                                  10869 ;	..\COMMON\easyax5043.c:1675: radio_write8(AX5043_REG_PLLCPI, 0x08);
      002B5A 90 40 31         [24]10870 	mov	dptr,#0x4031
      002B5D 14               [12]10871 	dec	a
      002B5E F0               [24]10872 	movx	@dptr,a
                           00212E 10873 	C$easyax5043.c$1676$1$657 ==.
                                  10874 ;	..\COMMON\easyax5043.c:1676: enable_radio_interrupt_in_mcu_pin();
      002B5F 12 3D 77         [24]10875 	lcall	_enable_radio_interrupt_in_mcu_pin
                           002131 10876 	C$easyax5043.c$1678$2$660 ==.
                                  10877 ;	..\COMMON\easyax5043.c:1678: radio_write8(AX5043_REG_PWRMODE, AX5043_PWRSTATE_XTAL_ON);
      002B62 90 40 02         [24]10878 	mov	dptr,#0x4002
      002B65 74 05            [12]10879 	mov	a,#0x05
      002B67 F0               [24]10880 	movx	@dptr,a
                           002137 10881 	C$easyax5043.c$1679$2$661 ==.
                                  10882 ;	..\COMMON\easyax5043.c:1679: radio_write8(AX5043_REG_MODULATION, 0x08);
      002B68 90 40 10         [24]10883 	mov	dptr,#0x4010
      002B6B 74 08            [12]10884 	mov	a,#0x08
      002B6D F0               [24]10885 	movx	@dptr,a
                           00213D 10886 	C$easyax5043.c$1680$2$662 ==.
                                  10887 ;	..\COMMON\easyax5043.c:1680: radio_write8(AX5043_REG_FSKDEV2, 0x00);
      002B6E 90 41 61         [24]10888 	mov	dptr,#0x4161
      002B71 E4               [12]10889 	clr	a
      002B72 F0               [24]10890 	movx	@dptr,a
                           002142 10891 	C$easyax5043.c$1681$2$663 ==.
                                  10892 ;	..\COMMON\easyax5043.c:1681: radio_write8(AX5043_REG_FSKDEV1, 0x00);
      002B73 90 41 62         [24]10893 	mov	dptr,#0x4162
      002B76 F0               [24]10894 	movx	@dptr,a
                           002146 10895 	C$easyax5043.c$1682$2$664 ==.
                                  10896 ;	..\COMMON\easyax5043.c:1682: radio_write8(AX5043_REG_FSKDEV0, 0x00);
      002B77 90 41 63         [24]10897 	mov	dptr,#0x4163
      002B7A F0               [24]10898 	movx	@dptr,a
                           00214A 10899 	C$easyax5043.c$1683$1$657 ==.
                                  10900 ;	..\COMMON\easyax5043.c:1683: axradio_wait_for_xtal();
      002B7B 12 17 67         [24]10901 	lcall	_axradio_wait_for_xtal
                           00214D 10902 	C$easyax5043.c$1684$2$665 ==.
                                  10903 ;	..\COMMON\easyax5043.c:1684: for (i = 0; i < axradio_phy_nrchannels; ++i) {
      002B7E 7F 00            [12]10904 	mov	r7,#0x00
      002B80                      10905 00239$:
      002B80 90 56 F4         [24]10906 	mov	dptr,#_axradio_phy_nrchannels
      002B83 E4               [12]10907 	clr	a
      002B84 93               [24]10908 	movc	a,@a+dptr
      002B85 FE               [12]10909 	mov	r6,a
      002B86 C3               [12]10910 	clr	c
      002B87 EF               [12]10911 	mov	a,r7
      002B88 9E               [12]10912 	subb	a,r6
      002B89 40 03            [24]10913 	jc	00311$
      002B8B 02 2C 88         [24]10914 	ljmp	00155$
      002B8E                      10915 00311$:
                           00215D 10916 	C$easyax5043.c$1685$2$665 ==.
                                  10917 ;	..\COMMON\easyax5043.c:1685: uint32_t __autodata f = axradio_phy_chanfreq[i];
      002B8E EF               [12]10918 	mov	a,r7
      002B8F 75 F0 04         [24]10919 	mov	b,#0x04
      002B92 A4               [48]10920 	mul	ab
      002B93 24 F5            [12]10921 	add	a,#_axradio_phy_chanfreq
      002B95 F5 82            [12]10922 	mov	dpl,a
      002B97 74 56            [12]10923 	mov	a,#(_axradio_phy_chanfreq >> 8)
      002B99 35 F0            [12]10924 	addc	a,b
      002B9B F5 83            [12]10925 	mov	dph,a
      002B9D E4               [12]10926 	clr	a
      002B9E 93               [24]10927 	movc	a,@a+dptr
      002B9F FB               [12]10928 	mov	r3,a
      002BA0 A3               [24]10929 	inc	dptr
      002BA1 E4               [12]10930 	clr	a
      002BA2 93               [24]10931 	movc	a,@a+dptr
      002BA3 FC               [12]10932 	mov	r4,a
      002BA4 A3               [24]10933 	inc	dptr
      002BA5 E4               [12]10934 	clr	a
      002BA6 93               [24]10935 	movc	a,@a+dptr
      002BA7 FD               [12]10936 	mov	r5,a
      002BA8 A3               [24]10937 	inc	dptr
      002BA9 E4               [12]10938 	clr	a
      002BAA 93               [24]10939 	movc	a,@a+dptr
      002BAB FE               [12]10940 	mov	r6,a
                           00217B 10941 	C$easyax5043.c$1686$3$666 ==.
                                  10942 ;	..\COMMON\easyax5043.c:1686: radio_write8(AX5043_REG_FREQA0, f);
      002BAC 8B 02            [24]10943 	mov	ar2,r3
      002BAE 90 40 37         [24]10944 	mov	dptr,#0x4037
      002BB1 EA               [12]10945 	mov	a,r2
      002BB2 F0               [24]10946 	movx	@dptr,a
                           002182 10947 	C$easyax5043.c$1687$3$667 ==.
                                  10948 ;	..\COMMON\easyax5043.c:1687: radio_write8(AX5043_REG_FREQA1, (f >> 8));
      002BB3 8C 02            [24]10949 	mov	ar2,r4
      002BB5 90 40 36         [24]10950 	mov	dptr,#0x4036
      002BB8 EA               [12]10951 	mov	a,r2
      002BB9 F0               [24]10952 	movx	@dptr,a
                           002189 10953 	C$easyax5043.c$1688$3$668 ==.
                                  10954 ;	..\COMMON\easyax5043.c:1688: radio_write8(AX5043_REG_FREQA2, (f >> 16));
      002BBA 8D 02            [24]10955 	mov	ar2,r5
      002BBC 90 40 35         [24]10956 	mov	dptr,#0x4035
      002BBF EA               [12]10957 	mov	a,r2
      002BC0 F0               [24]10958 	movx	@dptr,a
                           002190 10959 	C$easyax5043.c$1689$3$669 ==.
                                  10960 ;	..\COMMON\easyax5043.c:1689: radio_write8(AX5043_REG_FREQA3, (f >> 24));
      002BC1 8E 03            [24]10961 	mov	ar3,r6
      002BC3 90 40 34         [24]10962 	mov	dptr,#0x4034
      002BC6 EB               [12]10963 	mov	a,r3
      002BC7 F0               [24]10964 	movx	@dptr,a
                           002197 10965 	C$libmftypes.h$351$5$708 ==.
                                  10966 ;	C:/Program Files (x86)/ON Semiconductor/AXSDB/libmf/include/libmftypes.h:351: criticalsection_t crit = IE & 0x80;
      002BC8 74 80            [12]10967 	mov	a,#0x80
      002BCA 55 A8            [12]10968 	anl	a,_IE
      002BCC FE               [12]10969 	mov	r6,a
                           00219C 10970 	C$libmftypes.h$352$5$708 ==.
                                  10971 ;	C:/Program Files (x86)/ON Semiconductor/AXSDB/libmf/include/libmftypes.h:352: EA = 0;
      002BCD C2 AF            [12]10972 	clr	_EA
                           00219E 10973 	C$easyax5043.c$1690$4$707 ==.
                                  10974 ;	..\COMMON\easyax5043.c:1690: crit = enter_critical();
                           00219E 10975 	C$easyax5043.c$1691$2$665 ==.
                                  10976 ;	..\COMMON\easyax5043.c:1691: axradio_trxstate = trxstate_pll_ranging;
      002BCF 75 09 05         [24]10977 	mov	_axradio_trxstate,#0x05
                           0021A1 10978 	C$easyax5043.c$1692$3$670 ==.
                                  10979 ;	..\COMMON\easyax5043.c:1692: radio_write8(AX5043_REG_IRQMASK1, 0x10); // enable pll autoranging done interrupt
      002BD2 90 40 06         [24]10980 	mov	dptr,#0x4006
      002BD5 74 10            [12]10981 	mov	a,#0x10
      002BD7 F0               [24]10982 	movx	@dptr,a
                           0021A7 10983 	C$easyax5043.c$1695$3$671 ==.
                                  10984 ;	..\COMMON\easyax5043.c:1695: if (!(axradio_phy_chanpllrnginit[0] & 0xF0)) {
      002BD8 90 56 F9         [24]10985 	mov	dptr,#_axradio_phy_chanpllrnginit
      002BDB E4               [12]10986 	clr	a
      002BDC 93               [24]10987 	movc	a,@a+dptr
      002BDD FC               [12]10988 	mov	r4,a
      002BDE A3               [24]10989 	inc	dptr
      002BDF E4               [12]10990 	clr	a
      002BE0 93               [24]10991 	movc	a,@a+dptr
      002BE1 FD               [12]10992 	mov	r5,a
      002BE2 EC               [12]10993 	mov	a,r4
      002BE3 54 F0            [12]10994 	anl	a,#0xf0
      002BE5 70 1B            [24]10995 	jnz	00144$
                           0021B6 10996 	C$easyax5043.c$1697$4$672 ==.
                                  10997 ;	..\COMMON\easyax5043.c:1697: r = axradio_phy_chanpllrnginit[i] | 0x10;
      002BE7 EF               [12]10998 	mov	a,r7
      002BE8 75 F0 02         [24]10999 	mov	b,#0x02
      002BEB A4               [48]11000 	mul	ab
      002BEC 24 F9            [12]11001 	add	a,#_axradio_phy_chanpllrnginit
      002BEE F5 82            [12]11002 	mov	dpl,a
      002BF0 74 56            [12]11003 	mov	a,#(_axradio_phy_chanpllrnginit >> 8)
      002BF2 35 F0            [12]11004 	addc	a,b
      002BF4 F5 83            [12]11005 	mov	dph,a
      002BF6 E4               [12]11006 	clr	a
      002BF7 93               [24]11007 	movc	a,@a+dptr
      002BF8 FC               [12]11008 	mov	r4,a
      002BF9 A3               [24]11009 	inc	dptr
      002BFA E4               [12]11010 	clr	a
      002BFB 93               [24]11011 	movc	a,@a+dptr
      002BFC FD               [12]11012 	mov	r5,a
      002BFD 43 04 10         [24]11013 	orl	ar4,#0x10
      002C00 80 32            [24]11014 	sjmp	00146$
      002C02                      11015 00144$:
                           0021D1 11016 	C$easyax5043.c$1699$4$673 ==.
                                  11017 ;	..\COMMON\easyax5043.c:1699: r = 0x18;
      002C02 7C 18            [12]11018 	mov	r4,#0x18
                           0021D3 11019 	C$easyax5043.c$1700$4$673 ==.
                                  11020 ;	..\COMMON\easyax5043.c:1700: if (i) {
      002C04 EF               [12]11021 	mov	a,r7
      002C05 60 2D            [24]11022 	jz	00146$
                           0021D6 11023 	C$easyax5043.c$1701$5$674 ==.
                                  11024 ;	..\COMMON\easyax5043.c:1701: r = axradio_phy_chanpllrng[i - 1];
      002C07 8F 03            [24]11025 	mov	ar3,r7
      002C09 7D 00            [12]11026 	mov	r5,#0x00
      002C0B 1B               [12]11027 	dec	r3
      002C0C BB FF 01         [24]11028 	cjne	r3,#0xff,00315$
      002C0F 1D               [12]11029 	dec	r5
      002C10                      11030 00315$:
      002C10 ED               [12]11031 	mov	a,r5
      002C11 CB               [12]11032 	xch	a,r3
      002C12 25 E0            [12]11033 	add	a,acc
      002C14 CB               [12]11034 	xch	a,r3
      002C15 33               [12]11035 	rlc	a
      002C16 FD               [12]11036 	mov	r5,a
      002C17 EB               [12]11037 	mov	a,r3
      002C18 24 01            [12]11038 	add	a,#_axradio_phy_chanpllrng
      002C1A F5 82            [12]11039 	mov	dpl,a
      002C1C ED               [12]11040 	mov	a,r5
      002C1D 34 00            [12]11041 	addc	a,#(_axradio_phy_chanpllrng >> 8)
      002C1F F5 83            [12]11042 	mov	dph,a
      002C21 E0               [24]11043 	movx	a,@dptr
      002C22 FB               [12]11044 	mov	r3,a
      002C23 A3               [24]11045 	inc	dptr
      002C24 E0               [24]11046 	movx	a,@dptr
      002C25 FD               [12]11047 	mov	r5,a
      002C26 8B 04            [24]11048 	mov	ar4,r3
                           0021F7 11049 	C$easyax5043.c$1702$5$674 ==.
                                  11050 ;	..\COMMON\easyax5043.c:1702: if (r & 0x20)
      002C28 EC               [12]11051 	mov	a,r4
      002C29 30 E5 02         [24]11052 	jnb	acc.5,00140$
                           0021FB 11053 	C$easyax5043.c$1703$5$674 ==.
                                  11054 ;	..\COMMON\easyax5043.c:1703: r = 0x08;
      002C2C 7C 08            [12]11055 	mov	r4,#0x08
      002C2E                      11056 00140$:
                           0021FD 11057 	C$easyax5043.c$1704$5$674 ==.
                                  11058 ;	..\COMMON\easyax5043.c:1704: r &= 0x0F;
      002C2E 53 04 0F         [24]11059 	anl	ar4,#0x0f
                           002200 11060 	C$easyax5043.c$1705$5$674 ==.
                                  11061 ;	..\COMMON\easyax5043.c:1705: r |= 0x10;
      002C31 43 04 10         [24]11062 	orl	ar4,#0x10
                           002203 11063 	C$easyax5043.c$1708$3$671 ==.
                                  11064 ;	..\COMMON\easyax5043.c:1708: radio_write8(AX5043_REG_PLLRANGINGA, r); // init ranging process starting from "range"
      002C34                      11065 00146$:
      002C34 90 40 33         [24]11066 	mov	dptr,#0x4033
      002C37 EC               [12]11067 	mov	a,r4
      002C38 F0               [24]11068 	movx	@dptr,a
      002C39                      11069 00236$:
                           002208 11070 	C$libmftypes.h$363$6$711 ==.
                                  11071 ;	C:/Program Files (x86)/ON Semiconductor/AXSDB/libmf/include/libmftypes.h:363: EA = 0;
      002C39 C2 AF            [12]11072 	clr	_EA
                           00220A 11073 	C$easyax5043.c$1712$3$676 ==.
                                  11074 ;	..\COMMON\easyax5043.c:1712: if (axradio_trxstate == trxstate_pll_ranging_done)
      002C3B 74 06            [12]11075 	mov	a,#0x06
      002C3D B5 09 02         [24]11076 	cjne	a,_axradio_trxstate,00317$
      002C40 80 1A            [24]11077 	sjmp	00151$
      002C42                      11078 00317$:
                           002211 11079 	C$easyax5043.c$1714$3$676 ==.
                                  11080 ;	..\COMMON\easyax5043.c:1714: wtimer_idle(WTFLAG_CANSTANDBY);
      002C42 75 82 02         [24]11081 	mov	dpl,#0x02
      002C45 C0 07            [24]11082 	push	ar7
      002C47 C0 06            [24]11083 	push	ar6
      002C49 12 45 77         [24]11084 	lcall	_wtimer_idle
      002C4C D0 06            [24]11085 	pop	ar6
                           00221D 11086 	C$libmftypes.h$358$6$714 ==.
                                  11087 ;	C:/Program Files (x86)/ON Semiconductor/AXSDB/libmf/include/libmftypes.h:358: IE |= crit;
      002C4E EE               [12]11088 	mov	a,r6
      002C4F 42 A8            [12]11089 	orl	_IE,a
                           002220 11090 	C$easyax5043.c$1716$3$676 ==.
                                  11091 ;	..\COMMON\easyax5043.c:1716: wtimer_runcallbacks();
      002C51 C0 06            [24]11092 	push	ar6
      002C53 12 45 FB         [24]11093 	lcall	_wtimer_runcallbacks
      002C56 D0 06            [24]11094 	pop	ar6
      002C58 D0 07            [24]11095 	pop	ar7
      002C5A 80 DD            [24]11096 	sjmp	00236$
      002C5C                      11097 00151$:
                           00222B 11098 	C$easyax5043.c$1718$2$665 ==.
                                  11099 ;	..\COMMON\easyax5043.c:1718: axradio_trxstate = trxstate_off;
      002C5C 75 09 00         [24]11100 	mov	_axradio_trxstate,#0x00
                           00222E 11101 	C$easyax5043.c$1719$3$677 ==.
                                  11102 ;	..\COMMON\easyax5043.c:1719: radio_write8(AX5043_REG_IRQMASK1, 0x00);
      002C5F 90 40 06         [24]11103 	mov	dptr,#0x4006
      002C62 E4               [12]11104 	clr	a
      002C63 F0               [24]11105 	movx	@dptr,a
                           002233 11106 	C$easyax5043.c$1720$2$665 ==.
                                  11107 ;	..\COMMON\easyax5043.c:1720: axradio_phy_chanpllrng[i] = (uint8_t)radio_read8(AX5043_REG_PLLRANGINGA);
      002C64 EF               [12]11108 	mov	a,r7
      002C65 75 F0 02         [24]11109 	mov	b,#0x02
      002C68 A4               [48]11110 	mul	ab
      002C69 24 01            [12]11111 	add	a,#_axradio_phy_chanpllrng
      002C6B FC               [12]11112 	mov	r4,a
      002C6C 74 00            [12]11113 	mov	a,#(_axradio_phy_chanpllrng >> 8)
      002C6E 35 F0            [12]11114 	addc	a,b
      002C70 FD               [12]11115 	mov	r5,a
      002C71 90 40 33         [24]11116 	mov	dptr,#0x4033
      002C74 E0               [24]11117 	movx	a,@dptr
      002C75 FB               [12]11118 	mov	r3,a
      002C76 7A 00            [12]11119 	mov	r2,#0x00
      002C78 8C 82            [24]11120 	mov	dpl,r4
      002C7A 8D 83            [24]11121 	mov	dph,r5
      002C7C EB               [12]11122 	mov	a,r3
      002C7D F0               [24]11123 	movx	@dptr,a
      002C7E EA               [12]11124 	mov	a,r2
      002C7F A3               [24]11125 	inc	dptr
      002C80 F0               [24]11126 	movx	@dptr,a
                           002250 11127 	C$libmftypes.h$358$5$717 ==.
                                  11128 ;	C:/Program Files (x86)/ON Semiconductor/AXSDB/libmf/include/libmftypes.h:358: IE |= crit;
      002C81 EE               [12]11129 	mov	a,r6
      002C82 42 A8            [12]11130 	orl	_IE,a
                           002253 11131 	C$easyax5043.c$1684$1$657 ==.
                                  11132 ;	..\COMMON\easyax5043.c:1684: for (i = 0; i < axradio_phy_nrchannels; ++i) {
      002C84 0F               [12]11133 	inc	r7
      002C85 02 2B 80         [24]11134 	ljmp	00239$
      002C88                      11135 00155$:
                           002257 11136 	C$easyax5043.c$1724$1$657 ==.
                                  11137 ;	..\COMMON\easyax5043.c:1724: if (axradio_phy_vcocalib) {
      002C88 90 56 FC         [24]11138 	mov	dptr,#_axradio_phy_vcocalib
      002C8B E4               [12]11139 	clr	a
      002C8C 93               [24]11140 	movc	a,@a+dptr
      002C8D 70 03            [24]11141 	jnz	00318$
      002C8F 02 2E 11         [24]11142 	ljmp	00211$
      002C92                      11143 00318$:
                           002261 11144 	C$easyax5043.c$1725$2$678 ==.
                                  11145 ;	..\COMMON\easyax5043.c:1725: ax5043_set_registers_tx();
      002C92 12 06 43         [24]11146 	lcall	_ax5043_set_registers_tx
                           002264 11147 	C$easyax5043.c$1726$3$679 ==.
                                  11148 ;	..\COMMON\easyax5043.c:1726: radio_write8(AX5043_REG_MODULATION, 0x08);
      002C95 90 40 10         [24]11149 	mov	dptr,#0x4010
      002C98 74 08            [12]11150 	mov	a,#0x08
      002C9A F0               [24]11151 	movx	@dptr,a
                           00226A 11152 	C$easyax5043.c$1727$3$680 ==.
                                  11153 ;	..\COMMON\easyax5043.c:1727: radio_write8(AX5043_REG_FSKDEV2, 0x00);
      002C9B 90 41 61         [24]11154 	mov	dptr,#0x4161
      002C9E E4               [12]11155 	clr	a
      002C9F F0               [24]11156 	movx	@dptr,a
                           00226F 11157 	C$easyax5043.c$1728$3$681 ==.
                                  11158 ;	..\COMMON\easyax5043.c:1728: radio_write8(AX5043_REG_FSKDEV1, 0x00);
      002CA0 90 41 62         [24]11159 	mov	dptr,#0x4162
      002CA3 F0               [24]11160 	movx	@dptr,a
                           002273 11161 	C$easyax5043.c$1729$3$682 ==.
                                  11162 ;	..\COMMON\easyax5043.c:1729: radio_write8(AX5043_REG_FSKDEV0, 0x00);
      002CA4 90 41 63         [24]11163 	mov	dptr,#0x4163
      002CA7 F0               [24]11164 	movx	@dptr,a
                           002277 11165 	C$easyax5043.c$1730$3$683 ==.
                                  11166 ;	..\COMMON\easyax5043.c:1730: radio_write8(AX5043_REG_PLLLOOP, (radio_read8(AX5043_REG_PLLLOOP) | 0x04));
      002CA8 90 40 30         [24]11167 	mov	dptr,#0x4030
      002CAB E0               [24]11168 	movx	a,@dptr
      002CAC 44 04            [12]11169 	orl	a,#0x04
      002CAE F0               [24]11170 	movx	@dptr,a
                           00227E 11171 	C$easyax5043.c$1732$3$684 ==.
                                  11172 ;	..\COMMON\easyax5043.c:1732: uint8_t x = radio_read8(AX5043_REG_0xF35);
      002CAF 90 4F 35         [24]11173 	mov	dptr,#0x4f35
      002CB2 E0               [24]11174 	movx	a,@dptr
                           002282 11175 	C$easyax5043.c$1733$3$684 ==.
                                  11176 ;	..\COMMON\easyax5043.c:1733: x |= 0x80;
                           002282 11177 	C$easyax5043.c$1734$3$684 ==.
                                  11178 ;	..\COMMON\easyax5043.c:1734: if (2 & (uint8_t)~x)
      002CB3 44 80            [12]11179 	orl	a,#0x80
      002CB5 FF               [12]11180 	mov	r7,a
      002CB6 F4               [12]11181 	cpl	a
      002CB7 FE               [12]11182 	mov	r6,a
      002CB8 30 E1 01         [24]11183 	jnb	acc.1,00173$
                           00228A 11184 	C$easyax5043.c$1735$3$684 ==.
                                  11185 ;	..\COMMON\easyax5043.c:1735: ++x;
      002CBB 0F               [12]11186 	inc	r7
                           00228B 11187 	C$easyax5043.c$1736$3$684 ==.
                                  11188 ;	..\COMMON\easyax5043.c:1736: radio_write8(AX5043_REG_0xF35, x);
      002CBC                      11189 00173$:
      002CBC 90 4F 35         [24]11190 	mov	dptr,#0x4f35
      002CBF EF               [12]11191 	mov	a,r7
      002CC0 F0               [24]11192 	movx	@dptr,a
                           002290 11193 	C$easyax5043.c$1738$3$686 ==.
                                  11194 ;	..\COMMON\easyax5043.c:1738: radio_write8(AX5043_REG_PWRMODE, AX5043_PWRSTATE_SYNTH_TX);
      002CC1 90 40 02         [24]11195 	mov	dptr,#0x4002
      002CC4 74 0C            [12]11196 	mov	a,#0x0c
      002CC6 F0               [24]11197 	movx	@dptr,a
                           002296 11198 	C$easyax5043.c$1740$3$687 ==.
                                  11199 ;	..\COMMON\easyax5043.c:1740: uint8_t __autodata vcoisave = radio_read8(AX5043_REG_PLLVCOI);
      002CC7 90 41 80         [24]11200 	mov	dptr,#0x4180
      002CCA E0               [24]11201 	movx	a,@dptr
      002CCB F5 0D            [12]11202 	mov	_axradio_init_vcoisave_3_687,a
                           00229C 11203 	C$easyax5043.c$1741$3$687 ==.
                                  11204 ;	..\COMMON\easyax5043.c:1741: uint8_t j = 2;
      002CCD 75 0E 02         [24]11205 	mov	_axradio_init_j_3_687,#0x02
                           00229F 11206 	C$easyax5043.c$1742$5$695 ==.
                                  11207 ;	..\COMMON\easyax5043.c:1742: for (i = 0; i < axradio_phy_nrchannels; ++i) {
      002CD0 75 0C 00         [24]11208 	mov	_axradio_init_i_1_657,#0x00
      002CD3                      11209 00242$:
      002CD3 90 56 F4         [24]11210 	mov	dptr,#_axradio_phy_nrchannels
      002CD6 E4               [12]11211 	clr	a
      002CD7 93               [24]11212 	movc	a,@a+dptr
      002CD8 FC               [12]11213 	mov	r4,a
      002CD9 C3               [12]11214 	clr	c
      002CDA E5 0C            [12]11215 	mov	a,_axradio_init_i_1_657
      002CDC 9C               [12]11216 	subb	a,r4
      002CDD 40 03            [24]11217 	jc	00320$
      002CDF 02 2E 0B         [24]11218 	ljmp	00206$
      002CE2                      11219 00320$:
                           0022B1 11220 	C$easyax5043.c$1743$4$688 ==.
                                  11221 ;	..\COMMON\easyax5043.c:1743: axradio_phy_chanvcoi[i] = 0;
      002CE2 E5 0C            [12]11222 	mov	a,_axradio_init_i_1_657
      002CE4 24 03            [12]11223 	add	a,#_axradio_phy_chanvcoi
      002CE6 F5 82            [12]11224 	mov	dpl,a
      002CE8 E4               [12]11225 	clr	a
      002CE9 34 00            [12]11226 	addc	a,#(_axradio_phy_chanvcoi >> 8)
      002CEB F5 83            [12]11227 	mov	dph,a
      002CED E4               [12]11228 	clr	a
      002CEE F0               [24]11229 	movx	@dptr,a
                           0022BE 11230 	C$easyax5043.c$1744$4$688 ==.
                                  11231 ;	..\COMMON\easyax5043.c:1744: if (axradio_phy_chanpllrng[i] & 0x20)
      002CEF E5 0C            [12]11232 	mov	a,_axradio_init_i_1_657
      002CF1 75 F0 02         [24]11233 	mov	b,#0x02
      002CF4 A4               [48]11234 	mul	ab
      002CF5 FB               [12]11235 	mov	r3,a
      002CF6 AC F0            [24]11236 	mov	r4,b
      002CF8 24 01            [12]11237 	add	a,#_axradio_phy_chanpllrng
      002CFA F9               [12]11238 	mov	r1,a
      002CFB EC               [12]11239 	mov	a,r4
      002CFC 34 00            [12]11240 	addc	a,#(_axradio_phy_chanpllrng >> 8)
      002CFE FA               [12]11241 	mov	r2,a
      002CFF 89 82            [24]11242 	mov	dpl,r1
      002D01 8A 83            [24]11243 	mov	dph,r2
      002D03 E0               [24]11244 	movx	a,@dptr
      002D04 F5 13            [12]11245 	mov	_axradio_init_sloc0_1_0,a
      002D06 A3               [24]11246 	inc	dptr
      002D07 E0               [24]11247 	movx	a,@dptr
      002D08 F5 14            [12]11248 	mov	(_axradio_init_sloc0_1_0 + 1),a
      002D0A E5 13            [12]11249 	mov	a,_axradio_init_sloc0_1_0
      002D0C 30 E5 03         [24]11250 	jnb	acc.5,00321$
      002D0F 02 2E 06         [24]11251 	ljmp	00204$
      002D12                      11252 00321$:
                           0022E1 11253 	C$easyax5043.c$1746$5$689 ==.
                                  11254 ;	..\COMMON\easyax5043.c:1746: radio_write8(AX5043_REG_PLLRANGINGA, (axradio_phy_chanpllrng[i] & 0x0F));
      002D12 74 0F            [12]11255 	mov	a,#0x0f
      002D14 55 13            [12]11256 	anl	a,_axradio_init_sloc0_1_0
      002D16 F8               [12]11257 	mov	r0,a
      002D17 90 40 33         [24]11258 	mov	dptr,#0x4033
      002D1A F0               [24]11259 	movx	@dptr,a
                           0022EA 11260 	C$easyax5043.c$1748$5$690 ==.
                                  11261 ;	..\COMMON\easyax5043.c:1748: uint32_t __autodata f = axradio_phy_chanfreq[i];
      002D1B E5 0C            [12]11262 	mov	a,_axradio_init_i_1_657
      002D1D 75 F0 04         [24]11263 	mov	b,#0x04
      002D20 A4               [48]11264 	mul	ab
      002D21 24 F5            [12]11265 	add	a,#_axradio_phy_chanfreq
      002D23 F5 82            [12]11266 	mov	dpl,a
      002D25 74 56            [12]11267 	mov	a,#(_axradio_phy_chanfreq >> 8)
      002D27 35 F0            [12]11268 	addc	a,b
      002D29 F5 83            [12]11269 	mov	dph,a
      002D2B E4               [12]11270 	clr	a
      002D2C 93               [24]11271 	movc	a,@a+dptr
      002D2D F5 0F            [12]11272 	mov	_axradio_init_f_5_690,a
      002D2F A3               [24]11273 	inc	dptr
      002D30 E4               [12]11274 	clr	a
      002D31 93               [24]11275 	movc	a,@a+dptr
      002D32 F5 10            [12]11276 	mov	(_axradio_init_f_5_690 + 1),a
      002D34 A3               [24]11277 	inc	dptr
      002D35 E4               [12]11278 	clr	a
      002D36 93               [24]11279 	movc	a,@a+dptr
      002D37 F5 11            [12]11280 	mov	(_axradio_init_f_5_690 + 2),a
      002D39 A3               [24]11281 	inc	dptr
      002D3A E4               [12]11282 	clr	a
      002D3B 93               [24]11283 	movc	a,@a+dptr
      002D3C F5 12            [12]11284 	mov	(_axradio_init_f_5_690 + 3),a
                           00230D 11285 	C$easyax5043.c$1749$6$691 ==.
                                  11286 ;	..\COMMON\easyax5043.c:1749: radio_write8(AX5043_REG_FREQA0, f);
      002D3E AF 0F            [24]11287 	mov	r7,_axradio_init_f_5_690
      002D40 90 40 37         [24]11288 	mov	dptr,#0x4037
      002D43 EF               [12]11289 	mov	a,r7
      002D44 F0               [24]11290 	movx	@dptr,a
                           002314 11291 	C$easyax5043.c$1750$6$692 ==.
                                  11292 ;	..\COMMON\easyax5043.c:1750: radio_write8(AX5043_REG_FREQA1, (f >> 8));
      002D45 AF 10            [24]11293 	mov	r7,(_axradio_init_f_5_690 + 1)
      002D47 90 40 36         [24]11294 	mov	dptr,#0x4036
      002D4A EF               [12]11295 	mov	a,r7
      002D4B F0               [24]11296 	movx	@dptr,a
                           00231B 11297 	C$easyax5043.c$1751$6$693 ==.
                                  11298 ;	..\COMMON\easyax5043.c:1751: radio_write8(AX5043_REG_FREQA2, (f >> 16));
      002D4C AF 11            [24]11299 	mov	r7,(_axradio_init_f_5_690 + 2)
      002D4E 90 40 35         [24]11300 	mov	dptr,#0x4035
      002D51 EF               [12]11301 	mov	a,r7
      002D52 F0               [24]11302 	movx	@dptr,a
                           002322 11303 	C$easyax5043.c$1752$6$694 ==.
                                  11304 ;	..\COMMON\easyax5043.c:1752: radio_write8(AX5043_REG_FREQA3, (f >> 24));
      002D53 AF 12            [24]11305 	mov	r7,(_axradio_init_f_5_690 + 3)
      002D55 90 40 34         [24]11306 	mov	dptr,#0x4034
      002D58 EF               [12]11307 	mov	a,r7
      002D59 F0               [24]11308 	movx	@dptr,a
                           002329 11309 	C$easyax5043.c$1754$4$688 ==.
                                  11310 ;	..\COMMON\easyax5043.c:1754: do {
      002D5A                      11311 00201$:
                           002329 11312 	C$easyax5043.c$1755$5$695 ==.
                                  11313 ;	..\COMMON\easyax5043.c:1755: if (axradio_phy_chanvcoiinit[0]) {
      002D5A 90 56 FB         [24]11314 	mov	dptr,#_axradio_phy_chanvcoiinit
      002D5D E4               [12]11315 	clr	a
      002D5E 93               [24]11316 	movc	a,@a+dptr
      002D5F 60 6B            [24]11317 	jz	00199$
                           002330 11318 	C$easyax5043.c$1756$6$696 ==.
                                  11319 ;	..\COMMON\easyax5043.c:1756: uint8_t x = axradio_phy_chanvcoiinit[i];
      002D61 E5 0C            [12]11320 	mov	a,_axradio_init_i_1_657
      002D63 90 56 FB         [24]11321 	mov	dptr,#_axradio_phy_chanvcoiinit
      002D66 93               [24]11322 	movc	a,@a+dptr
      002D67 FF               [12]11323 	mov	r7,a
                           002337 11324 	C$easyax5043.c$1757$6$696 ==.
                                  11325 ;	..\COMMON\easyax5043.c:1757: if (!(axradio_phy_chanpllrnginit[0] & 0xF0))
      002D68 90 56 F9         [24]11326 	mov	dptr,#_axradio_phy_chanpllrnginit
      002D6B E4               [12]11327 	clr	a
      002D6C 93               [24]11328 	movc	a,@a+dptr
      002D6D FD               [12]11329 	mov	r5,a
      002D6E A3               [24]11330 	inc	dptr
      002D6F E4               [12]11331 	clr	a
      002D70 93               [24]11332 	movc	a,@a+dptr
      002D71 FE               [12]11333 	mov	r6,a
      002D72 ED               [12]11334 	mov	a,r5
      002D73 54 F0            [12]11335 	anl	a,#0xf0
      002D75 70 25            [24]11336 	jnz	00197$
                           002346 11337 	C$easyax5043.c$1758$6$696 ==.
                                  11338 ;	..\COMMON\easyax5043.c:1758: x += (axradio_phy_chanpllrng[i] & 0x0F) - (axradio_phy_chanpllrnginit[i] & 0x0F);
      002D77 89 82            [24]11339 	mov	dpl,r1
      002D79 8A 83            [24]11340 	mov	dph,r2
      002D7B E0               [24]11341 	movx	a,@dptr
      002D7C FD               [12]11342 	mov	r5,a
      002D7D A3               [24]11343 	inc	dptr
      002D7E E0               [24]11344 	movx	a,@dptr
      002D7F 53 05 0F         [24]11345 	anl	ar5,#0x0f
      002D82 EB               [12]11346 	mov	a,r3
      002D83 24 F9            [12]11347 	add	a,#_axradio_phy_chanpllrnginit
      002D85 F5 82            [12]11348 	mov	dpl,a
      002D87 EC               [12]11349 	mov	a,r4
      002D88 34 56            [12]11350 	addc	a,#(_axradio_phy_chanpllrnginit >> 8)
      002D8A F5 83            [12]11351 	mov	dph,a
      002D8C E4               [12]11352 	clr	a
      002D8D 93               [24]11353 	movc	a,@a+dptr
      002D8E F8               [12]11354 	mov	r0,a
      002D8F A3               [24]11355 	inc	dptr
      002D90 E4               [12]11356 	clr	a
      002D91 93               [24]11357 	movc	a,@a+dptr
      002D92 53 00 0F         [24]11358 	anl	ar0,#0x0f
      002D95 7E 00            [12]11359 	mov	r6,#0x00
      002D97 ED               [12]11360 	mov	a,r5
      002D98 C3               [12]11361 	clr	c
      002D99 98               [12]11362 	subb	a,r0
      002D9A 2F               [12]11363 	add	a,r7
      002D9B FF               [12]11364 	mov	r7,a
      002D9C                      11365 00197$:
                           00236B 11366 	C$easyax5043.c$1759$6$696 ==.
                                  11367 ;	..\COMMON\easyax5043.c:1759: axradio_phy_chanvcoi[i] = axradio_adjustvcoi(x);
      002D9C E5 0C            [12]11368 	mov	a,_axradio_init_i_1_657
      002D9E 24 03            [12]11369 	add	a,#_axradio_phy_chanvcoi
      002DA0 FD               [12]11370 	mov	r5,a
      002DA1 E4               [12]11371 	clr	a
      002DA2 34 00            [12]11372 	addc	a,#(_axradio_phy_chanvcoi >> 8)
      002DA4 FE               [12]11373 	mov	r6,a
      002DA5 8F 82            [24]11374 	mov	dpl,r7
      002DA7 C0 06            [24]11375 	push	ar6
      002DA9 C0 05            [24]11376 	push	ar5
      002DAB C0 04            [24]11377 	push	ar4
      002DAD C0 03            [24]11378 	push	ar3
      002DAF C0 02            [24]11379 	push	ar2
      002DB1 C0 01            [24]11380 	push	ar1
      002DB3 12 28 F7         [24]11381 	lcall	_axradio_adjustvcoi
      002DB6 AF 82            [24]11382 	mov	r7,dpl
      002DB8 D0 01            [24]11383 	pop	ar1
      002DBA D0 02            [24]11384 	pop	ar2
      002DBC D0 03            [24]11385 	pop	ar3
      002DBE D0 04            [24]11386 	pop	ar4
      002DC0 D0 05            [24]11387 	pop	ar5
      002DC2 D0 06            [24]11388 	pop	ar6
      002DC4 8D 82            [24]11389 	mov	dpl,r5
      002DC6 8E 83            [24]11390 	mov	dph,r6
      002DC8 EF               [12]11391 	mov	a,r7
      002DC9 F0               [24]11392 	movx	@dptr,a
      002DCA 80 2C            [24]11393 	sjmp	00202$
      002DCC                      11394 00199$:
                           00239B 11395 	C$easyax5043.c$1761$6$697 ==.
                                  11396 ;	..\COMMON\easyax5043.c:1761: axradio_phy_chanvcoi[i] = axradio_calvcoi();
      002DCC E5 0C            [12]11397 	mov	a,_axradio_init_i_1_657
      002DCE 24 03            [12]11398 	add	a,#_axradio_phy_chanvcoi
      002DD0 FE               [12]11399 	mov	r6,a
      002DD1 E4               [12]11400 	clr	a
      002DD2 34 00            [12]11401 	addc	a,#(_axradio_phy_chanvcoi >> 8)
      002DD4 FF               [12]11402 	mov	r7,a
      002DD5 C0 07            [24]11403 	push	ar7
      002DD7 C0 06            [24]11404 	push	ar6
      002DD9 C0 04            [24]11405 	push	ar4
      002DDB C0 03            [24]11406 	push	ar3
      002DDD C0 02            [24]11407 	push	ar2
      002DDF C0 01            [24]11408 	push	ar1
      002DE1 12 29 CA         [24]11409 	lcall	_axradio_calvcoi
      002DE4 AD 82            [24]11410 	mov	r5,dpl
      002DE6 D0 01            [24]11411 	pop	ar1
      002DE8 D0 02            [24]11412 	pop	ar2
      002DEA D0 03            [24]11413 	pop	ar3
      002DEC D0 04            [24]11414 	pop	ar4
      002DEE D0 06            [24]11415 	pop	ar6
      002DF0 D0 07            [24]11416 	pop	ar7
      002DF2 8E 82            [24]11417 	mov	dpl,r6
      002DF4 8F 83            [24]11418 	mov	dph,r7
      002DF6 ED               [12]11419 	mov	a,r5
      002DF7 F0               [24]11420 	movx	@dptr,a
      002DF8                      11421 00202$:
                           0023C7 11422 	C$easyax5043.c$1763$4$688 ==.
                                  11423 ;	..\COMMON\easyax5043.c:1763: } while (--j);
      002DF8 E5 0E            [12]11424 	mov	a,_axradio_init_j_3_687
      002DFA 14               [12]11425 	dec	a
      002DFB FF               [12]11426 	mov	r7,a
      002DFC 8F 0E            [24]11427 	mov	_axradio_init_j_3_687,r7
      002DFE 60 03            [24]11428 	jz	00325$
      002E00 02 2D 5A         [24]11429 	ljmp	00201$
      002E03                      11430 00325$:
                           0023D2 11431 	C$easyax5043.c$1764$4$688 ==.
                                  11432 ;	..\COMMON\easyax5043.c:1764: j = 1;
      002E03 75 0E 01         [24]11433 	mov	_axradio_init_j_3_687,#0x01
      002E06                      11434 00204$:
                           0023D5 11435 	C$easyax5043.c$1742$3$687 ==.
                                  11436 ;	..\COMMON\easyax5043.c:1742: for (i = 0; i < axradio_phy_nrchannels; ++i) {
      002E06 05 0C            [12]11437 	inc	_axradio_init_i_1_657
      002E08 02 2C D3         [24]11438 	ljmp	00242$
                           0023DA 11439 	C$easyax5043.c$1784$3$687 ==.
                                  11440 ;	..\COMMON\easyax5043.c:1784: radio_write8(AX5043_REG_PLLVCOI, vcoisave);
      002E0B                      11441 00206$:
      002E0B 90 41 80         [24]11442 	mov	dptr,#0x4180
      002E0E E5 0D            [12]11443 	mov	a,_axradio_init_vcoisave_3_687
      002E10 F0               [24]11444 	movx	@dptr,a
                           0023E0 11445 	C$easyax5043.c$1817$1$657 ==.
                                  11446 ;	..\COMMON\easyax5043.c:1817: radio_write8(AX5043_REG_PWRMODE, AX5043_PWRSTATE_POWERDOWN);
      002E11                      11447 00211$:
      002E11 90 40 02         [24]11448 	mov	dptr,#0x4002
      002E14 E4               [12]11449 	clr	a
      002E15 F0               [24]11450 	movx	@dptr,a
                           0023E5 11451 	C$easyax5043.c$1818$1$657 ==.
                                  11452 ;	..\COMMON\easyax5043.c:1818: ax5043_init_registers();
      002E16 12 18 D4         [24]11453 	lcall	_ax5043_init_registers
                           0023E8 11454 	C$easyax5043.c$1819$1$657 ==.
                                  11455 ;	..\COMMON\easyax5043.c:1819: ax5043_set_registers_rx();
      002E19 12 06 67         [24]11456 	lcall	_ax5043_set_registers_rx
                           0023EB 11457 	C$easyax5043.c$1820$2$700 ==.
                                  11458 ;	..\COMMON\easyax5043.c:1820: radio_write8(AX5043_REG_PLLRANGINGA, (axradio_phy_chanpllrng[0] & 0x0F));
      002E1C 90 00 01         [24]11459 	mov	dptr,#_axradio_phy_chanpllrng
      002E1F E0               [24]11460 	movx	a,@dptr
      002E20 FE               [12]11461 	mov	r6,a
      002E21 A3               [24]11462 	inc	dptr
      002E22 E0               [24]11463 	movx	a,@dptr
      002E23 53 06 0F         [24]11464 	anl	ar6,#0x0f
      002E26 90 40 33         [24]11465 	mov	dptr,#0x4033
      002E29 EE               [12]11466 	mov	a,r6
      002E2A F0               [24]11467 	movx	@dptr,a
                           0023FA 11468 	C$easyax5043.c$1822$2$701 ==.
                                  11469 ;	..\COMMON\easyax5043.c:1822: uint32_t __autodata f = axradio_phy_chanfreq[0];
      002E2B 90 56 F5         [24]11470 	mov	dptr,#_axradio_phy_chanfreq
      002E2E E4               [12]11471 	clr	a
      002E2F 93               [24]11472 	movc	a,@a+dptr
      002E30 FC               [12]11473 	mov	r4,a
      002E31 A3               [24]11474 	inc	dptr
      002E32 E4               [12]11475 	clr	a
      002E33 93               [24]11476 	movc	a,@a+dptr
      002E34 FD               [12]11477 	mov	r5,a
      002E35 A3               [24]11478 	inc	dptr
      002E36 E4               [12]11479 	clr	a
      002E37 93               [24]11480 	movc	a,@a+dptr
      002E38 FE               [12]11481 	mov	r6,a
      002E39 A3               [24]11482 	inc	dptr
      002E3A E4               [12]11483 	clr	a
      002E3B 93               [24]11484 	movc	a,@a+dptr
      002E3C FF               [12]11485 	mov	r7,a
                           00240C 11486 	C$easyax5043.c$1823$3$702 ==.
                                  11487 ;	..\COMMON\easyax5043.c:1823: radio_write8(AX5043_REG_FREQA0, f);
      002E3D 8C 03            [24]11488 	mov	ar3,r4
      002E3F 90 40 37         [24]11489 	mov	dptr,#0x4037
      002E42 EB               [12]11490 	mov	a,r3
      002E43 F0               [24]11491 	movx	@dptr,a
                           002413 11492 	C$easyax5043.c$1824$3$703 ==.
                                  11493 ;	..\COMMON\easyax5043.c:1824: radio_write8(AX5043_REG_FREQA1, (f >> 8));
      002E44 8D 03            [24]11494 	mov	ar3,r5
      002E46 90 40 36         [24]11495 	mov	dptr,#0x4036
      002E49 EB               [12]11496 	mov	a,r3
      002E4A F0               [24]11497 	movx	@dptr,a
                           00241A 11498 	C$easyax5043.c$1825$3$704 ==.
                                  11499 ;	..\COMMON\easyax5043.c:1825: radio_write8(AX5043_REG_FREQA2, (f >> 16));
      002E4B 8E 03            [24]11500 	mov	ar3,r6
      002E4D 90 40 35         [24]11501 	mov	dptr,#0x4035
      002E50 EB               [12]11502 	mov	a,r3
      002E51 F0               [24]11503 	movx	@dptr,a
                           002421 11504 	C$easyax5043.c$1826$3$705 ==.
                                  11505 ;	..\COMMON\easyax5043.c:1826: radio_write8(AX5043_REG_FREQA3, (f >> 24));
      002E52 8F 04            [24]11506 	mov	ar4,r7
      002E54 90 40 34         [24]11507 	mov	dptr,#0x4034
      002E57 EC               [12]11508 	mov	a,r4
      002E58 F0               [24]11509 	movx	@dptr,a
                           002428 11510 	C$easyax5043.c$1829$1$657 ==.
                                  11511 ;	..\COMMON\easyax5043.c:1829: axradio_mode = AXRADIO_MODE_OFF;
      002E59 75 08 01         [24]11512 	mov	_axradio_mode,#0x01
                           00242B 11513 	C$easyax5043.c$1830$1$657 ==.
                                  11514 ;	..\COMMON\easyax5043.c:1830: for (i = 0; i < axradio_phy_nrchannels; ++i)
      002E5C 7F 00            [12]11515 	mov	r7,#0x00
      002E5E                      11516 00244$:
      002E5E 90 56 F4         [24]11517 	mov	dptr,#_axradio_phy_nrchannels
      002E61 E4               [12]11518 	clr	a
      002E62 93               [24]11519 	movc	a,@a+dptr
      002E63 FE               [12]11520 	mov	r6,a
      002E64 C3               [12]11521 	clr	c
      002E65 EF               [12]11522 	mov	a,r7
      002E66 9E               [12]11523 	subb	a,r6
      002E67 50 20            [24]11524 	jnc	00231$
                           002438 11525 	C$easyax5043.c$1831$1$657 ==.
                                  11526 ;	..\COMMON\easyax5043.c:1831: if (axradio_phy_chanpllrng[i] & 0x20)
      002E69 EF               [12]11527 	mov	a,r7
      002E6A 75 F0 02         [24]11528 	mov	b,#0x02
      002E6D A4               [48]11529 	mul	ab
      002E6E 24 01            [12]11530 	add	a,#_axradio_phy_chanpllrng
      002E70 F5 82            [12]11531 	mov	dpl,a
      002E72 74 00            [12]11532 	mov	a,#(_axradio_phy_chanpllrng >> 8)
      002E74 35 F0            [12]11533 	addc	a,b
      002E76 F5 83            [12]11534 	mov	dph,a
      002E78 E0               [24]11535 	movx	a,@dptr
      002E79 FD               [12]11536 	mov	r5,a
      002E7A A3               [24]11537 	inc	dptr
      002E7B E0               [24]11538 	movx	a,@dptr
      002E7C FE               [12]11539 	mov	r6,a
      002E7D ED               [12]11540 	mov	a,r5
      002E7E 30 E5 05         [24]11541 	jnb	acc.5,00245$
                           002450 11542 	C$easyax5043.c$1832$1$657 ==.
                                  11543 ;	..\COMMON\easyax5043.c:1832: return AXRADIO_ERR_RANGING;
      002E81 75 82 06         [24]11544 	mov	dpl,#0x06
      002E84 80 06            [24]11545 	sjmp	00246$
      002E86                      11546 00245$:
                           002455 11547 	C$easyax5043.c$1830$1$657 ==.
                                  11548 ;	..\COMMON\easyax5043.c:1830: for (i = 0; i < axradio_phy_nrchannels; ++i)
      002E86 0F               [12]11549 	inc	r7
      002E87 80 D5            [24]11550 	sjmp	00244$
      002E89                      11551 00231$:
                           002458 11552 	C$easyax5043.c$1833$1$657 ==.
                                  11553 ;	..\COMMON\easyax5043.c:1833: return AXRADIO_ERR_NOERROR;
      002E89 75 82 00         [24]11554 	mov	dpl,#0x00
      002E8C                      11555 00246$:
                           00245B 11556 	C$easyax5043.c$1834$1$657 ==.
                           00245B 11557 	XG$axradio_init$0$0 ==.
      002E8C 22               [24]11558 	ret
                                  11559 ;------------------------------------------------------------
                                  11560 ;Allocation info for local variables in function 'axradio_cansleep'
                                  11561 ;------------------------------------------------------------
                           00245C 11562 	G$axradio_cansleep$0$0 ==.
                           00245C 11563 	C$easyax5043.c$1836$1$657 ==.
                                  11564 ;	..\COMMON\easyax5043.c:1836: __reentrantb uint8_t axradio_cansleep(void) __reentrant
                                  11565 ;	-----------------------------------------
                                  11566 ;	 function axradio_cansleep
                                  11567 ;	-----------------------------------------
      002E8D                      11568 _axradio_cansleep:
                           00245C 11569 	C$easyax5043.c$1838$1$719 ==.
                                  11570 ;	..\COMMON\easyax5043.c:1838: if (axradio_trxstate == trxstate_off || axradio_trxstate == trxstate_rxwor)
      002E8D E5 09            [12]11571 	mov	a,_axradio_trxstate
      002E8F 60 05            [24]11572 	jz	00101$
      002E91 74 02            [12]11573 	mov	a,#0x02
      002E93 B5 09 05         [24]11574 	cjne	a,_axradio_trxstate,00102$
      002E96                      11575 00101$:
                           002465 11576 	C$easyax5043.c$1839$1$719 ==.
                                  11577 ;	..\COMMON\easyax5043.c:1839: return 1;
      002E96 75 82 01         [24]11578 	mov	dpl,#0x01
      002E99 80 03            [24]11579 	sjmp	00104$
      002E9B                      11580 00102$:
                           00246A 11581 	C$easyax5043.c$1840$1$719 ==.
                                  11582 ;	..\COMMON\easyax5043.c:1840: return 0;
      002E9B 75 82 00         [24]11583 	mov	dpl,#0x00
      002E9E                      11584 00104$:
                           00246D 11585 	C$easyax5043.c$1841$1$719 ==.
                           00246D 11586 	XG$axradio_cansleep$0$0 ==.
      002E9E 22               [24]11587 	ret
                                  11588 ;------------------------------------------------------------
                                  11589 ;Allocation info for local variables in function 'wtimer_cansleep_dummy'
                                  11590 ;------------------------------------------------------------
                           00246E 11591 	Feasyax5043$wtimer_cansleep_dummy$0$0 ==.
                           00246E 11592 	C$easyax5043.c$1844$1$719 ==.
                                  11593 ;	..\COMMON\easyax5043.c:1844: static void wtimer_cansleep_dummy(void) __naked
                                  11594 ;	-----------------------------------------
                                  11595 ;	 function wtimer_cansleep_dummy
                                  11596 ;	-----------------------------------------
      002E9F                      11597 _wtimer_cansleep_dummy:
                                  11598 ;	naked function: no prologue.
                           00246E 11599 	C$easyax5043.c$1858$1$721 ==.
                                  11600 ;	..\COMMON\easyax5043.c:1858: __endasm;
                                  11601 	.area	WTCANSLP0 (CODE)
                                  11602 	.area	WTCANSLP1 (CODE)
                                  11603 	.area	WTCANSLP2 (CODE)
                                  11604 	.area	WTCANSLP1 (CODE)
      005C8A 12 2E 8D         [24]11605 	lcall	_axradio_cansleep
      005C8D E5 82            [12]11606 	mov	a,dpl
      005C8F 70 01            [24]11607 	jnz	00000$
      005C91 22               [24]11608 	ret
      005C92                      11609 	00000$:
                                  11610 	.area	CSEG (CODE)
                                  11611 ;	naked function: no epilogue.
                           00246E 11612 	C$easyax5043.c$1859$1$721 ==.
                           00246E 11613 	XFeasyax5043$wtimer_cansleep_dummy$0$0 ==.
                                  11614 ;------------------------------------------------------------
                                  11615 ;Allocation info for local variables in function 'axradio_set_mode'
                                  11616 ;------------------------------------------------------------
                                  11617 ;mode                      Allocated to registers r7 
                                  11618 ;r                         Allocated to registers r5 
                                  11619 ;r                         Allocated to registers r6 
                                  11620 ;__00030034                Allocated to registers 
                                  11621 ;crit                      Allocated to registers r6 
                                  11622 ;crit                      Allocated to registers r6 
                                  11623 ;__00040036                Allocated to registers 
                                  11624 ;crit                      Allocated to registers 
                                  11625 ;------------------------------------------------------------
                           00246E 11626 	G$axradio_set_mode$0$0 ==.
                           00246E 11627 	C$easyax5043.c$1862$1$721 ==.
                                  11628 ;	..\COMMON\easyax5043.c:1862: uint8_t axradio_set_mode(uint8_t mode)
                                  11629 ;	-----------------------------------------
                                  11630 ;	 function axradio_set_mode
                                  11631 ;	-----------------------------------------
      002E9F                      11632 _axradio_set_mode:
                           00246E 11633 	C$easyax5043.c$1864$1$723 ==.
                                  11634 ;	..\COMMON\easyax5043.c:1864: if (mode == axradio_mode)
      002E9F E5 82            [12]11635 	mov	a,dpl
      002EA1 FF               [12]11636 	mov	r7,a
      002EA2 B5 08 06         [24]11637 	cjne	a,_axradio_mode,00102$
                           002474 11638 	C$easyax5043.c$1865$1$723 ==.
                                  11639 ;	..\COMMON\easyax5043.c:1865: return AXRADIO_ERR_NOERROR;
      002EA5 75 82 00         [24]11640 	mov	dpl,#0x00
      002EA8 02 33 09         [24]11641 	ljmp	00257$
      002EAB                      11642 00102$:
                           00247A 11643 	C$easyax5043.c$1866$1$723 ==.
                                  11644 ;	..\COMMON\easyax5043.c:1866: switch (axradio_mode) {
      002EAB AE 08            [24]11645 	mov	r6,_axradio_mode
      002EAD BE 00 02         [24]11646 	cjne	r6,#0x00,00357$
      002EB0 80 4D            [24]11647 	sjmp	00103$
      002EB2                      11648 00357$:
      002EB2 BE 02 02         [24]11649 	cjne	r6,#0x02,00358$
      002EB5 80 5D            [24]11650 	sjmp	00106$
      002EB7                      11651 00358$:
      002EB7 BE 03 03         [24]11652 	cjne	r6,#0x03,00359$
      002EBA 02 2F 48         [24]11653 	ljmp	00116$
      002EBD                      11654 00359$:
      002EBD BE 18 03         [24]11655 	cjne	r6,#0x18,00360$
      002EC0 02 2F 48         [24]11656 	ljmp	00116$
      002EC3                      11657 00360$:
      002EC3 BE 19 03         [24]11658 	cjne	r6,#0x19,00361$
      002EC6 02 2F 48         [24]11659 	ljmp	00116$
      002EC9                      11660 00361$:
      002EC9 BE 1A 02         [24]11661 	cjne	r6,#0x1a,00362$
      002ECC 80 7A            [24]11662 	sjmp	00116$
      002ECE                      11663 00362$:
      002ECE BE 1B 02         [24]11664 	cjne	r6,#0x1b,00363$
      002ED1 80 75            [24]11665 	sjmp	00116$
      002ED3                      11666 00363$:
      002ED3 BE 1C 02         [24]11667 	cjne	r6,#0x1c,00364$
      002ED6 80 70            [24]11668 	sjmp	00116$
      002ED8                      11669 00364$:
      002ED8 BE 28 03         [24]11670 	cjne	r6,#0x28,00365$
      002EDB 02 2F A1         [24]11671 	ljmp	00124$
      002EDE                      11672 00365$:
      002EDE BE 29 03         [24]11673 	cjne	r6,#0x29,00366$
      002EE1 02 2F A1         [24]11674 	ljmp	00124$
      002EE4                      11675 00366$:
      002EE4 BE 2A 03         [24]11676 	cjne	r6,#0x2a,00367$
      002EE7 02 2F A1         [24]11677 	ljmp	00124$
      002EEA                      11678 00367$:
      002EEA BE 2B 03         [24]11679 	cjne	r6,#0x2b,00368$
      002EED 02 2F A1         [24]11680 	ljmp	00124$
      002EF0                      11681 00368$:
      002EF0 BE 2C 03         [24]11682 	cjne	r6,#0x2c,00369$
      002EF3 02 2F A1         [24]11683 	ljmp	00124$
      002EF6                      11684 00369$:
      002EF6 BE 2D 03         [24]11685 	cjne	r6,#0x2d,00370$
      002EF9 02 2F A1         [24]11686 	ljmp	00124$
      002EFC                      11687 00370$:
      002EFC 02 2F AE         [24]11688 	ljmp	00125$
                           0024CE 11689 	C$easyax5043.c$1867$2$724 ==.
                                  11690 ;	..\COMMON\easyax5043.c:1867: case AXRADIO_MODE_UNINIT:
      002EFF                      11691 00103$:
                           0024CE 11692 	C$easyax5043.c$1869$3$725 ==.
                                  11693 ;	..\COMMON\easyax5043.c:1869: uint8_t __autodata r = axradio_init();
      002EFF C0 07            [24]11694 	push	ar7
      002F01 12 2A 9B         [24]11695 	lcall	_axradio_init
      002F04 AE 82            [24]11696 	mov	r6,dpl
      002F06 D0 07            [24]11697 	pop	ar7
                           0024D7 11698 	C$easyax5043.c$1870$3$725 ==.
                                  11699 ;	..\COMMON\easyax5043.c:1870: if (r != AXRADIO_ERR_NOERROR)
      002F08 EE               [12]11700 	mov	a,r6
      002F09 FD               [12]11701 	mov	r5,a
      002F0A 70 03            [24]11702 	jnz	00371$
      002F0C 02 2F B8         [24]11703 	ljmp	00126$
      002F0F                      11704 00371$:
                           0024DE 11705 	C$easyax5043.c$1871$3$725 ==.
                                  11706 ;	..\COMMON\easyax5043.c:1871: return r;
      002F0F 8D 82            [24]11707 	mov	dpl,r5
      002F11 02 33 09         [24]11708 	ljmp	00257$
                           0024E3 11709 	C$easyax5043.c$1875$2$724 ==.
                                  11710 ;	..\COMMON\easyax5043.c:1875: case AXRADIO_MODE_DEEPSLEEP:
      002F14                      11711 00106$:
                           0024E3 11712 	C$easyax5043.c$1877$3$726 ==.
                                  11713 ;	..\COMMON\easyax5043.c:1877: uint8_t __autodata r = ax5043_wakeup_deepsleep();
      002F14 C0 07            [24]11714 	push	ar7
      002F16 12 41 EE         [24]11715 	lcall	_ax5043_wakeup_deepsleep
      002F19 AE 82            [24]11716 	mov	r6,dpl
      002F1B D0 07            [24]11717 	pop	ar7
                           0024EC 11718 	C$easyax5043.c$1878$3$726 ==.
                                  11719 ;	..\COMMON\easyax5043.c:1878: if (r)
      002F1D EE               [12]11720 	mov	a,r6
      002F1E 60 06            [24]11721 	jz	00108$
                           0024EF 11722 	C$easyax5043.c$1879$3$726 ==.
                                  11723 ;	..\COMMON\easyax5043.c:1879: return AXRADIO_ERR_NOCHIP;
      002F20 75 82 05         [24]11724 	mov	dpl,#0x05
      002F23 02 33 09         [24]11725 	ljmp	00257$
      002F26                      11726 00108$:
                           0024F5 11727 	C$easyax5043.c$1880$3$726 ==.
                                  11728 ;	..\COMMON\easyax5043.c:1880: ax5043_init_registers();
      002F26 C0 07            [24]11729 	push	ar7
      002F28 12 18 D4         [24]11730 	lcall	_ax5043_init_registers
                           0024FA 11731 	C$easyax5043.c$1881$3$726 ==.
                                  11732 ;	..\COMMON\easyax5043.c:1881: r = axradio_set_channel(axradio_curchannel);
      002F2B 90 00 09         [24]11733 	mov	dptr,#_axradio_curchannel
      002F2E E0               [24]11734 	movx	a,@dptr
      002F2F F5 82            [12]11735 	mov	dpl,a
      002F31 12 33 0E         [24]11736 	lcall	_axradio_set_channel
      002F34 AE 82            [24]11737 	mov	r6,dpl
      002F36 D0 07            [24]11738 	pop	ar7
                           002507 11739 	C$easyax5043.c$1882$3$726 ==.
                                  11740 ;	..\COMMON\easyax5043.c:1882: if (r != AXRADIO_ERR_NOERROR)
      002F38 EE               [12]11741 	mov	a,r6
      002F39 60 05            [24]11742 	jz	00110$
                           00250A 11743 	C$easyax5043.c$1883$3$726 ==.
                                  11744 ;	..\COMMON\easyax5043.c:1883: return r;
      002F3B 8E 82            [24]11745 	mov	dpl,r6
      002F3D 02 33 09         [24]11746 	ljmp	00257$
      002F40                      11747 00110$:
                           00250F 11748 	C$easyax5043.c$1884$3$726 ==.
                                  11749 ;	..\COMMON\easyax5043.c:1884: axradio_trxstate = trxstate_off;
      002F40 75 09 00         [24]11750 	mov	_axradio_trxstate,#0x00
                           002512 11751 	C$easyax5043.c$1885$3$726 ==.
                                  11752 ;	..\COMMON\easyax5043.c:1885: axradio_mode = AXRADIO_MODE_OFF;
      002F43 75 08 01         [24]11753 	mov	_axradio_mode,#0x01
                           002515 11754 	C$easyax5043.c$1886$3$726 ==.
                                  11755 ;	..\COMMON\easyax5043.c:1886: break;
                           002515 11756 	C$easyax5043.c$1894$2$724 ==.
                                  11757 ;	..\COMMON\easyax5043.c:1894: case AXRADIO_MODE_CW_TRANSMIT:
      002F46 80 70            [24]11758 	sjmp	00126$
      002F48                      11759 00116$:
                           002517 11760 	C$libmftypes.h$351$6$759 ==.
                                  11761 ;	C:/Program Files (x86)/ON Semiconductor/AXSDB/libmf/include/libmftypes.h:351: criticalsection_t crit = IE & 0x80;
      002F48 74 80            [12]11762 	mov	a,#0x80
      002F4A 55 A8            [12]11763 	anl	a,_IE
      002F4C FE               [12]11764 	mov	r6,a
                           00251C 11765 	C$easyax5043.c$1896$6$759 ==.
                                  11766 ;	..\COMMON\easyax5043.c:1896: criticalsection_t crit = enter_critical();
      002F4D C2 AF            [12]11767 	clr	_EA
                           00251E 11768 	C$easyax5043.c$1897$3$727 ==.
                                  11769 ;	..\COMMON\easyax5043.c:1897: if (axradio_trxstate == trxstate_off) {
      002F4F E5 09            [12]11770 	mov	a,_axradio_trxstate
      002F51 70 38            [24]11771 	jnz	00118$
                           002522 11772 	C$easyax5043.c$1898$4$728 ==.
                                  11773 ;	..\COMMON\easyax5043.c:1898: update_timeanchor();
      002F53 C0 07            [24]11774 	push	ar7
      002F55 C0 06            [24]11775 	push	ar6
      002F57 12 0A 31         [24]11776 	lcall	_update_timeanchor
                           002529 11777 	C$easyax5043.c$1899$4$728 ==.
                                  11778 ;	..\COMMON\easyax5043.c:1899: wtimer_remove_callback(&axradio_cb_transmitend.cb);
      002F5A 90 02 7A         [24]11779 	mov	dptr,#_axradio_cb_transmitend
      002F5D 12 52 63         [24]11780 	lcall	_wtimer_remove_callback
                           00252F 11781 	C$easyax5043.c$1900$4$728 ==.
                                  11782 ;	..\COMMON\easyax5043.c:1900: axradio_cb_transmitend.st.error = AXRADIO_ERR_NOERROR;
      002F60 90 02 7F         [24]11783 	mov	dptr,#(_axradio_cb_transmitend + 0x0005)
      002F63 E4               [12]11784 	clr	a
      002F64 F0               [24]11785 	movx	@dptr,a
                           002534 11786 	C$easyax5043.c$1901$4$728 ==.
                                  11787 ;	..\COMMON\easyax5043.c:1901: axradio_cb_transmitend.st.time.t = axradio_timeanchor.radiotimer;
      002F65 90 00 1A         [24]11788 	mov	dptr,#(_axradio_timeanchor + 0x0004)
      002F68 E0               [24]11789 	movx	a,@dptr
      002F69 FA               [12]11790 	mov	r2,a
      002F6A A3               [24]11791 	inc	dptr
      002F6B E0               [24]11792 	movx	a,@dptr
      002F6C FB               [12]11793 	mov	r3,a
      002F6D A3               [24]11794 	inc	dptr
      002F6E E0               [24]11795 	movx	a,@dptr
      002F6F FC               [12]11796 	mov	r4,a
      002F70 A3               [24]11797 	inc	dptr
      002F71 E0               [24]11798 	movx	a,@dptr
      002F72 FD               [12]11799 	mov	r5,a
      002F73 90 02 80         [24]11800 	mov	dptr,#(_axradio_cb_transmitend + 0x0006)
      002F76 EA               [12]11801 	mov	a,r2
      002F77 F0               [24]11802 	movx	@dptr,a
      002F78 EB               [12]11803 	mov	a,r3
      002F79 A3               [24]11804 	inc	dptr
      002F7A F0               [24]11805 	movx	@dptr,a
      002F7B EC               [12]11806 	mov	a,r4
      002F7C A3               [24]11807 	inc	dptr
      002F7D F0               [24]11808 	movx	@dptr,a
      002F7E ED               [12]11809 	mov	a,r5
      002F7F A3               [24]11810 	inc	dptr
      002F80 F0               [24]11811 	movx	@dptr,a
                           002550 11812 	C$easyax5043.c$1902$4$728 ==.
                                  11813 ;	..\COMMON\easyax5043.c:1902: wtimer_add_callback(&axradio_cb_transmitend.cb);
      002F81 90 02 7A         [24]11814 	mov	dptr,#_axradio_cb_transmitend
      002F84 12 46 F0         [24]11815 	lcall	_wtimer_add_callback
      002F87 D0 06            [24]11816 	pop	ar6
      002F89 D0 07            [24]11817 	pop	ar7
      002F8B                      11818 00118$:
                           00255A 11819 	C$easyax5043.c$1904$3$727 ==.
                                  11820 ;	..\COMMON\easyax5043.c:1904: ax5043_off();
      002F8B C0 07            [24]11821 	push	ar7
      002F8D C0 06            [24]11822 	push	ar6
      002F8F 12 17 47         [24]11823 	lcall	_ax5043_off
      002F92 D0 06            [24]11824 	pop	ar6
                           002563 11825 	C$libmftypes.h$358$6$762 ==.
                                  11826 ;	C:/Program Files (x86)/ON Semiconductor/AXSDB/libmf/include/libmftypes.h:358: IE |= crit;
      002F94 EE               [12]11827 	mov	a,r6
      002F95 42 A8            [12]11828 	orl	_IE,a
                           002566 11829 	C$easyax5043.c$1907$3$727 ==.
                                  11830 ;	..\COMMON\easyax5043.c:1907: ax5043_init_registers();
      002F97 12 18 D4         [24]11831 	lcall	_ax5043_init_registers
      002F9A D0 07            [24]11832 	pop	ar7
                           00256B 11833 	C$easyax5043.c$1908$3$727 ==.
                                  11834 ;	..\COMMON\easyax5043.c:1908: axradio_mode = AXRADIO_MODE_OFF;
      002F9C 75 08 01         [24]11835 	mov	_axradio_mode,#0x01
                           00256E 11836 	C$easyax5043.c$1909$3$727 ==.
                                  11837 ;	..\COMMON\easyax5043.c:1909: break;
                           00256E 11838 	C$easyax5043.c$1917$2$724 ==.
                                  11839 ;	..\COMMON\easyax5043.c:1917: case AXRADIO_MODE_STREAM_RECEIVE_DATAPIN:
      002F9F 80 17            [24]11840 	sjmp	00126$
      002FA1                      11841 00124$:
                           002570 11842 	C$easyax5043.c$1918$2$724 ==.
                                  11843 ;	..\COMMON\easyax5043.c:1918: ax5043_off();
      002FA1 C0 07            [24]11844 	push	ar7
      002FA3 12 17 47         [24]11845 	lcall	_ax5043_off
                           002575 11846 	C$easyax5043.c$1919$2$724 ==.
                                  11847 ;	..\COMMON\easyax5043.c:1919: ax5043_init_registers();
      002FA6 12 18 D4         [24]11848 	lcall	_ax5043_init_registers
      002FA9 D0 07            [24]11849 	pop	ar7
                           00257A 11850 	C$easyax5043.c$1920$2$724 ==.
                                  11851 ;	..\COMMON\easyax5043.c:1920: axradio_mode = AXRADIO_MODE_OFF;
      002FAB 75 08 01         [24]11852 	mov	_axradio_mode,#0x01
                           00257D 11853 	C$easyax5043.c$1922$2$724 ==.
                                  11854 ;	..\COMMON\easyax5043.c:1922: default:
      002FAE                      11855 00125$:
                           00257D 11856 	C$easyax5043.c$1923$2$724 ==.
                                  11857 ;	..\COMMON\easyax5043.c:1923: ax5043_off();
      002FAE C0 07            [24]11858 	push	ar7
      002FB0 12 17 47         [24]11859 	lcall	_ax5043_off
      002FB3 D0 07            [24]11860 	pop	ar7
                           002584 11861 	C$easyax5043.c$1924$2$724 ==.
                                  11862 ;	..\COMMON\easyax5043.c:1924: axradio_mode = AXRADIO_MODE_OFF;
      002FB5 75 08 01         [24]11863 	mov	_axradio_mode,#0x01
                           002587 11864 	C$easyax5043.c$1926$1$723 ==.
                                  11865 ;	..\COMMON\easyax5043.c:1926: }
      002FB8                      11866 00126$:
                           002587 11867 	C$easyax5043.c$1927$1$723 ==.
                                  11868 ;	..\COMMON\easyax5043.c:1927: axradio_killallcb();
      002FB8 C0 07            [24]11869 	push	ar7
      002FBA 12 28 80         [24]11870 	lcall	_axradio_killallcb
      002FBD D0 07            [24]11871 	pop	ar7
                           00258E 11872 	C$easyax5043.c$1928$1$723 ==.
                                  11873 ;	..\COMMON\easyax5043.c:1928: if (mode == AXRADIO_MODE_UNINIT)
      002FBF EF               [12]11874 	mov	a,r7
      002FC0 70 06            [24]11875 	jnz	00128$
                           002591 11876 	C$easyax5043.c$1929$1$723 ==.
                                  11877 ;	..\COMMON\easyax5043.c:1929: return AXRADIO_ERR_NOTSUPPORTED;
      002FC2 75 82 01         [24]11878 	mov	dpl,#0x01
      002FC5 02 33 09         [24]11879 	ljmp	00257$
      002FC8                      11880 00128$:
                           002597 11881 	C$easyax5043.c$1930$1$723 ==.
                                  11882 ;	..\COMMON\easyax5043.c:1930: axradio_syncstate = syncstate_off;
      002FC8 90 00 04         [24]11883 	mov	dptr,#_axradio_syncstate
      002FCB E4               [12]11884 	clr	a
      002FCC F0               [24]11885 	movx	@dptr,a
                           00259C 11886 	C$easyax5043.c$1931$1$723 ==.
                                  11887 ;	..\COMMON\easyax5043.c:1931: switch (mode) {
      002FCD EF               [12]11888 	mov	a,r7
      002FCE 24 CC            [12]11889 	add	a,#0xff - 0x33
      002FD0 50 03            [24]11890 	jnc	00376$
      002FD2 02 33 06         [24]11891 	ljmp	00253$
      002FD5                      11892 00376$:
      002FD5 EF               [12]11893 	mov	a,r7
      002FD6 24 0A            [12]11894 	add	a,#(00377$-3-.)
      002FD8 83               [24]11895 	movc	a,@a+pc
      002FD9 F5 82            [12]11896 	mov	dpl,a
      002FDB EF               [12]11897 	mov	a,r7
      002FDC 24 38            [12]11898 	add	a,#(00378$-3-.)
      002FDE 83               [24]11899 	movc	a,@a+pc
      002FDF F5 83            [12]11900 	mov	dph,a
      002FE1 E4               [12]11901 	clr	a
      002FE2 73               [24]11902 	jmp	@a+dptr
      002FE3                      11903 00377$:
      002FE3 06                   11904 	.db	00253$
      002FE4 4B                   11905 	.db	00129$
      002FE5 51                   11906 	.db	00130$
      002FE6 C9                   11907 	.db	00215$
      002FE7 06                   11908 	.db	00253$
      002FE8 06                   11909 	.db	00253$
      002FE9 06                   11910 	.db	00253$
      002FEA 06                   11911 	.db	00253$
      002FEB 06                   11912 	.db	00253$
      002FEC 06                   11913 	.db	00253$
      002FED 06                   11914 	.db	00253$
      002FEE 06                   11915 	.db	00253$
      002FEF 06                   11916 	.db	00253$
      002FF0 06                   11917 	.db	00253$
      002FF1 06                   11918 	.db	00253$
      002FF2 06                   11919 	.db	00253$
      002FF3 5D                   11920 	.db	00131$
      002FF4 6E                   11921 	.db	00133$
      002FF5 5D                   11922 	.db	00132$
      002FF6 6E                   11923 	.db	00134$
      002FF7 06                   11924 	.db	00253$
      002FF8 06                   11925 	.db	00253$
      002FF9 06                   11926 	.db	00253$
      002FFA 06                   11927 	.db	00253$
      002FFB D6                   11928 	.db	00143$
      002FFC D6                   11929 	.db	00144$
      002FFD D6                   11930 	.db	00145$
      002FFE D6                   11931 	.db	00146$
      002FFF D6                   11932 	.db	00142$
      003000 06                   11933 	.db	00253$
      003001 06                   11934 	.db	00253$
      003002 06                   11935 	.db	00253$
      003003 7F                   11936 	.db	00135$
      003004 C2                   11937 	.db	00140$
      003005 7F                   11938 	.db	00136$
      003006 C2                   11939 	.db	00141$
      003007 06                   11940 	.db	00253$
      003008 06                   11941 	.db	00253$
      003009 06                   11942 	.db	00253$
      00300A 06                   11943 	.db	00253$
      00300B 65                   11944 	.db	00175$
      00300C 65                   11945 	.db	00176$
      00300D 65                   11946 	.db	00177$
      00300E 65                   11947 	.db	00178$
      00300F 65                   11948 	.db	00174$
      003010 65                   11949 	.db	00179$
      003011 06                   11950 	.db	00253$
      003012 06                   11951 	.db	00253$
      003013 0E                   11952 	.db	00249$
      003014 0E                   11953 	.db	00250$
      003015 6B                   11954 	.db	00251$
      003016 6B                   11955 	.db	00252$
      003017                      11956 00378$:
      003017 33                   11957 	.db	00253$>>8
      003018 30                   11958 	.db	00129$>>8
      003019 30                   11959 	.db	00130$>>8
      00301A 31                   11960 	.db	00215$>>8
      00301B 33                   11961 	.db	00253$>>8
      00301C 33                   11962 	.db	00253$>>8
      00301D 33                   11963 	.db	00253$>>8
      00301E 33                   11964 	.db	00253$>>8
      00301F 33                   11965 	.db	00253$>>8
      003020 33                   11966 	.db	00253$>>8
      003021 33                   11967 	.db	00253$>>8
      003022 33                   11968 	.db	00253$>>8
      003023 33                   11969 	.db	00253$>>8
      003024 33                   11970 	.db	00253$>>8
      003025 33                   11971 	.db	00253$>>8
      003026 33                   11972 	.db	00253$>>8
      003027 30                   11973 	.db	00131$>>8
      003028 30                   11974 	.db	00133$>>8
      003029 30                   11975 	.db	00132$>>8
      00302A 30                   11976 	.db	00134$>>8
      00302B 33                   11977 	.db	00253$>>8
      00302C 33                   11978 	.db	00253$>>8
      00302D 33                   11979 	.db	00253$>>8
      00302E 33                   11980 	.db	00253$>>8
      00302F 30                   11981 	.db	00143$>>8
      003030 30                   11982 	.db	00144$>>8
      003031 30                   11983 	.db	00145$>>8
      003032 30                   11984 	.db	00146$>>8
      003033 30                   11985 	.db	00142$>>8
      003034 33                   11986 	.db	00253$>>8
      003035 33                   11987 	.db	00253$>>8
      003036 33                   11988 	.db	00253$>>8
      003037 30                   11989 	.db	00135$>>8
      003038 30                   11990 	.db	00140$>>8
      003039 30                   11991 	.db	00136$>>8
      00303A 30                   11992 	.db	00141$>>8
      00303B 33                   11993 	.db	00253$>>8
      00303C 33                   11994 	.db	00253$>>8
      00303D 33                   11995 	.db	00253$>>8
      00303E 33                   11996 	.db	00253$>>8
      00303F 31                   11997 	.db	00175$>>8
      003040 31                   11998 	.db	00176$>>8
      003041 31                   11999 	.db	00177$>>8
      003042 31                   12000 	.db	00178$>>8
      003043 31                   12001 	.db	00174$>>8
      003044 31                   12002 	.db	00179$>>8
      003045 33                   12003 	.db	00253$>>8
      003046 33                   12004 	.db	00253$>>8
      003047 32                   12005 	.db	00249$>>8
      003048 32                   12006 	.db	00250$>>8
      003049 32                   12007 	.db	00251$>>8
      00304A 32                   12008 	.db	00252$>>8
                           00261A 12009 	C$easyax5043.c$1932$2$729 ==.
                                  12010 ;	..\COMMON\easyax5043.c:1932: case AXRADIO_MODE_OFF:
      00304B                      12011 00129$:
                           00261A 12012 	C$easyax5043.c$1933$2$729 ==.
                                  12013 ;	..\COMMON\easyax5043.c:1933: return AXRADIO_ERR_NOERROR;
      00304B 75 82 00         [24]12014 	mov	dpl,#0x00
      00304E 02 33 09         [24]12015 	ljmp	00257$
                           002620 12016 	C$easyax5043.c$1935$2$729 ==.
                                  12017 ;	..\COMMON\easyax5043.c:1935: case AXRADIO_MODE_DEEPSLEEP:
      003051                      12018 00130$:
                           002620 12019 	C$easyax5043.c$1936$2$729 ==.
                                  12020 ;	..\COMMON\easyax5043.c:1936: ax5043_enter_deepsleep();
      003051 12 41 CE         [24]12021 	lcall	_ax5043_enter_deepsleep
                           002623 12022 	C$easyax5043.c$1937$2$729 ==.
                                  12023 ;	..\COMMON\easyax5043.c:1937: axradio_mode = AXRADIO_MODE_DEEPSLEEP;
      003054 75 08 02         [24]12024 	mov	_axradio_mode,#0x02
                           002626 12025 	C$easyax5043.c$1938$2$729 ==.
                                  12026 ;	..\COMMON\easyax5043.c:1938: return AXRADIO_ERR_NOERROR;
      003057 75 82 00         [24]12027 	mov	dpl,#0x00
      00305A 02 33 09         [24]12028 	ljmp	00257$
                           00262C 12029 	C$easyax5043.c$1940$2$729 ==.
                                  12030 ;	..\COMMON\easyax5043.c:1940: case AXRADIO_MODE_ASYNC_TRANSMIT:
      00305D                      12031 00131$:
                           00262C 12032 	C$easyax5043.c$1941$2$729 ==.
                                  12033 ;	..\COMMON\easyax5043.c:1941: case AXRADIO_MODE_ACK_TRANSMIT:
      00305D                      12034 00132$:
                           00262C 12035 	C$easyax5043.c$1942$2$729 ==.
                                  12036 ;	..\COMMON\easyax5043.c:1942: axradio_mode = mode;
      00305D 8F 08            [24]12037 	mov	_axradio_mode,r7
                           00262E 12038 	C$easyax5043.c$1943$2$729 ==.
                                  12039 ;	..\COMMON\easyax5043.c:1943: axradio_ack_seqnr = 0xff;
      00305F 90 00 0F         [24]12040 	mov	dptr,#_axradio_ack_seqnr
      003062 74 FF            [12]12041 	mov	a,#0xff
      003064 F0               [24]12042 	movx	@dptr,a
                           002634 12043 	C$easyax5043.c$1944$2$729 ==.
                                  12044 ;	..\COMMON\easyax5043.c:1944: ax5043_init_registers_tx();
      003065 12 0B 15         [24]12045 	lcall	_ax5043_init_registers_tx
                           002637 12046 	C$easyax5043.c$1945$2$729 ==.
                                  12047 ;	..\COMMON\easyax5043.c:1945: return AXRADIO_ERR_NOERROR;
      003068 75 82 00         [24]12048 	mov	dpl,#0x00
      00306B 02 33 09         [24]12049 	ljmp	00257$
                           00263D 12050 	C$easyax5043.c$1947$2$729 ==.
                                  12051 ;	..\COMMON\easyax5043.c:1947: case AXRADIO_MODE_WOR_TRANSMIT:
      00306E                      12052 00133$:
                           00263D 12053 	C$easyax5043.c$1948$2$729 ==.
                                  12054 ;	..\COMMON\easyax5043.c:1948: case AXRADIO_MODE_WOR_ACK_TRANSMIT:
      00306E                      12055 00134$:
                           00263D 12056 	C$easyax5043.c$1949$2$729 ==.
                                  12057 ;	..\COMMON\easyax5043.c:1949: axradio_mode = mode;
      00306E 8F 08            [24]12058 	mov	_axradio_mode,r7
                           00263F 12059 	C$easyax5043.c$1950$2$729 ==.
                                  12060 ;	..\COMMON\easyax5043.c:1950: axradio_ack_seqnr = 0xff;
      003070 90 00 0F         [24]12061 	mov	dptr,#_axradio_ack_seqnr
      003073 74 FF            [12]12062 	mov	a,#0xff
      003075 F0               [24]12063 	movx	@dptr,a
                           002645 12064 	C$easyax5043.c$1951$2$729 ==.
                                  12065 ;	..\COMMON\easyax5043.c:1951: ax5043_init_registers_tx();
      003076 12 0B 15         [24]12066 	lcall	_ax5043_init_registers_tx
                           002648 12067 	C$easyax5043.c$1952$2$729 ==.
                                  12068 ;	..\COMMON\easyax5043.c:1952: return AXRADIO_ERR_NOERROR;
      003079 75 82 00         [24]12069 	mov	dpl,#0x00
      00307C 02 33 09         [24]12070 	ljmp	00257$
                           00264E 12071 	C$easyax5043.c$1954$2$729 ==.
                                  12072 ;	..\COMMON\easyax5043.c:1954: case AXRADIO_MODE_ASYNC_RECEIVE:
      00307F                      12073 00135$:
                           00264E 12074 	C$easyax5043.c$1955$2$729 ==.
                                  12075 ;	..\COMMON\easyax5043.c:1955: case AXRADIO_MODE_ACK_RECEIVE:
      00307F                      12076 00136$:
                           00264E 12077 	C$easyax5043.c$1956$2$729 ==.
                                  12078 ;	..\COMMON\easyax5043.c:1956: axradio_mode = mode;
      00307F 8F 08            [24]12079 	mov	_axradio_mode,r7
                           002650 12080 	C$easyax5043.c$1957$2$729 ==.
                                  12081 ;	..\COMMON\easyax5043.c:1957: axradio_ack_seqnr = 0xff;
      003081 90 00 0F         [24]12082 	mov	dptr,#_axradio_ack_seqnr
      003084 74 FF            [12]12083 	mov	a,#0xff
      003086 F0               [24]12084 	movx	@dptr,a
                           002656 12085 	C$easyax5043.c$1958$2$729 ==.
                                  12086 ;	..\COMMON\easyax5043.c:1958: ax5043_init_registers_rx();
      003087 12 0B 1C         [24]12087 	lcall	_ax5043_init_registers_rx
                           002659 12088 	C$easyax5043.c$1959$2$729 ==.
                                  12089 ;	..\COMMON\easyax5043.c:1959: ax5043_receiver_on_continuous();
      00308A 12 15 F8         [24]12090 	lcall	_ax5043_receiver_on_continuous
                           00265C 12091 	C$easyax5043.c$1960$2$729 ==.
                                  12092 ;	..\COMMON\easyax5043.c:1960: enablecs:
      00308D                      12093 00137$:
                           00265C 12094 	C$easyax5043.c$1961$2$729 ==.
                                  12095 ;	..\COMMON\easyax5043.c:1961: if (axradio_phy_cs_enabled) {
      00308D 90 57 06         [24]12096 	mov	dptr,#_axradio_phy_cs_enabled
      003090 E4               [12]12097 	clr	a
      003091 93               [24]12098 	movc	a,@a+dptr
      003092 60 28            [24]12099 	jz	00139$
                           002663 12100 	C$easyax5043.c$1962$3$730 ==.
                                  12101 ;	..\COMMON\easyax5043.c:1962: wtimer_remove(&axradio_timer);
      003094 90 02 8E         [24]12102 	mov	dptr,#_axradio_timer
      003097 12 50 55         [24]12103 	lcall	_wtimer_remove
                           002669 12104 	C$easyax5043.c$1963$3$730 ==.
                                  12105 ;	..\COMMON\easyax5043.c:1963: axradio_timer.time = axradio_phy_cs_period;
      00309A 90 57 04         [24]12106 	mov	dptr,#_axradio_phy_cs_period
      00309D E4               [12]12107 	clr	a
      00309E 93               [24]12108 	movc	a,@a+dptr
      00309F FD               [12]12109 	mov	r5,a
      0030A0 74 01            [12]12110 	mov	a,#0x01
      0030A2 93               [24]12111 	movc	a,@a+dptr
      0030A3 FE               [12]12112 	mov	r6,a
      0030A4 7C 00            [12]12113 	mov	r4,#0x00
      0030A6 7B 00            [12]12114 	mov	r3,#0x00
      0030A8 90 02 92         [24]12115 	mov	dptr,#(_axradio_timer + 0x0004)
      0030AB ED               [12]12116 	mov	a,r5
      0030AC F0               [24]12117 	movx	@dptr,a
      0030AD EE               [12]12118 	mov	a,r6
      0030AE A3               [24]12119 	inc	dptr
      0030AF F0               [24]12120 	movx	@dptr,a
      0030B0 EC               [12]12121 	mov	a,r4
      0030B1 A3               [24]12122 	inc	dptr
      0030B2 F0               [24]12123 	movx	@dptr,a
      0030B3 EB               [12]12124 	mov	a,r3
      0030B4 A3               [24]12125 	inc	dptr
      0030B5 F0               [24]12126 	movx	@dptr,a
                           002685 12127 	C$easyax5043.c$1964$3$730 ==.
                                  12128 ;	..\COMMON\easyax5043.c:1964: wtimer0_addrelative(&axradio_timer);
      0030B6 90 02 8E         [24]12129 	mov	dptr,#_axradio_timer
      0030B9 12 47 0A         [24]12130 	lcall	_wtimer0_addrelative
      0030BC                      12131 00139$:
                           00268B 12132 	C$easyax5043.c$1966$2$729 ==.
                                  12133 ;	..\COMMON\easyax5043.c:1966: return AXRADIO_ERR_NOERROR;
      0030BC 75 82 00         [24]12134 	mov	dpl,#0x00
      0030BF 02 33 09         [24]12135 	ljmp	00257$
                           002691 12136 	C$easyax5043.c$1968$2$729 ==.
                                  12137 ;	..\COMMON\easyax5043.c:1968: case AXRADIO_MODE_WOR_RECEIVE:
      0030C2                      12138 00140$:
                           002691 12139 	C$easyax5043.c$1969$2$729 ==.
                                  12140 ;	..\COMMON\easyax5043.c:1969: case AXRADIO_MODE_WOR_ACK_RECEIVE:
      0030C2                      12141 00141$:
                           002691 12142 	C$easyax5043.c$1970$2$729 ==.
                                  12143 ;	..\COMMON\easyax5043.c:1970: axradio_ack_seqnr = 0xff;
      0030C2 90 00 0F         [24]12144 	mov	dptr,#_axradio_ack_seqnr
      0030C5 74 FF            [12]12145 	mov	a,#0xff
      0030C7 F0               [24]12146 	movx	@dptr,a
                           002697 12147 	C$easyax5043.c$1971$2$729 ==.
                                  12148 ;	..\COMMON\easyax5043.c:1971: axradio_mode = mode;
      0030C8 8F 08            [24]12149 	mov	_axradio_mode,r7
                           002699 12150 	C$easyax5043.c$1972$2$729 ==.
                                  12151 ;	..\COMMON\easyax5043.c:1972: ax5043_init_registers_rx();
      0030CA 12 0B 1C         [24]12152 	lcall	_ax5043_init_registers_rx
                           00269C 12153 	C$easyax5043.c$1973$2$729 ==.
                                  12154 ;	..\COMMON\easyax5043.c:1973: ax5043_receiver_on_wor();
      0030CD 12 16 5F         [24]12155 	lcall	_ax5043_receiver_on_wor
                           00269F 12156 	C$easyax5043.c$1974$2$729 ==.
                                  12157 ;	..\COMMON\easyax5043.c:1974: return AXRADIO_ERR_NOERROR;
      0030D0 75 82 00         [24]12158 	mov	dpl,#0x00
      0030D3 02 33 09         [24]12159 	ljmp	00257$
                           0026A5 12160 	C$easyax5043.c$1976$2$729 ==.
                                  12161 ;	..\COMMON\easyax5043.c:1976: case AXRADIO_MODE_STREAM_TRANSMIT:
      0030D6                      12162 00142$:
                           0026A5 12163 	C$easyax5043.c$1977$2$729 ==.
                                  12164 ;	..\COMMON\easyax5043.c:1977: case AXRADIO_MODE_STREAM_TRANSMIT_UNENC:
      0030D6                      12165 00143$:
                           0026A5 12166 	C$easyax5043.c$1978$2$729 ==.
                                  12167 ;	..\COMMON\easyax5043.c:1978: case AXRADIO_MODE_STREAM_TRANSMIT_SCRAM:
      0030D6                      12168 00144$:
                           0026A5 12169 	C$easyax5043.c$1979$2$729 ==.
                                  12170 ;	..\COMMON\easyax5043.c:1979: case AXRADIO_MODE_STREAM_TRANSMIT_UNENC_LSB:
      0030D6                      12171 00145$:
                           0026A5 12172 	C$easyax5043.c$1980$2$729 ==.
                                  12173 ;	..\COMMON\easyax5043.c:1980: case AXRADIO_MODE_STREAM_TRANSMIT_SCRAM_LSB:
      0030D6                      12174 00146$:
                           0026A5 12175 	C$easyax5043.c$1981$2$729 ==.
                                  12176 ;	..\COMMON\easyax5043.c:1981: axradio_mode = mode;
      0030D6 8F 08            [24]12177 	mov	_axradio_mode,r7
                           0026A7 12178 	C$easyax5043.c$1982$2$729 ==.
                                  12179 ;	..\COMMON\easyax5043.c:1982: if (axradio_mode == AXRADIO_MODE_STREAM_TRANSMIT_UNENC ||
      0030D8 74 18            [12]12180 	mov	a,#0x18
      0030DA B5 08 02         [24]12181 	cjne	a,_axradio_mode,00380$
      0030DD 80 05            [24]12182 	sjmp	00147$
      0030DF                      12183 00380$:
                           0026AE 12184 	C$easyax5043.c$1983$2$729 ==.
                                  12185 ;	..\COMMON\easyax5043.c:1983: axradio_mode == AXRADIO_MODE_STREAM_TRANSMIT_UNENC_LSB)
      0030DF 74 1A            [12]12186 	mov	a,#0x1a
      0030E1 B5 08 05         [24]12187 	cjne	a,_axradio_mode,00151$
                           0026B3 12188 	C$easyax5043.c$1984$2$729 ==.
                                  12189 ;	..\COMMON\easyax5043.c:1984: radio_write8(AX5043_REG_ENCODING, 0);
      0030E4                      12190 00147$:
      0030E4 90 40 11         [24]12191 	mov	dptr,#0x4011
      0030E7 E4               [12]12192 	clr	a
      0030E8 F0               [24]12193 	movx	@dptr,a
      0030E9                      12194 00151$:
                           0026B8 12195 	C$easyax5043.c$1985$2$729 ==.
                                  12196 ;	..\COMMON\easyax5043.c:1985: if (axradio_mode == AXRADIO_MODE_STREAM_TRANSMIT_SCRAM ||
      0030E9 74 19            [12]12197 	mov	a,#0x19
      0030EB B5 08 02         [24]12198 	cjne	a,_axradio_mode,00383$
      0030EE 80 05            [24]12199 	sjmp	00153$
      0030F0                      12200 00383$:
                           0026BF 12201 	C$easyax5043.c$1986$2$729 ==.
                                  12202 ;	..\COMMON\easyax5043.c:1986: axradio_mode == AXRADIO_MODE_STREAM_TRANSMIT_SCRAM_LSB)
      0030F0 74 1B            [12]12203 	mov	a,#0x1b
      0030F2 B5 08 06         [24]12204 	cjne	a,_axradio_mode,00157$
                           0026C4 12205 	C$easyax5043.c$1987$2$729 ==.
                                  12206 ;	..\COMMON\easyax5043.c:1987: radio_write8(AX5043_REG_ENCODING, 4);
      0030F5                      12207 00153$:
      0030F5 90 40 11         [24]12208 	mov	dptr,#0x4011
      0030F8 74 04            [12]12209 	mov	a,#0x04
      0030FA F0               [24]12210 	movx	@dptr,a
      0030FB                      12211 00157$:
                           0026CA 12212 	C$easyax5043.c$1988$2$729 ==.
                                  12213 ;	..\COMMON\easyax5043.c:1988: if (axradio_mode == AXRADIO_MODE_STREAM_TRANSMIT_UNENC_LSB ||
      0030FB 74 1A            [12]12214 	mov	a,#0x1a
      0030FD B5 08 02         [24]12215 	cjne	a,_axradio_mode,00386$
      003100 80 05            [24]12216 	sjmp	00159$
      003102                      12217 00386$:
                           0026D1 12218 	C$easyax5043.c$1989$2$729 ==.
                                  12219 ;	..\COMMON\easyax5043.c:1989: axradio_mode == AXRADIO_MODE_STREAM_TRANSMIT_SCRAM_LSB)
      003102 74 1B            [12]12220 	mov	a,#0x1b
      003104 B5 08 08         [24]12221 	cjne	a,_axradio_mode,00163$
                           0026D6 12222 	C$easyax5043.c$1990$2$729 ==.
                                  12223 ;	..\COMMON\easyax5043.c:1990: radio_write8(AX5043_REG_PKTADDRCFG, (radio_read8(AX5043_REG_PKTADDRCFG) & 0x7F));
      003107                      12224 00159$:
      003107 90 42 00         [24]12225 	mov	dptr,#0x4200
      00310A E0               [24]12226 	movx	a,@dptr
      00310B 54 7F            [12]12227 	anl	a,#0x7f
      00310D FE               [12]12228 	mov	r6,a
      00310E F0               [24]12229 	movx	@dptr,a
      00310F                      12230 00163$:
                           0026DE 12231 	C$easyax5043.c$1991$2$729 ==.
                                  12232 ;	..\COMMON\easyax5043.c:1991: ax5043_init_registers_tx();
      00310F 12 0B 15         [24]12233 	lcall	_ax5043_init_registers_tx
                           0026E1 12234 	C$easyax5043.c$1992$3$734 ==.
                                  12235 ;	..\COMMON\easyax5043.c:1992: radio_write8(AX5043_REG_FRAMING, 0);
      003112 90 40 12         [24]12236 	mov	dptr,#0x4012
      003115 E4               [12]12237 	clr	a
      003116 F0               [24]12238 	movx	@dptr,a
                           0026E6 12239 	C$easyax5043.c$1993$2$729 ==.
                                  12240 ;	..\COMMON\easyax5043.c:1993: ax5043_prepare_tx();
      003117 12 17 1E         [24]12241 	lcall	_ax5043_prepare_tx
                           0026E9 12242 	C$easyax5043.c$1994$2$729 ==.
                                  12243 ;	..\COMMON\easyax5043.c:1994: axradio_trxstate = trxstate_txstream_xtalwait;
      00311A 75 09 0F         [24]12244 	mov	_axradio_trxstate,#0x0f
                           0026EC 12245 	C$easyax5043.c$1995$2$729 ==.
                                  12246 ;	..\COMMON\easyax5043.c:1995: while (!(radio_read8(AX5043_REG_POWSTAT) & 0x08)) {}; // wait for modem vdd so writing the FIFO is safe
      00311D                      12247 00168$:
      00311D 90 40 03         [24]12248 	mov	dptr,#0x4003
      003120 E0               [24]12249 	movx	a,@dptr
      003121 FE               [12]12250 	mov	r6,a
      003122 30 E3 F8         [24]12251 	jnb	acc.3,00168$
                           0026F4 12252 	C$easyax5043.c$1996$3$736 ==.
                                  12253 ;	..\COMMON\easyax5043.c:1996: radio_write8(AX5043_REG_FIFOSTAT, 3); // clear FIFO data & flags (prevent transmitting anything left over in the FIFO, this has no effect if the FIFO is not powerered, in this case it is reset any way)
      003125 90 40 28         [24]12254 	mov	dptr,#0x4028
      003128 74 03            [12]12255 	mov	a,#0x03
      00312A F0               [24]12256 	movx	@dptr,a
                           0026FA 12257 	C$easyax5043.c$1997$2$729 ==.
                                  12258 ;	..\COMMON\easyax5043.c:1997: radio_read8(AX5043_REG_RADIOEVENTREQ0); // make sure REVRDONE bit is cleared, so it is a reliable indicator that the packet is out
      00312B 90 40 0F         [24]12259 	mov	dptr,#0x400f
      00312E E0               [24]12260 	movx	a,@dptr
                           0026FE 12261 	C$easyax5043.c$1998$2$729 ==.
                                  12262 ;	..\COMMON\easyax5043.c:1998: update_timeanchor();
      00312F 12 0A 31         [24]12263 	lcall	_update_timeanchor
                           002701 12264 	C$easyax5043.c$1999$2$729 ==.
                                  12265 ;	..\COMMON\easyax5043.c:1999: wtimer_remove_callback(&axradio_cb_transmitdata.cb);
      003132 90 02 84         [24]12266 	mov	dptr,#_axradio_cb_transmitdata
      003135 12 52 63         [24]12267 	lcall	_wtimer_remove_callback
                           002707 12268 	C$easyax5043.c$2000$2$729 ==.
                                  12269 ;	..\COMMON\easyax5043.c:2000: axradio_cb_transmitdata.st.error = AXRADIO_ERR_NOERROR;
      003138 90 02 89         [24]12270 	mov	dptr,#(_axradio_cb_transmitdata + 0x0005)
      00313B E4               [12]12271 	clr	a
      00313C F0               [24]12272 	movx	@dptr,a
                           00270C 12273 	C$easyax5043.c$2001$2$729 ==.
                                  12274 ;	..\COMMON\easyax5043.c:2001: axradio_cb_transmitdata.st.time.t = axradio_timeanchor.radiotimer;
      00313D 90 00 1A         [24]12275 	mov	dptr,#(_axradio_timeanchor + 0x0004)
      003140 E0               [24]12276 	movx	a,@dptr
      003141 FB               [12]12277 	mov	r3,a
      003142 A3               [24]12278 	inc	dptr
      003143 E0               [24]12279 	movx	a,@dptr
      003144 FC               [12]12280 	mov	r4,a
      003145 A3               [24]12281 	inc	dptr
      003146 E0               [24]12282 	movx	a,@dptr
      003147 FD               [12]12283 	mov	r5,a
      003148 A3               [24]12284 	inc	dptr
      003149 E0               [24]12285 	movx	a,@dptr
      00314A FE               [12]12286 	mov	r6,a
      00314B 90 02 8A         [24]12287 	mov	dptr,#(_axradio_cb_transmitdata + 0x0006)
      00314E EB               [12]12288 	mov	a,r3
      00314F F0               [24]12289 	movx	@dptr,a
      003150 EC               [12]12290 	mov	a,r4
      003151 A3               [24]12291 	inc	dptr
      003152 F0               [24]12292 	movx	@dptr,a
      003153 ED               [12]12293 	mov	a,r5
      003154 A3               [24]12294 	inc	dptr
      003155 F0               [24]12295 	movx	@dptr,a
      003156 EE               [12]12296 	mov	a,r6
      003157 A3               [24]12297 	inc	dptr
      003158 F0               [24]12298 	movx	@dptr,a
                           002728 12299 	C$easyax5043.c$2002$2$729 ==.
                                  12300 ;	..\COMMON\easyax5043.c:2002: wtimer_add_callback(&axradio_cb_transmitdata.cb);
      003159 90 02 84         [24]12301 	mov	dptr,#_axradio_cb_transmitdata
      00315C 12 46 F0         [24]12302 	lcall	_wtimer_add_callback
                           00272E 12303 	C$easyax5043.c$2003$2$729 ==.
                                  12304 ;	..\COMMON\easyax5043.c:2003: return AXRADIO_ERR_NOERROR;
      00315F 75 82 00         [24]12305 	mov	dpl,#0x00
      003162 02 33 09         [24]12306 	ljmp	00257$
                           002734 12307 	C$easyax5043.c$2005$2$729 ==.
                                  12308 ;	..\COMMON\easyax5043.c:2005: case AXRADIO_MODE_STREAM_RECEIVE:
      003165                      12309 00174$:
                           002734 12310 	C$easyax5043.c$2006$2$729 ==.
                                  12311 ;	..\COMMON\easyax5043.c:2006: case AXRADIO_MODE_STREAM_RECEIVE_UNENC:
      003165                      12312 00175$:
                           002734 12313 	C$easyax5043.c$2007$2$729 ==.
                                  12314 ;	..\COMMON\easyax5043.c:2007: case AXRADIO_MODE_STREAM_RECEIVE_SCRAM:
      003165                      12315 00176$:
                           002734 12316 	C$easyax5043.c$2008$2$729 ==.
                                  12317 ;	..\COMMON\easyax5043.c:2008: case AXRADIO_MODE_STREAM_RECEIVE_UNENC_LSB:
      003165                      12318 00177$:
                           002734 12319 	C$easyax5043.c$2009$2$729 ==.
                                  12320 ;	..\COMMON\easyax5043.c:2009: case AXRADIO_MODE_STREAM_RECEIVE_SCRAM_LSB:
      003165                      12321 00178$:
                           002734 12322 	C$easyax5043.c$2010$2$729 ==.
                                  12323 ;	..\COMMON\easyax5043.c:2010: case AXRADIO_MODE_STREAM_RECEIVE_DATAPIN:
      003165                      12324 00179$:
                           002734 12325 	C$easyax5043.c$2011$2$729 ==.
                                  12326 ;	..\COMMON\easyax5043.c:2011: axradio_mode = mode;
      003165 8F 08            [24]12327 	mov	_axradio_mode,r7
                           002736 12328 	C$easyax5043.c$2012$2$729 ==.
                                  12329 ;	..\COMMON\easyax5043.c:2012: ax5043_init_registers_rx();
      003167 12 0B 1C         [24]12330 	lcall	_ax5043_init_registers_rx
                           002739 12331 	C$easyax5043.c$2013$2$729 ==.
                                  12332 ;	..\COMMON\easyax5043.c:2013: if (axradio_mode == AXRADIO_MODE_STREAM_RECEIVE_UNENC ||
      00316A 74 28            [12]12333 	mov	a,#0x28
      00316C B5 08 02         [24]12334 	cjne	a,_axradio_mode,00390$
      00316F 80 05            [24]12335 	sjmp	00180$
      003171                      12336 00390$:
                           002740 12337 	C$easyax5043.c$2014$2$729 ==.
                                  12338 ;	..\COMMON\easyax5043.c:2014: axradio_mode == AXRADIO_MODE_STREAM_RECEIVE_UNENC_LSB)
      003171 74 2A            [12]12339 	mov	a,#0x2a
      003173 B5 08 05         [24]12340 	cjne	a,_axradio_mode,00184$
                           002745 12341 	C$easyax5043.c$2015$2$729 ==.
                                  12342 ;	..\COMMON\easyax5043.c:2015: radio_write8(AX5043_REG_ENCODING, 0);
      003176                      12343 00180$:
      003176 90 40 11         [24]12344 	mov	dptr,#0x4011
      003179 E4               [12]12345 	clr	a
      00317A F0               [24]12346 	movx	@dptr,a
      00317B                      12347 00184$:
                           00274A 12348 	C$easyax5043.c$2016$2$729 ==.
                                  12349 ;	..\COMMON\easyax5043.c:2016: if (axradio_mode == AXRADIO_MODE_STREAM_RECEIVE_SCRAM ||
      00317B 74 29            [12]12350 	mov	a,#0x29
      00317D B5 08 02         [24]12351 	cjne	a,_axradio_mode,00393$
      003180 80 05            [24]12352 	sjmp	00186$
      003182                      12353 00393$:
                           002751 12354 	C$easyax5043.c$2017$2$729 ==.
                                  12355 ;	..\COMMON\easyax5043.c:2017: axradio_mode == AXRADIO_MODE_STREAM_RECEIVE_SCRAM_LSB)
      003182 74 2B            [12]12356 	mov	a,#0x2b
      003184 B5 08 06         [24]12357 	cjne	a,_axradio_mode,00190$
                           002756 12358 	C$easyax5043.c$2018$2$729 ==.
                                  12359 ;	..\COMMON\easyax5043.c:2018: radio_write8(AX5043_REG_ENCODING, 4);
      003187                      12360 00186$:
      003187 90 40 11         [24]12361 	mov	dptr,#0x4011
      00318A 74 04            [12]12362 	mov	a,#0x04
      00318C F0               [24]12363 	movx	@dptr,a
      00318D                      12364 00190$:
                           00275C 12365 	C$easyax5043.c$2019$2$729 ==.
                                  12366 ;	..\COMMON\easyax5043.c:2019: if (axradio_mode == AXRADIO_MODE_STREAM_RECEIVE_UNENC_LSB ||
      00318D 74 2A            [12]12367 	mov	a,#0x2a
      00318F B5 08 02         [24]12368 	cjne	a,_axradio_mode,00396$
      003192 80 05            [24]12369 	sjmp	00192$
      003194                      12370 00396$:
                           002763 12371 	C$easyax5043.c$2020$2$729 ==.
                                  12372 ;	..\COMMON\easyax5043.c:2020: axradio_mode == AXRADIO_MODE_STREAM_RECEIVE_SCRAM_LSB)
      003194 74 2B            [12]12373 	mov	a,#0x2b
      003196 B5 08 08         [24]12374 	cjne	a,_axradio_mode,00198$
                           002768 12375 	C$easyax5043.c$2021$2$729 ==.
                                  12376 ;	..\COMMON\easyax5043.c:2021: radio_write8(AX5043_REG_PKTADDRCFG, (radio_read8(AX5043_REG_PKTADDRCFG) & 0x7F));
      003199                      12377 00192$:
      003199 90 42 00         [24]12378 	mov	dptr,#0x4200
      00319C E0               [24]12379 	movx	a,@dptr
      00319D 54 7F            [12]12380 	anl	a,#0x7f
      00319F FE               [12]12381 	mov	r6,a
      0031A0 F0               [24]12382 	movx	@dptr,a
                           002770 12383 	C$easyax5043.c$2022$2$729 ==.
                                  12384 ;	..\COMMON\easyax5043.c:2022: radio_write8(AX5043_REG_FRAMING, 0);
      0031A1                      12385 00198$:
      0031A1 90 40 12         [24]12386 	mov	dptr,#0x4012
      0031A4 E4               [12]12387 	clr	a
      0031A5 F0               [24]12388 	movx	@dptr,a
                           002775 12389 	C$easyax5043.c$2023$3$741 ==.
                                  12390 ;	..\COMMON\easyax5043.c:2023: radio_write8(AX5043_REG_PKTCHUNKSIZE, 8); // 64 byte
      0031A6 90 42 30         [24]12391 	mov	dptr,#0x4230
      0031A9 74 08            [12]12392 	mov	a,#0x08
      0031AB F0               [24]12393 	movx	@dptr,a
                           00277B 12394 	C$easyax5043.c$2024$3$742 ==.
                                  12395 ;	..\COMMON\easyax5043.c:2024: radio_write8(AX5043_REG_RXPARAMSETS, 0x00);
      0031AC 90 41 17         [24]12396 	mov	dptr,#0x4117
      0031AF E4               [12]12397 	clr	a
      0031B0 F0               [24]12398 	movx	@dptr,a
                           002780 12399 	C$easyax5043.c$2025$2$729 ==.
                                  12400 ;	..\COMMON\easyax5043.c:2025: if (axradio_mode == AXRADIO_MODE_STREAM_RECEIVE_DATAPIN) {
      0031B1 74 2D            [12]12401 	mov	a,#0x2d
      0031B3 B5 08 0D         [24]12402 	cjne	a,_axradio_mode,00214$
                           002785 12403 	C$easyax5043.c$2026$3$743 ==.
                                  12404 ;	..\COMMON\easyax5043.c:2026: ax5043_set_registers_rxcont_singleparamset();
      0031B6 12 06 AC         [24]12405 	lcall	_ax5043_set_registers_rxcont_singleparamset
                           002788 12406 	C$easyax5043.c$2027$4$744 ==.
                                  12407 ;	..\COMMON\easyax5043.c:2027: radio_write8(AX5043_REG_PINFUNCDATA, 0x04);
      0031B9 90 40 23         [24]12408 	mov	dptr,#0x4023
      0031BC 74 04            [12]12409 	mov	a,#0x04
      0031BE F0               [24]12410 	movx	@dptr,a
                           00278E 12411 	C$easyax5043.c$2028$4$745 ==.
                                  12412 ;	..\COMMON\easyax5043.c:2028: radio_write8(AX5043_REG_PINFUNCDCLK, 0x04);
      0031BF 90 40 22         [24]12413 	mov	dptr,#0x4022
      0031C2 F0               [24]12414 	movx	@dptr,a
      0031C3                      12415 00214$:
                           002792 12416 	C$easyax5043.c$2030$2$729 ==.
                                  12417 ;	..\COMMON\easyax5043.c:2030: ax5043_receiver_on_continuous();
      0031C3 12 15 F8         [24]12418 	lcall	_ax5043_receiver_on_continuous
                           002795 12419 	C$easyax5043.c$2031$2$729 ==.
                                  12420 ;	..\COMMON\easyax5043.c:2031: goto enablecs;
      0031C6 02 30 8D         [24]12421 	ljmp	00137$
                           002798 12422 	C$easyax5043.c$2033$2$729 ==.
                                  12423 ;	..\COMMON\easyax5043.c:2033: case AXRADIO_MODE_CW_TRANSMIT:
      0031C9                      12424 00215$:
                           002798 12425 	C$easyax5043.c$2034$2$729 ==.
                                  12426 ;	..\COMMON\easyax5043.c:2034: axradio_mode = AXRADIO_MODE_CW_TRANSMIT;
      0031C9 75 08 03         [24]12427 	mov	_axradio_mode,#0x03
                           00279B 12428 	C$easyax5043.c$2035$2$729 ==.
                                  12429 ;	..\COMMON\easyax5043.c:2035: ax5043_init_registers_tx();
      0031CC 12 0B 15         [24]12430 	lcall	_ax5043_init_registers_tx
                           00279E 12431 	C$easyax5043.c$2036$3$746 ==.
                                  12432 ;	..\COMMON\easyax5043.c:2036: radio_write8(AX5043_REG_MODULATION, 8);   // Set an FSK mode
      0031CF 90 40 10         [24]12433 	mov	dptr,#0x4010
      0031D2 74 08            [12]12434 	mov	a,#0x08
      0031D4 F0               [24]12435 	movx	@dptr,a
                           0027A4 12436 	C$easyax5043.c$2037$3$747 ==.
                                  12437 ;	..\COMMON\easyax5043.c:2037: radio_write8(AX5043_REG_FSKDEV2, 0x00);
      0031D5 90 41 61         [24]12438 	mov	dptr,#0x4161
      0031D8 E4               [12]12439 	clr	a
      0031D9 F0               [24]12440 	movx	@dptr,a
                           0027A9 12441 	C$easyax5043.c$2038$3$748 ==.
                                  12442 ;	..\COMMON\easyax5043.c:2038: radio_write8(AX5043_REG_FSKDEV1, 0x00);
      0031DA 90 41 62         [24]12443 	mov	dptr,#0x4162
      0031DD F0               [24]12444 	movx	@dptr,a
                           0027AD 12445 	C$easyax5043.c$2039$3$749 ==.
                                  12446 ;	..\COMMON\easyax5043.c:2039: radio_write8(AX5043_REG_FSKDEV0, 0x00);
      0031DE 90 41 63         [24]12447 	mov	dptr,#0x4163
      0031E1 F0               [24]12448 	movx	@dptr,a
                           0027B1 12449 	C$easyax5043.c$2040$3$750 ==.
                                  12450 ;	..\COMMON\easyax5043.c:2040: radio_write8(AX5043_REG_TXRATE2, 0x00);
      0031E2 90 41 65         [24]12451 	mov	dptr,#0x4165
      0031E5 F0               [24]12452 	movx	@dptr,a
                           0027B5 12453 	C$easyax5043.c$2041$3$751 ==.
                                  12454 ;	..\COMMON\easyax5043.c:2041: radio_write8(AX5043_REG_TXRATE1, 0x00);
      0031E6 90 41 66         [24]12455 	mov	dptr,#0x4166
      0031E9 F0               [24]12456 	movx	@dptr,a
                           0027B9 12457 	C$easyax5043.c$2042$3$752 ==.
                                  12458 ;	..\COMMON\easyax5043.c:2042: radio_write8(AX5043_REG_TXRATE0, 0x01);
      0031EA 90 41 67         [24]12459 	mov	dptr,#0x4167
      0031ED 04               [12]12460 	inc	a
      0031EE F0               [24]12461 	movx	@dptr,a
                           0027BE 12462 	C$easyax5043.c$2043$3$753 ==.
                                  12463 ;	..\COMMON\easyax5043.c:2043: radio_write8(AX5043_REG_PINFUNCDATA, 0x04);
      0031EF 90 40 23         [24]12464 	mov	dptr,#0x4023
      0031F2 74 04            [12]12465 	mov	a,#0x04
      0031F4 F0               [24]12466 	movx	@dptr,a
                           0027C4 12467 	C$easyax5043.c$2044$3$754 ==.
                                  12468 ;	..\COMMON\easyax5043.c:2044: radio_write8(AX5043_REG_PWRMODE, AX5043_PWRSTATE_FIFO_ON);
      0031F5 90 40 02         [24]12469 	mov	dptr,#0x4002
      0031F8 74 07            [12]12470 	mov	a,#0x07
      0031FA F0               [24]12471 	movx	@dptr,a
                           0027CA 12472 	C$easyax5043.c$2045$2$729 ==.
                                  12473 ;	..\COMMON\easyax5043.c:2045: axradio_trxstate = trxstate_txcw_xtalwait;
      0031FB 75 09 0E         [24]12474 	mov	_axradio_trxstate,#0x0e
                           0027CD 12475 	C$easyax5043.c$2046$3$755 ==.
                                  12476 ;	..\COMMON\easyax5043.c:2046: radio_write8(AX5043_REG_IRQMASK0, 0x00);
      0031FE 90 40 07         [24]12477 	mov	dptr,#0x4007
      003201 E4               [12]12478 	clr	a
      003202 F0               [24]12479 	movx	@dptr,a
                           0027D2 12480 	C$easyax5043.c$2047$3$756 ==.
                                  12481 ;	..\COMMON\easyax5043.c:2047: radio_write8(AX5043_REG_IRQMASK1, 0x01); // enable xtal ready interrupt
      003203 90 40 06         [24]12482 	mov	dptr,#0x4006
      003206 04               [12]12483 	inc	a
      003207 F0               [24]12484 	movx	@dptr,a
                           0027D7 12485 	C$easyax5043.c$2048$2$729 ==.
                                  12486 ;	..\COMMON\easyax5043.c:2048: return AXRADIO_ERR_NOERROR;
      003208 75 82 00         [24]12487 	mov	dpl,#0x00
      00320B 02 33 09         [24]12488 	ljmp	00257$
                           0027DD 12489 	C$easyax5043.c$2050$2$729 ==.
                                  12490 ;	..\COMMON\easyax5043.c:2050: case AXRADIO_MODE_SYNC_MASTER:
      00320E                      12491 00249$:
                           0027DD 12492 	C$easyax5043.c$2051$2$729 ==.
                                  12493 ;	..\COMMON\easyax5043.c:2051: case AXRADIO_MODE_SYNC_ACK_MASTER:
      00320E                      12494 00250$:
                           0027DD 12495 	C$easyax5043.c$2052$2$729 ==.
                                  12496 ;	..\COMMON\easyax5043.c:2052: axradio_mode = mode;
      00320E 8F 08            [24]12497 	mov	_axradio_mode,r7
                           0027DF 12498 	C$easyax5043.c$2053$2$729 ==.
                                  12499 ;	..\COMMON\easyax5043.c:2053: axradio_syncstate = syncstate_master_normal;
      003210 90 00 04         [24]12500 	mov	dptr,#_axradio_syncstate
      003213 74 03            [12]12501 	mov	a,#0x03
      003215 F0               [24]12502 	movx	@dptr,a
                           0027E5 12503 	C$easyax5043.c$2055$2$729 ==.
                                  12504 ;	..\COMMON\easyax5043.c:2055: wtimer_remove(&axradio_timer);
      003216 90 02 8E         [24]12505 	mov	dptr,#_axradio_timer
      003219 12 50 55         [24]12506 	lcall	_wtimer_remove
                           0027EB 12507 	C$easyax5043.c$2056$2$729 ==.
                                  12508 ;	..\COMMON\easyax5043.c:2056: axradio_timer.time = 2;
      00321C 90 02 92         [24]12509 	mov	dptr,#(_axradio_timer + 0x0004)
      00321F 74 02            [12]12510 	mov	a,#0x02
      003221 F0               [24]12511 	movx	@dptr,a
      003222 E4               [12]12512 	clr	a
      003223 A3               [24]12513 	inc	dptr
      003224 F0               [24]12514 	movx	@dptr,a
      003225 A3               [24]12515 	inc	dptr
      003226 F0               [24]12516 	movx	@dptr,a
      003227 A3               [24]12517 	inc	dptr
      003228 F0               [24]12518 	movx	@dptr,a
                           0027F8 12519 	C$easyax5043.c$2057$2$729 ==.
                                  12520 ;	..\COMMON\easyax5043.c:2057: wtimer0_addrelative(&axradio_timer);
      003229 90 02 8E         [24]12521 	mov	dptr,#_axradio_timer
      00322C 12 47 0A         [24]12522 	lcall	_wtimer0_addrelative
                           0027FE 12523 	C$easyax5043.c$2058$2$729 ==.
                                  12524 ;	..\COMMON\easyax5043.c:2058: axradio_sync_time = axradio_timer.time;
      00322F 90 02 92         [24]12525 	mov	dptr,#(_axradio_timer + 0x0004)
      003232 E0               [24]12526 	movx	a,@dptr
      003233 FB               [12]12527 	mov	r3,a
      003234 A3               [24]12528 	inc	dptr
      003235 E0               [24]12529 	movx	a,@dptr
      003236 FC               [12]12530 	mov	r4,a
      003237 A3               [24]12531 	inc	dptr
      003238 E0               [24]12532 	movx	a,@dptr
      003239 FD               [12]12533 	mov	r5,a
      00323A A3               [24]12534 	inc	dptr
      00323B E0               [24]12535 	movx	a,@dptr
      00323C FE               [12]12536 	mov	r6,a
      00323D 90 00 10         [24]12537 	mov	dptr,#_axradio_sync_time
      003240 EB               [12]12538 	mov	a,r3
      003241 F0               [24]12539 	movx	@dptr,a
      003242 EC               [12]12540 	mov	a,r4
      003243 A3               [24]12541 	inc	dptr
      003244 F0               [24]12542 	movx	@dptr,a
      003245 ED               [12]12543 	mov	a,r5
      003246 A3               [24]12544 	inc	dptr
      003247 F0               [24]12545 	movx	@dptr,a
      003248 EE               [12]12546 	mov	a,r6
      003249 A3               [24]12547 	inc	dptr
      00324A F0               [24]12548 	movx	@dptr,a
                           00281A 12549 	C$easyax5043.c$2059$2$729 ==.
                                  12550 ;	..\COMMON\easyax5043.c:2059: axradio_sync_addtime(axradio_sync_xoscstartup);
      00324B 90 57 35         [24]12551 	mov	dptr,#_axradio_sync_xoscstartup
      00324E E4               [12]12552 	clr	a
      00324F 93               [24]12553 	movc	a,@a+dptr
      003250 FB               [12]12554 	mov	r3,a
      003251 74 01            [12]12555 	mov	a,#0x01
      003253 93               [24]12556 	movc	a,@a+dptr
      003254 FC               [12]12557 	mov	r4,a
      003255 74 02            [12]12558 	mov	a,#0x02
      003257 93               [24]12559 	movc	a,@a+dptr
      003258 FD               [12]12560 	mov	r5,a
      003259 74 03            [12]12561 	mov	a,#0x03
      00325B 93               [24]12562 	movc	a,@a+dptr
      00325C 8B 82            [24]12563 	mov	dpl,r3
      00325E 8C 83            [24]12564 	mov	dph,r4
      003260 8D F0            [24]12565 	mov	b,r5
      003262 12 19 04         [24]12566 	lcall	_axradio_sync_addtime
                           002834 12567 	C$easyax5043.c$2060$2$729 ==.
                                  12568 ;	..\COMMON\easyax5043.c:2060: return AXRADIO_ERR_NOERROR;
      003265 75 82 00         [24]12569 	mov	dpl,#0x00
      003268 02 33 09         [24]12570 	ljmp	00257$
                           00283A 12571 	C$easyax5043.c$2062$2$729 ==.
                                  12572 ;	..\COMMON\easyax5043.c:2062: case AXRADIO_MODE_SYNC_SLAVE:
      00326B                      12573 00251$:
                           00283A 12574 	C$easyax5043.c$2063$2$729 ==.
                                  12575 ;	..\COMMON\easyax5043.c:2063: case AXRADIO_MODE_SYNC_ACK_SLAVE:
      00326B                      12576 00252$:
                           00283A 12577 	C$easyax5043.c$2064$2$729 ==.
                                  12578 ;	..\COMMON\easyax5043.c:2064: axradio_mode = mode;
      00326B 8F 08            [24]12579 	mov	_axradio_mode,r7
                           00283C 12580 	C$easyax5043.c$2065$2$729 ==.
                                  12581 ;	..\COMMON\easyax5043.c:2065: ax5043_init_registers_rx();
      00326D 12 0B 1C         [24]12582 	lcall	_ax5043_init_registers_rx
                           00283F 12583 	C$easyax5043.c$2066$2$729 ==.
                                  12584 ;	..\COMMON\easyax5043.c:2066: ax5043_receiver_on_continuous();
      003270 12 15 F8         [24]12585 	lcall	_ax5043_receiver_on_continuous
                           002842 12586 	C$easyax5043.c$2067$2$729 ==.
                                  12587 ;	..\COMMON\easyax5043.c:2067: axradio_syncstate = syncstate_slave_synchunt;
      003273 90 00 04         [24]12588 	mov	dptr,#_axradio_syncstate
      003276 74 06            [12]12589 	mov	a,#0x06
      003278 F0               [24]12590 	movx	@dptr,a
                           002848 12591 	C$easyax5043.c$2068$2$729 ==.
                                  12592 ;	..\COMMON\easyax5043.c:2068: wtimer_remove(&axradio_timer);
      003279 90 02 8E         [24]12593 	mov	dptr,#_axradio_timer
      00327C 12 50 55         [24]12594 	lcall	_wtimer_remove
                           00284E 12595 	C$easyax5043.c$2069$2$729 ==.
                                  12596 ;	..\COMMON\easyax5043.c:2069: axradio_timer.time = axradio_sync_slave_initialsyncwindow;
      00327F 90 57 3D         [24]12597 	mov	dptr,#_axradio_sync_slave_initialsyncwindow
      003282 E4               [12]12598 	clr	a
      003283 93               [24]12599 	movc	a,@a+dptr
      003284 FC               [12]12600 	mov	r4,a
      003285 74 01            [12]12601 	mov	a,#0x01
      003287 93               [24]12602 	movc	a,@a+dptr
      003288 FD               [12]12603 	mov	r5,a
      003289 74 02            [12]12604 	mov	a,#0x02
      00328B 93               [24]12605 	movc	a,@a+dptr
      00328C FE               [12]12606 	mov	r6,a
      00328D 74 03            [12]12607 	mov	a,#0x03
      00328F 93               [24]12608 	movc	a,@a+dptr
      003290 FF               [12]12609 	mov	r7,a
      003291 90 02 92         [24]12610 	mov	dptr,#(_axradio_timer + 0x0004)
      003294 EC               [12]12611 	mov	a,r4
      003295 F0               [24]12612 	movx	@dptr,a
      003296 ED               [12]12613 	mov	a,r5
      003297 A3               [24]12614 	inc	dptr
      003298 F0               [24]12615 	movx	@dptr,a
      003299 EE               [12]12616 	mov	a,r6
      00329A A3               [24]12617 	inc	dptr
      00329B F0               [24]12618 	movx	@dptr,a
      00329C EF               [12]12619 	mov	a,r7
      00329D A3               [24]12620 	inc	dptr
      00329E F0               [24]12621 	movx	@dptr,a
                           00286E 12622 	C$easyax5043.c$2070$2$729 ==.
                                  12623 ;	..\COMMON\easyax5043.c:2070: wtimer0_addrelative(&axradio_timer);
      00329F 90 02 8E         [24]12624 	mov	dptr,#_axradio_timer
      0032A2 12 47 0A         [24]12625 	lcall	_wtimer0_addrelative
                           002874 12626 	C$easyax5043.c$2071$2$729 ==.
                                  12627 ;	..\COMMON\easyax5043.c:2071: axradio_sync_time = axradio_timer.time;
      0032A5 90 02 92         [24]12628 	mov	dptr,#(_axradio_timer + 0x0004)
      0032A8 E0               [24]12629 	movx	a,@dptr
      0032A9 FC               [12]12630 	mov	r4,a
      0032AA A3               [24]12631 	inc	dptr
      0032AB E0               [24]12632 	movx	a,@dptr
      0032AC FD               [12]12633 	mov	r5,a
      0032AD A3               [24]12634 	inc	dptr
      0032AE E0               [24]12635 	movx	a,@dptr
      0032AF FE               [12]12636 	mov	r6,a
      0032B0 A3               [24]12637 	inc	dptr
      0032B1 E0               [24]12638 	movx	a,@dptr
      0032B2 FF               [12]12639 	mov	r7,a
      0032B3 90 00 10         [24]12640 	mov	dptr,#_axradio_sync_time
      0032B6 EC               [12]12641 	mov	a,r4
      0032B7 F0               [24]12642 	movx	@dptr,a
      0032B8 ED               [12]12643 	mov	a,r5
      0032B9 A3               [24]12644 	inc	dptr
      0032BA F0               [24]12645 	movx	@dptr,a
      0032BB EE               [12]12646 	mov	a,r6
      0032BC A3               [24]12647 	inc	dptr
      0032BD F0               [24]12648 	movx	@dptr,a
      0032BE EF               [12]12649 	mov	a,r7
      0032BF A3               [24]12650 	inc	dptr
      0032C0 F0               [24]12651 	movx	@dptr,a
                           002890 12652 	C$easyax5043.c$2072$2$729 ==.
                                  12653 ;	..\COMMON\easyax5043.c:2072: wtimer_remove_callback(&axradio_cb_receive.cb);
      0032C1 90 02 35         [24]12654 	mov	dptr,#_axradio_cb_receive
      0032C4 12 52 63         [24]12655 	lcall	_wtimer_remove_callback
                           002896 12656 	C$easyax5043.c$2073$2$729 ==.
                                  12657 ;	..\COMMON\easyax5043.c:2073: memset_xdata(&axradio_cb_receive.st, 0, sizeof(axradio_cb_receive.st));
      0032C7 75 34 00         [24]12658 	mov	_memset_PARM_2,#0x00
      0032CA 75 35 20         [24]12659 	mov	_memset_PARM_3,#0x20
      0032CD 75 36 00         [24]12660 	mov	(_memset_PARM_3 + 1),#0x00
      0032D0 90 02 39         [24]12661 	mov	dptr,#(_axradio_cb_receive + 0x0004)
      0032D3 75 F0 00         [24]12662 	mov	b,#0x00
      0032D6 12 46 7C         [24]12663 	lcall	_memset
                           0028A8 12664 	C$easyax5043.c$2074$2$729 ==.
                                  12665 ;	..\COMMON\easyax5043.c:2074: axradio_cb_receive.st.time.t = axradio_timeanchor.radiotimer;
      0032D9 90 00 1A         [24]12666 	mov	dptr,#(_axradio_timeanchor + 0x0004)
      0032DC E0               [24]12667 	movx	a,@dptr
      0032DD FC               [12]12668 	mov	r4,a
      0032DE A3               [24]12669 	inc	dptr
      0032DF E0               [24]12670 	movx	a,@dptr
      0032E0 FD               [12]12671 	mov	r5,a
      0032E1 A3               [24]12672 	inc	dptr
      0032E2 E0               [24]12673 	movx	a,@dptr
      0032E3 FE               [12]12674 	mov	r6,a
      0032E4 A3               [24]12675 	inc	dptr
      0032E5 E0               [24]12676 	movx	a,@dptr
      0032E6 FF               [12]12677 	mov	r7,a
      0032E7 90 02 3B         [24]12678 	mov	dptr,#(_axradio_cb_receive + 0x0006)
      0032EA EC               [12]12679 	mov	a,r4
      0032EB F0               [24]12680 	movx	@dptr,a
      0032EC ED               [12]12681 	mov	a,r5
      0032ED A3               [24]12682 	inc	dptr
      0032EE F0               [24]12683 	movx	@dptr,a
      0032EF EE               [12]12684 	mov	a,r6
      0032F0 A3               [24]12685 	inc	dptr
      0032F1 F0               [24]12686 	movx	@dptr,a
      0032F2 EF               [12]12687 	mov	a,r7
      0032F3 A3               [24]12688 	inc	dptr
      0032F4 F0               [24]12689 	movx	@dptr,a
                           0028C4 12690 	C$easyax5043.c$2075$2$729 ==.
                                  12691 ;	..\COMMON\easyax5043.c:2075: axradio_cb_receive.st.error = AXRADIO_ERR_RESYNC;
      0032F5 90 02 3A         [24]12692 	mov	dptr,#(_axradio_cb_receive + 0x0005)
      0032F8 74 09            [12]12693 	mov	a,#0x09
      0032FA F0               [24]12694 	movx	@dptr,a
                           0028CA 12695 	C$easyax5043.c$2076$2$729 ==.
                                  12696 ;	..\COMMON\easyax5043.c:2076: wtimer_add_callback(&axradio_cb_receive.cb);
      0032FB 90 02 35         [24]12697 	mov	dptr,#_axradio_cb_receive
      0032FE 12 46 F0         [24]12698 	lcall	_wtimer_add_callback
                           0028D0 12699 	C$easyax5043.c$2077$2$729 ==.
                                  12700 ;	..\COMMON\easyax5043.c:2077: return AXRADIO_ERR_NOERROR;
      003301 75 82 00         [24]12701 	mov	dpl,#0x00
                           0028D3 12702 	C$easyax5043.c$2079$2$729 ==.
                                  12703 ;	..\COMMON\easyax5043.c:2079: default:
      003304 80 03            [24]12704 	sjmp	00257$
      003306                      12705 00253$:
                           0028D5 12706 	C$easyax5043.c$2080$2$729 ==.
                                  12707 ;	..\COMMON\easyax5043.c:2080: return AXRADIO_ERR_NOTSUPPORTED;
      003306 75 82 01         [24]12708 	mov	dpl,#0x01
                           0028D8 12709 	C$easyax5043.c$2081$1$723 ==.
                                  12710 ;	..\COMMON\easyax5043.c:2081: }
      003309                      12711 00257$:
                           0028D8 12712 	C$easyax5043.c$2082$1$723 ==.
                           0028D8 12713 	XG$axradio_set_mode$0$0 ==.
      003309 22               [24]12714 	ret
                                  12715 ;------------------------------------------------------------
                                  12716 ;Allocation info for local variables in function 'axradio_get_mode'
                                  12717 ;------------------------------------------------------------
                           0028D9 12718 	G$axradio_get_mode$0$0 ==.
                           0028D9 12719 	C$easyax5043.c$2084$1$723 ==.
                                  12720 ;	..\COMMON\easyax5043.c:2084: uint8_t axradio_get_mode(void)
                                  12721 ;	-----------------------------------------
                                  12722 ;	 function axradio_get_mode
                                  12723 ;	-----------------------------------------
      00330A                      12724 _axradio_get_mode:
                           0028D9 12725 	C$easyax5043.c$2086$1$764 ==.
                                  12726 ;	..\COMMON\easyax5043.c:2086: return axradio_mode;
      00330A 85 08 82         [24]12727 	mov	dpl,_axradio_mode
                           0028DC 12728 	C$easyax5043.c$2087$1$764 ==.
                           0028DC 12729 	XG$axradio_get_mode$0$0 ==.
      00330D 22               [24]12730 	ret
                                  12731 ;------------------------------------------------------------
                                  12732 ;Allocation info for local variables in function 'axradio_set_channel'
                                  12733 ;------------------------------------------------------------
                                  12734 ;chnum                     Allocated to registers r7 
                                  12735 ;rng                       Allocated with name '_axradio_set_channel_rng_1_766'
                                  12736 ;f                         Allocated to registers r3 r4 r6 r7 
                                  12737 ;------------------------------------------------------------
                           0028DD 12738 	G$axradio_set_channel$0$0 ==.
                           0028DD 12739 	C$easyax5043.c$2089$1$764 ==.
                                  12740 ;	..\COMMON\easyax5043.c:2089: uint8_t axradio_set_channel(uint8_t chnum)
                                  12741 ;	-----------------------------------------
                                  12742 ;	 function axradio_set_channel
                                  12743 ;	-----------------------------------------
      00330E                      12744 _axradio_set_channel:
      00330E AF 82            [24]12745 	mov	r7,dpl
                           0028DF 12746 	C$easyax5043.c$2092$1$766 ==.
                                  12747 ;	..\COMMON\easyax5043.c:2092: if (chnum >= axradio_phy_nrchannels)
      003310 90 56 F4         [24]12748 	mov	dptr,#_axradio_phy_nrchannels
      003313 E4               [12]12749 	clr	a
      003314 93               [24]12750 	movc	a,@a+dptr
      003315 FE               [12]12751 	mov	r6,a
      003316 C3               [12]12752 	clr	c
      003317 EF               [12]12753 	mov	a,r7
      003318 9E               [12]12754 	subb	a,r6
      003319 40 06            [24]12755 	jc	00102$
                           0028EA 12756 	C$easyax5043.c$2093$1$766 ==.
                                  12757 ;	..\COMMON\easyax5043.c:2093: return AXRADIO_ERR_INVALID;
      00331B 75 82 04         [24]12758 	mov	dpl,#0x04
      00331E 02 33 DB         [24]12759 	ljmp	00141$
      003321                      12760 00102$:
                           0028F0 12761 	C$easyax5043.c$2094$1$766 ==.
                                  12762 ;	..\COMMON\easyax5043.c:2094: axradio_curchannel = chnum;
      003321 90 00 09         [24]12763 	mov	dptr,#_axradio_curchannel
      003324 EF               [12]12764 	mov	a,r7
      003325 F0               [24]12765 	movx	@dptr,a
                           0028F5 12766 	C$easyax5043.c$2095$1$766 ==.
                                  12767 ;	..\COMMON\easyax5043.c:2095: rng = axradio_phy_chanpllrng[chnum];
      003326 EF               [12]12768 	mov	a,r7
      003327 75 F0 02         [24]12769 	mov	b,#0x02
      00332A A4               [48]12770 	mul	ab
      00332B 24 01            [12]12771 	add	a,#_axradio_phy_chanpllrng
      00332D F5 82            [12]12772 	mov	dpl,a
      00332F 74 00            [12]12773 	mov	a,#(_axradio_phy_chanpllrng >> 8)
      003331 35 F0            [12]12774 	addc	a,b
      003333 F5 83            [12]12775 	mov	dph,a
      003335 E0               [24]12776 	movx	a,@dptr
      003336 FD               [12]12777 	mov	r5,a
      003337 A3               [24]12778 	inc	dptr
      003338 E0               [24]12779 	movx	a,@dptr
      003339 FE               [12]12780 	mov	r6,a
                           002909 12781 	C$easyax5043.c$2096$1$766 ==.
                                  12782 ;	..\COMMON\easyax5043.c:2096: if (rng & 0x20)
      00333A ED               [12]12783 	mov	a,r5
      00333B F5 34            [12]12784 	mov	_axradio_set_channel_rng_1_766,a
      00333D 30 E5 06         [24]12785 	jnb	acc.5,00104$
                           00290F 12786 	C$easyax5043.c$2097$1$766 ==.
                                  12787 ;	..\COMMON\easyax5043.c:2097: return AXRADIO_ERR_RANGING;
      003340 75 82 06         [24]12788 	mov	dpl,#0x06
      003343 02 33 DB         [24]12789 	ljmp	00141$
      003346                      12790 00104$:
                           002915 12791 	C$easyax5043.c$2099$2$767 ==.
                                  12792 ;	..\COMMON\easyax5043.c:2099: uint32_t __autodata f = axradio_phy_chanfreq[chnum];
      003346 EF               [12]12793 	mov	a,r7
      003347 75 F0 04         [24]12794 	mov	b,#0x04
      00334A A4               [48]12795 	mul	ab
      00334B 24 F5            [12]12796 	add	a,#_axradio_phy_chanfreq
      00334D F5 82            [12]12797 	mov	dpl,a
      00334F 74 56            [12]12798 	mov	a,#(_axradio_phy_chanfreq >> 8)
      003351 35 F0            [12]12799 	addc	a,b
      003353 F5 83            [12]12800 	mov	dph,a
      003355 E4               [12]12801 	clr	a
      003356 93               [24]12802 	movc	a,@a+dptr
      003357 FB               [12]12803 	mov	r3,a
      003358 A3               [24]12804 	inc	dptr
      003359 E4               [12]12805 	clr	a
      00335A 93               [24]12806 	movc	a,@a+dptr
      00335B FC               [12]12807 	mov	r4,a
      00335C A3               [24]12808 	inc	dptr
      00335D E4               [12]12809 	clr	a
      00335E 93               [24]12810 	movc	a,@a+dptr
      00335F FE               [12]12811 	mov	r6,a
      003360 A3               [24]12812 	inc	dptr
      003361 E4               [12]12813 	clr	a
      003362 93               [24]12814 	movc	a,@a+dptr
      003363 FF               [12]12815 	mov	r7,a
                           002933 12816 	C$easyax5043.c$2100$2$767 ==.
                                  12817 ;	..\COMMON\easyax5043.c:2100: f += axradio_curfreqoffset;
      003364 90 00 0A         [24]12818 	mov	dptr,#_axradio_curfreqoffset
      003367 E0               [24]12819 	movx	a,@dptr
      003368 F8               [12]12820 	mov	r0,a
      003369 A3               [24]12821 	inc	dptr
      00336A E0               [24]12822 	movx	a,@dptr
      00336B F9               [12]12823 	mov	r1,a
      00336C A3               [24]12824 	inc	dptr
      00336D E0               [24]12825 	movx	a,@dptr
      00336E FA               [12]12826 	mov	r2,a
      00336F A3               [24]12827 	inc	dptr
      003370 E0               [24]12828 	movx	a,@dptr
      003371 FD               [12]12829 	mov	r5,a
      003372 E8               [12]12830 	mov	a,r0
      003373 2B               [12]12831 	add	a,r3
      003374 FB               [12]12832 	mov	r3,a
      003375 E9               [12]12833 	mov	a,r1
      003376 3C               [12]12834 	addc	a,r4
      003377 FC               [12]12835 	mov	r4,a
      003378 EA               [12]12836 	mov	a,r2
      003379 3E               [12]12837 	addc	a,r6
      00337A FE               [12]12838 	mov	r6,a
      00337B ED               [12]12839 	mov	a,r5
      00337C 3F               [12]12840 	addc	a,r7
      00337D FF               [12]12841 	mov	r7,a
                           00294D 12842 	C$easyax5043.c$2101$2$767 ==.
                                  12843 ;	..\COMMON\easyax5043.c:2101: if (radio_read8(AX5043_REG_PLLLOOP) & 0x80) {
      00337E 90 40 30         [24]12844 	mov	dptr,#0x4030
      003381 E0               [24]12845 	movx	a,@dptr
      003382 FD               [12]12846 	mov	r5,a
      003383 30 E7 26         [24]12847 	jnb	acc.7,00120$
                           002955 12848 	C$easyax5043.c$2102$4$769 ==.
                                  12849 ;	..\COMMON\easyax5043.c:2102: radio_write8(AX5043_REG_PLLRANGINGA, (rng & 0x0F));
      003386 74 0F            [12]12850 	mov	a,#0x0f
      003388 55 34            [12]12851 	anl	a,_axradio_set_channel_rng_1_766
      00338A 90 40 33         [24]12852 	mov	dptr,#0x4033
      00338D F0               [24]12853 	movx	@dptr,a
                           00295D 12854 	C$easyax5043.c$2103$4$770 ==.
                                  12855 ;	..\COMMON\easyax5043.c:2103: radio_write8(AX5043_REG_FREQA0, f);
      00338E 8B 05            [24]12856 	mov	ar5,r3
      003390 90 40 37         [24]12857 	mov	dptr,#0x4037
      003393 ED               [12]12858 	mov	a,r5
      003394 F0               [24]12859 	movx	@dptr,a
                           002964 12860 	C$easyax5043.c$2104$4$771 ==.
                                  12861 ;	..\COMMON\easyax5043.c:2104: radio_write8(AX5043_REG_FREQA1, f >> 8);
      003395 8C 05            [24]12862 	mov	ar5,r4
      003397 90 40 36         [24]12863 	mov	dptr,#0x4036
      00339A ED               [12]12864 	mov	a,r5
      00339B F0               [24]12865 	movx	@dptr,a
                           00296B 12866 	C$easyax5043.c$2105$4$772 ==.
                                  12867 ;	..\COMMON\easyax5043.c:2105: radio_write8(AX5043_REG_FREQA2, f >> 16);
      00339C 8E 05            [24]12868 	mov	ar5,r6
      00339E 90 40 35         [24]12869 	mov	dptr,#0x4035
      0033A1 ED               [12]12870 	mov	a,r5
      0033A2 F0               [24]12871 	movx	@dptr,a
                           002972 12872 	C$easyax5043.c$2106$4$773 ==.
                                  12873 ;	..\COMMON\easyax5043.c:2106: radio_write8(AX5043_REG_FREQA3, f >> 24);
      0033A3 8F 05            [24]12874 	mov	ar5,r7
      0033A5 90 40 34         [24]12875 	mov	dptr,#0x4034
      0033A8 ED               [12]12876 	mov	a,r5
      0033A9 F0               [24]12877 	movx	@dptr,a
                           002979 12878 	C$easyax5043.c$2108$3$774 ==.
                                  12879 ;	..\COMMON\easyax5043.c:2108: radio_write8(AX5043_REG_PLLRANGINGB, rng & 0x0F);
      0033AA 80 24            [24]12880 	sjmp	00138$
      0033AC                      12881 00120$:
      0033AC 74 0F            [12]12882 	mov	a,#0x0f
      0033AE 55 34            [12]12883 	anl	a,_axradio_set_channel_rng_1_766
      0033B0 90 40 3B         [24]12884 	mov	dptr,#0x403b
      0033B3 F0               [24]12885 	movx	@dptr,a
                           002983 12886 	C$easyax5043.c$2109$4$776 ==.
                                  12887 ;	..\COMMON\easyax5043.c:2109: radio_write8(AX5043_REG_FREQB0, f);
      0033B4 8B 05            [24]12888 	mov	ar5,r3
      0033B6 90 40 3F         [24]12889 	mov	dptr,#0x403f
      0033B9 ED               [12]12890 	mov	a,r5
      0033BA F0               [24]12891 	movx	@dptr,a
                           00298A 12892 	C$easyax5043.c$2110$4$777 ==.
                                  12893 ;	..\COMMON\easyax5043.c:2110: radio_write8(AX5043_REG_FREQB1, f >> 8);
      0033BB 8C 05            [24]12894 	mov	ar5,r4
      0033BD 90 40 3E         [24]12895 	mov	dptr,#0x403e
      0033C0 ED               [12]12896 	mov	a,r5
      0033C1 F0               [24]12897 	movx	@dptr,a
                           002991 12898 	C$easyax5043.c$2111$4$778 ==.
                                  12899 ;	..\COMMON\easyax5043.c:2111: radio_write8(AX5043_REG_FREQB2, f >> 16);
      0033C2 8E 05            [24]12900 	mov	ar5,r6
      0033C4 90 40 3D         [24]12901 	mov	dptr,#0x403d
      0033C7 ED               [12]12902 	mov	a,r5
      0033C8 F0               [24]12903 	movx	@dptr,a
                           002998 12904 	C$easyax5043.c$2112$4$779 ==.
                                  12905 ;	..\COMMON\easyax5043.c:2112: radio_write8(AX5043_REG_FREQB3, f >> 24);
      0033C9 8F 03            [24]12906 	mov	ar3,r7
      0033CB 90 40 3C         [24]12907 	mov	dptr,#0x403c
      0033CE EB               [12]12908 	mov	a,r3
      0033CF F0               [24]12909 	movx	@dptr,a
                           00299F 12910 	C$easyax5043.c$2115$1$766 ==.
                                  12911 ;	..\COMMON\easyax5043.c:2115: radio_write8(AX5043_REG_PLLLOOP, radio_read8(AX5043_REG_PLLLOOP) ^ 0x80);
      0033D0                      12912 00138$:
      0033D0 90 40 30         [24]12913 	mov	dptr,#0x4030
      0033D3 E0               [24]12914 	movx	a,@dptr
      0033D4 64 80            [12]12915 	xrl	a,#0x80
      0033D6 FF               [12]12916 	mov	r7,a
      0033D7 F0               [24]12917 	movx	@dptr,a
                           0029A7 12918 	C$easyax5043.c$2116$1$766 ==.
                                  12919 ;	..\COMMON\easyax5043.c:2116: return AXRADIO_ERR_NOERROR;
      0033D8 75 82 00         [24]12920 	mov	dpl,#0x00
      0033DB                      12921 00141$:
                           0029AA 12922 	C$easyax5043.c$2117$1$766 ==.
                           0029AA 12923 	XG$axradio_set_channel$0$0 ==.
      0033DB 22               [24]12924 	ret
                                  12925 ;------------------------------------------------------------
                                  12926 ;Allocation info for local variables in function 'axradio_get_channel'
                                  12927 ;------------------------------------------------------------
                           0029AB 12928 	G$axradio_get_channel$0$0 ==.
                           0029AB 12929 	C$easyax5043.c$2119$1$766 ==.
                                  12930 ;	..\COMMON\easyax5043.c:2119: uint8_t axradio_get_channel(void)
                                  12931 ;	-----------------------------------------
                                  12932 ;	 function axradio_get_channel
                                  12933 ;	-----------------------------------------
      0033DC                      12934 _axradio_get_channel:
                           0029AB 12935 	C$easyax5043.c$2121$1$782 ==.
                                  12936 ;	..\COMMON\easyax5043.c:2121: return axradio_curchannel;
      0033DC 90 00 09         [24]12937 	mov	dptr,#_axradio_curchannel
      0033DF E0               [24]12938 	movx	a,@dptr
                           0029AF 12939 	C$easyax5043.c$2122$1$782 ==.
                           0029AF 12940 	XG$axradio_get_channel$0$0 ==.
      0033E0 F5 82            [12]12941 	mov	dpl,a
      0033E2 22               [24]12942 	ret
                                  12943 ;------------------------------------------------------------
                                  12944 ;Allocation info for local variables in function 'axradio_get_pllrange'
                                  12945 ;------------------------------------------------------------
                           0029B2 12946 	G$axradio_get_pllrange$0$0 ==.
                           0029B2 12947 	C$easyax5043.c$2124$1$782 ==.
                                  12948 ;	..\COMMON\easyax5043.c:2124: uint16_t axradio_get_pllrange(void)
                                  12949 ;	-----------------------------------------
                                  12950 ;	 function axradio_get_pllrange
                                  12951 ;	-----------------------------------------
      0033E3                      12952 _axradio_get_pllrange:
                           0029B2 12953 	C$easyax5043.c$2126$1$784 ==.
                                  12954 ;	..\COMMON\easyax5043.c:2126: return axradio_phy_chanpllrng[axradio_curchannel] & 0x000F;
      0033E3 90 00 09         [24]12955 	mov	dptr,#_axradio_curchannel
      0033E6 E0               [24]12956 	movx	a,@dptr
      0033E7 75 F0 02         [24]12957 	mov	b,#0x02
      0033EA A4               [48]12958 	mul	ab
      0033EB 24 01            [12]12959 	add	a,#_axradio_phy_chanpllrng
      0033ED F5 82            [12]12960 	mov	dpl,a
      0033EF 74 00            [12]12961 	mov	a,#(_axradio_phy_chanpllrng >> 8)
      0033F1 35 F0            [12]12962 	addc	a,b
      0033F3 F5 83            [12]12963 	mov	dph,a
      0033F5 E0               [24]12964 	movx	a,@dptr
      0033F6 FE               [12]12965 	mov	r6,a
      0033F7 A3               [24]12966 	inc	dptr
      0033F8 E0               [24]12967 	movx	a,@dptr
      0033F9 74 0F            [12]12968 	mov	a,#0x0f
      0033FB 5E               [12]12969 	anl	a,r6
      0033FC F5 82            [12]12970 	mov	dpl,a
      0033FE 75 83 00         [24]12971 	mov	dph,#0x00
                           0029D0 12972 	C$easyax5043.c$2127$1$784 ==.
                           0029D0 12973 	XG$axradio_get_pllrange$0$0 ==.
      003401 22               [24]12974 	ret
                                  12975 ;------------------------------------------------------------
                                  12976 ;Allocation info for local variables in function 'axradio_get_pllvcoi'
                                  12977 ;------------------------------------------------------------
                                  12978 ;x                         Allocated to registers r7 
                                  12979 ;x                         Allocated to registers r6 
                                  12980 ;------------------------------------------------------------
                           0029D1 12981 	G$axradio_get_pllvcoi$0$0 ==.
                           0029D1 12982 	C$easyax5043.c$2129$1$784 ==.
                                  12983 ;	..\COMMON\easyax5043.c:2129: uint8_t axradio_get_pllvcoi(void)
                                  12984 ;	-----------------------------------------
                                  12985 ;	 function axradio_get_pllvcoi
                                  12986 ;	-----------------------------------------
      003402                      12987 _axradio_get_pllvcoi:
                           0029D1 12988 	C$easyax5043.c$2131$1$786 ==.
                                  12989 ;	..\COMMON\easyax5043.c:2131: if (axradio_phy_vcocalib) {
      003402 90 56 FC         [24]12990 	mov	dptr,#_axradio_phy_vcocalib
      003405 E4               [12]12991 	clr	a
      003406 93               [24]12992 	movc	a,@a+dptr
      003407 60 16            [24]12993 	jz	00104$
                           0029D8 12994 	C$easyax5043.c$2132$2$787 ==.
                                  12995 ;	..\COMMON\easyax5043.c:2132: uint8_t x = axradio_phy_chanvcoi[axradio_curchannel];
      003409 90 00 09         [24]12996 	mov	dptr,#_axradio_curchannel
      00340C E0               [24]12997 	movx	a,@dptr
      00340D 24 03            [12]12998 	add	a,#_axradio_phy_chanvcoi
      00340F F5 82            [12]12999 	mov	dpl,a
      003411 E4               [12]13000 	clr	a
      003412 34 00            [12]13001 	addc	a,#(_axradio_phy_chanvcoi >> 8)
      003414 F5 83            [12]13002 	mov	dph,a
      003416 E0               [24]13003 	movx	a,@dptr
                           0029E6 13004 	C$easyax5043.c$2133$2$787 ==.
                                  13005 ;	..\COMMON\easyax5043.c:2133: if (x & 0x80)
      003417 FF               [12]13006 	mov	r7,a
      003418 30 E7 04         [24]13007 	jnb	acc.7,00104$
                           0029EA 13008 	C$easyax5043.c$2134$2$787 ==.
                                  13009 ;	..\COMMON\easyax5043.c:2134: return x;
      00341B 8F 82            [24]13010 	mov	dpl,r7
      00341D 80 60            [24]13011 	sjmp	00109$
      00341F                      13012 00104$:
                           0029EE 13013 	C$easyax5043.c$2137$2$788 ==.
                                  13014 ;	..\COMMON\easyax5043.c:2137: uint8_t x = axradio_phy_chanvcoiinit[axradio_curchannel];
      00341F 90 00 09         [24]13015 	mov	dptr,#_axradio_curchannel
      003422 E0               [24]13016 	movx	a,@dptr
      003423 FF               [12]13017 	mov	r7,a
      003424 90 56 FB         [24]13018 	mov	dptr,#_axradio_phy_chanvcoiinit
      003427 93               [24]13019 	movc	a,@a+dptr
                           0029F7 13020 	C$easyax5043.c$2138$2$788 ==.
                                  13021 ;	..\COMMON\easyax5043.c:2138: if (x & 0x80) {
      003428 FE               [12]13022 	mov	r6,a
      003429 30 E7 4D         [24]13023 	jnb	acc.7,00108$
                           0029FB 13024 	C$easyax5043.c$2139$3$789 ==.
                                  13025 ;	..\COMMON\easyax5043.c:2139: if (!(axradio_phy_chanpllrnginit[0] & 0xF0)) {
      00342C 90 56 F9         [24]13026 	mov	dptr,#_axradio_phy_chanpllrnginit
      00342F E4               [12]13027 	clr	a
      003430 93               [24]13028 	movc	a,@a+dptr
      003431 FC               [12]13029 	mov	r4,a
      003432 A3               [24]13030 	inc	dptr
      003433 E4               [12]13031 	clr	a
      003434 93               [24]13032 	movc	a,@a+dptr
      003435 FD               [12]13033 	mov	r5,a
      003436 EC               [12]13034 	mov	a,r4
      003437 54 F0            [12]13035 	anl	a,#0xf0
      003439 70 3A            [24]13036 	jnz	00106$
                           002A0A 13037 	C$easyax5043.c$2140$4$790 ==.
                                  13038 ;	..\COMMON\easyax5043.c:2140: x += (axradio_phy_chanpllrng[axradio_curchannel] & 0x0F) - (axradio_phy_chanpllrnginit[axradio_curchannel] & 0x0F);
      00343B EF               [12]13039 	mov	a,r7
      00343C 75 F0 02         [24]13040 	mov	b,#0x02
      00343F A4               [48]13041 	mul	ab
      003440 FF               [12]13042 	mov	r7,a
      003441 AD F0            [24]13043 	mov	r5,b
      003443 24 01            [12]13044 	add	a,#_axradio_phy_chanpllrng
      003445 F5 82            [12]13045 	mov	dpl,a
      003447 ED               [12]13046 	mov	a,r5
      003448 34 00            [12]13047 	addc	a,#(_axradio_phy_chanpllrng >> 8)
      00344A F5 83            [12]13048 	mov	dph,a
      00344C E0               [24]13049 	movx	a,@dptr
      00344D FB               [12]13050 	mov	r3,a
      00344E A3               [24]13051 	inc	dptr
      00344F E0               [24]13052 	movx	a,@dptr
      003450 53 03 0F         [24]13053 	anl	ar3,#0x0f
      003453 7C 00            [12]13054 	mov	r4,#0x00
      003455 EF               [12]13055 	mov	a,r7
      003456 24 F9            [12]13056 	add	a,#_axradio_phy_chanpllrnginit
      003458 F5 82            [12]13057 	mov	dpl,a
      00345A ED               [12]13058 	mov	a,r5
      00345B 34 56            [12]13059 	addc	a,#(_axradio_phy_chanpllrnginit >> 8)
      00345D F5 83            [12]13060 	mov	dph,a
      00345F E4               [12]13061 	clr	a
      003460 93               [24]13062 	movc	a,@a+dptr
      003461 FD               [12]13063 	mov	r5,a
      003462 A3               [24]13064 	inc	dptr
      003463 E4               [12]13065 	clr	a
      003464 93               [24]13066 	movc	a,@a+dptr
      003465 53 05 0F         [24]13067 	anl	ar5,#0x0f
      003468 7F 00            [12]13068 	mov	r7,#0x00
      00346A EB               [12]13069 	mov	a,r3
      00346B C3               [12]13070 	clr	c
      00346C 9D               [12]13071 	subb	a,r5
      00346D 2E               [12]13072 	add	a,r6
      00346E FE               [12]13073 	mov	r6,a
                           002A3E 13074 	C$easyax5043.c$2141$4$790 ==.
                                  13075 ;	..\COMMON\easyax5043.c:2141: x &= 0x3f;
      00346F 53 06 3F         [24]13076 	anl	ar6,#0x3f
                           002A41 13077 	C$easyax5043.c$2142$4$790 ==.
                                  13078 ;	..\COMMON\easyax5043.c:2142: x |= 0x80;
      003472 43 06 80         [24]13079 	orl	ar6,#0x80
      003475                      13080 00106$:
                           002A44 13081 	C$easyax5043.c$2144$3$789 ==.
                                  13082 ;	..\COMMON\easyax5043.c:2144: return x;
      003475 8E 82            [24]13083 	mov	dpl,r6
      003477 80 06            [24]13084 	sjmp	00109$
      003479                      13085 00108$:
                           002A48 13086 	C$easyax5043.c$2147$1$786 ==.
                                  13087 ;	..\COMMON\easyax5043.c:2147: return radio_read8(AX5043_REG_PLLVCOI);
      003479 90 41 80         [24]13088 	mov	dptr,#0x4180
      00347C E0               [24]13089 	movx	a,@dptr
                           002A4C 13090 	C$easyax5043.c$2148$1$786 ==.
                           002A4C 13091 	XG$axradio_get_pllvcoi$0$0 ==.
      00347D F5 82            [12]13092 	mov	dpl,a
      00347F                      13093 00109$:
      00347F 22               [24]13094 	ret
                                  13095 ;------------------------------------------------------------
                                  13096 ;Allocation info for local variables in function 'axradio_set_curfreqoffset'
                                  13097 ;------------------------------------------------------------
                                  13098 ;offs                      Allocated to registers r4 r5 r6 r7 
                                  13099 ;------------------------------------------------------------
                           002A4F 13100 	Feasyax5043$axradio_set_curfreqoffset$0$0 ==.
                           002A4F 13101 	C$easyax5043.c$2150$1$786 ==.
                                  13102 ;	..\COMMON\easyax5043.c:2150: static uint8_t axradio_set_curfreqoffset(int32_t offs)
                                  13103 ;	-----------------------------------------
                                  13104 ;	 function axradio_set_curfreqoffset
                                  13105 ;	-----------------------------------------
      003480                      13106 _axradio_set_curfreqoffset:
      003480 AC 82            [24]13107 	mov	r4,dpl
      003482 AD 83            [24]13108 	mov	r5,dph
      003484 AE F0            [24]13109 	mov	r6,b
      003486 FF               [12]13110 	mov	r7,a
                           002A56 13111 	C$easyax5043.c$2152$1$792 ==.
                                  13112 ;	..\COMMON\easyax5043.c:2152: axradio_curfreqoffset = offs;
      003487 90 00 0A         [24]13113 	mov	dptr,#_axradio_curfreqoffset
      00348A EC               [12]13114 	mov	a,r4
      00348B F0               [24]13115 	movx	@dptr,a
      00348C ED               [12]13116 	mov	a,r5
      00348D A3               [24]13117 	inc	dptr
      00348E F0               [24]13118 	movx	@dptr,a
      00348F EE               [12]13119 	mov	a,r6
      003490 A3               [24]13120 	inc	dptr
      003491 F0               [24]13121 	movx	@dptr,a
      003492 EF               [12]13122 	mov	a,r7
      003493 A3               [24]13123 	inc	dptr
      003494 F0               [24]13124 	movx	@dptr,a
                           002A64 13125 	C$easyax5043.c$2153$1$792 ==.
                                  13126 ;	..\COMMON\easyax5043.c:2153: if (checksignedlimit32(offs, axradio_phy_maxfreqoffset))
      003495 90 56 FD         [24]13127 	mov	dptr,#_axradio_phy_maxfreqoffset
      003498 E4               [12]13128 	clr	a
      003499 93               [24]13129 	movc	a,@a+dptr
      00349A C0 E0            [24]13130 	push	acc
      00349C 74 01            [12]13131 	mov	a,#0x01
      00349E 93               [24]13132 	movc	a,@a+dptr
      00349F C0 E0            [24]13133 	push	acc
      0034A1 74 02            [12]13134 	mov	a,#0x02
      0034A3 93               [24]13135 	movc	a,@a+dptr
      0034A4 C0 E0            [24]13136 	push	acc
      0034A6 74 03            [12]13137 	mov	a,#0x03
      0034A8 93               [24]13138 	movc	a,@a+dptr
      0034A9 C0 E0            [24]13139 	push	acc
      0034AB 8C 82            [24]13140 	mov	dpl,r4
      0034AD 8D 83            [24]13141 	mov	dph,r5
      0034AF 8E F0            [24]13142 	mov	b,r6
      0034B1 EF               [12]13143 	mov	a,r7
      0034B2 12 4C E6         [24]13144 	lcall	_checksignedlimit32
      0034B5 AF 82            [24]13145 	mov	r7,dpl
      0034B7 E5 81            [12]13146 	mov	a,sp
      0034B9 24 FC            [12]13147 	add	a,#0xfc
      0034BB F5 81            [12]13148 	mov	sp,a
      0034BD EF               [12]13149 	mov	a,r7
      0034BE 60 05            [24]13150 	jz	00102$
                           002A8F 13151 	C$easyax5043.c$2154$1$792 ==.
                                  13152 ;	..\COMMON\easyax5043.c:2154: return AXRADIO_ERR_NOERROR;
      0034C0 75 82 00         [24]13153 	mov	dpl,#0x00
      0034C3 80 5B            [24]13154 	sjmp	00106$
      0034C5                      13155 00102$:
                           002A94 13156 	C$easyax5043.c$2155$1$792 ==.
                                  13157 ;	..\COMMON\easyax5043.c:2155: if (axradio_curfreqoffset < 0)
      0034C5 90 00 0A         [24]13158 	mov	dptr,#_axradio_curfreqoffset
      0034C8 E0               [24]13159 	movx	a,@dptr
      0034C9 FC               [12]13160 	mov	r4,a
      0034CA A3               [24]13161 	inc	dptr
      0034CB E0               [24]13162 	movx	a,@dptr
      0034CC FD               [12]13163 	mov	r5,a
      0034CD A3               [24]13164 	inc	dptr
      0034CE E0               [24]13165 	movx	a,@dptr
      0034CF FE               [12]13166 	mov	r6,a
      0034D0 A3               [24]13167 	inc	dptr
      0034D1 E0               [24]13168 	movx	a,@dptr
      0034D2 FF               [12]13169 	mov	r7,a
      0034D3 30 E7 27         [24]13170 	jnb	acc.7,00104$
                           002AA5 13171 	C$easyax5043.c$2156$1$792 ==.
                                  13172 ;	..\COMMON\easyax5043.c:2156: axradio_curfreqoffset = -axradio_phy_maxfreqoffset;
      0034D6 90 56 FD         [24]13173 	mov	dptr,#_axradio_phy_maxfreqoffset
      0034D9 E4               [12]13174 	clr	a
      0034DA 93               [24]13175 	movc	a,@a+dptr
      0034DB FC               [12]13176 	mov	r4,a
      0034DC 74 01            [12]13177 	mov	a,#0x01
      0034DE 93               [24]13178 	movc	a,@a+dptr
      0034DF FD               [12]13179 	mov	r5,a
      0034E0 74 02            [12]13180 	mov	a,#0x02
      0034E2 93               [24]13181 	movc	a,@a+dptr
      0034E3 FE               [12]13182 	mov	r6,a
      0034E4 74 03            [12]13183 	mov	a,#0x03
      0034E6 93               [24]13184 	movc	a,@a+dptr
      0034E7 FF               [12]13185 	mov	r7,a
      0034E8 90 00 0A         [24]13186 	mov	dptr,#_axradio_curfreqoffset
      0034EB C3               [12]13187 	clr	c
      0034EC E4               [12]13188 	clr	a
      0034ED 9C               [12]13189 	subb	a,r4
      0034EE F0               [24]13190 	movx	@dptr,a
      0034EF E4               [12]13191 	clr	a
      0034F0 9D               [12]13192 	subb	a,r5
      0034F1 A3               [24]13193 	inc	dptr
      0034F2 F0               [24]13194 	movx	@dptr,a
      0034F3 E4               [12]13195 	clr	a
      0034F4 9E               [12]13196 	subb	a,r6
      0034F5 A3               [24]13197 	inc	dptr
      0034F6 F0               [24]13198 	movx	@dptr,a
      0034F7 E4               [12]13199 	clr	a
      0034F8 9F               [12]13200 	subb	a,r7
      0034F9 A3               [24]13201 	inc	dptr
      0034FA F0               [24]13202 	movx	@dptr,a
      0034FB 80 20            [24]13203 	sjmp	00105$
      0034FD                      13204 00104$:
                           002ACC 13205 	C$easyax5043.c$2158$1$792 ==.
                                  13206 ;	..\COMMON\easyax5043.c:2158: axradio_curfreqoffset = axradio_phy_maxfreqoffset;
      0034FD 90 56 FD         [24]13207 	mov	dptr,#_axradio_phy_maxfreqoffset
      003500 E4               [12]13208 	clr	a
      003501 93               [24]13209 	movc	a,@a+dptr
      003502 FC               [12]13210 	mov	r4,a
      003503 74 01            [12]13211 	mov	a,#0x01
      003505 93               [24]13212 	movc	a,@a+dptr
      003506 FD               [12]13213 	mov	r5,a
      003507 74 02            [12]13214 	mov	a,#0x02
      003509 93               [24]13215 	movc	a,@a+dptr
      00350A FE               [12]13216 	mov	r6,a
      00350B 74 03            [12]13217 	mov	a,#0x03
      00350D 93               [24]13218 	movc	a,@a+dptr
      00350E FF               [12]13219 	mov	r7,a
      00350F 90 00 0A         [24]13220 	mov	dptr,#_axradio_curfreqoffset
      003512 EC               [12]13221 	mov	a,r4
      003513 F0               [24]13222 	movx	@dptr,a
      003514 ED               [12]13223 	mov	a,r5
      003515 A3               [24]13224 	inc	dptr
      003516 F0               [24]13225 	movx	@dptr,a
      003517 EE               [12]13226 	mov	a,r6
      003518 A3               [24]13227 	inc	dptr
      003519 F0               [24]13228 	movx	@dptr,a
      00351A EF               [12]13229 	mov	a,r7
      00351B A3               [24]13230 	inc	dptr
      00351C F0               [24]13231 	movx	@dptr,a
      00351D                      13232 00105$:
                           002AEC 13233 	C$easyax5043.c$2159$1$792 ==.
                                  13234 ;	..\COMMON\easyax5043.c:2159: return AXRADIO_ERR_INVALID;
      00351D 75 82 04         [24]13235 	mov	dpl,#0x04
      003520                      13236 00106$:
                           002AEF 13237 	C$easyax5043.c$2160$1$792 ==.
                           002AEF 13238 	XFeasyax5043$axradio_set_curfreqoffset$0$0 ==.
      003520 22               [24]13239 	ret
                                  13240 ;------------------------------------------------------------
                                  13241 ;Allocation info for local variables in function 'axradio_set_freqoffset'
                                  13242 ;------------------------------------------------------------
                                  13243 ;offs                      Allocated to registers r4 r5 r6 r7 
                                  13244 ;ret                       Allocated to registers r7 
                                  13245 ;ret2                      Allocated to registers r6 
                                  13246 ;------------------------------------------------------------
                           002AF0 13247 	G$axradio_set_freqoffset$0$0 ==.
                           002AF0 13248 	C$easyax5043.c$2162$1$792 ==.
                                  13249 ;	..\COMMON\easyax5043.c:2162: uint8_t axradio_set_freqoffset(int32_t offs)
                                  13250 ;	-----------------------------------------
                                  13251 ;	 function axradio_set_freqoffset
                                  13252 ;	-----------------------------------------
      003521                      13253 _axradio_set_freqoffset:
                           002AF0 13254 	C$easyax5043.c$2164$1$794 ==.
                                  13255 ;	..\COMMON\easyax5043.c:2164: uint8_t __autodata ret = axradio_set_curfreqoffset(offs);
      003521 12 34 80         [24]13256 	lcall	_axradio_set_curfreqoffset
      003524 AF 82            [24]13257 	mov	r7,dpl
                           002AF5 13258 	C$easyax5043.c$2166$2$795 ==.
                                  13259 ;	..\COMMON\easyax5043.c:2166: uint8_t __autodata ret2 = axradio_set_channel(axradio_curchannel);
      003526 90 00 09         [24]13260 	mov	dptr,#_axradio_curchannel
      003529 E0               [24]13261 	movx	a,@dptr
      00352A F5 82            [12]13262 	mov	dpl,a
      00352C C0 07            [24]13263 	push	ar7
      00352E 12 33 0E         [24]13264 	lcall	_axradio_set_channel
      003531 AE 82            [24]13265 	mov	r6,dpl
      003533 D0 07            [24]13266 	pop	ar7
                           002B04 13267 	C$easyax5043.c$2167$2$795 ==.
                                  13268 ;	..\COMMON\easyax5043.c:2167: if (ret == AXRADIO_ERR_NOERROR)
      003535 EF               [12]13269 	mov	a,r7
      003536 70 02            [24]13270 	jnz	00102$
                           002B07 13271 	C$easyax5043.c$2168$2$795 ==.
                                  13272 ;	..\COMMON\easyax5043.c:2168: ret = ret2;
      003538 8E 07            [24]13273 	mov	ar7,r6
      00353A                      13274 00102$:
                           002B09 13275 	C$easyax5043.c$2170$1$794 ==.
                                  13276 ;	..\COMMON\easyax5043.c:2170: return ret;
      00353A 8F 82            [24]13277 	mov	dpl,r7
                           002B0B 13278 	C$easyax5043.c$2171$1$794 ==.
                           002B0B 13279 	XG$axradio_set_freqoffset$0$0 ==.
      00353C 22               [24]13280 	ret
                                  13281 ;------------------------------------------------------------
                                  13282 ;Allocation info for local variables in function 'axradio_get_freqoffset'
                                  13283 ;------------------------------------------------------------
                           002B0C 13284 	G$axradio_get_freqoffset$0$0 ==.
                           002B0C 13285 	C$easyax5043.c$2173$1$794 ==.
                                  13286 ;	..\COMMON\easyax5043.c:2173: int32_t axradio_get_freqoffset(void)
                                  13287 ;	-----------------------------------------
                                  13288 ;	 function axradio_get_freqoffset
                                  13289 ;	-----------------------------------------
      00353D                      13290 _axradio_get_freqoffset:
                           002B0C 13291 	C$easyax5043.c$2175$1$797 ==.
                                  13292 ;	..\COMMON\easyax5043.c:2175: return axradio_curfreqoffset;
      00353D 90 00 0A         [24]13293 	mov	dptr,#_axradio_curfreqoffset
      003540 E0               [24]13294 	movx	a,@dptr
      003541 FC               [12]13295 	mov	r4,a
      003542 A3               [24]13296 	inc	dptr
      003543 E0               [24]13297 	movx	a,@dptr
      003544 FD               [12]13298 	mov	r5,a
      003545 A3               [24]13299 	inc	dptr
      003546 E0               [24]13300 	movx	a,@dptr
      003547 FE               [12]13301 	mov	r6,a
      003548 A3               [24]13302 	inc	dptr
      003549 E0               [24]13303 	movx	a,@dptr
      00354A 8C 82            [24]13304 	mov	dpl,r4
      00354C 8D 83            [24]13305 	mov	dph,r5
      00354E 8E F0            [24]13306 	mov	b,r6
                           002B1F 13307 	C$easyax5043.c$2176$1$797 ==.
                           002B1F 13308 	XG$axradio_get_freqoffset$0$0 ==.
      003550 22               [24]13309 	ret
                                  13310 ;------------------------------------------------------------
                                  13311 ;Allocation info for local variables in function 'axradio_set_local_address'
                                  13312 ;------------------------------------------------------------
                                  13313 ;addr                      Allocated to registers r5 r6 r7 
                                  13314 ;------------------------------------------------------------
                           002B20 13315 	G$axradio_set_local_address$0$0 ==.
                           002B20 13316 	C$easyax5043.c$2178$1$797 ==.
                                  13317 ;	..\COMMON\easyax5043.c:2178: void axradio_set_local_address(const struct axradio_address_mask __genericaddr *addr)
                                  13318 ;	-----------------------------------------
                                  13319 ;	 function axradio_set_local_address
                                  13320 ;	-----------------------------------------
      003551                      13321 _axradio_set_local_address:
      003551 AD 82            [24]13322 	mov	r5,dpl
      003553 AE 83            [24]13323 	mov	r6,dph
      003555 AF F0            [24]13324 	mov	r7,b
                           002B26 13325 	C$easyax5043.c$2180$1$799 ==.
                                  13326 ;	..\COMMON\easyax5043.c:2180: memcpy_xdatageneric(&axradio_localaddr, addr, sizeof(axradio_localaddr));
      003557 8D 34            [24]13327 	mov	_memcpy_PARM_2,r5
      003559 8E 35            [24]13328 	mov	(_memcpy_PARM_2 + 1),r6
      00355B 8F 36            [24]13329 	mov	(_memcpy_PARM_2 + 2),r7
      00355D 75 37 0A         [24]13330 	mov	_memcpy_PARM_3,#0x0a
      003560 75 38 00         [24]13331 	mov	(_memcpy_PARM_3 + 1),#0x00
      003563 90 00 1E         [24]13332 	mov	dptr,#_axradio_localaddr
      003566 75 F0 00         [24]13333 	mov	b,#0x00
      003569 12 46 9B         [24]13334 	lcall	_memcpy
                           002B3B 13335 	C$easyax5043.c$2181$1$799 ==.
                                  13336 ;	..\COMMON\easyax5043.c:2181: axradio_setaddrregs();
      00356C 12 17 9C         [24]13337 	lcall	_axradio_setaddrregs
                           002B3E 13338 	C$easyax5043.c$2182$1$799 ==.
                           002B3E 13339 	XG$axradio_set_local_address$0$0 ==.
      00356F 22               [24]13340 	ret
                                  13341 ;------------------------------------------------------------
                                  13342 ;Allocation info for local variables in function 'axradio_get_local_address'
                                  13343 ;------------------------------------------------------------
                                  13344 ;addr                      Allocated to registers r5 r6 r7 
                                  13345 ;------------------------------------------------------------
                           002B3F 13346 	G$axradio_get_local_address$0$0 ==.
                           002B3F 13347 	C$easyax5043.c$2184$1$799 ==.
                                  13348 ;	..\COMMON\easyax5043.c:2184: void axradio_get_local_address(struct axradio_address_mask __genericaddr *addr)
                                  13349 ;	-----------------------------------------
                                  13350 ;	 function axradio_get_local_address
                                  13351 ;	-----------------------------------------
      003570                      13352 _axradio_get_local_address:
      003570 AD 82            [24]13353 	mov	r5,dpl
      003572 AE 83            [24]13354 	mov	r6,dph
      003574 AF F0            [24]13355 	mov	r7,b
                           002B45 13356 	C$easyax5043.c$2186$1$801 ==.
                                  13357 ;	..\COMMON\easyax5043.c:2186: memcpy_genericxdata(addr, &axradio_localaddr, sizeof(axradio_localaddr));
      003576 75 34 1E         [24]13358 	mov	_memcpy_PARM_2,#_axradio_localaddr
      003579 75 35 00         [24]13359 	mov	(_memcpy_PARM_2 + 1),#(_axradio_localaddr >> 8)
      00357C 75 36 00         [24]13360 	mov	(_memcpy_PARM_2 + 2),#0x00
      00357F 75 37 0A         [24]13361 	mov	_memcpy_PARM_3,#0x0a
      003582 75 38 00         [24]13362 	mov	(_memcpy_PARM_3 + 1),#0x00
      003585 8D 82            [24]13363 	mov	dpl,r5
      003587 8E 83            [24]13364 	mov	dph,r6
      003589 8F F0            [24]13365 	mov	b,r7
      00358B 12 46 9B         [24]13366 	lcall	_memcpy
                           002B5D 13367 	C$easyax5043.c$2187$1$801 ==.
                           002B5D 13368 	XG$axradio_get_local_address$0$0 ==.
      00358E 22               [24]13369 	ret
                                  13370 ;------------------------------------------------------------
                                  13371 ;Allocation info for local variables in function 'axradio_set_default_remote_address'
                                  13372 ;------------------------------------------------------------
                                  13373 ;addr                      Allocated to registers r5 r6 r7 
                                  13374 ;------------------------------------------------------------
                           002B5E 13375 	G$axradio_set_default_remote_address$0$0 ==.
                           002B5E 13376 	C$easyax5043.c$2189$1$801 ==.
                                  13377 ;	..\COMMON\easyax5043.c:2189: void axradio_set_default_remote_address(const struct axradio_address __genericaddr *addr)
                                  13378 ;	-----------------------------------------
                                  13379 ;	 function axradio_set_default_remote_address
                                  13380 ;	-----------------------------------------
      00358F                      13381 _axradio_set_default_remote_address:
      00358F AD 82            [24]13382 	mov	r5,dpl
      003591 AE 83            [24]13383 	mov	r6,dph
      003593 AF F0            [24]13384 	mov	r7,b
                           002B64 13385 	C$easyax5043.c$2191$1$803 ==.
                                  13386 ;	..\COMMON\easyax5043.c:2191: memcpy_xdatageneric(&axradio_default_remoteaddr, addr, sizeof(axradio_default_remoteaddr));
      003595 8D 34            [24]13387 	mov	_memcpy_PARM_2,r5
      003597 8E 35            [24]13388 	mov	(_memcpy_PARM_2 + 1),r6
      003599 8F 36            [24]13389 	mov	(_memcpy_PARM_2 + 2),r7
      00359B 75 37 05         [24]13390 	mov	_memcpy_PARM_3,#0x05
      00359E 75 38 00         [24]13391 	mov	(_memcpy_PARM_3 + 1),#0x00
      0035A1 90 00 28         [24]13392 	mov	dptr,#_axradio_default_remoteaddr
      0035A4 75 F0 00         [24]13393 	mov	b,#0x00
      0035A7 12 46 9B         [24]13394 	lcall	_memcpy
                           002B79 13395 	C$easyax5043.c$2192$1$803 ==.
                           002B79 13396 	XG$axradio_set_default_remote_address$0$0 ==.
      0035AA 22               [24]13397 	ret
                                  13398 ;------------------------------------------------------------
                                  13399 ;Allocation info for local variables in function 'axradio_get_default_remote_address'
                                  13400 ;------------------------------------------------------------
                                  13401 ;addr                      Allocated to registers r5 r6 r7 
                                  13402 ;------------------------------------------------------------
                           002B7A 13403 	G$axradio_get_default_remote_address$0$0 ==.
                           002B7A 13404 	C$easyax5043.c$2194$1$803 ==.
                                  13405 ;	..\COMMON\easyax5043.c:2194: void axradio_get_default_remote_address(struct axradio_address __genericaddr *addr)
                                  13406 ;	-----------------------------------------
                                  13407 ;	 function axradio_get_default_remote_address
                                  13408 ;	-----------------------------------------
      0035AB                      13409 _axradio_get_default_remote_address:
      0035AB AD 82            [24]13410 	mov	r5,dpl
      0035AD AE 83            [24]13411 	mov	r6,dph
      0035AF AF F0            [24]13412 	mov	r7,b
                           002B80 13413 	C$easyax5043.c$2196$1$805 ==.
                                  13414 ;	..\COMMON\easyax5043.c:2196: memcpy_genericxdata(addr, &axradio_default_remoteaddr, sizeof(axradio_default_remoteaddr));
      0035B1 75 34 28         [24]13415 	mov	_memcpy_PARM_2,#_axradio_default_remoteaddr
      0035B4 75 35 00         [24]13416 	mov	(_memcpy_PARM_2 + 1),#(_axradio_default_remoteaddr >> 8)
      0035B7 75 36 00         [24]13417 	mov	(_memcpy_PARM_2 + 2),#0x00
      0035BA 75 37 05         [24]13418 	mov	_memcpy_PARM_3,#0x05
      0035BD 75 38 00         [24]13419 	mov	(_memcpy_PARM_3 + 1),#0x00
      0035C0 8D 82            [24]13420 	mov	dpl,r5
      0035C2 8E 83            [24]13421 	mov	dph,r6
      0035C4 8F F0            [24]13422 	mov	b,r7
      0035C6 12 46 9B         [24]13423 	lcall	_memcpy
                           002B98 13424 	C$easyax5043.c$2197$1$805 ==.
                           002B98 13425 	XG$axradio_get_default_remote_address$0$0 ==.
      0035C9 22               [24]13426 	ret
                                  13427 ;------------------------------------------------------------
                                  13428 ;Allocation info for local variables in function 'axradio_transmit'
                                  13429 ;------------------------------------------------------------
                                  13430 ;pkt                       Allocated with name '_axradio_transmit_PARM_2'
                                  13431 ;pktlen                    Allocated with name '_axradio_transmit_PARM_3'
                                  13432 ;addr                      Allocated to registers r5 r6 r7 
                                  13433 ;fifofree                  Allocated to registers r3 r4 
                                  13434 ;i                         Allocated to registers r4 
                                  13435 ;__00030038                Allocated to registers 
                                  13436 ;crit                      Allocated to registers 
                                  13437 ;crit                      Allocated to registers r4 
                                  13438 ;__00040040                Allocated to registers 
                                  13439 ;crit                      Allocated to registers 
                                  13440 ;len_byte                  Allocated to registers r6 
                                  13441 ;------------------------------------------------------------
                           002B99 13442 	G$axradio_transmit$0$0 ==.
                           002B99 13443 	C$easyax5043.c$2199$1$805 ==.
                                  13444 ;	..\COMMON\easyax5043.c:2199: uint8_t axradio_transmit(const struct axradio_address __genericaddr *addr, const uint8_t __genericaddr *pkt, uint16_t pktlen)
                                  13445 ;	-----------------------------------------
                                  13446 ;	 function axradio_transmit
                                  13447 ;	-----------------------------------------
      0035CA                      13448 _axradio_transmit:
      0035CA AD 82            [24]13449 	mov	r5,dpl
      0035CC AE 83            [24]13450 	mov	r6,dph
      0035CE AF F0            [24]13451 	mov	r7,b
                           002B9F 13452 	C$easyax5043.c$2201$1$807 ==.
                                  13453 ;	..\COMMON\easyax5043.c:2201: switch (axradio_mode) {
      0035D0 AC 08            [24]13454 	mov	r4,_axradio_mode
      0035D2 BC 10 03         [24]13455 	cjne	r4,#0x10,00316$
      0035D5 02 36 D5         [24]13456 	ljmp	00155$
      0035D8                      13457 00316$:
      0035D8 BC 11 03         [24]13458 	cjne	r4,#0x11,00317$
      0035DB 02 36 D5         [24]13459 	ljmp	00155$
      0035DE                      13460 00317$:
      0035DE BC 12 03         [24]13461 	cjne	r4,#0x12,00318$
      0035E1 02 36 D5         [24]13462 	ljmp	00155$
      0035E4                      13463 00318$:
      0035E4 BC 13 03         [24]13464 	cjne	r4,#0x13,00319$
      0035E7 02 36 D5         [24]13465 	ljmp	00155$
      0035EA                      13466 00319$:
      0035EA BC 18 02         [24]13467 	cjne	r4,#0x18,00320$
      0035ED 80 2F            [24]13468 	sjmp	00105$
      0035EF                      13469 00320$:
      0035EF BC 19 02         [24]13470 	cjne	r4,#0x19,00321$
      0035F2 80 2A            [24]13471 	sjmp	00105$
      0035F4                      13472 00321$:
      0035F4 BC 1A 02         [24]13473 	cjne	r4,#0x1a,00322$
      0035F7 80 25            [24]13474 	sjmp	00105$
      0035F9                      13475 00322$:
      0035F9 BC 1B 02         [24]13476 	cjne	r4,#0x1b,00323$
      0035FC 80 20            [24]13477 	sjmp	00105$
      0035FE                      13478 00323$:
      0035FE BC 1C 02         [24]13479 	cjne	r4,#0x1c,00324$
      003601 80 1B            [24]13480 	sjmp	00105$
      003603                      13481 00324$:
      003603 BC 20 03         [24]13482 	cjne	r4,#0x20,00325$
      003606 02 36 9A         [24]13483 	ljmp	00134$
      003609                      13484 00325$:
      003609 BC 21 03         [24]13485 	cjne	r4,#0x21,00326$
      00360C 02 36 9A         [24]13486 	ljmp	00134$
      00360F                      13487 00326$:
      00360F BC 30 03         [24]13488 	cjne	r4,#0x30,00327$
      003612 02 36 E2         [24]13489 	ljmp	00158$
      003615                      13490 00327$:
      003615 BC 31 03         [24]13491 	cjne	r4,#0x31,00328$
      003618 02 36 E2         [24]13492 	ljmp	00158$
      00361B                      13493 00328$:
      00361B 02 39 3D         [24]13494 	ljmp	00198$
                           002BED 13495 	C$easyax5043.c$2206$2$808 ==.
                                  13496 ;	..\COMMON\easyax5043.c:2206: case AXRADIO_MODE_STREAM_TRANSMIT_SCRAM_LSB:
      00361E                      13497 00105$:
                           002BED 13498 	C$easyax5043.c$2208$3$809 ==.
                                  13499 ;	..\COMMON\easyax5043.c:2208: uint16_t __autodata fifofree = radio_read16(AX5043_REG_FIFOFREE1); ///
      00361E 90 00 2C         [24]13500 	mov	dptr,#0x002c
      003621 12 4A 2F         [24]13501 	lcall	_radio_read16
      003624 AB 82            [24]13502 	mov	r3,dpl
      003626 AC 83            [24]13503 	mov	r4,dph
                           002BF7 13504 	C$easyax5043.c$2210$3$809 ==.
                                  13505 ;	..\COMMON\easyax5043.c:2210: if (fifofree < pktlen + 3)
      003628 74 03            [12]13506 	mov	a,#0x03
      00362A 25 18            [12]13507 	add	a,_axradio_transmit_PARM_3
      00362C F9               [12]13508 	mov	r1,a
      00362D E4               [12]13509 	clr	a
      00362E 35 19            [12]13510 	addc	a,(_axradio_transmit_PARM_3 + 1)
      003630 FA               [12]13511 	mov	r2,a
      003631 C3               [12]13512 	clr	c
      003632 EB               [12]13513 	mov	a,r3
      003633 99               [12]13514 	subb	a,r1
      003634 EC               [12]13515 	mov	a,r4
      003635 9A               [12]13516 	subb	a,r2
      003636 50 06            [24]13517 	jnc	00107$
                           002C07 13518 	C$easyax5043.c$2211$3$809 ==.
                                  13519 ;	..\COMMON\easyax5043.c:2211: return AXRADIO_ERR_INVALID;
      003638 75 82 04         [24]13520 	mov	dpl,#0x04
      00363B 02 39 40         [24]13521 	ljmp	00202$
      00363E                      13522 00107$:
                           002C0D 13523 	C$easyax5043.c$2213$2$808 ==.
                                  13524 ;	..\COMMON\easyax5043.c:2213: if (pktlen) {
      00363E E5 18            [12]13525 	mov	a,_axradio_transmit_PARM_3
      003640 45 19            [12]13526 	orl	a,(_axradio_transmit_PARM_3 + 1)
      003642 60 30            [24]13527 	jz	00124$
                           002C13 13528 	C$easyax5043.c$2214$3$808 ==.
                                  13529 ;	..\COMMON\easyax5043.c:2214: uint8_t __autodata i = pktlen;
      003644 AC 18            [24]13530 	mov	r4,_axradio_transmit_PARM_3
                           002C15 13531 	C$easyax5043.c$2215$4$811 ==.
                                  13532 ;	..\COMMON\easyax5043.c:2215: radio_write8(AX5043_REG_FIFODATA, AX5043_FIFOCMD_DATA | (7 << 5));
      003646 90 40 29         [24]13533 	mov	dptr,#0x4029
      003649 74 E1            [12]13534 	mov	a,#0xe1
      00364B F0               [24]13535 	movx	@dptr,a
                           002C1B 13536 	C$easyax5043.c$2216$4$812 ==.
                                  13537 ;	..\COMMON\easyax5043.c:2216: radio_write8(AX5043_REG_FIFODATA, i + 1);
      00364C EC               [12]13538 	mov	a,r4
      00364D 04               [12]13539 	inc	a
      00364E 90 40 29         [24]13540 	mov	dptr,#0x4029
      003651 F0               [24]13541 	movx	@dptr,a
                           002C21 13542 	C$easyax5043.c$2217$4$813 ==.
                                  13543 ;	..\COMMON\easyax5043.c:2217: radio_write8(AX5043_REG_FIFODATA, 0x08);
      003652 90 40 29         [24]13544 	mov	dptr,#0x4029
      003655 74 08            [12]13545 	mov	a,#0x08
      003657 F0               [24]13546 	movx	@dptr,a
                           002C27 13547 	C$easyax5043.c$2219$1$807 ==.
                                  13548 ;	..\COMMON\easyax5043.c:2219: radio_write8(AX5043_REG_FIFODATA, *pkt++);
      003658 A9 15            [24]13549 	mov	r1,_axradio_transmit_PARM_2
      00365A AA 16            [24]13550 	mov	r2,(_axradio_transmit_PARM_2 + 1)
      00365C AB 17            [24]13551 	mov	r3,(_axradio_transmit_PARM_2 + 2)
      00365E                      13552 00117$:
      00365E 89 82            [24]13553 	mov	dpl,r1
      003660 8A 83            [24]13554 	mov	dph,r2
      003662 8B F0            [24]13555 	mov	b,r3
      003664 12 56 5A         [24]13556 	lcall	__gptrget
      003667 F8               [12]13557 	mov	r0,a
      003668 A3               [24]13558 	inc	dptr
      003669 A9 82            [24]13559 	mov	r1,dpl
      00366B AA 83            [24]13560 	mov	r2,dph
      00366D 90 40 29         [24]13561 	mov	dptr,#0x4029
      003670 E8               [12]13562 	mov	a,r0
      003671 F0               [24]13563 	movx	@dptr,a
                           002C41 13564 	C$easyax5043.c$2220$3$810 ==.
                                  13565 ;	..\COMMON\easyax5043.c:2220: } while (--i);
      003672 DC EA            [24]13566 	djnz	r4,00117$
      003674                      13567 00124$:
                           002C43 13568 	C$libmftypes.h$351$6$830 ==.
                                  13569 ;	C:/Program Files (x86)/ON Semiconductor/AXSDB/libmf/include/libmftypes.h:351: criticalsection_t crit = IE & 0x80;
      003674 74 80            [12]13570 	mov	a,#0x80
      003676 55 A8            [12]13571 	anl	a,_IE
      003678 FC               [12]13572 	mov	r4,a
                           002C48 13573 	C$easyax5043.c$2223$6$830 ==.
                                  13574 ;	..\COMMON\easyax5043.c:2223: criticalsection_t crit = enter_critical();
      003679 C2 AF            [12]13575 	clr	_EA
                           002C4A 13576 	C$easyax5043.c$2224$3$816 ==.
                                  13577 ;	..\COMMON\easyax5043.c:2224: radio_read8(AX5043_REG_RADIOEVENTREQ0);
      00367B 90 40 0F         [24]13578 	mov	dptr,#0x400f
      00367E E0               [24]13579 	movx	a,@dptr
                           002C4E 13580 	C$easyax5043.c$2225$3$816 ==.
                                  13581 ;	..\COMMON\easyax5043.c:2225: radio_read8(AX5043_REG_IRQREQUEST0);
      00367F 90 40 0D         [24]13582 	mov	dptr,#0x400d
      003682 E0               [24]13583 	movx	a,@dptr
                           002C52 13584 	C$easyax5043.c$2226$4$817 ==.
                                  13585 ;	..\COMMON\easyax5043.c:2226: radio_write8(AX5043_REG_IRQMASK0, radio_read8(AX5043_REG_IRQMASK0) | 0x08);
      003683 90 40 07         [24]13586 	mov	dptr,#0x4007
      003686 E0               [24]13587 	movx	a,@dptr
      003687 44 08            [12]13588 	orl	a,#0x08
      003689 FB               [12]13589 	mov	r3,a
      00368A F0               [24]13590 	movx	@dptr,a
                           002C5A 13591 	C$easyax5043.c$2227$4$818 ==.
                                  13592 ;	..\COMMON\easyax5043.c:2227: radio_write8(AX5043_REG_FIFOSTAT,  4); // FIFO commit
      00368B 90 40 28         [24]13593 	mov	dptr,#0x4028
      00368E 74 04            [12]13594 	mov	a,#0x04
      003690 F0               [24]13595 	movx	@dptr,a
                           002C60 13596 	C$libmftypes.h$358$6$833 ==.
                                  13597 ;	C:/Program Files (x86)/ON Semiconductor/AXSDB/libmf/include/libmftypes.h:358: IE |= crit;
      003691 EC               [12]13598 	mov	a,r4
      003692 42 A8            [12]13599 	orl	_IE,a
                           002C63 13600 	C$easyax5043.c$2230$2$808 ==.
                                  13601 ;	..\COMMON\easyax5043.c:2230: return AXRADIO_ERR_NOERROR;
      003694 75 82 00         [24]13602 	mov	dpl,#0x00
      003697 02 39 40         [24]13603 	ljmp	00202$
                           002C69 13604 	C$easyax5043.c$2237$2$808 ==.
                                  13605 ;	..\COMMON\easyax5043.c:2237: case AXRADIO_MODE_WOR_RECEIVE:
      00369A                      13606 00134$:
                           002C69 13607 	C$easyax5043.c$2238$2$808 ==.
                                  13608 ;	..\COMMON\easyax5043.c:2238: if (axradio_syncstate != syncstate_off)
      00369A 90 00 04         [24]13609 	mov	dptr,#_axradio_syncstate
      00369D E0               [24]13610 	movx	a,@dptr
      00369E E0               [24]13611 	movx	a,@dptr
      00369F 60 06            [24]13612 	jz	00137$
                           002C70 13613 	C$easyax5043.c$2239$2$808 ==.
                                  13614 ;	..\COMMON\easyax5043.c:2239: return AXRADIO_ERR_BUSY;
      0036A1 75 82 02         [24]13615 	mov	dpl,#0x02
      0036A4 02 39 40         [24]13616 	ljmp	00202$
                           002C76 13617 	C$easyax5043.c$2240$2$808 ==.
                                  13618 ;	..\COMMON\easyax5043.c:2240: radio_write8(AX5043_REG_IRQMASK1, 0x00);
      0036A7                      13619 00137$:
      0036A7 90 40 06         [24]13620 	mov	dptr,#0x4006
      0036AA E4               [12]13621 	clr	a
      0036AB F0               [24]13622 	movx	@dptr,a
                           002C7B 13623 	C$easyax5043.c$2241$3$820 ==.
                                  13624 ;	..\COMMON\easyax5043.c:2241: radio_write8(AX5043_REG_IRQMASK0, 0x00);
      0036AC 90 40 07         [24]13625 	mov	dptr,#0x4007
      0036AF F0               [24]13626 	movx	@dptr,a
                           002C7F 13627 	C$easyax5043.c$2242$3$821 ==.
                                  13628 ;	..\COMMON\easyax5043.c:2242: radio_write8(AX5043_REG_PWRMODE, AX5043_PWRSTATE_XTAL_ON);
      0036B0 90 40 02         [24]13629 	mov	dptr,#0x4002
      0036B3 74 05            [12]13630 	mov	a,#0x05
      0036B5 F0               [24]13631 	movx	@dptr,a
                           002C85 13632 	C$easyax5043.c$2243$3$822 ==.
                                  13633 ;	..\COMMON\easyax5043.c:2243: radio_write8(AX5043_REG_FIFOSTAT, 3);
      0036B6 90 40 28         [24]13634 	mov	dptr,#0x4028
      0036B9 74 03            [12]13635 	mov	a,#0x03
      0036BB F0               [24]13636 	movx	@dptr,a
                           002C8B 13637 	C$easyax5043.c$2244$2$808 ==.
                                  13638 ;	..\COMMON\easyax5043.c:2244: while (radio_read8(AX5043_REG_POWSTAT) & 0x08);
      0036BC                      13639 00149$:
      0036BC 90 40 03         [24]13640 	mov	dptr,#0x4003
      0036BF E0               [24]13641 	movx	a,@dptr
      0036C0 FC               [12]13642 	mov	r4,a
      0036C1 20 E3 F8         [24]13643 	jb	acc.3,00149$
                           002C93 13644 	C$easyax5043.c$2245$2$808 ==.
                                  13645 ;	..\COMMON\easyax5043.c:2245: ax5043_init_registers_tx();
      0036C4 C0 07            [24]13646 	push	ar7
      0036C6 C0 06            [24]13647 	push	ar6
      0036C8 C0 05            [24]13648 	push	ar5
      0036CA 12 0B 15         [24]13649 	lcall	_ax5043_init_registers_tx
      0036CD D0 05            [24]13650 	pop	ar5
      0036CF D0 06            [24]13651 	pop	ar6
      0036D1 D0 07            [24]13652 	pop	ar7
                           002CA2 13653 	C$easyax5043.c$2246$2$808 ==.
                                  13654 ;	..\COMMON\easyax5043.c:2246: goto dotx;
                           002CA2 13655 	C$easyax5043.c$2251$2$808 ==.
                                  13656 ;	..\COMMON\easyax5043.c:2251: case AXRADIO_MODE_WOR_ACK_TRANSMIT:
      0036D3 80 0D            [24]13657 	sjmp	00158$
      0036D5                      13658 00155$:
                           002CA4 13659 	C$easyax5043.c$2252$2$808 ==.
                                  13660 ;	..\COMMON\easyax5043.c:2252: if (axradio_syncstate != syncstate_off)
      0036D5 90 00 04         [24]13661 	mov	dptr,#_axradio_syncstate
      0036D8 E0               [24]13662 	movx	a,@dptr
      0036D9 E0               [24]13663 	movx	a,@dptr
      0036DA 60 06            [24]13664 	jz	00158$
                           002CAB 13665 	C$easyax5043.c$2253$2$808 ==.
                                  13666 ;	..\COMMON\easyax5043.c:2253: return AXRADIO_ERR_BUSY;
      0036DC 75 82 02         [24]13667 	mov	dpl,#0x02
      0036DF 02 39 40         [24]13668 	ljmp	00202$
                           002CB1 13669 	C$easyax5043.c$2254$2$808 ==.
                                  13670 ;	..\COMMON\easyax5043.c:2254: dotx:
      0036E2                      13671 00158$:
                           002CB1 13672 	C$easyax5043.c$2255$2$808 ==.
                                  13673 ;	..\COMMON\easyax5043.c:2255: axradio_ack_count = axradio_framing_ack_retransmissions;
      0036E2 90 57 2C         [24]13674 	mov	dptr,#_axradio_framing_ack_retransmissions
      0036E5 E4               [12]13675 	clr	a
      0036E6 93               [24]13676 	movc	a,@a+dptr
      0036E7 90 00 0E         [24]13677 	mov	dptr,#_axradio_ack_count
      0036EA F0               [24]13678 	movx	@dptr,a
                           002CBA 13679 	C$easyax5043.c$2256$2$808 ==.
                                  13680 ;	..\COMMON\easyax5043.c:2256: ++axradio_ack_seqnr;
      0036EB 90 00 0F         [24]13681 	mov	dptr,#_axradio_ack_seqnr
      0036EE E0               [24]13682 	movx	a,@dptr
      0036EF 24 01            [12]13683 	add	a,#0x01
      0036F1 F0               [24]13684 	movx	@dptr,a
                           002CC1 13685 	C$easyax5043.c$2257$2$808 ==.
                                  13686 ;	..\COMMON\easyax5043.c:2257: axradio_txbuffer_len = pktlen + axradio_framing_maclen;
      0036F2 90 57 15         [24]13687 	mov	dptr,#_axradio_framing_maclen
      0036F5 E4               [12]13688 	clr	a
      0036F6 93               [24]13689 	movc	a,@a+dptr
      0036F7 FC               [12]13690 	mov	r4,a
      0036F8 7B 00            [12]13691 	mov	r3,#0x00
      0036FA 25 18            [12]13692 	add	a,_axradio_transmit_PARM_3
      0036FC FA               [12]13693 	mov	r2,a
      0036FD EB               [12]13694 	mov	a,r3
      0036FE 35 19            [12]13695 	addc	a,(_axradio_transmit_PARM_3 + 1)
      003700 FB               [12]13696 	mov	r3,a
      003701 90 00 05         [24]13697 	mov	dptr,#_axradio_txbuffer_len
      003704 EA               [12]13698 	mov	a,r2
      003705 F0               [24]13699 	movx	@dptr,a
      003706 EB               [12]13700 	mov	a,r3
      003707 A3               [24]13701 	inc	dptr
      003708 F0               [24]13702 	movx	@dptr,a
                           002CD8 13703 	C$easyax5043.c$2258$2$808 ==.
                                  13704 ;	..\COMMON\easyax5043.c:2258: if (axradio_txbuffer_len > sizeof(axradio_txbuffer))
      003709 C3               [12]13705 	clr	c
      00370A 74 04            [12]13706 	mov	a,#0x04
      00370C 9A               [12]13707 	subb	a,r2
      00370D 74 01            [12]13708 	mov	a,#0x01
      00370F 9B               [12]13709 	subb	a,r3
      003710 50 06            [24]13710 	jnc	00160$
                           002CE1 13711 	C$easyax5043.c$2259$2$808 ==.
                                  13712 ;	..\COMMON\easyax5043.c:2259: return AXRADIO_ERR_INVALID;
      003712 75 82 04         [24]13713 	mov	dpl,#0x04
      003715 02 39 40         [24]13714 	ljmp	00202$
      003718                      13715 00160$:
                           002CE7 13716 	C$easyax5043.c$2260$2$808 ==.
                                  13717 ;	..\COMMON\easyax5043.c:2260: memset_xdata(axradio_txbuffer, 0, axradio_framing_maclen);
      003718 8C 35            [24]13718 	mov	_memset_PARM_3,r4
      00371A 75 36 00         [24]13719 	mov	(_memset_PARM_3 + 1),#0x00
      00371D 75 34 00         [24]13720 	mov	_memset_PARM_2,#0x00
      003720 90 00 2D         [24]13721 	mov	dptr,#_axradio_txbuffer
      003723 75 F0 00         [24]13722 	mov	b,#0x00
      003726 C0 07            [24]13723 	push	ar7
      003728 C0 06            [24]13724 	push	ar6
      00372A C0 05            [24]13725 	push	ar5
      00372C 12 46 7C         [24]13726 	lcall	_memset
                           002CFE 13727 	C$easyax5043.c$2261$2$808 ==.
                                  13728 ;	..\COMMON\easyax5043.c:2261: memcpy_xdatageneric(&axradio_txbuffer[axradio_framing_maclen], pkt, pktlen);
      00372F 90 57 15         [24]13729 	mov	dptr,#_axradio_framing_maclen
      003732 E4               [12]13730 	clr	a
      003733 93               [24]13731 	movc	a,@a+dptr
      003734 24 2D            [12]13732 	add	a,#_axradio_txbuffer
      003736 FC               [12]13733 	mov	r4,a
      003737 E4               [12]13734 	clr	a
      003738 34 00            [12]13735 	addc	a,#(_axradio_txbuffer >> 8)
      00373A FB               [12]13736 	mov	r3,a
      00373B 7A 00            [12]13737 	mov	r2,#0x00
      00373D 85 15 34         [24]13738 	mov	_memcpy_PARM_2,_axradio_transmit_PARM_2
      003740 85 16 35         [24]13739 	mov	(_memcpy_PARM_2 + 1),(_axradio_transmit_PARM_2 + 1)
      003743 85 17 36         [24]13740 	mov	(_memcpy_PARM_2 + 2),(_axradio_transmit_PARM_2 + 2)
      003746 85 18 37         [24]13741 	mov	_memcpy_PARM_3,_axradio_transmit_PARM_3
      003749 85 19 38         [24]13742 	mov	(_memcpy_PARM_3 + 1),(_axradio_transmit_PARM_3 + 1)
      00374C 8C 82            [24]13743 	mov	dpl,r4
      00374E 8B 83            [24]13744 	mov	dph,r3
      003750 8A F0            [24]13745 	mov	b,r2
      003752 12 46 9B         [24]13746 	lcall	_memcpy
      003755 D0 05            [24]13747 	pop	ar5
      003757 D0 06            [24]13748 	pop	ar6
      003759 D0 07            [24]13749 	pop	ar7
                           002D2A 13750 	C$easyax5043.c$2262$2$808 ==.
                                  13751 ;	..\COMMON\easyax5043.c:2262: if (axradio_framing_ack_seqnrpos != 0xff)
      00375B 90 57 2D         [24]13752 	mov	dptr,#_axradio_framing_ack_seqnrpos
      00375E E4               [12]13753 	clr	a
      00375F 93               [24]13754 	movc	a,@a+dptr
      003760 FC               [12]13755 	mov	r4,a
      003761 BC FF 02         [24]13756 	cjne	r4,#0xff,00337$
      003764 80 12            [24]13757 	sjmp	00162$
      003766                      13758 00337$:
                           002D35 13759 	C$easyax5043.c$2263$2$808 ==.
                                  13760 ;	..\COMMON\easyax5043.c:2263: axradio_txbuffer[axradio_framing_ack_seqnrpos] = axradio_ack_seqnr;
      003766 EC               [12]13761 	mov	a,r4
      003767 24 2D            [12]13762 	add	a,#_axradio_txbuffer
      003769 FC               [12]13763 	mov	r4,a
      00376A E4               [12]13764 	clr	a
      00376B 34 00            [12]13765 	addc	a,#(_axradio_txbuffer >> 8)
      00376D FB               [12]13766 	mov	r3,a
      00376E 90 00 0F         [24]13767 	mov	dptr,#_axradio_ack_seqnr
      003771 E0               [24]13768 	movx	a,@dptr
      003772 FA               [12]13769 	mov	r2,a
      003773 8C 82            [24]13770 	mov	dpl,r4
      003775 8B 83            [24]13771 	mov	dph,r3
      003777 F0               [24]13772 	movx	@dptr,a
      003778                      13773 00162$:
                           002D47 13774 	C$easyax5043.c$2264$2$808 ==.
                                  13775 ;	..\COMMON\easyax5043.c:2264: if (axradio_framing_destaddrpos != 0xff)
      003778 90 57 17         [24]13776 	mov	dptr,#_axradio_framing_destaddrpos
      00377B E4               [12]13777 	clr	a
      00377C 93               [24]13778 	movc	a,@a+dptr
      00377D FC               [12]13779 	mov	r4,a
      00377E BC FF 02         [24]13780 	cjne	r4,#0xff,00338$
      003781 80 23            [24]13781 	sjmp	00164$
      003783                      13782 00338$:
                           002D52 13783 	C$easyax5043.c$2265$2$808 ==.
                                  13784 ;	..\COMMON\easyax5043.c:2265: memcpy_xdatageneric(&axradio_txbuffer[axradio_framing_destaddrpos], &addr->addr, axradio_framing_addrlen);
      003783 EC               [12]13785 	mov	a,r4
      003784 24 2D            [12]13786 	add	a,#_axradio_txbuffer
      003786 FC               [12]13787 	mov	r4,a
      003787 E4               [12]13788 	clr	a
      003788 34 00            [12]13789 	addc	a,#(_axradio_txbuffer >> 8)
      00378A FB               [12]13790 	mov	r3,a
      00378B 7A 00            [12]13791 	mov	r2,#0x00
      00378D 8D 34            [24]13792 	mov	_memcpy_PARM_2,r5
      00378F 8E 35            [24]13793 	mov	(_memcpy_PARM_2 + 1),r6
      003791 8F 36            [24]13794 	mov	(_memcpy_PARM_2 + 2),r7
      003793 90 57 16         [24]13795 	mov	dptr,#_axradio_framing_addrlen
      003796 E4               [12]13796 	clr	a
      003797 93               [24]13797 	movc	a,@a+dptr
      003798 FF               [12]13798 	mov	r7,a
      003799 8F 37            [24]13799 	mov	_memcpy_PARM_3,r7
                                  13800 ;	1-genFromRTrack replaced	mov	(_memcpy_PARM_3 + 1),#0x00
      00379B 8A 38            [24]13801 	mov	(_memcpy_PARM_3 + 1),r2
      00379D 8C 82            [24]13802 	mov	dpl,r4
      00379F 8B 83            [24]13803 	mov	dph,r3
      0037A1 8A F0            [24]13804 	mov	b,r2
      0037A3 12 46 9B         [24]13805 	lcall	_memcpy
      0037A6                      13806 00164$:
                           002D75 13807 	C$easyax5043.c$2266$2$808 ==.
                                  13808 ;	..\COMMON\easyax5043.c:2266: if (axradio_framing_sourceaddrpos != 0xff)
      0037A6 90 57 18         [24]13809 	mov	dptr,#_axradio_framing_sourceaddrpos
      0037A9 E4               [12]13810 	clr	a
      0037AA 93               [24]13811 	movc	a,@a+dptr
      0037AB FF               [12]13812 	mov	r7,a
      0037AC BF FF 02         [24]13813 	cjne	r7,#0xff,00339$
      0037AF 80 25            [24]13814 	sjmp	00166$
      0037B1                      13815 00339$:
                           002D80 13816 	C$easyax5043.c$2267$2$808 ==.
                                  13817 ;	..\COMMON\easyax5043.c:2267: memcpy_xdata(&axradio_txbuffer[axradio_framing_sourceaddrpos], &axradio_localaddr.addr, axradio_framing_addrlen);
      0037B1 EF               [12]13818 	mov	a,r7
      0037B2 24 2D            [12]13819 	add	a,#_axradio_txbuffer
      0037B4 FF               [12]13820 	mov	r7,a
      0037B5 E4               [12]13821 	clr	a
      0037B6 34 00            [12]13822 	addc	a,#(_axradio_txbuffer >> 8)
      0037B8 FE               [12]13823 	mov	r6,a
      0037B9 7D 00            [12]13824 	mov	r5,#0x00
      0037BB 75 34 1E         [24]13825 	mov	_memcpy_PARM_2,#_axradio_localaddr
      0037BE 75 35 00         [24]13826 	mov	(_memcpy_PARM_2 + 1),#(_axradio_localaddr >> 8)
                                  13827 ;	1-genFromRTrack replaced	mov	(_memcpy_PARM_2 + 2),#0x00
      0037C1 8D 36            [24]13828 	mov	(_memcpy_PARM_2 + 2),r5
      0037C3 90 57 16         [24]13829 	mov	dptr,#_axradio_framing_addrlen
      0037C6 E4               [12]13830 	clr	a
      0037C7 93               [24]13831 	movc	a,@a+dptr
      0037C8 FC               [12]13832 	mov	r4,a
      0037C9 8C 37            [24]13833 	mov	_memcpy_PARM_3,r4
                                  13834 ;	1-genFromRTrack replaced	mov	(_memcpy_PARM_3 + 1),#0x00
      0037CB 8D 38            [24]13835 	mov	(_memcpy_PARM_3 + 1),r5
      0037CD 8F 82            [24]13836 	mov	dpl,r7
      0037CF 8E 83            [24]13837 	mov	dph,r6
      0037D1 8D F0            [24]13838 	mov	b,r5
      0037D3 12 46 9B         [24]13839 	lcall	_memcpy
      0037D6                      13840 00166$:
                           002DA5 13841 	C$easyax5043.c$2268$2$808 ==.
                                  13842 ;	..\COMMON\easyax5043.c:2268: if (axradio_framing_lenmask) {
      0037D6 90 57 1B         [24]13843 	mov	dptr,#_axradio_framing_lenmask
      0037D9 E4               [12]13844 	clr	a
      0037DA 93               [24]13845 	movc	a,@a+dptr
      0037DB FF               [12]13846 	mov	r7,a
      0037DC 60 30            [24]13847 	jz	00168$
                           002DAD 13848 	C$easyax5043.c$2269$3$823 ==.
                                  13849 ;	..\COMMON\easyax5043.c:2269: uint8_t __autodata len_byte = (uint8_t)(axradio_txbuffer_len - axradio_framing_lenoffs) & axradio_framing_lenmask; // if you prefer not counting the len byte itself, set LENOFFS = 1
      0037DE 90 00 05         [24]13850 	mov	dptr,#_axradio_txbuffer_len
      0037E1 E0               [24]13851 	movx	a,@dptr
      0037E2 FD               [12]13852 	mov	r5,a
      0037E3 A3               [24]13853 	inc	dptr
      0037E4 E0               [24]13854 	movx	a,@dptr
      0037E5 90 57 1A         [24]13855 	mov	dptr,#_axradio_framing_lenoffs
      0037E8 E4               [12]13856 	clr	a
      0037E9 93               [24]13857 	movc	a,@a+dptr
      0037EA FE               [12]13858 	mov	r6,a
      0037EB ED               [12]13859 	mov	a,r5
      0037EC C3               [12]13860 	clr	c
      0037ED 9E               [12]13861 	subb	a,r6
      0037EE 5F               [12]13862 	anl	a,r7
      0037EF FE               [12]13863 	mov	r6,a
                           002DBF 13864 	C$easyax5043.c$2270$3$823 ==.
                                  13865 ;	..\COMMON\easyax5043.c:2270: axradio_txbuffer[axradio_framing_lenpos] = (axradio_txbuffer[axradio_framing_lenpos] & (uint8_t)~axradio_framing_lenmask) | len_byte;
      0037F0 90 57 19         [24]13866 	mov	dptr,#_axradio_framing_lenpos
      0037F3 E4               [12]13867 	clr	a
      0037F4 93               [24]13868 	movc	a,@a+dptr
      0037F5 24 2D            [12]13869 	add	a,#_axradio_txbuffer
      0037F7 FD               [12]13870 	mov	r5,a
      0037F8 E4               [12]13871 	clr	a
      0037F9 34 00            [12]13872 	addc	a,#(_axradio_txbuffer >> 8)
      0037FB FC               [12]13873 	mov	r4,a
      0037FC 8D 82            [24]13874 	mov	dpl,r5
      0037FE 8C 83            [24]13875 	mov	dph,r4
      003800 E0               [24]13876 	movx	a,@dptr
      003801 FB               [12]13877 	mov	r3,a
      003802 EF               [12]13878 	mov	a,r7
      003803 F4               [12]13879 	cpl	a
      003804 FF               [12]13880 	mov	r7,a
      003805 5B               [12]13881 	anl	a,r3
      003806 42 06            [12]13882 	orl	ar6,a
      003808 8D 82            [24]13883 	mov	dpl,r5
      00380A 8C 83            [24]13884 	mov	dph,r4
      00380C EE               [12]13885 	mov	a,r6
      00380D F0               [24]13886 	movx	@dptr,a
      00380E                      13887 00168$:
                           002DDD 13888 	C$easyax5043.c$2272$2$808 ==.
                                  13889 ;	..\COMMON\easyax5043.c:2272: if (axradio_framing_swcrclen)
      00380E 90 57 1C         [24]13890 	mov	dptr,#_axradio_framing_swcrclen
      003811 E4               [12]13891 	clr	a
      003812 93               [24]13892 	movc	a,@a+dptr
      003813 60 20            [24]13893 	jz	00170$
                           002DE4 13894 	C$easyax5043.c$2273$2$808 ==.
                                  13895 ;	..\COMMON\easyax5043.c:2273: axradio_txbuffer_len = axradio_framing_append_crc(axradio_txbuffer, axradio_txbuffer_len);
      003815 90 00 05         [24]13896 	mov	dptr,#_axradio_txbuffer_len
      003818 E0               [24]13897 	movx	a,@dptr
      003819 C0 E0            [24]13898 	push	acc
      00381B A3               [24]13899 	inc	dptr
      00381C E0               [24]13900 	movx	a,@dptr
      00381D C0 E0            [24]13901 	push	acc
      00381F 90 00 2D         [24]13902 	mov	dptr,#_axradio_txbuffer
      003822 12 09 C3         [24]13903 	lcall	_axradio_framing_append_crc
      003825 AE 82            [24]13904 	mov	r6,dpl
      003827 AF 83            [24]13905 	mov	r7,dph
      003829 15 81            [12]13906 	dec	sp
      00382B 15 81            [12]13907 	dec	sp
      00382D 90 00 05         [24]13908 	mov	dptr,#_axradio_txbuffer_len
      003830 EE               [12]13909 	mov	a,r6
      003831 F0               [24]13910 	movx	@dptr,a
      003832 EF               [12]13911 	mov	a,r7
      003833 A3               [24]13912 	inc	dptr
      003834 F0               [24]13913 	movx	@dptr,a
      003835                      13914 00170$:
                           002E04 13915 	C$easyax5043.c$2274$2$808 ==.
                                  13916 ;	..\COMMON\easyax5043.c:2274: if (axradio_phy_pn9)
      003835 90 56 F3         [24]13917 	mov	dptr,#_axradio_phy_pn9
      003838 E4               [12]13918 	clr	a
      003839 93               [24]13919 	movc	a,@a+dptr
      00383A 60 2F            [24]13920 	jz	00172$
                           002E0B 13921 	C$easyax5043.c$2275$2$808 ==.
                                  13922 ;	..\COMMON\easyax5043.c:2275: pn9_buffer(axradio_txbuffer, axradio_txbuffer_len, 0x1ff, -((radio_read8(AX5043_REG_ENCODING) & 0x01)));
      00383C 90 40 11         [24]13923 	mov	dptr,#0x4011
      00383F E0               [24]13924 	movx	a,@dptr
      003840 FF               [12]13925 	mov	r7,a
      003841 53 07 01         [24]13926 	anl	ar7,#0x01
      003844 C3               [12]13927 	clr	c
      003845 E4               [12]13928 	clr	a
      003846 9F               [12]13929 	subb	a,r7
      003847 FF               [12]13930 	mov	r7,a
      003848 C0 07            [24]13931 	push	ar7
      00384A 74 FF            [12]13932 	mov	a,#0xff
      00384C C0 E0            [24]13933 	push	acc
      00384E 74 01            [12]13934 	mov	a,#0x01
      003850 C0 E0            [24]13935 	push	acc
      003852 90 00 05         [24]13936 	mov	dptr,#_axradio_txbuffer_len
      003855 E0               [24]13937 	movx	a,@dptr
      003856 C0 E0            [24]13938 	push	acc
      003858 A3               [24]13939 	inc	dptr
      003859 E0               [24]13940 	movx	a,@dptr
      00385A C0 E0            [24]13941 	push	acc
      00385C 90 00 2D         [24]13942 	mov	dptr,#_axradio_txbuffer
      00385F 75 F0 00         [24]13943 	mov	b,#0x00
      003862 12 49 1D         [24]13944 	lcall	_pn9_buffer
      003865 E5 81            [12]13945 	mov	a,sp
      003867 24 FB            [12]13946 	add	a,#0xfb
      003869 F5 81            [12]13947 	mov	sp,a
      00386B                      13948 00172$:
                           002E3A 13949 	C$easyax5043.c$2276$2$808 ==.
                                  13950 ;	..\COMMON\easyax5043.c:2276: if (axradio_mode == AXRADIO_MODE_SYNC_MASTER ||
      00386B 74 30            [12]13951 	mov	a,#0x30
      00386D B5 08 02         [24]13952 	cjne	a,_axradio_mode,00343$
      003870 80 05            [24]13953 	sjmp	00173$
      003872                      13954 00343$:
                           002E41 13955 	C$easyax5043.c$2277$2$808 ==.
                                  13956 ;	..\COMMON\easyax5043.c:2277: axradio_mode == AXRADIO_MODE_SYNC_ACK_MASTER)
      003872 74 31            [12]13957 	mov	a,#0x31
      003874 B5 08 06         [24]13958 	cjne	a,_axradio_mode,00174$
      003877                      13959 00173$:
                           002E46 13960 	C$easyax5043.c$2278$2$808 ==.
                                  13961 ;	..\COMMON\easyax5043.c:2278: return AXRADIO_ERR_NOERROR;
      003877 75 82 00         [24]13962 	mov	dpl,#0x00
      00387A 02 39 40         [24]13963 	ljmp	00202$
      00387D                      13964 00174$:
                           002E4C 13965 	C$easyax5043.c$2279$2$808 ==.
                                  13966 ;	..\COMMON\easyax5043.c:2279: if (axradio_mode == AXRADIO_MODE_WOR_TRANSMIT ||
      00387D 74 11            [12]13967 	mov	a,#0x11
      00387F B5 08 02         [24]13968 	cjne	a,_axradio_mode,00346$
      003882 80 05            [24]13969 	sjmp	00176$
      003884                      13970 00346$:
                           002E53 13971 	C$easyax5043.c$2280$2$808 ==.
                                  13972 ;	..\COMMON\easyax5043.c:2280: axradio_mode == AXRADIO_MODE_WOR_ACK_TRANSMIT)
      003884 74 13            [12]13973 	mov	a,#0x13
      003886 B5 08 14         [24]13974 	cjne	a,_axradio_mode,00177$
      003889                      13975 00176$:
                           002E58 13976 	C$easyax5043.c$2281$2$808 ==.
                                  13977 ;	..\COMMON\easyax5043.c:2281: axradio_txbuffer_cnt = axradio_phy_preamble_wor_longlen;
      003889 90 57 09         [24]13978 	mov	dptr,#_axradio_phy_preamble_wor_longlen
      00388C E4               [12]13979 	clr	a
      00388D 93               [24]13980 	movc	a,@a+dptr
      00388E FE               [12]13981 	mov	r6,a
      00388F 74 01            [12]13982 	mov	a,#0x01
      003891 93               [24]13983 	movc	a,@a+dptr
      003892 FF               [12]13984 	mov	r7,a
      003893 90 00 07         [24]13985 	mov	dptr,#_axradio_txbuffer_cnt
      003896 EE               [12]13986 	mov	a,r6
      003897 F0               [24]13987 	movx	@dptr,a
      003898 EF               [12]13988 	mov	a,r7
      003899 A3               [24]13989 	inc	dptr
      00389A F0               [24]13990 	movx	@dptr,a
      00389B 80 12            [24]13991 	sjmp	00178$
      00389D                      13992 00177$:
                           002E6C 13993 	C$easyax5043.c$2283$2$808 ==.
                                  13994 ;	..\COMMON\easyax5043.c:2283: axradio_txbuffer_cnt = axradio_phy_preamble_longlen;
      00389D 90 57 0D         [24]13995 	mov	dptr,#_axradio_phy_preamble_longlen
      0038A0 E4               [12]13996 	clr	a
      0038A1 93               [24]13997 	movc	a,@a+dptr
      0038A2 FE               [12]13998 	mov	r6,a
      0038A3 74 01            [12]13999 	mov	a,#0x01
      0038A5 93               [24]14000 	movc	a,@a+dptr
      0038A6 FF               [12]14001 	mov	r7,a
      0038A7 90 00 07         [24]14002 	mov	dptr,#_axradio_txbuffer_cnt
      0038AA EE               [12]14003 	mov	a,r6
      0038AB F0               [24]14004 	movx	@dptr,a
      0038AC EF               [12]14005 	mov	a,r7
      0038AD A3               [24]14006 	inc	dptr
      0038AE F0               [24]14007 	movx	@dptr,a
      0038AF                      14008 00178$:
                           002E7E 14009 	C$easyax5043.c$2284$2$808 ==.
                                  14010 ;	..\COMMON\easyax5043.c:2284: if (axradio_phy_lbt_retries) {
      0038AF 90 57 07         [24]14011 	mov	dptr,#_axradio_phy_lbt_retries
      0038B2 E4               [12]14012 	clr	a
      0038B3 93               [24]14013 	movc	a,@a+dptr
      0038B4 60 79            [24]14014 	jz	00197$
                           002E85 14015 	C$easyax5043.c$2285$3$824 ==.
                                  14016 ;	..\COMMON\easyax5043.c:2285: switch (axradio_mode) {
      0038B6 AF 08            [24]14017 	mov	r7,_axradio_mode
      0038B8 BF 10 02         [24]14018 	cjne	r7,#0x10,00350$
      0038BB 80 21            [24]14019 	sjmp	00187$
      0038BD                      14020 00350$:
      0038BD BF 11 02         [24]14021 	cjne	r7,#0x11,00351$
      0038C0 80 1C            [24]14022 	sjmp	00187$
      0038C2                      14023 00351$:
      0038C2 BF 12 02         [24]14024 	cjne	r7,#0x12,00352$
      0038C5 80 17            [24]14025 	sjmp	00187$
      0038C7                      14026 00352$:
      0038C7 BF 13 02         [24]14027 	cjne	r7,#0x13,00353$
      0038CA 80 12            [24]14028 	sjmp	00187$
      0038CC                      14029 00353$:
      0038CC BF 20 02         [24]14030 	cjne	r7,#0x20,00354$
      0038CF 80 0D            [24]14031 	sjmp	00187$
      0038D1                      14032 00354$:
      0038D1 BF 21 02         [24]14033 	cjne	r7,#0x21,00355$
      0038D4 80 08            [24]14034 	sjmp	00187$
      0038D6                      14035 00355$:
      0038D6 BF 22 02         [24]14036 	cjne	r7,#0x22,00356$
      0038D9 80 03            [24]14037 	sjmp	00187$
      0038DB                      14038 00356$:
      0038DB BF 23 51         [24]14039 	cjne	r7,#0x23,00197$
                           002EAD 14040 	C$easyax5043.c$2293$4$825 ==.
                                  14041 ;	..\COMMON\easyax5043.c:2293: case AXRADIO_MODE_ACK_RECEIVE:
      0038DE                      14042 00187$:
                           002EAD 14043 	C$easyax5043.c$2294$4$825 ==.
                                  14044 ;	..\COMMON\easyax5043.c:2294: ax5043_off_xtal();
      0038DE 12 17 50         [24]14045 	lcall	_ax5043_off_xtal
                           002EB0 14046 	C$easyax5043.c$2295$4$825 ==.
                                  14047 ;	..\COMMON\easyax5043.c:2295: ax5043_init_registers_rx();
      0038E1 12 0B 1C         [24]14048 	lcall	_ax5043_init_registers_rx
                           002EB3 14049 	C$easyax5043.c$2296$5$826 ==.
                                  14050 ;	..\COMMON\easyax5043.c:2296: radio_write8(AX5043_REG_RSSIREFERENCE, axradio_phy_rssireference);
      0038E4 90 57 02         [24]14051 	mov	dptr,#_axradio_phy_rssireference
      0038E7 E4               [12]14052 	clr	a
      0038E8 93               [24]14053 	movc	a,@a+dptr
      0038E9 90 42 2C         [24]14054 	mov	dptr,#0x422c
      0038EC F0               [24]14055 	movx	@dptr,a
                           002EBC 14056 	C$easyax5043.c$2297$5$827 ==.
                                  14057 ;	..\COMMON\easyax5043.c:2297: radio_write8(AX5043_REG_PWRMODE, AX5043_PWRSTATE_FULL_RX);
      0038ED 90 40 02         [24]14058 	mov	dptr,#0x4002
      0038F0 74 09            [12]14059 	mov	a,#0x09
      0038F2 F0               [24]14060 	movx	@dptr,a
                           002EC2 14061 	C$easyax5043.c$2298$4$825 ==.
                                  14062 ;	..\COMMON\easyax5043.c:2298: axradio_ack_count = axradio_phy_lbt_retries;
      0038F3 90 57 07         [24]14063 	mov	dptr,#_axradio_phy_lbt_retries
      0038F6 E4               [12]14064 	clr	a
      0038F7 93               [24]14065 	movc	a,@a+dptr
      0038F8 90 00 0E         [24]14066 	mov	dptr,#_axradio_ack_count
      0038FB F0               [24]14067 	movx	@dptr,a
                           002ECB 14068 	C$easyax5043.c$2299$4$825 ==.
                                  14069 ;	..\COMMON\easyax5043.c:2299: axradio_syncstate = syncstate_lbt;
      0038FC 90 00 04         [24]14070 	mov	dptr,#_axradio_syncstate
      0038FF 74 01            [12]14071 	mov	a,#0x01
      003901 F0               [24]14072 	movx	@dptr,a
                           002ED1 14073 	C$easyax5043.c$2300$4$825 ==.
                                  14074 ;	..\COMMON\easyax5043.c:2300: wtimer_remove(&axradio_timer);
      003902 90 02 8E         [24]14075 	mov	dptr,#_axradio_timer
      003905 12 50 55         [24]14076 	lcall	_wtimer_remove
                           002ED7 14077 	C$easyax5043.c$2301$4$825 ==.
                                  14078 ;	..\COMMON\easyax5043.c:2301: axradio_timer.time = axradio_phy_cs_period;
      003908 90 57 04         [24]14079 	mov	dptr,#_axradio_phy_cs_period
      00390B E4               [12]14080 	clr	a
      00390C 93               [24]14081 	movc	a,@a+dptr
      00390D FE               [12]14082 	mov	r6,a
      00390E 74 01            [12]14083 	mov	a,#0x01
      003910 93               [24]14084 	movc	a,@a+dptr
      003911 FF               [12]14085 	mov	r7,a
      003912 7D 00            [12]14086 	mov	r5,#0x00
      003914 7C 00            [12]14087 	mov	r4,#0x00
      003916 90 02 92         [24]14088 	mov	dptr,#(_axradio_timer + 0x0004)
      003919 EE               [12]14089 	mov	a,r6
      00391A F0               [24]14090 	movx	@dptr,a
      00391B EF               [12]14091 	mov	a,r7
      00391C A3               [24]14092 	inc	dptr
      00391D F0               [24]14093 	movx	@dptr,a
      00391E ED               [12]14094 	mov	a,r5
      00391F A3               [24]14095 	inc	dptr
      003920 F0               [24]14096 	movx	@dptr,a
      003921 EC               [12]14097 	mov	a,r4
      003922 A3               [24]14098 	inc	dptr
      003923 F0               [24]14099 	movx	@dptr,a
                           002EF3 14100 	C$easyax5043.c$2302$4$825 ==.
                                  14101 ;	..\COMMON\easyax5043.c:2302: wtimer0_addrelative(&axradio_timer);
      003924 90 02 8E         [24]14102 	mov	dptr,#_axradio_timer
      003927 12 47 0A         [24]14103 	lcall	_wtimer0_addrelative
                           002EF9 14104 	C$easyax5043.c$2303$4$825 ==.
                                  14105 ;	..\COMMON\easyax5043.c:2303: return AXRADIO_ERR_NOERROR;
      00392A 75 82 00         [24]14106 	mov	dpl,#0x00
                           002EFC 14107 	C$easyax5043.c$2307$2$808 ==.
                                  14108 ;	..\COMMON\easyax5043.c:2307: }
      00392D 80 11            [24]14109 	sjmp	00202$
      00392F                      14110 00197$:
                           002EFE 14111 	C$easyax5043.c$2309$2$808 ==.
                                  14112 ;	..\COMMON\easyax5043.c:2309: axradio_syncstate = syncstate_asynctx;
      00392F 90 00 04         [24]14113 	mov	dptr,#_axradio_syncstate
      003932 74 02            [12]14114 	mov	a,#0x02
      003934 F0               [24]14115 	movx	@dptr,a
                           002F04 14116 	C$easyax5043.c$2310$2$808 ==.
                                  14117 ;	..\COMMON\easyax5043.c:2310: ax5043_prepare_tx();
      003935 12 17 1E         [24]14118 	lcall	_ax5043_prepare_tx
                           002F07 14119 	C$easyax5043.c$2311$2$808 ==.
                                  14120 ;	..\COMMON\easyax5043.c:2311: return AXRADIO_ERR_NOERROR;
      003938 75 82 00         [24]14121 	mov	dpl,#0x00
                           002F0A 14122 	C$easyax5043.c$2313$2$808 ==.
                                  14123 ;	..\COMMON\easyax5043.c:2313: default:
      00393B 80 03            [24]14124 	sjmp	00202$
      00393D                      14125 00198$:
                           002F0C 14126 	C$easyax5043.c$2314$2$808 ==.
                                  14127 ;	..\COMMON\easyax5043.c:2314: return AXRADIO_ERR_NOTSUPPORTED;
      00393D 75 82 01         [24]14128 	mov	dpl,#0x01
                           002F0F 14129 	C$easyax5043.c$2315$1$807 ==.
                                  14130 ;	..\COMMON\easyax5043.c:2315: }
      003940                      14131 00202$:
                           002F0F 14132 	C$easyax5043.c$2316$1$807 ==.
                           002F0F 14133 	XG$axradio_transmit$0$0 ==.
      003940 22               [24]14134 	ret
                                  14135 ;------------------------------------------------------------
                                  14136 ;Allocation info for local variables in function 'axradio_set_paramsets'
                                  14137 ;------------------------------------------------------------
                                  14138 ;val                       Allocated to registers r7 
                                  14139 ;------------------------------------------------------------
                           002F10 14140 	Feasyax5043$axradio_set_paramsets$0$0 ==.
                           002F10 14141 	C$easyax5043.c$2318$1$807 ==.
                                  14142 ;	..\COMMON\easyax5043.c:2318: static __reentrantb uint8_t axradio_set_paramsets(uint8_t val) __reentrant
                                  14143 ;	-----------------------------------------
                                  14144 ;	 function axradio_set_paramsets
                                  14145 ;	-----------------------------------------
      003941                      14146 _axradio_set_paramsets:
      003941 AF 82            [24]14147 	mov	r7,dpl
                           002F12 14148 	C$easyax5043.c$2320$1$835 ==.
                                  14149 ;	..\COMMON\easyax5043.c:2320: if (!AXRADIO_MODE_IS_STREAM_RECEIVE(axradio_mode))
      003943 74 F8            [12]14150 	mov	a,#0xf8
      003945 55 08            [12]14151 	anl	a,_axradio_mode
      003947 FE               [12]14152 	mov	r6,a
      003948 BE 28 02         [24]14153 	cjne	r6,#0x28,00111$
      00394B 80 05            [24]14154 	sjmp	00103$
      00394D                      14155 00111$:
                           002F1C 14156 	C$easyax5043.c$2321$1$835 ==.
                                  14157 ;	..\COMMON\easyax5043.c:2321: return AXRADIO_ERR_NOTSUPPORTED;
      00394D 75 82 01         [24]14158 	mov	dpl,#0x01
                           002F1F 14159 	C$easyax5043.c$2322$1$835 ==.
                                  14160 ;	..\COMMON\easyax5043.c:2322: radio_write8(AX5043_REG_RXPARAMSETS, val);
      003950 80 08            [24]14161 	sjmp	00106$
      003952                      14162 00103$:
      003952 90 41 17         [24]14163 	mov	dptr,#0x4117
      003955 EF               [12]14164 	mov	a,r7
      003956 F0               [24]14165 	movx	@dptr,a
                           002F26 14166 	C$easyax5043.c$2323$1$835 ==.
                                  14167 ;	..\COMMON\easyax5043.c:2323: return AXRADIO_ERR_NOERROR;
      003957 75 82 00         [24]14168 	mov	dpl,#0x00
      00395A                      14169 00106$:
                           002F29 14170 	C$easyax5043.c$2324$1$835 ==.
                           002F29 14171 	XFeasyax5043$axradio_set_paramsets$0$0 ==.
      00395A 22               [24]14172 	ret
                                  14173 ;------------------------------------------------------------
                                  14174 ;Allocation info for local variables in function 'axradio_agc_freeze'
                                  14175 ;------------------------------------------------------------
                           002F2A 14176 	G$axradio_agc_freeze$0$0 ==.
                           002F2A 14177 	C$easyax5043.c$2326$1$835 ==.
                                  14178 ;	..\COMMON\easyax5043.c:2326: uint8_t axradio_agc_freeze(void)
                                  14179 ;	-----------------------------------------
                                  14180 ;	 function axradio_agc_freeze
                                  14181 ;	-----------------------------------------
      00395B                      14182 _axradio_agc_freeze:
                           002F2A 14183 	C$easyax5043.c$2328$1$838 ==.
                                  14184 ;	..\COMMON\easyax5043.c:2328: return axradio_set_paramsets(0xff);
      00395B 75 82 FF         [24]14185 	mov	dpl,#0xff
      00395E 12 39 41         [24]14186 	lcall	_axradio_set_paramsets
                           002F30 14187 	C$easyax5043.c$2329$1$838 ==.
                           002F30 14188 	XG$axradio_agc_freeze$0$0 ==.
      003961 22               [24]14189 	ret
                                  14190 ;------------------------------------------------------------
                                  14191 ;Allocation info for local variables in function 'axradio_agc_thaw'
                                  14192 ;------------------------------------------------------------
                           002F31 14193 	G$axradio_agc_thaw$0$0 ==.
                           002F31 14194 	C$easyax5043.c$2331$1$838 ==.
                                  14195 ;	..\COMMON\easyax5043.c:2331: uint8_t axradio_agc_thaw(void)
                                  14196 ;	-----------------------------------------
                                  14197 ;	 function axradio_agc_thaw
                                  14198 ;	-----------------------------------------
      003962                      14199 _axradio_agc_thaw:
                           002F31 14200 	C$easyax5043.c$2333$1$840 ==.
                                  14201 ;	..\COMMON\easyax5043.c:2333: return axradio_set_paramsets(0x00);
      003962 75 82 00         [24]14202 	mov	dpl,#0x00
      003965 12 39 41         [24]14203 	lcall	_axradio_set_paramsets
                           002F37 14204 	C$easyax5043.c$2334$1$840 ==.
                           002F37 14205 	XG$axradio_agc_thaw$0$0 ==.
      003968 22               [24]14206 	ret
                                  14207 ;------------------------------------------------------------
                                  14208 ;Allocation info for local variables in function 'axradio_wait_n_lposccycles'
                                  14209 ;------------------------------------------------------------
                                  14210 ;n                         Allocated to registers r7 
                                  14211 ;cnt                       Allocated to registers r6 
                                  14212 ;------------------------------------------------------------
                           002F38 14213 	G$axradio_wait_n_lposccycles$0$0 ==.
                           002F38 14214 	C$easyax5043.c$2336$1$840 ==.
                                  14215 ;	..\COMMON\easyax5043.c:2336: void axradio_wait_n_lposccycles(uint8_t n)
                                  14216 ;	-----------------------------------------
                                  14217 ;	 function axradio_wait_n_lposccycles
                                  14218 ;	-----------------------------------------
      003969                      14219 _axradio_wait_n_lposccycles:
      003969 AF 82            [24]14220 	mov	r7,dpl
                           002F3A 14221 	C$libmftypes.h$373$4$849 ==.
                                  14222 ;	C:/Program Files (x86)/ON Semiconductor/AXSDB/libmf/include/libmftypes.h:373: EA = 0;
      00396B C2 AF            [12]14223 	clr	_EA
                           002F3C 14224 	C$easyax5043.c$2340$2$843 ==.
                                  14225 ;	..\COMMON\easyax5043.c:2340: radio_write8(AX5043_REG_IRQMASK1, radio_read8(AX5043_REG_IRQMASK1) | 0x04); // LPOSC irq
      00396D 90 40 06         [24]14226 	mov	dptr,#0x4006
      003970 E0               [24]14227 	movx	a,@dptr
      003971 44 04            [12]14228 	orl	a,#0x04
      003973 F0               [24]14229 	movx	@dptr,a
      003974 7E 00            [12]14230 	mov	r6,#0x00
      003976                      14231 00114$:
                           002F45 14232 	C$easyax5043.c$2343$2$844 ==.
                                  14233 ;	..\COMMON\easyax5043.c:2343: if( radio_read8(AX5043_REG_IRQREQUEST1) & 0x04 )
      003976 90 40 0C         [24]14234 	mov	dptr,#0x400c
      003979 E0               [24]14235 	movx	a,@dptr
      00397A FD               [12]14236 	mov	r5,a
      00397B 30 E2 05         [24]14237 	jnb	acc.2,00105$
                           002F4D 14238 	C$easyax5043.c$2345$3$845 ==.
                                  14239 ;	..\COMMON\easyax5043.c:2345: cnt++;
      00397E 0E               [12]14240 	inc	r6
                           002F4E 14241 	C$easyax5043.c$2346$3$845 ==.
                                  14242 ;	..\COMMON\easyax5043.c:2346: radio_read8(AX5043_REG_LPOSCSTATUS); // clear irq request
      00397F 90 43 11         [24]14243 	mov	dptr,#0x4311
      003982 E0               [24]14244 	movx	a,@dptr
      003983                      14245 00105$:
                           002F52 14246 	C$easyax5043.c$2349$2$844 ==.
                                  14247 ;	..\COMMON\easyax5043.c:2349: if(cnt > n)
      003983 C3               [12]14248 	clr	c
      003984 EF               [12]14249 	mov	a,r7
      003985 9E               [12]14250 	subb	a,r6
      003986 40 05            [24]14251 	jc	00109$
                           002F57 14252 	C$easyax5043.c$2351$2$844 ==.
                                  14253 ;	..\COMMON\easyax5043.c:2351: enter_standby();
      003988 12 4A 52         [24]14254 	lcall	_enter_standby
                           002F5A 14255 	C$easyax5043.c$2354$1$842 ==.
                                  14256 ;	..\COMMON\easyax5043.c:2354: radio_write8(AX5043_REG_IRQMASK1, (radio_read8(AX5043_REG_IRQMASK1) & ~0x04)); // disable LPOSC irq
      00398B 80 E9            [24]14257 	sjmp	00114$
      00398D                      14258 00109$:
      00398D 90 40 06         [24]14259 	mov	dptr,#0x4006
      003990 E0               [24]14260 	movx	a,@dptr
      003991 54 FB            [12]14261 	anl	a,#0xfb
      003993 F0               [24]14262 	movx	@dptr,a
                           002F63 14263 	C$libmftypes.h$368$4$852 ==.
                                  14264 ;	C:/Program Files (x86)/ON Semiconductor/AXSDB/libmf/include/libmftypes.h:368: EA = 1;
      003994 D2 AF            [12]14265 	setb	_EA
                           002F65 14266 	C$easyax5043.c$2355$3$851 ==.
                                  14267 ;	..\COMMON\easyax5043.c:2355: __enable_irq();
                           002F65 14268 	C$easyax5043.c$2356$3$851 ==.
                           002F65 14269 	XG$axradio_wait_n_lposccycles$0$0 ==.
      003996 22               [24]14270 	ret
                                  14271 ;------------------------------------------------------------
                                  14272 ;Allocation info for local variables in function 'axradio_calibrate_lposc'
                                  14273 ;------------------------------------------------------------
                                  14274 ;x                         Allocated to registers r7 
                                  14275 ;------------------------------------------------------------
                           002F66 14276 	G$axradio_calibrate_lposc$0$0 ==.
                           002F66 14277 	C$easyax5043.c$2358$3$851 ==.
                                  14278 ;	..\COMMON\easyax5043.c:2358: void axradio_calibrate_lposc(void)
                                  14279 ;	-----------------------------------------
                                  14280 ;	 function axradio_calibrate_lposc
                                  14281 ;	-----------------------------------------
      003997                      14282 _axradio_calibrate_lposc:
                           002F66 14283 	C$easyax5043.c$2360$2$855 ==.
                                  14284 ;	..\COMMON\easyax5043.c:2360: radio_write8(AX5043_REG_LPOSCFREQ1, 0x00);
      003997 90 43 16         [24]14285 	mov	dptr,#0x4316
      00399A E4               [12]14286 	clr	a
      00399B F0               [24]14287 	movx	@dptr,a
                           002F6B 14288 	C$easyax5043.c$2361$2$856 ==.
                                  14289 ;	..\COMMON\easyax5043.c:2361: radio_write8(AX5043_REG_LPOSCFREQ0, 0x00);
      00399C 90 43 17         [24]14290 	mov	dptr,#0x4317
      00399F F0               [24]14291 	movx	@dptr,a
                           002F6F 14292 	C$easyax5043.c$2363$2$857 ==.
                                  14293 ;	..\COMMON\easyax5043.c:2363: radio_write8(AX5043_REG_LPOSCREF1, (((axradio_fxtal/640)>>8) & 0xFF));
      0039A0 90 57 67         [24]14294 	mov	dptr,#_axradio_fxtal
                                  14295 ;	genFromRTrack removed	clr	a
      0039A3 93               [24]14296 	movc	a,@a+dptr
      0039A4 FC               [12]14297 	mov	r4,a
      0039A5 74 01            [12]14298 	mov	a,#0x01
      0039A7 93               [24]14299 	movc	a,@a+dptr
      0039A8 FD               [12]14300 	mov	r5,a
      0039A9 74 02            [12]14301 	mov	a,#0x02
      0039AB 93               [24]14302 	movc	a,@a+dptr
      0039AC FE               [12]14303 	mov	r6,a
      0039AD 74 03            [12]14304 	mov	a,#0x03
      0039AF 93               [24]14305 	movc	a,@a+dptr
      0039B0 FF               [12]14306 	mov	r7,a
      0039B1 75 34 80         [24]14307 	mov	__divulong_PARM_2,#0x80
      0039B4 75 35 02         [24]14308 	mov	(__divulong_PARM_2 + 1),#0x02
      0039B7 E4               [12]14309 	clr	a
      0039B8 F5 36            [12]14310 	mov	(__divulong_PARM_2 + 2),a
      0039BA F5 37            [12]14311 	mov	(__divulong_PARM_2 + 3),a
      0039BC 8C 82            [24]14312 	mov	dpl,r4
      0039BE 8D 83            [24]14313 	mov	dph,r5
      0039C0 8E F0            [24]14314 	mov	b,r6
      0039C2 EF               [12]14315 	mov	a,r7
      0039C3 12 43 15         [24]14316 	lcall	__divulong
      0039C6 AC 82            [24]14317 	mov	r4,dpl
      0039C8 AD 83            [24]14318 	mov	r5,dph
      0039CA 8D 03            [24]14319 	mov	ar3,r5
      0039CC 90 43 14         [24]14320 	mov	dptr,#0x4314
      0039CF EB               [12]14321 	mov	a,r3
      0039D0 F0               [24]14322 	movx	@dptr,a
                           002FA0 14323 	C$easyax5043.c$2364$2$858 ==.
                                  14324 ;	..\COMMON\easyax5043.c:2364: radio_write8(AX5043_REG_LPOSCREF0, (((axradio_fxtal/640)>>0) & 0xFF));
      0039D1 90 43 15         [24]14325 	mov	dptr,#0x4315
      0039D4 EC               [12]14326 	mov	a,r4
      0039D5 F0               [24]14327 	movx	@dptr,a
                           002FA5 14328 	C$easyax5043.c$2365$2$859 ==.
                                  14329 ;	..\COMMON\easyax5043.c:2365: radio_write8(AX5043_REG_PWRMODE, AX5043_PWRSTATE_SYNTH_RX);
      0039D6 90 40 02         [24]14330 	mov	dptr,#0x4002
      0039D9 74 08            [12]14331 	mov	a,#0x08
      0039DB F0               [24]14332 	movx	@dptr,a
                           002FAB 14333 	C$easyax5043.c$2366$2$860 ==.
                                  14334 ;	..\COMMON\easyax5043.c:2366: radio_write8(AX5043_REG_LPOSCKFILT1, ((axradio_lposckfiltmax >> (8 + 1)) & 0xFF)); // kfiltmax >> 1
      0039DC 90 57 65         [24]14335 	mov	dptr,#_axradio_lposckfiltmax
      0039DF E4               [12]14336 	clr	a
      0039E0 93               [24]14337 	movc	a,@a+dptr
      0039E1 FE               [12]14338 	mov	r6,a
      0039E2 74 01            [12]14339 	mov	a,#0x01
      0039E4 93               [24]14340 	movc	a,@a+dptr
      0039E5 FF               [12]14341 	mov	r7,a
      0039E6 C3               [12]14342 	clr	c
      0039E7 13               [12]14343 	rrc	a
      0039E8 FC               [12]14344 	mov	r4,a
      0039E9 90 43 12         [24]14345 	mov	dptr,#0x4312
      0039EC EC               [12]14346 	mov	a,r4
      0039ED F0               [24]14347 	movx	@dptr,a
                           002FBD 14348 	C$easyax5043.c$2367$2$861 ==.
                                  14349 ;	..\COMMON\easyax5043.c:2367: radio_write8(AX5043_REG_LPOSCKFILT0, ((axradio_lposckfiltmax >> 1) & 0xFF));
      0039EE EF               [12]14350 	mov	a,r7
      0039EF C3               [12]14351 	clr	c
      0039F0 13               [12]14352 	rrc	a
      0039F1 CE               [12]14353 	xch	a,r6
      0039F2 13               [12]14354 	rrc	a
      0039F3 CE               [12]14355 	xch	a,r6
      0039F4 90 43 13         [24]14356 	mov	dptr,#0x4313
      0039F7 EE               [12]14357 	mov	a,r6
      0039F8 F0               [24]14358 	movx	@dptr,a
                           002FC8 14359 	C$easyax5043.c$2368$1$854 ==.
                                  14360 ;	..\COMMON\easyax5043.c:2368: axradio_wait_for_xtal();
      0039F9 12 17 67         [24]14361 	lcall	_axradio_wait_for_xtal
                           002FCB 14362 	C$easyax5043.c$2370$2$862 ==.
                                  14363 ;	..\COMMON\easyax5043.c:2370: radio_write8(AX5043_REG_LPOSCCONFIG, 0x25); // LPOSC ENA, slow mode; calibrate on rising edge, irq on rising edge
      0039FC 90 43 10         [24]14364 	mov	dptr,#0x4310
      0039FF 74 25            [12]14365 	mov	a,#0x25
      003A01 F0               [24]14366 	movx	@dptr,a
                           002FD1 14367 	C$easyax5043.c$2371$1$854 ==.
                                  14368 ;	..\COMMON\easyax5043.c:2371: axradio_wait_n_lposccycles(6);
      003A02 75 82 06         [24]14369 	mov	dpl,#0x06
      003A05 12 39 69         [24]14370 	lcall	_axradio_wait_n_lposccycles
                           002FD7 14371 	C$easyax5043.c$2388$2$863 ==.
                                  14372 ;	..\COMMON\easyax5043.c:2388: radio_write8(AX5043_REG_LPOSCKFILT1, ((axradio_lposckfiltmax >> (8 + 2)) & 0xFF)); // kfiltmax >> 2
      003A08 90 57 65         [24]14373 	mov	dptr,#_axradio_lposckfiltmax
      003A0B E4               [12]14374 	clr	a
      003A0C 93               [24]14375 	movc	a,@a+dptr
      003A0D FE               [12]14376 	mov	r6,a
      003A0E 74 01            [12]14377 	mov	a,#0x01
      003A10 93               [24]14378 	movc	a,@a+dptr
      003A11 FF               [12]14379 	mov	r7,a
      003A12 03               [12]14380 	rr	a
      003A13 03               [12]14381 	rr	a
      003A14 54 3F            [12]14382 	anl	a,#0x3f
      003A16 FC               [12]14383 	mov	r4,a
      003A17 90 43 12         [24]14384 	mov	dptr,#0x4312
      003A1A EC               [12]14385 	mov	a,r4
      003A1B F0               [24]14386 	movx	@dptr,a
                           002FEB 14387 	C$easyax5043.c$2389$2$864 ==.
                                  14388 ;	..\COMMON\easyax5043.c:2389: radio_write8(AX5043_REG_LPOSCKFILT0, ((axradio_lposckfiltmax >> 2) & 0xFF));
      003A1C EF               [12]14389 	mov	a,r7
      003A1D C3               [12]14390 	clr	c
      003A1E 13               [12]14391 	rrc	a
      003A1F CE               [12]14392 	xch	a,r6
      003A20 13               [12]14393 	rrc	a
      003A21 CE               [12]14394 	xch	a,r6
      003A22 C3               [12]14395 	clr	c
      003A23 13               [12]14396 	rrc	a
      003A24 CE               [12]14397 	xch	a,r6
      003A25 13               [12]14398 	rrc	a
      003A26 CE               [12]14399 	xch	a,r6
      003A27 90 43 13         [24]14400 	mov	dptr,#0x4313
      003A2A EE               [12]14401 	mov	a,r6
      003A2B F0               [24]14402 	movx	@dptr,a
                           002FFB 14403 	C$easyax5043.c$2390$1$854 ==.
                                  14404 ;	..\COMMON\easyax5043.c:2390: axradio_wait_n_lposccycles(5);
      003A2C 75 82 05         [24]14405 	mov	dpl,#0x05
      003A2F 12 39 69         [24]14406 	lcall	_axradio_wait_n_lposccycles
                           003001 14407 	C$easyax5043.c$2392$2$865 ==.
                                  14408 ;	..\COMMON\easyax5043.c:2392: radio_write8(AX5043_REG_LPOSCCONFIG, 0x00);
      003A32 90 43 10         [24]14409 	mov	dptr,#0x4310
      003A35 E4               [12]14410 	clr	a
      003A36 F0               [24]14411 	movx	@dptr,a
                           003006 14412 	C$easyax5043.c$2393$2$866 ==.
                                  14413 ;	..\COMMON\easyax5043.c:2393: radio_write8(AX5043_REG_PWRMODE, AX5043_PWRSTATE_POWERDOWN);
      003A37 90 40 02         [24]14414 	mov	dptr,#0x4002
      003A3A F0               [24]14415 	movx	@dptr,a
                           00300A 14416 	C$easyax5043.c$2396$2$867 ==.
                                  14417 ;	..\COMMON\easyax5043.c:2396: uint8_t x = radio_read8(AX5043_REG_LPOSCFREQ1);
      003A3B 90 43 16         [24]14418 	mov	dptr,#0x4316
      003A3E E0               [24]14419 	movx	a,@dptr
      003A3F FF               [12]14420 	mov	r7,a
                           00300F 14421 	C$easyax5043.c$2397$2$867 ==.
                                  14422 ;	..\COMMON\easyax5043.c:2397: if( x == 0x7f || x == 0x80 )
      003A40 BF 7F 02         [24]14423 	cjne	r7,#0x7f,00151$
      003A43 80 03            [24]14424 	sjmp	00137$
      003A45                      14425 00151$:
      003A45 BF 80 09         [24]14426 	cjne	r7,#0x80,00146$
                           003017 14427 	C$easyax5043.c$2399$3$868 ==.
                                  14428 ;	..\COMMON\easyax5043.c:2399: radio_write8(AX5043_REG_LPOSCFREQ1, 0);
      003A48                      14429 00137$:
      003A48 90 43 16         [24]14430 	mov	dptr,#0x4316
      003A4B E4               [12]14431 	clr	a
      003A4C F0               [24]14432 	movx	@dptr,a
                           00301C 14433 	C$easyax5043.c$2400$4$870 ==.
                                  14434 ;	..\COMMON\easyax5043.c:2400: radio_write8(AX5043_REG_LPOSCFREQ0, 0);
      003A4D 90 43 17         [24]14435 	mov	dptr,#0x4317
      003A50 F0               [24]14436 	movx	@dptr,a
      003A51                      14437 00146$:
                           003020 14438 	C$easyax5043.c$2405$2$867 ==.
                           003020 14439 	XG$axradio_calibrate_lposc$0$0 ==.
      003A51 22               [24]14440 	ret
                                  14441 ;------------------------------------------------------------
                                  14442 ;Allocation info for local variables in function 'axradio_commsleepexit'
                                  14443 ;------------------------------------------------------------
                           003021 14444 	G$axradio_commsleepexit$0$0 ==.
                           003021 14445 	C$easyax5043.c$2408$2$867 ==.
                                  14446 ;	..\COMMON\easyax5043.c:2408: __reentrantb void axradio_commsleepexit(void) __reentrant
                                  14447 ;	-----------------------------------------
                                  14448 ;	 function axradio_commsleepexit
                                  14449 ;	-----------------------------------------
      003A52                      14450 _axradio_commsleepexit:
                           003021 14451 	C$easyax5043.c$2410$1$872 ==.
                                  14452 ;	..\COMMON\easyax5043.c:2410: ax5043_commsleepexit();
      003A52 12 4F D9         [24]14453 	lcall	_ax5043_commsleepexit
                           003024 14454 	C$easyax5043.c$2411$1$872 ==.
                           003024 14455 	XG$axradio_commsleepexit$0$0 ==.
      003A55 22               [24]14456 	ret
                                  14457 ;------------------------------------------------------------
                                  14458 ;Allocation info for local variables in function 'axradio_check_fourfsk_modulation'
                                  14459 ;------------------------------------------------------------
                                  14460 ;modulation                Allocated to registers r7 
                                  14461 ;------------------------------------------------------------
                           003025 14462 	G$axradio_check_fourfsk_modulation$0$0 ==.
                           003025 14463 	C$easyax5043.c$2422$1$872 ==.
                                  14464 ;	..\COMMON\easyax5043.c:2422: uint8_t axradio_check_fourfsk_modulation(void)
                                  14465 ;	-----------------------------------------
                                  14466 ;	 function axradio_check_fourfsk_modulation
                                  14467 ;	-----------------------------------------
      003A56                      14468 _axradio_check_fourfsk_modulation:
                           003025 14469 	C$easyax5043.c$2424$1$874 ==.
                                  14470 ;	..\COMMON\easyax5043.c:2424: uint8_t modulation = radio_read8(AX5043_REG_MODULATION);
      003A56 90 40 10         [24]14471 	mov	dptr,#0x4010
      003A59 E0               [24]14472 	movx	a,@dptr
      003A5A FF               [12]14473 	mov	r7,a
                           00302A 14474 	C$easyax5043.c$2425$1$874 ==.
                                  14475 ;	..\COMMON\easyax5043.c:2425: if((modulation & 0x0F) == 9)
      003A5B 53 07 0F         [24]14476 	anl	ar7,#0x0f
      003A5E BF 09 05         [24]14477 	cjne	r7,#0x09,00102$
                           003030 14478 	C$easyax5043.c$2426$1$874 ==.
                                  14479 ;	..\COMMON\easyax5043.c:2426: return 1;
      003A61 75 82 01         [24]14480 	mov	dpl,#0x01
      003A64 80 03            [24]14481 	sjmp	00104$
      003A66                      14482 00102$:
                           003035 14483 	C$easyax5043.c$2428$1$874 ==.
                                  14484 ;	..\COMMON\easyax5043.c:2428: return 0;
      003A66 75 82 00         [24]14485 	mov	dpl,#0x00
      003A69                      14486 00104$:
                           003038 14487 	C$easyax5043.c$2429$1$874 ==.
                           003038 14488 	XG$axradio_check_fourfsk_modulation$0$0 ==.
      003A69 22               [24]14489 	ret
                                  14490 ;------------------------------------------------------------
                                  14491 ;Allocation info for local variables in function 'axradio_get_transmitter_pa_type'
                                  14492 ;------------------------------------------------------------
                           003039 14493 	G$axradio_get_transmitter_pa_type$0$0 ==.
                           003039 14494 	C$easyax5043.c$2431$1$874 ==.
                                  14495 ;	..\COMMON\easyax5043.c:2431: uint8_t axradio_get_transmitter_pa_type(void)
                                  14496 ;	-----------------------------------------
                                  14497 ;	 function axradio_get_transmitter_pa_type
                                  14498 ;	-----------------------------------------
      003A6A                      14499 _axradio_get_transmitter_pa_type:
                           003039 14500 	C$easyax5043.c$2433$1$876 ==.
                                  14501 ;	..\COMMON\easyax5043.c:2433: return (radio_read8(AX5043_REG_MODCFGA) & 0x03);
      003A6A 90 41 64         [24]14502 	mov	dptr,#0x4164
      003A6D E0               [24]14503 	movx	a,@dptr
      003A6E FF               [12]14504 	mov	r7,a
      003A6F 74 03            [12]14505 	mov	a,#0x03
      003A71 5F               [12]14506 	anl	a,r7
      003A72 F5 82            [12]14507 	mov	dpl,a
                           003043 14508 	C$easyax5043.c$2434$1$876 ==.
                           003043 14509 	XG$axradio_get_transmitter_pa_type$0$0 ==.
      003A74 22               [24]14510 	ret
                                  14511 	.area CSEG    (CODE)
                                  14512 	.area CONST   (CODE)
                                  14513 	.area XINIT   (CODE)
                           000000 14514 Feasyax5043$__xinit_f30_saved$0$0 == .
      005C54                      14515 __xinit__f30_saved:
      005C54 3F                   14516 	.db #0x3f	; 63
                           000001 14517 Feasyax5043$__xinit_f31_saved$0$0 == .
      005C55                      14518 __xinit__f31_saved:
      005C55 F0                   14519 	.db #0xf0	; 240
                           000002 14520 Feasyax5043$__xinit_f32_saved$0$0 == .
      005C56                      14521 __xinit__f32_saved:
      005C56 3F                   14522 	.db #0x3f	; 63
                           000003 14523 Feasyax5043$__xinit_f33_saved$0$0 == .
      005C57                      14524 __xinit__f33_saved:
      005C57 F0                   14525 	.db #0xf0	; 240
                           000004 14526 Feasyax5043$__xinit_radio_lcd_display$0$0 == .
      005C58                      14527 __xinit__radio_lcd_display:
      005C58 66 6F 75 6E 64 20 41 14528 	.ascii "found AX5043"
             58 35 30 34 33
      005C64 0A                   14529 	.db 0x0a
      005C65 00                   14530 	.db 0x00
                           000012 14531 Feasyax5043$__xinit_radio_not_found_lcd_display$0$0 == .
      005C66                      14532 __xinit__radio_not_found_lcd_display:
      005C66 4E 6F 20 52 61 64 69 14533 	.ascii "No Radio"
             6F
      005C6E 0A                   14534 	.db 0x0a
      005C6F 63 68 69 70 20 66 6F 14535 	.ascii "chip found"
             75 6E 64
      005C79 00                   14536 	.db 0x00
                                  14537 	.area CABS    (ABS,CODE)
