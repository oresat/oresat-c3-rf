# AxSem_Profiles
These are a bunch of AxSem RadioLab profiles
* NB: All EDL packets are "MSB first", otherwise "LSB first"

## [AX_C3_L_RX](AX_C3_L_RX)
* Target: DVK-2 / C3 board AX5043 L band receive through pinheader
* Traffic: **Rx** / L band receiver side of BER test
* Created

## [AX_Radio_Board_L_TX_Send_EDL_TXEN](AX_Radio_Board_L_TX_Send_EDL_TXEN)
* Target: DVK-2 / AxSem daughter board using L band upconverter
* Traffic: **Tx** / EDL "TXEN" packet

## [AX_Radio_Board_RX](AX_Radio_Board_RX)
* Target: DVK-2 / AxSem daughter board direct UHF
* Traffic: **Rx** / Receiver side of BER test
* Created

## [AX_Radio_Board_TX](AX_Radio_Board_TX)
* Target: DVK-2 / AxSem daughter board direct UHF
* Traffic: **Tx** / Transmitter side of BER test
* Created

## [AX_Radio_Board_TX_9600](AX_Radio_Board_TX_9600)
* Target: DVK-2 / AxSem daughter board direct UHF
* Traffic: **Tx** / Transmit G3RUH AX.25 Packet with payload "Hi"
* Created, configuration confirmed, tested working, **used frequently**

## [AX_Radio_Board_TX_Send_EDL_FILEUP](AX_Radio_Board_TX_Send_EDL_FILEUP)
* Target: DVK-2 / AxSem daughter board direct UHF
* Traffic: **Tx** / EDL "FILE UPLOAD (small file)" packet
* Created, configuration confirmed, tested working, **used frequently**

## [AX_Radio_Board_TX_Send_EDL_TXDIS](AX_Radio_Board_TX_Send_EDL_TXDIS)
* Target: DVK-2 / AxSem daughter board direct UHF
* Traffic: **Tx** / EDL "TXDIS" packet

## [AX_Radio_Board_TX_Send_EDL_TXEN](AX_Radio_Board_TX_Send_EDL_TXEN)
* Target: DVK-2 / AxSem daughter board direct UHF
* Traffic: **Tx** / EDL "TXEN" packet
* Created, configuration confirmed, tested working

## [AX_Vigely_Dev_Board_L_RX](AX_Vigely_Dev_Board_L_RX)
* Target: DVK-2 / Vigely's AX5043 dev board using L band downconverter
* Traffic: **Rx** / L band receiver side of BER test; 120kbps MSK; _NB: This was also used with C3 board using pinheader_
* Created, configuration confirmed, tested working

## [AX_Vigely_Dev_Board_L_TX](AX_Vigely_Dev_Board_L_TX)
* Target: DVK-2 / Vigely's AX5043 dev board using L band upconverter
* Traffic: **Tx** / Transmitter side of BER test; 120kbps MSK
* Created, configuration confirmed, tested working

## [AX_Vigely_Dev_Board_L_TX_Send_EDL_BIG_DATA](AX_Vigely_Dev_Board_L_TX_Send_EDL_BIG_DATA)
* Target: DVK-2 / Vigely's AX5043 dev board using L band upconverter
* Traffic: **Tx** / EDL "FILE UPLOAD (1k file)" packet

## [AX_Vigely_Dev_Board_L_TX_Send_EDL_BIG_DATA_2](AX_Vigely_Dev_Board_L_TX_Send_EDL_BIG_DATA_2)
* Target: DVK-2 / Vigely's AX5043 dev board using L band upconverter
* Traffic: **Tx** / EDL "FILE UPLOAD (240 byte EDL frame)" packet

## [AX_Vigely_Dev_Board_L_TX_Send_EDL_TXDIS](AX_Vigely_Dev_Board_L_TX_Send_EDL_TXDIS)
* Target: DVK-2 / Vigely's AX5043 dev board using L band upconverter
* Traffic: **Tx** / EDL "TXDIS" packet; 60 kbps FSK
* Created, configuration confirmed, tested working
* _NB: only works with external synth ref_

## [AX_Vigely_Dev_Board_L_TX_Send_EDL_TXEN](AX_Vigely_Dev_Board_L_TX_Send_EDL_TXEN)
* Target: DVK-2 / Vigely's AX5043 dev board using L band upconverter
* Traffic: **Tx** / EDL "TXEN" packet
