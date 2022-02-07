M:main
F:Fmain$pwrmgmt_irq$0$0({2}DF,SV:S),C,0,0,1,6,0
F:Fmain$transmit_packet$0$0({2}DF,SV:S),C,0,0,0,0,0
F:Fmain$display_transmit_packet$0$0({2}DF,SV:S),C,0,0,0,0,0
F:G$axradio_statuschange$0$0({2}DF,SV:S),Z,0,0,0,0,0
F:G$enable_radio_interrupt_in_mcu_pin$0$0({2}DF,SV:S),Z,0,0,0,0,0
F:G$disable_radio_interrupt_in_mcu_pin$0$0({2}DF,SV:S),Z,0,0,0,0,0
F:Fmain$wakeup_callback$0$0({2}DF,SV:S),C,0,0,0,0,0
F:G$_sdcc_external_startup$0$0({2}DF,SC:U),C,0,0,0,0,0
F:G$main$0$0({2}DF,SI:S),C,0,0,0,0,0
F:G$main$0$0({2}DF,SI:S),C,0,0,0,0,0
T:Fmain$wtimer_callback[({0}S:S$next$0$0({2}DX,STwtimer_callback:S),Z,0,0)({2}S:S$handler$0$0({2}DC,DF,SV:S),Z,0,0)]
T:Fmain$axradio_status_receive[({0}S:S$phy$0$0({10}STaxradio_status_receive_phy:S),Z,0,0)({10}S:S$mac$0$0({12}STaxradio_status_receive_mac:S),Z,0,0)({22}S:S$pktdata$0$0({2}DX,SC:U),Z,0,0)({24}S:S$pktlen$0$0({2}SI:U),Z,0,0)]
T:Fmain$axradio_address[({0}S:S$addr$0$0({5}DA5d,SC:U),Z,0,0)]
T:Fmain$axradio_address_mask[({0}S:S$addr$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$mask$0$0({5}DA5d,SC:U),Z,0,0)]
T:Fmain$__00000000[({0}S:S$rx$0$0({26}STaxradio_status_receive:S),Z,0,0)({0}S:S$cs$0$0({3}STaxradio_status_channelstate:S),Z,0,0)]
T:Fmain$axradio_status_channelstate[({0}S:S$rssi$0$0({2}SI:S),Z,0,0)({2}S:S$busy$0$0({1}SC:U),Z,0,0)]
T:Fmain$u32endian[({0}S:S$b0$0$0({1}SC:U),Z,0,0)({1}S:S$b1$0$0({1}SC:U),Z,0,0)({2}S:S$b2$0$0({1}SC:U),Z,0,0)({3}S:S$b3$0$0({1}SC:U),Z,0,0)]
T:Fmain$u16endian[({0}S:S$b0$0$0({1}SC:U),Z,0,0)({1}S:S$b1$0$0({1}SC:U),Z,0,0)]
T:Fmain$wtimer_desc[({0}S:S$next$0$0({2}DX,STwtimer_desc:S),Z,0,0)({2}S:S$handler$0$0({2}DC,DF,SV:S),Z,0,0)({4}S:S$time$0$0({4}SL:U),Z,0,0)]
T:Fmain$axradio_status_receive_mac[({0}S:S$remoteaddr$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$localaddr$0$0({5}DA5d,SC:U),Z,0,0)({10}S:S$raw$0$0({2}DX,SC:U),Z,0,0)]
T:Fmain$calsector[({0}S:S$id$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$len$0$0({1}SC:U),Z,0,0)({6}S:S$devid$0$0({6}DA6d,SC:U),Z,0,0)({12}S:S$calg00gain$0$0({2}DA2d,SC:U),Z,0,0)({14}S:S$calg01gain$0$0({2}DA2d,SC:U),Z,0,0)({16}S:S$calg10gain$0$0({2}DA2d,SC:U),Z,0,0)({18}S:S$caltempgain$0$0({2}DA2d,SC:U),Z,0,0)({20}S:S$caltempoffs$0$0({2}DA2d,SC:U),Z,0,0)({22}S:S$frcoscfreq$0$0({2}DA2d,SC:U),Z,0,0)({24}S:S$lposcfreq$0$0({2}DA2d,SC:U),Z,0,0)({26}S:S$lposcfreq_fast$0$0({2}DA2d,SC:U),Z,0,0)({28}S:S$powctrl0$0$0({1}SC:U),Z,0,0)({29}S:S$powctrl1$0$0({1}SC:U),Z,0,0)({30}S:S$ref$0$0({1}SC:U),Z,0,0)]
T:Fmain$axradio_status_receive_phy[({0}S:S$rssi$0$0({2}SI:S),Z,0,0)({2}S:S$offset$0$0({4}SL:S),Z,0,0)({6}S:S$timeoffset$0$0({2}SI:S),Z,0,0)({8}S:S$period$0$0({2}SI:S),Z,0,0)]
T:Fmain$axradio_status[({0}S:S$status$0$0({1}SC:U),Z,0,0)({1}S:S$error$0$0({1}SC:U),Z,0,0)({2}S:S$time$0$0({4}SL:U),Z,0,0)({6}S:S$u$0$0({26}ST__00000000:S),Z,0,0)]
S:G$random_seed$0$0({2}SI:U),E,0,0
S:G$wtimer0_clksrc$0$0({1}SC:U),E,0,0
S:G$wtimer1_clksrc$0$0({1}SC:U),E,0,0
S:G$wtimer1_prescaler$0$0({1}SC:U),E,0,0
S:G$_start__stack$0$0({0}DA0d,SC:U),E,0,0
S:G$pkt_counter$0$0({2}SI:U),E,0,0
S:G$coldstart$0$0({1}SC:U),E,0,0
S:Lmain.enter_critical$crit$1$29({1}SC:U),E,0,0
S:Lmain.exit_critical$crit$1$30({1}SC:U),E,0,0
S:Lmain.pwrmgmt_irq$pc$1$364({1}SC:U),R,0,0,[r7]
S:Lmain.wakeup_callback$desc$1$398({2}DX,STwtimer_desc:S),R,0,0,[]
S:Lmain._sdcc_external_startup$c$2$402({1}SC:U),R,0,0,[]
S:Lmain._sdcc_external_startup$p$2$402({1}SC:U),R,0,0,[]
S:Lmain._sdcc_external_startup$c$2$403({1}SC:U),R,0,0,[]
S:Lmain._sdcc_external_startup$p$2$403({1}SC:U),R,0,0,[]
S:Lmain.main$saved_button_state$1$405({1}SC:U),E,0,0
S:Lmain.main$i$1$405({1}SC:U),R,0,0,[r7]
S:Lmain.main$x$3$417({1}SC:U),R,0,0,[r6]
S:Lmain.main$flg$3$421({1}SC:U),R,0,0,[r6]
S:Lmain.main$flg$3$423({1}SC:U),R,0,0,[r7]
S:Lmain._sdcc_external_startup$sloc0$1$0({1}SB0$0:S),H,0,0
S:G$ADCCH0VAL0$0$0({1}SC:U),F,0,0
S:G$ADCCH0VAL1$0$0({1}SC:U),F,0,0
S:G$ADCCH0VAL$0$0({2}SI:U),F,0,0
S:G$ADCCH1VAL0$0$0({1}SC:U),F,0,0
S:G$ADCCH1VAL1$0$0({1}SC:U),F,0,0
S:G$ADCCH1VAL$0$0({2}SI:U),F,0,0
S:G$ADCCH2VAL0$0$0({1}SC:U),F,0,0
S:G$ADCCH2VAL1$0$0({1}SC:U),F,0,0
S:G$ADCCH2VAL$0$0({2}SI:U),F,0,0
S:G$ADCCH3VAL0$0$0({1}SC:U),F,0,0
S:G$ADCCH3VAL1$0$0({1}SC:U),F,0,0
S:G$ADCCH3VAL$0$0({2}SI:U),F,0,0
S:G$ADCTUNE0$0$0({1}SC:U),F,0,0
S:G$ADCTUNE1$0$0({1}SC:U),F,0,0
S:G$ADCTUNE2$0$0({1}SC:U),F,0,0
S:G$DMA0ADDR0$0$0({1}SC:U),F,0,0
S:G$DMA0ADDR1$0$0({1}SC:U),F,0,0
S:G$DMA0ADDR$0$0({2}SI:U),F,0,0
S:G$DMA0CONFIG$0$0({1}SC:U),F,0,0
S:G$DMA1ADDR0$0$0({1}SC:U),F,0,0
S:G$DMA1ADDR1$0$0({1}SC:U),F,0,0
S:G$DMA1ADDR$0$0({2}SI:U),F,0,0
S:G$DMA1CONFIG$0$0({1}SC:U),F,0,0
S:G$FRCOSCCONFIG$0$0({1}SC:U),F,0,0
S:G$FRCOSCCTRL$0$0({1}SC:U),F,0,0
S:G$FRCOSCFREQ0$0$0({1}SC:U),F,0,0
S:G$FRCOSCFREQ1$0$0({1}SC:U),F,0,0
S:G$FRCOSCFREQ$0$0({2}SI:U),F,0,0
S:G$FRCOSCKFILT0$0$0({1}SC:U),F,0,0
S:G$FRCOSCKFILT1$0$0({1}SC:U),F,0,0
S:G$FRCOSCKFILT$0$0({2}SI:U),F,0,0
S:G$FRCOSCPER0$0$0({1}SC:U),F,0,0
S:G$FRCOSCPER1$0$0({1}SC:U),F,0,0
S:G$FRCOSCPER$0$0({2}SI:U),F,0,0
S:G$FRCOSCREF0$0$0({1}SC:U),F,0,0
S:G$FRCOSCREF1$0$0({1}SC:U),F,0,0
S:G$FRCOSCREF$0$0({2}SI:U),F,0,0
S:G$ANALOGA$0$0({1}SC:U),F,0,0
S:G$GPIOENABLE$0$0({1}SC:U),F,0,0
S:G$EXTIRQ$0$0({1}SC:U),F,0,0
S:G$INTCHGA$0$0({1}SC:U),F,0,0
S:G$INTCHGB$0$0({1}SC:U),F,0,0
S:G$INTCHGC$0$0({1}SC:U),F,0,0
S:G$PALTA$0$0({1}SC:U),F,0,0
S:G$PALTB$0$0({1}SC:U),F,0,0
S:G$PALTC$0$0({1}SC:U),F,0,0
S:G$PALTRADIO$0$0({1}SC:U),F,0,0
S:G$PINCHGA$0$0({1}SC:U),F,0,0
S:G$PINCHGB$0$0({1}SC:U),F,0,0
S:G$PINCHGC$0$0({1}SC:U),F,0,0
S:G$PINSEL$0$0({1}SC:U),F,0,0
S:G$LPOSCCONFIG$0$0({1}SC:U),F,0,0
S:G$LPOSCFREQ0$0$0({1}SC:U),F,0,0
S:G$LPOSCFREQ1$0$0({1}SC:U),F,0,0
S:G$LPOSCFREQ$0$0({2}SI:U),F,0,0
S:G$LPOSCKFILT0$0$0({1}SC:U),F,0,0
S:G$LPOSCKFILT1$0$0({1}SC:U),F,0,0
S:G$LPOSCKFILT$0$0({2}SI:U),F,0,0
S:G$LPOSCPER0$0$0({1}SC:U),F,0,0
S:G$LPOSCPER1$0$0({1}SC:U),F,0,0
S:G$LPOSCPER$0$0({2}SI:U),F,0,0
S:G$LPOSCREF0$0$0({1}SC:U),F,0,0
S:G$LPOSCREF1$0$0({1}SC:U),F,0,0
S:G$LPOSCREF$0$0({2}SI:U),F,0,0
S:G$LPXOSCGM$0$0({1}SC:U),F,0,0
S:G$MISCCTRL$0$0({1}SC:U),F,0,0
S:G$OSCCALIB$0$0({1}SC:U),F,0,0
S:G$OSCFORCERUN$0$0({1}SC:U),F,0,0
S:G$OSCREADY$0$0({1}SC:U),F,0,0
S:G$OSCRUN$0$0({1}SC:U),F,0,0
S:G$RADIOFDATAADDR0$0$0({1}SC:U),F,0,0
S:G$RADIOFDATAADDR1$0$0({1}SC:U),F,0,0
S:G$RADIOFDATAADDR$0$0({2}SI:U),F,0,0
S:G$RADIOFSTATADDR0$0$0({1}SC:U),F,0,0
S:G$RADIOFSTATADDR1$0$0({1}SC:U),F,0,0
S:G$RADIOFSTATADDR$0$0({2}SI:U),F,0,0
S:G$RADIOMUX$0$0({1}SC:U),F,0,0
S:G$SCRATCH0$0$0({1}SC:U),F,0,0
S:G$SCRATCH1$0$0({1}SC:U),F,0,0
S:G$SCRATCH2$0$0({1}SC:U),F,0,0
S:G$SCRATCH3$0$0({1}SC:U),F,0,0
S:G$SILICONREV$0$0({1}SC:U),F,0,0
S:G$XTALAMPL$0$0({1}SC:U),F,0,0
S:G$XTALOSC$0$0({1}SC:U),F,0,0
S:G$XTALREADY$0$0({1}SC:U),F,0,0
S:Fmain$flash_deviceid$0$0({6}DA6d,SC:U),F,0,0
S:Fmain$flash_calsector$0$0({31}STcalsector:S),F,0,0
S:G$radio_lcd_display$0$0({0}DA0d,SC:U),F,0,0
S:G$radio_not_found_lcd_display$0$0({0}DA0d,SC:U),F,0,0
S:G$wakeup_desc$0$0({8}STwtimer_desc:S),F,0,0
S:Lmain.transmit_packet$demo_packet_$1$366({72}DA72d,SC:U),F,0,0
S:G$ACC$0$0({1}SC:U),I,0,0
S:G$B$0$0({1}SC:U),I,0,0
S:G$DPH$0$0({1}SC:U),I,0,0
S:G$DPH1$0$0({1}SC:U),I,0,0
S:G$DPL$0$0({1}SC:U),I,0,0
S:G$DPL1$0$0({1}SC:U),I,0,0
S:G$DPTR0$0$0({2}SI:U),I,0,0
S:G$DPTR1$0$0({2}SI:U),I,0,0
S:G$DPS$0$0({1}SC:U),I,0,0
S:G$E2IE$0$0({1}SC:U),I,0,0
S:G$E2IP$0$0({1}SC:U),I,0,0
S:G$EIE$0$0({1}SC:U),I,0,0
S:G$EIP$0$0({1}SC:U),I,0,0
S:G$IE$0$0({1}SC:U),I,0,0
S:G$IP$0$0({1}SC:U),I,0,0
S:G$PCON$0$0({1}SC:U),I,0,0
S:G$PSW$0$0({1}SC:U),I,0,0
S:G$SP$0$0({1}SC:U),I,0,0
S:G$XPAGE$0$0({1}SC:U),I,0,0
S:G$_XPAGE$0$0({1}SC:U),I,0,0
S:G$ADCCH0CONFIG$0$0({1}SC:U),I,0,0
S:G$ADCCH1CONFIG$0$0({1}SC:U),I,0,0
S:G$ADCCH2CONFIG$0$0({1}SC:U),I,0,0
S:G$ADCCH3CONFIG$0$0({1}SC:U),I,0,0
S:G$ADCCLKSRC$0$0({1}SC:U),I,0,0
S:G$ADCCONV$0$0({1}SC:U),I,0,0
S:G$ANALOGCOMP$0$0({1}SC:U),I,0,0
S:G$CLKCON$0$0({1}SC:U),I,0,0
S:G$CLKSTAT$0$0({1}SC:U),I,0,0
S:G$CODECONFIG$0$0({1}SC:U),I,0,0
S:G$DBGLNKBUF$0$0({1}SC:U),I,0,0
S:G$DBGLNKSTAT$0$0({1}SC:U),I,0,0
S:G$DIRA$0$0({1}SC:U),I,0,0
S:G$DIRB$0$0({1}SC:U),I,0,0
S:G$DIRC$0$0({1}SC:U),I,0,0
S:G$DIRR$0$0({1}SC:U),I,0,0
S:G$PINA$0$0({1}SC:U),I,0,0
S:G$PINB$0$0({1}SC:U),I,0,0
S:G$PINC$0$0({1}SC:U),I,0,0
S:G$PINR$0$0({1}SC:U),I,0,0
S:G$PORTA$0$0({1}SC:U),I,0,0
S:G$PORTB$0$0({1}SC:U),I,0,0
S:G$PORTC$0$0({1}SC:U),I,0,0
S:G$PORTR$0$0({1}SC:U),I,0,0
S:G$IC0CAPT0$0$0({1}SC:U),I,0,0
S:G$IC0CAPT1$0$0({1}SC:U),I,0,0
S:G$IC0CAPT$0$0({2}SI:U),I,0,0
S:G$IC0MODE$0$0({1}SC:U),I,0,0
S:G$IC0STATUS$0$0({1}SC:U),I,0,0
S:G$IC1CAPT0$0$0({1}SC:U),I,0,0
S:G$IC1CAPT1$0$0({1}SC:U),I,0,0
S:G$IC1CAPT$0$0({2}SI:U),I,0,0
S:G$IC1MODE$0$0({1}SC:U),I,0,0
S:G$IC1STATUS$0$0({1}SC:U),I,0,0
S:G$NVADDR0$0$0({1}SC:U),I,0,0
S:G$NVADDR1$0$0({1}SC:U),I,0,0
S:G$NVADDR$0$0({2}SI:U),I,0,0
S:G$NVDATA0$0$0({1}SC:U),I,0,0
S:G$NVDATA1$0$0({1}SC:U),I,0,0
S:G$NVDATA$0$0({2}SI:U),I,0,0
S:G$NVKEY$0$0({1}SC:U),I,0,0
S:G$NVSTATUS$0$0({1}SC:U),I,0,0
S:G$OC0COMP0$0$0({1}SC:U),I,0,0
S:G$OC0COMP1$0$0({1}SC:U),I,0,0
S:G$OC0COMP$0$0({2}SI:U),I,0,0
S:G$OC0MODE$0$0({1}SC:U),I,0,0
S:G$OC0PIN$0$0({1}SC:U),I,0,0
S:G$OC0STATUS$0$0({1}SC:U),I,0,0
S:G$OC1COMP0$0$0({1}SC:U),I,0,0
S:G$OC1COMP1$0$0({1}SC:U),I,0,0
S:G$OC1COMP$0$0({2}SI:U),I,0,0
S:G$OC1MODE$0$0({1}SC:U),I,0,0
S:G$OC1PIN$0$0({1}SC:U),I,0,0
S:G$OC1STATUS$0$0({1}SC:U),I,0,0
S:G$RADIOACC$0$0({1}SC:U),I,0,0
S:G$RADIOADDR0$0$0({1}SC:U),I,0,0
S:G$RADIOADDR1$0$0({1}SC:U),I,0,0
S:G$RADIOADDR$0$0({2}SI:U),I,0,0
S:G$RADIODATA0$0$0({1}SC:U),I,0,0
S:G$RADIODATA1$0$0({1}SC:U),I,0,0
S:G$RADIODATA2$0$0({1}SC:U),I,0,0
S:G$RADIODATA3$0$0({1}SC:U),I,0,0
S:G$RADIODATA$0$0({4}SL:U),I,0,0
S:G$RADIOSTAT0$0$0({1}SC:U),I,0,0
S:G$RADIOSTAT1$0$0({1}SC:U),I,0,0
S:G$RADIOSTAT$0$0({2}SI:U),I,0,0
S:G$SPCLKSRC$0$0({1}SC:U),I,0,0
S:G$SPMODE$0$0({1}SC:U),I,0,0
S:G$SPSHREG$0$0({1}SC:U),I,0,0
S:G$SPSTATUS$0$0({1}SC:U),I,0,0
S:G$T0CLKSRC$0$0({1}SC:U),I,0,0
S:G$T0CNT0$0$0({1}SC:U),I,0,0
S:G$T0CNT1$0$0({1}SC:U),I,0,0
S:G$T0CNT$0$0({2}SI:U),I,0,0
S:G$T0MODE$0$0({1}SC:U),I,0,0
S:G$T0PERIOD0$0$0({1}SC:U),I,0,0
S:G$T0PERIOD1$0$0({1}SC:U),I,0,0
S:G$T0PERIOD$0$0({2}SI:U),I,0,0
S:G$T0STATUS$0$0({1}SC:U),I,0,0
S:G$T1CLKSRC$0$0({1}SC:U),I,0,0
S:G$T1CNT0$0$0({1}SC:U),I,0,0
S:G$T1CNT1$0$0({1}SC:U),I,0,0
S:G$T1CNT$0$0({2}SI:U),I,0,0
S:G$T1MODE$0$0({1}SC:U),I,0,0
S:G$T1PERIOD0$0$0({1}SC:U),I,0,0
S:G$T1PERIOD1$0$0({1}SC:U),I,0,0
S:G$T1PERIOD$0$0({2}SI:U),I,0,0
S:G$T1STATUS$0$0({1}SC:U),I,0,0
S:G$T2CLKSRC$0$0({1}SC:U),I,0,0
S:G$T2CNT0$0$0({1}SC:U),I,0,0
S:G$T2CNT1$0$0({1}SC:U),I,0,0
S:G$T2CNT$0$0({2}SI:U),I,0,0
S:G$T2MODE$0$0({1}SC:U),I,0,0
S:G$T2PERIOD0$0$0({1}SC:U),I,0,0
S:G$T2PERIOD1$0$0({1}SC:U),I,0,0
S:G$T2PERIOD$0$0({2}SI:U),I,0,0
S:G$T2STATUS$0$0({1}SC:U),I,0,0
S:G$U0CTRL$0$0({1}SC:U),I,0,0
S:G$U0MODE$0$0({1}SC:U),I,0,0
S:G$U0SHREG$0$0({1}SC:U),I,0,0
S:G$U0STATUS$0$0({1}SC:U),I,0,0
S:G$U1CTRL$0$0({1}SC:U),I,0,0
S:G$U1MODE$0$0({1}SC:U),I,0,0
S:G$U1SHREG$0$0({1}SC:U),I,0,0
S:G$U1STATUS$0$0({1}SC:U),I,0,0
S:G$WDTCFG$0$0({1}SC:U),I,0,0
S:G$WDTRESET$0$0({1}SC:U),I,0,0
S:G$WTCFGA$0$0({1}SC:U),I,0,0
S:G$WTCFGB$0$0({1}SC:U),I,0,0
S:G$WTCNTA0$0$0({1}SC:U),I,0,0
S:G$WTCNTA1$0$0({1}SC:U),I,0,0
S:G$WTCNTA$0$0({2}SI:U),I,0,0
S:G$WTCNTB0$0$0({1}SC:U),I,0,0
S:G$WTCNTB1$0$0({1}SC:U),I,0,0
S:G$WTCNTB$0$0({2}SI:U),I,0,0
S:G$WTCNTR1$0$0({1}SC:U),I,0,0
S:G$WTEVTA0$0$0({1}SC:U),I,0,0
S:G$WTEVTA1$0$0({1}SC:U),I,0,0
S:G$WTEVTA$0$0({2}SI:U),I,0,0
S:G$WTEVTB0$0$0({1}SC:U),I,0,0
S:G$WTEVTB1$0$0({1}SC:U),I,0,0
S:G$WTEVTB$0$0({2}SI:U),I,0,0
S:G$WTEVTC0$0$0({1}SC:U),I,0,0
S:G$WTEVTC1$0$0({1}SC:U),I,0,0
S:G$WTEVTC$0$0({2}SI:U),I,0,0
S:G$WTEVTD0$0$0({1}SC:U),I,0,0
S:G$WTEVTD1$0$0({1}SC:U),I,0,0
S:G$WTEVTD$0$0({2}SI:U),I,0,0
S:G$WTIRQEN$0$0({1}SC:U),I,0,0
S:G$WTSTAT$0$0({1}SC:U),I,0,0
S:G$ACC_0$0$0({1}SX:U),J,0,0
S:G$ACC_1$0$0({1}SX:U),J,0,0
S:G$ACC_2$0$0({1}SX:U),J,0,0
S:G$ACC_3$0$0({1}SX:U),J,0,0
S:G$ACC_4$0$0({1}SX:U),J,0,0
S:G$ACC_5$0$0({1}SX:U),J,0,0
S:G$ACC_6$0$0({1}SX:U),J,0,0
S:G$ACC_7$0$0({1}SX:U),J,0,0
S:G$B_0$0$0({1}SX:U),J,0,0
S:G$B_1$0$0({1}SX:U),J,0,0
S:G$B_2$0$0({1}SX:U),J,0,0
S:G$B_3$0$0({1}SX:U),J,0,0
S:G$B_4$0$0({1}SX:U),J,0,0
S:G$B_5$0$0({1}SX:U),J,0,0
S:G$B_6$0$0({1}SX:U),J,0,0
S:G$B_7$0$0({1}SX:U),J,0,0
S:G$E2IE_0$0$0({1}SX:U),J,0,0
S:G$E2IE_1$0$0({1}SX:U),J,0,0
S:G$E2IE_2$0$0({1}SX:U),J,0,0
S:G$E2IE_3$0$0({1}SX:U),J,0,0
S:G$E2IE_4$0$0({1}SX:U),J,0,0
S:G$E2IE_5$0$0({1}SX:U),J,0,0
S:G$E2IE_6$0$0({1}SX:U),J,0,0
S:G$E2IE_7$0$0({1}SX:U),J,0,0
S:G$E2IP_0$0$0({1}SX:U),J,0,0
S:G$E2IP_1$0$0({1}SX:U),J,0,0
S:G$E2IP_2$0$0({1}SX:U),J,0,0
S:G$E2IP_3$0$0({1}SX:U),J,0,0
S:G$E2IP_4$0$0({1}SX:U),J,0,0
S:G$E2IP_5$0$0({1}SX:U),J,0,0
S:G$E2IP_6$0$0({1}SX:U),J,0,0
S:G$E2IP_7$0$0({1}SX:U),J,0,0
S:G$EIE_0$0$0({1}SX:U),J,0,0
S:G$EIE_1$0$0({1}SX:U),J,0,0
S:G$EIE_2$0$0({1}SX:U),J,0,0
S:G$EIE_3$0$0({1}SX:U),J,0,0
S:G$EIE_4$0$0({1}SX:U),J,0,0
S:G$EIE_5$0$0({1}SX:U),J,0,0
S:G$EIE_6$0$0({1}SX:U),J,0,0
S:G$EIE_7$0$0({1}SX:U),J,0,0
S:G$EIP_0$0$0({1}SX:U),J,0,0
S:G$EIP_1$0$0({1}SX:U),J,0,0
S:G$EIP_2$0$0({1}SX:U),J,0,0
S:G$EIP_3$0$0({1}SX:U),J,0,0
S:G$EIP_4$0$0({1}SX:U),J,0,0
S:G$EIP_5$0$0({1}SX:U),J,0,0
S:G$EIP_6$0$0({1}SX:U),J,0,0
S:G$EIP_7$0$0({1}SX:U),J,0,0
S:G$IE_0$0$0({1}SX:U),J,0,0
S:G$IE_1$0$0({1}SX:U),J,0,0
S:G$IE_2$0$0({1}SX:U),J,0,0
S:G$IE_3$0$0({1}SX:U),J,0,0
S:G$IE_4$0$0({1}SX:U),J,0,0
S:G$IE_5$0$0({1}SX:U),J,0,0
S:G$IE_6$0$0({1}SX:U),J,0,0
S:G$IE_7$0$0({1}SX:U),J,0,0
S:G$EA$0$0({1}SX:U),J,0,0
S:G$IP_0$0$0({1}SX:U),J,0,0
S:G$IP_1$0$0({1}SX:U),J,0,0
S:G$IP_2$0$0({1}SX:U),J,0,0
S:G$IP_3$0$0({1}SX:U),J,0,0
S:G$IP_4$0$0({1}SX:U),J,0,0
S:G$IP_5$0$0({1}SX:U),J,0,0
S:G$IP_6$0$0({1}SX:U),J,0,0
S:G$IP_7$0$0({1}SX:U),J,0,0
S:G$P$0$0({1}SX:U),J,0,0
S:G$F1$0$0({1}SX:U),J,0,0
S:G$OV$0$0({1}SX:U),J,0,0
S:G$RS0$0$0({1}SX:U),J,0,0
S:G$RS1$0$0({1}SX:U),J,0,0
S:G$F0$0$0({1}SX:U),J,0,0
S:G$AC$0$0({1}SX:U),J,0,0
S:G$CY$0$0({1}SX:U),J,0,0
S:G$PINA_0$0$0({1}SX:U),J,0,0
S:G$PINA_1$0$0({1}SX:U),J,0,0
S:G$PINA_2$0$0({1}SX:U),J,0,0
S:G$PINA_3$0$0({1}SX:U),J,0,0
S:G$PINA_4$0$0({1}SX:U),J,0,0
S:G$PINA_5$0$0({1}SX:U),J,0,0
S:G$PINA_6$0$0({1}SX:U),J,0,0
S:G$PINA_7$0$0({1}SX:U),J,0,0
S:G$PINB_0$0$0({1}SX:U),J,0,0
S:G$PINB_1$0$0({1}SX:U),J,0,0
S:G$PINB_2$0$0({1}SX:U),J,0,0
S:G$PINB_3$0$0({1}SX:U),J,0,0
S:G$PINB_4$0$0({1}SX:U),J,0,0
S:G$PINB_5$0$0({1}SX:U),J,0,0
S:G$PINB_6$0$0({1}SX:U),J,0,0
S:G$PINB_7$0$0({1}SX:U),J,0,0
S:G$PINC_0$0$0({1}SX:U),J,0,0
S:G$PINC_1$0$0({1}SX:U),J,0,0
S:G$PINC_2$0$0({1}SX:U),J,0,0
S:G$PINC_3$0$0({1}SX:U),J,0,0
S:G$PINC_4$0$0({1}SX:U),J,0,0
S:G$PINC_5$0$0({1}SX:U),J,0,0
S:G$PINC_6$0$0({1}SX:U),J,0,0
S:G$PINC_7$0$0({1}SX:U),J,0,0
S:G$PORTA_0$0$0({1}SX:U),J,0,0
S:G$PORTA_1$0$0({1}SX:U),J,0,0
S:G$PORTA_2$0$0({1}SX:U),J,0,0
S:G$PORTA_3$0$0({1}SX:U),J,0,0
S:G$PORTA_4$0$0({1}SX:U),J,0,0
S:G$PORTA_5$0$0({1}SX:U),J,0,0
S:G$PORTA_6$0$0({1}SX:U),J,0,0
S:G$PORTA_7$0$0({1}SX:U),J,0,0
S:G$PORTB_0$0$0({1}SX:U),J,0,0
S:G$PORTB_1$0$0({1}SX:U),J,0,0
S:G$PORTB_2$0$0({1}SX:U),J,0,0
S:G$PORTB_3$0$0({1}SX:U),J,0,0
S:G$PORTB_4$0$0({1}SX:U),J,0,0
S:G$PORTB_5$0$0({1}SX:U),J,0,0
S:G$PORTB_6$0$0({1}SX:U),J,0,0
S:G$PORTB_7$0$0({1}SX:U),J,0,0
S:G$PORTC_0$0$0({1}SX:U),J,0,0
S:G$PORTC_1$0$0({1}SX:U),J,0,0
S:G$PORTC_2$0$0({1}SX:U),J,0,0
S:G$PORTC_3$0$0({1}SX:U),J,0,0
S:G$PORTC_4$0$0({1}SX:U),J,0,0
S:G$PORTC_5$0$0({1}SX:U),J,0,0
S:G$PORTC_6$0$0({1}SX:U),J,0,0
S:G$PORTC_7$0$0({1}SX:U),J,0,0
S:G$delay$0$0({2}DF,SV:S),C,0,0
S:G$random$0$0({2}DF,SI:U),C,0,0
S:G$signextend12$0$0({2}DF,SL:S),C,0,0
S:G$signextend16$0$0({2}DF,SL:S),C,0,0
S:G$signextend20$0$0({2}DF,SL:S),C,0,0
S:G$signextend24$0$0({2}DF,SL:S),C,0,0
S:G$hweight8$0$0({2}DF,SC:U),C,0,0
S:G$hweight16$0$0({2}DF,SC:U),C,0,0
S:G$hweight32$0$0({2}DF,SC:U),C,0,0
S:G$signedlimit16$0$0({2}DF,SI:S),C,0,0
S:G$checksignedlimit16$0$0({2}DF,SC:U),C,0,0
S:G$signedlimit32$0$0({2}DF,SL:S),C,0,0
S:G$checksignedlimit32$0$0({2}DF,SC:U),C,0,0
S:G$gray_encode8$0$0({2}DF,SC:U),C,0,0
S:G$gray_decode8$0$0({2}DF,SC:U),C,0,0
S:G$rev8$0$0({2}DF,SC:U),C,0,0
S:G$fmemset$0$0({2}DF,SV:S),C,0,0
S:G$fmemcpy$0$0({2}DF,SV:S),C,0,0
S:G$get_startcause$0$0({2}DF,SC:U),C,0,0
S:G$wtimer_standby$0$0({2}DF,SV:S),C,0,0
S:G$enter_standby$0$0({2}DF,SV:S),C,0,0
S:G$enter_deepsleep$0$0({2}DF,SV:S),C,0,0
S:G$enter_sleep$0$0({2}DF,SV:S),C,0,0
S:G$enter_sleep_cont$0$0({2}DF,SV:S),C,0,0
S:G$reset_cpu$0$0({2}DF,SV:S),C,0,0
S:G$enter_critical$0$0({2}DF,SC:U),C,0,0
S:G$exit_critical$0$0({2}DF,SV:S),C,0,0
S:G$reenter_critical$0$0({2}DF,SV:S),C,0,0
S:G$__enable_irq$0$0({2}DF,SV:S),C,0,0
S:G$__disable_irq$0$0({2}DF,SV:S),C,0,0
S:G$axradio_init$0$0({2}DF,SC:U),C,0,0
S:G$axradio_cansleep$0$0({2}DF,SC:U),C,0,0
S:G$axradio_set_mode$0$0({2}DF,SC:U),C,0,0
S:G$axradio_get_mode$0$0({2}DF,SC:U),C,0,0
S:G$axradio_set_channel$0$0({2}DF,SC:U),C,0,0
S:G$axradio_get_channel$0$0({2}DF,SC:U),C,0,0
S:G$axradio_get_pllrange$0$0({2}DF,SI:U),C,0,0
S:G$axradio_get_pllvcoi$0$0({2}DF,SC:U),C,0,0
S:G$axradio_set_local_address$0$0({2}DF,SV:S),C,0,0
S:G$axradio_get_local_address$0$0({2}DF,SV:S),C,0,0
S:G$axradio_set_default_remote_address$0$0({2}DF,SV:S),C,0,0
S:G$axradio_get_default_remote_address$0$0({2}DF,SV:S),C,0,0
S:G$axradio_transmit$0$0({2}DF,SC:U),C,0,0
S:G$axradio_set_freqoffset$0$0({2}DF,SC:U),C,0,0
S:G$axradio_get_freqoffset$0$0({2}DF,SL:S),C,0,0
S:G$axradio_conv_freq_tohz$0$0({2}DF,SL:S),C,0,0
S:G$axradio_conv_freq_fromhz$0$0({2}DF,SL:S),C,0,0
S:G$axradio_conv_timeinterval_totimer0$0$0({2}DF,SL:S),C,0,0
S:G$axradio_conv_time_totimer0$0$0({2}DF,SL:U),C,0,0
S:G$axradio_agc_freeze$0$0({2}DF,SC:U),C,0,0
S:G$axradio_agc_thaw$0$0({2}DF,SC:U),C,0,0
S:G$axradio_calibrate_lposc$0$0({2}DF,SV:S),C,0,0
S:G$axradio_check_fourfsk_modulation$0$0({2}DF,SC:U),C,0,0
S:G$axradio_get_transmitter_pa_type$0$0({2}DF,SC:U),C,0,0
S:G$axradio_setup_pincfg1$0$0({2}DF,SV:S),C,0,0
S:G$axradio_setup_pincfg2$0$0({2}DF,SV:S),C,0,0
S:G$axradio_commsleepexit$0$0({2}DF,SV:S),C,0,0
S:G$axradio_dbgpkt_enableIRQ$0$0({2}DF,SV:S),C,0,0
S:G$axradio_isr$0$0({2}DF,SV:S),C,0,0
S:G$radio_read16$0$0({2}DF,SI:U),C,0,0
S:G$radio_read24$0$0({2}DF,SL:U),C,0,0
S:G$radio_read32$0$0({2}DF,SL:U),C,0,0
S:G$radio_write16$0$0({2}DF,SV:S),C,0,0
S:G$radio_write24$0$0({2}DF,SV:S),C,0,0
S:G$radio_write32$0$0({2}DF,SV:S),C,0,0
S:G$ax5031_comminit$0$0({2}DF,SV:S),C,0,0
S:G$ax5031_commsleepexit$0$0({2}DF,SV:S),C,0,0
S:G$ax5031_reset$0$0({2}DF,SC:U),C,0,0
S:G$ax5031_rclk_enable$0$0({2}DF,SV:S),C,0,0
S:G$ax5031_rclk_disable$0$0({2}DF,SV:S),C,0,0
S:G$ax5031_readfifo$0$0({2}DF,SV:S),C,0,0
S:G$ax5031_writefifo$0$0({2}DF,SV:S),C,0,0
S:G$ax5042_comminit$0$0({2}DF,SV:S),C,0,0
S:G$ax5042_commsleepexit$0$0({2}DF,SV:S),C,0,0
S:G$ax5042_reset$0$0({2}DF,SC:U),C,0,0
S:G$ax5042_rclk_enable$0$0({2}DF,SV:S),C,0,0
S:G$ax5042_rclk_disable$0$0({2}DF,SV:S),C,0,0
S:G$ax5042_readfifo$0$0({2}DF,SV:S),C,0,0
S:G$ax5042_writefifo$0$0({2}DF,SV:S),C,0,0
S:G$ax5043_comminit$0$0({2}DF,SV:S),C,0,0
S:G$ax5043_commsleepexit$0$0({2}DF,SV:S),C,0,0
S:G$ax5043_reset$0$0({2}DF,SC:U),C,0,0
S:G$ax5043_enter_deepsleep$0$0({2}DF,SV:S),C,0,0
S:G$ax5043_wakeup_deepsleep$0$0({2}DF,SC:U),C,0,0
S:G$ax5043_rclk_enable$0$0({2}DF,SV:S),C,0,0
S:G$ax5043_rclk_disable$0$0({2}DF,SV:S),C,0,0
S:G$ax5043_rclk_wait_stable$0$0({2}DF,SV:S),C,0,0
S:G$ax5043_readfifo$0$0({2}DF,SV:S),C,0,0
S:G$ax5043_writefifo$0$0({2}DF,SV:S),C,0,0
S:G$ax5043_set_pwramp_pin$0$0({2}DF,SV:S),C,0,0
S:G$ax5043_get_pwramp_pin$0$0({2}DF,SC:U),C,0,0
S:G$ax5043_set_antsel_pin$0$0({2}DF,SV:S),C,0,0
S:G$ax5043_get_antsel_pin$0$0({2}DF,SC:U),C,0,0
S:G$ax5044_45_comminit$0$0({2}DF,SV:S),C,0,0
S:G$ax5044_45_commsleepexit$0$0({2}DF,SV:S),C,0,0
S:G$ax5044_45_reset$0$0({2}DF,SC:U),C,0,0
S:G$ax5044_45_enter_deepsleep$0$0({2}DF,SV:S),C,0,0
S:G$ax5044_45_wakeup_deepsleep$0$0({2}DF,SC:U),C,0,0
S:G$ax5044_45_rclk_enable$0$0({2}DF,SV:S),C,0,0
S:G$ax5044_45_rclk_disable$0$0({2}DF,SV:S),C,0,0
S:G$ax5044_45_rclk_wait_stable$0$0({2}DF,SV:S),C,0,0
S:G$ax5044_45_readfifo$0$0({2}DF,SV:S),C,0,0
S:G$ax5044_45_writefifo$0$0({2}DF,SV:S),C,0,0
S:G$ax5044_45_set_pwramp_pin$0$0({2}DF,SV:S),C,0,0
S:G$ax5044_45_get_pwramp_pin$0$0({2}DF,SC:U),C,0,0
S:G$ax5044_45_set_antsel_pin$0$0({2}DF,SV:S),C,0,0
S:G$ax5044_45_get_antsel_pin$0$0({2}DF,SC:U),C,0,0
S:G$ax5051_comminit$0$0({2}DF,SV:S),C,0,0
S:G$ax5051_commsleepexit$0$0({2}DF,SV:S),C,0,0
S:G$ax5051_reset$0$0({2}DF,SC:U),C,0,0
S:G$ax5051_rclk_enable$0$0({2}DF,SV:S),C,0,0
S:G$ax5051_rclk_disable$0$0({2}DF,SV:S),C,0,0
S:G$ax5051_readfifo$0$0({2}DF,SV:S),C,0,0
S:G$ax5051_writefifo$0$0({2}DF,SV:S),C,0,0
S:G$flash_unlock$0$0({2}DF,SV:S),C,0,0
S:G$flash_lock$0$0({2}DF,SV:S),C,0,0
S:G$flash_wait$0$0({2}DF,SC:S),C,0,0
S:G$flash_pageerase$0$0({2}DF,SC:S),C,0,0
S:G$flash_write$0$0({2}DF,SC:S),C,0,0
S:G$flash_read$0$0({2}DF,SI:U),C,0,0
S:G$flash_apply_calibration$0$0({2}DF,SC:U),C,0,0
S:G$wtimer0_setconfig$0$0({2}DF,SV:S),C,0,0
S:G$wtimer1_setconfig$0$0({2}DF,SV:S),C,0,0
S:G$wtimer_init$0$0({2}DF,SV:S),C,0,0
S:G$wtimer_init_deepsleep$0$0({2}DF,SV:S),C,0,0
S:G$wtimer_idle$0$0({2}DF,SC:U),C,0,0
S:G$wtimer_runcallbacks$0$0({2}DF,SC:U),C,0,0
S:G$wtimer0_curtime$0$0({2}DF,SL:U),C,0,0
S:G$wtimer1_curtime$0$0({2}DF,SL:U),C,0,0
S:G$wtimer0_addabsolute$0$0({2}DF,SV:S),C,0,0
S:G$wtimer1_addabsolute$0$0({2}DF,SV:S),C,0,0
S:G$wtimer0_addrelative$0$0({2}DF,SV:S),C,0,0
S:G$wtimer1_addrelative$0$0({2}DF,SV:S),C,0,0
S:G$wtimer_remove$0$0({2}DF,SC:U),C,0,0
S:G$wtimer0_remove$0$0({2}DF,SC:U),C,0,0
S:G$wtimer1_remove$0$0({2}DF,SC:U),C,0,0
S:G$wtimer_add_callback$0$0({2}DF,SV:S),C,0,0
S:G$wtimer_remove_callback$0$0({2}DF,SC:U),C,0,0
S:G$wtimer_cansleep$0$0({2}DF,SC:U),C,0,0
S:G$wtimer_irq$0$0({2}DF,SV:S),C,0,0
S:G$turn_off_xosc$0$0({2}DF,SV:S),C,0,0
S:G$turn_off_lpxosc$0$0({2}DF,SV:S),C,0,0
S:G$wtimer0_correctinterval$0$0({2}DF,SL:U),C,0,0
S:G$wtimer1_correctinterval$0$0({2}DF,SL:U),C,0,0
S:G$setup_xosc$0$0({2}DF,SV:S),C,0,0
S:G$setup_lpxosc$0$0({2}DF,SV:S),C,0,0
S:G$setup_osc_calibration$0$0({2}DF,SC:U),C,0,0
S:G$lcd2_irq$0$0({2}DF,SV:S),C,0,0
S:G$lcd2_poll$0$0({2}DF,SC:U),C,0,0
S:G$lcd2_txbufptr$0$0({2}DF,DX,SC:U),C,0,0
S:G$lcd2_txfreelinear$0$0({2}DF,SC:U),C,0,0
S:G$lcd2_txidle$0$0({2}DF,SC:U),C,0,0
S:G$lcd2_txfree$0$0({2}DF,SC:U),C,0,0
S:G$lcd2_txbuffersize$0$0({2}DF,SC:U),C,0,0
S:G$lcd2_txpokecmd$0$0({2}DF,SV:S),C,0,0
S:G$lcd2_txpoke$0$0({2}DF,SV:S),C,0,0
S:G$lcd2_txpokehex$0$0({2}DF,SV:S),C,0,0
S:G$lcd2_txadvance$0$0({2}DF,SV:S),C,0,0
S:G$lcd2_init$0$0({2}DF,SV:S),C,0,0
S:G$lcd2_portinit$0$0({2}DF,SV:S),C,0,0
S:G$lcd2_wait_txdone$0$0({2}DF,SV:S),C,0,0
S:G$lcd2_wait_txfree$0$0({2}DF,SV:S),C,0,0
S:G$lcd2_tx$0$0({2}DF,SV:S),C,0,0
S:G$lcd2_txcmdshort$0$0({2}DF,SV:S),C,0,0
S:G$lcd2_txcmdlong$0$0({2}DF,SV:S),C,0,0
S:G$lcd2_setpos$0$0({2}DF,SV:S),C,0,0
S:G$lcd2_cleardisplay$0$0({2}DF,SV:S),C,0,0
S:G$lcd2_clear$0$0({2}DF,SV:S),C,0,0
S:G$lcd2_writestr$0$0({2}DF,SV:S),C,0,0
S:G$lcd2_writenum16$0$0({2}DF,SC:U),C,0,0
S:G$lcd2_writehex16$0$0({2}DF,SC:U),C,0,0
S:G$lcd2_writenum32$0$0({2}DF,SC:U),C,0,0
S:G$lcd2_writehex32$0$0({2}DF,SC:U),C,0,0
S:G$dbglink_irq$0$0({2}DF,SV:S),C,0,0
S:G$dbglink_poll$0$0({2}DF,SC:U),C,0,0
S:G$dbglink_txbufptr$0$0({2}DF,DX,SC:U),C,0,0
S:G$dbglink_txfreelinear$0$0({2}DF,SC:U),C,0,0
S:G$dbglink_txidle$0$0({2}DF,SC:U),C,0,0
S:G$dbglink_txfree$0$0({2}DF,SC:U),C,0,0
S:G$dbglink_rxbufptr$0$0({2}DF,DX,SC:U),C,0,0
S:G$dbglink_rxcountlinear$0$0({2}DF,SC:U),C,0,0
S:G$dbglink_rxcount$0$0({2}DF,SC:U),C,0,0
S:G$dbglink_txbuffersize$0$0({2}DF,SC:U),C,0,0
S:G$dbglink_rxbuffersize$0$0({2}DF,SC:U),C,0,0
S:G$dbglink_rxpeek$0$0({2}DF,SC:U),C,0,0
S:G$dbglink_txpoke$0$0({2}DF,SV:S),C,0,0
S:G$dbglink_txpokehex$0$0({2}DF,SV:S),C,0,0
S:G$dbglink_rxadvance$0$0({2}DF,SV:S),C,0,0
S:G$dbglink_txadvance$0$0({2}DF,SV:S),C,0,0
S:G$dbglink_init$0$0({2}DF,SV:S),C,0,0
S:G$dbglink_wait_txdone$0$0({2}DF,SV:S),C,0,0
S:G$dbglink_wait_txfree$0$0({2}DF,SV:S),C,0,0
S:G$dbglink_wait_rxcount$0$0({2}DF,SV:S),C,0,0
S:G$dbglink_rx$0$0({2}DF,SC:U),C,0,0
S:G$dbglink_tx$0$0({2}DF,SV:S),C,0,0
S:G$dbglink_writestr$0$0({2}DF,SV:S),C,0,0
S:G$dbglink_writenum16$0$0({2}DF,SC:U),C,0,0
S:G$dbglink_writehex16$0$0({2}DF,SC:U),C,0,0
S:G$dbglink_writenum32$0$0({2}DF,SC:U),C,0,0
S:G$dbglink_writehex32$0$0({2}DF,SC:U),C,0,0
S:G$dbglink_writehexu16$0$0({2}DF,SV:S),C,0,0
S:G$dbglink_writehexu32$0$0({2}DF,SV:S),C,0,0
S:G$dbglink_writeu16$0$0({2}DF,SV:S),C,0,0
S:G$dbglink_writeu32$0$0({2}DF,SV:S),C,0,0
S:G$crc_ccitt_byte$0$0({2}DF,SI:U),C,0,0
S:G$crc_ccitt_msb_byte$0$0({2}DF,SI:U),C,0,0
S:G$crc_ccitt$0$0({2}DF,SI:U),C,0,0
S:G$crc_ccitt_msb$0$0({2}DF,SI:U),C,0,0
S:G$crc_crc16_byte$0$0({2}DF,SI:U),C,0,0
S:G$crc_crc16_msb_byte$0$0({2}DF,SI:U),C,0,0
S:G$crc_crc16$0$0({2}DF,SI:U),C,0,0
S:G$crc_crc16_msb$0$0({2}DF,SI:U),C,0,0
S:G$crc_crc16dnp_byte$0$0({2}DF,SI:U),C,0,0
S:G$crc_crc16dnp_msb_byte$0$0({2}DF,SI:U),C,0,0
S:G$crc_crc16dnp$0$0({2}DF,SI:U),C,0,0
S:G$crc_crc16dnp_msb$0$0({2}DF,SI:U),C,0,0
S:G$crc_crc32_byte$0$0({2}DF,SL:U),C,0,0
S:G$crc_crc32_msb_byte$0$0({2}DF,SL:U),C,0,0
S:G$crc_crc32$0$0({2}DF,SL:U),C,0,0
S:G$crc_crc32_msb$0$0({2}DF,SL:U),C,0,0
S:G$crc_crc8ccitt_byte$0$0({2}DF,SC:U),C,0,0
S:G$crc_crc8ccitt_msb_byte$0$0({2}DF,SC:U),C,0,0
S:G$crc_crc8ccitt$0$0({2}DF,SC:U),C,0,0
S:G$crc_crc8ccitt_msb$0$0({2}DF,SC:U),C,0,0
S:G$crc_crc8onewire_byte$0$0({2}DF,SC:U),C,0,0
S:G$crc_crc8onewire_msb_byte$0$0({2}DF,SC:U),C,0,0
S:G$crc_crc8onewire$0$0({2}DF,SC:U),C,0,0
S:G$crc_crc8onewire_msb$0$0({2}DF,SC:U),C,0,0
S:G$crc8_ccitt_byte$0$0({2}DF,SC:U),C,0,0
S:G$crc8_ccitt$0$0({2}DF,SC:U),C,0,0
S:G$crc8_onewire_byte$0$0({2}DF,SC:U),C,0,0
S:G$crc8_onewire$0$0({2}DF,SC:U),C,0,0
S:G$pn9_advance$0$0({2}DF,SI:U),C,0,0
S:G$pn9_advance_bit$0$0({2}DF,SI:U),C,0,0
S:G$pn9_advance_bits$0$0({2}DF,SI:U),C,0,0
S:G$pn9_advance_byte$0$0({2}DF,SI:U),C,0,0
S:G$pn9_buffer$0$0({2}DF,SI:U),C,0,0
S:G$pn15_advance$0$0({2}DF,SI:U),C,0,0
S:G$pn15_output$0$0({2}DF,SC:U),C,0,0
S:G$uart_timer0_baud$0$0({2}DF,SV:S),C,0,0
S:G$uart_timer1_baud$0$0({2}DF,SV:S),C,0,0
S:G$uart_timer2_baud$0$0({2}DF,SV:S),C,0,0
S:G$adc_measure_temperature$0$0({2}DF,SI:S),C,0,0
S:G$adc_calibrate_gain$0$0({2}DF,SV:S),C,0,0
S:G$adc_calibrate_temp$0$0({2}DF,SV:S),C,0,0
S:G$adc_calibrate$0$0({2}DF,SV:S),C,0,0
S:G$adc_uncalibrate$0$0({2}DF,SV:S),C,0,0
S:G$adc_singleended_offset_x01$0$0({2}DF,SI:U),C,0,0
S:G$adc_singleended_offset_x1$0$0({2}DF,SI:U),C,0,0
S:G$adc_singleended_offset_x10$0$0({2}DF,SI:U),C,0,0
S:G$bch3121_syndrome$0$0({2}DF,SI:U),C,0,0
S:G$bch3121_encode$0$0({2}DF,SL:U),C,0,0
S:G$bch3121_encode_parity$0$0({2}DF,SL:U),C,0,0
S:G$bch3121_decode$0$0({2}DF,SL:U),C,0,0
S:G$bch3121_decode_parity$0$0({2}DF,SL:U),C,0,0
S:G$uart0_irq$0$0({2}DF,SV:S),C,0,0
S:G$uart0_poll$0$0({2}DF,SC:U),C,0,0
S:G$uart0_txbufptr$0$0({2}DF,DX,SC:U),C,0,0
S:G$uart0_txfreelinear$0$0({2}DF,SC:U),C,0,0
S:G$uart0_txidle$0$0({2}DF,SC:U),C,0,0
S:G$uart0_txbusy$0$0({2}DF,SC:U),C,0,0
S:G$uart0_txfree$0$0({2}DF,SC:U),C,0,0
S:G$uart0_rxbufptr$0$0({2}DF,DX,SC:U),C,0,0
S:G$uart0_rxcountlinear$0$0({2}DF,SC:U),C,0,0
S:G$uart0_rxcount$0$0({2}DF,SC:U),C,0,0
S:G$uart0_txbuffersize$0$0({2}DF,SC:U),C,0,0
S:G$uart0_rxbuffersize$0$0({2}DF,SC:U),C,0,0
S:G$uart0_rxpeek$0$0({2}DF,SC:U),C,0,0
S:G$uart0_txpoke$0$0({2}DF,SV:S),C,0,0
S:G$uart0_txpokehex$0$0({2}DF,SV:S),C,0,0
S:G$uart0_rxadvance$0$0({2}DF,SV:S),C,0,0
S:G$uart0_txadvance$0$0({2}DF,SV:S),C,0,0
S:G$uart0_init$0$0({2}DF,SV:S),C,0,0
S:G$uart0_stop$0$0({2}DF,SV:S),C,0,0
S:G$uart0_wait_txdone$0$0({2}DF,SV:S),C,0,0
S:G$uart0_wait_txfree$0$0({2}DF,SV:S),C,0,0
S:G$uart0_wait_rxcount$0$0({2}DF,SV:S),C,0,0
S:G$uart0_rx$0$0({2}DF,SC:U),C,0,0
S:G$uart0_tx$0$0({2}DF,SV:S),C,0,0
S:G$uart0_writestr$0$0({2}DF,SV:S),C,0,0
S:G$uart0_writenum16$0$0({2}DF,SC:U),C,0,0
S:G$uart0_writehex16$0$0({2}DF,SC:U),C,0,0
S:G$uart0_writenum32$0$0({2}DF,SC:U),C,0,0
S:G$uart0_writehex32$0$0({2}DF,SC:U),C,0,0
S:G$uart0_writehexu16$0$0({2}DF,SV:S),C,0,0
S:G$uart0_writehexu32$0$0({2}DF,SV:S),C,0,0
S:G$uart0_writeu16$0$0({2}DF,SV:S),C,0,0
S:G$uart0_writeu32$0$0({2}DF,SV:S),C,0,0
S:G$uart1_irq$0$0({2}DF,SV:S),C,0,0
S:G$uart1_poll$0$0({2}DF,SC:U),C,0,0
S:G$uart1_txbufptr$0$0({2}DF,DX,SC:U),C,0,0
S:G$uart1_txfreelinear$0$0({2}DF,SC:U),C,0,0
S:G$uart1_txidle$0$0({2}DF,SC:U),C,0,0
S:G$uart1_txbusy$0$0({2}DF,SC:U),C,0,0
S:G$uart1_txfree$0$0({2}DF,SC:U),C,0,0
S:G$uart1_rxbufptr$0$0({2}DF,DX,SC:U),C,0,0
S:G$uart1_rxcountlinear$0$0({2}DF,SC:U),C,0,0
S:G$uart1_rxcount$0$0({2}DF,SC:U),C,0,0
S:G$uart1_txbuffersize$0$0({2}DF,SC:U),C,0,0
S:G$uart1_rxbuffersize$0$0({2}DF,SC:U),C,0,0
S:G$uart1_rxpeek$0$0({2}DF,SC:U),C,0,0
S:G$uart1_txpoke$0$0({2}DF,SV:S),C,0,0
S:G$uart1_txpokehex$0$0({2}DF,SV:S),C,0,0
S:G$uart1_rxadvance$0$0({2}DF,SV:S),C,0,0
S:G$uart1_txadvance$0$0({2}DF,SV:S),C,0,0
S:G$uart1_init$0$0({2}DF,SV:S),C,0,0
S:G$uart1_stop$0$0({2}DF,SV:S),C,0,0
S:G$uart1_wait_txdone$0$0({2}DF,SV:S),C,0,0
S:G$uart1_wait_txfree$0$0({2}DF,SV:S),C,0,0
S:G$uart1_wait_rxcount$0$0({2}DF,SV:S),C,0,0
S:G$uart1_rx$0$0({2}DF,SC:U),C,0,0
S:G$uart1_tx$0$0({2}DF,SV:S),C,0,0
S:G$uart1_writestr$0$0({2}DF,SV:S),C,0,0
S:G$uart1_writenum16$0$0({2}DF,SC:U),C,0,0
S:G$uart1_writehex16$0$0({2}DF,SC:U),C,0,0
S:G$uart1_writenum32$0$0({2}DF,SC:U),C,0,0
S:G$uart1_writehex32$0$0({2}DF,SC:U),C,0,0
S:G$uart1_writehexu16$0$0({2}DF,SV:S),C,0,0
S:G$uart1_writehexu32$0$0({2}DF,SV:S),C,0,0
S:G$uart1_writeu16$0$0({2}DF,SV:S),C,0,0
S:G$uart1_writeu32$0$0({2}DF,SV:S),C,0,0
S:G$com0_inituart0$0$0({2}DF,SV:S),C,0,0
S:G$com0_portinit$0$0({2}DF,SV:S),C,0,0
S:G$com0_init$0$0({2}DF,SV:S),C,0,0
S:G$com0_setpos$0$0({2}DF,SV:S),C,0,0
S:G$com0_writestr$0$0({2}DF,SV:S),C,0,0
S:G$com0_tx$0$0({2}DF,SV:S),C,0,0
S:G$com0_clear$0$0({2}DF,SV:S),C,0,0
S:G$memcpy$0$0({2}DF,DG,SV:S),C,0,0
S:G$memmove$0$0({2}DF,DG,SV:S),C,0,0
S:G$strcpy$0$0({2}DF,DG,SC:U),C,0,0
S:G$strncpy$0$0({2}DF,DG,SC:U),C,0,0
S:G$strcat$0$0({2}DF,DG,SC:U),C,0,0
S:G$strncat$0$0({2}DF,DG,SC:U),C,0,0
S:G$memcmp$0$0({2}DF,SI:S),C,0,0
S:G$strcmp$0$0({2}DF,SI:S),C,0,0
S:G$strncmp$0$0({2}DF,SI:S),C,0,0
S:G$strxfrm$0$0({2}DF,SI:U),C,0,0
S:G$memchr$0$0({2}DF,DG,SV:S),C,0,0
S:G$strchr$0$0({2}DF,DG,SC:U),C,0,0
S:G$strcspn$0$0({2}DF,SI:U),C,0,0
S:G$strpbrk$0$0({2}DF,DG,SC:U),C,0,0
S:G$strrchr$0$0({2}DF,DG,SC:U),C,0,0
S:G$strspn$0$0({2}DF,SI:U),C,0,0
S:G$strstr$0$0({2}DF,DG,SC:U),C,0,0
S:G$strtok$0$0({2}DF,DG,SC:U),C,0,0
S:G$memset$0$0({2}DF,DG,SV:S),C,0,0
S:G$strlen$0$0({2}DF,SI:U),C,0,0
S:G$display_received_packet$0$0({2}DF,SC:U),C,0,0
S:G$dbglink_received_packet$0$0({2}DF,SV:S),C,0,0
S:G$delay_ms$0$0({2}DF,SV:S),C,0,0
S:G$lcd2_display_radio_error$0$0({2}DF,SV:S),C,0,0
S:G$com0_display_radio_error$0$0({2}DF,SV:S),C,0,0
S:G$dbglink_display_radio_error$0$0({2}DF,SV:S),C,0,0
S:Fmain$pwrmgmt_irq$0$0({2}DF,SV:S),C,0,0
S:Fmain$transmit_packet$0$0({2}DF,SV:S),C,0,0
S:Fmain$display_transmit_packet$0$0({2}DF,SV:S),C,0,0
S:Fmain$wakeup_callback$0$0({2}DF,SV:S),C,0,0
S:G$_sdcc_external_startup$0$0({2}DF,SC:U),C,0,0
S:G$main$0$0({2}DF,SI:S),C,0,0
S:G$axradio_framing_maclen$0$0({1}SC:U),D,0,0
S:G$axradio_framing_addrlen$0$0({1}SC:U),D,0,0
S:G$remoteaddr$0$0({5}STaxradio_address:S),D,0,0
S:G$localaddr$0$0({10}STaxradio_address_mask:S),D,0,0
S:G$demo_packet$0$0({72}DA72d,SC:U),D,0,0
S:G$framing_insert_counter$0$0({1}SC:U),D,0,0
S:G$framing_counter_pos$0$0({1}SC:U),D,0,0
S:G$lpxosc_settlingtime$0$0({2}SI:U),D,0,0
S:G$crc_ccitt_table$0$0({512}DA256d,SI:U),D,0,0
S:G$crc_ccitt_msbtable$0$0({512}DA256d,SI:U),D,0,0
S:G$crc_crc16_table$0$0({512}DA256d,SI:U),D,0,0
S:G$crc_crc16_msbtable$0$0({512}DA256d,SI:U),D,0,0
S:G$crc_crc16dnp_table$0$0({512}DA256d,SI:U),D,0,0
S:G$crc_crc16dnp_msbtable$0$0({512}DA256d,SI:U),D,0,0
S:G$crc_crc32_table$0$0({1024}DA256d,SL:U),D,0,0
S:G$crc_crc32_msbtable$0$0({1024}DA256d,SL:U),D,0,0
S:G$crc_crc8ccitt_table$0$0({256}DA256d,SC:U),D,0,0
S:G$crc_crc8ccitt_msbtable$0$0({256}DA256d,SC:U),D,0,0
S:G$crc_crc8onewire_table$0$0({256}DA256d,SC:U),D,0,0
S:G$crc_crc8onewire_msbtable$0$0({256}DA256d,SC:U),D,0,0
S:G$pn9_table$0$0({512}DA512d,SC:U),D,0,0
S:G$pn15_adv_table$0$0({512}DA256d,SI:U),D,0,0
S:G$pn15_out_table$0$0({256}DA256d,SC:U),D,0,0
S:G$bch3121_syndrometable$0$0({2048}DA1024d,SI:U),D,0,0
S:Fmain$__str_0$0$0({7}DA7d,SC:S),D,0,0
S:Fmain$__str_1$0$0({5}DA5d,SC:S),D,0,0
S:Fmain$__str_2$0$0({7}DA7d,SC:S),D,0,0
S:Fmain$__str_3$0$0({7}DA7d,SC:S),D,0,0
