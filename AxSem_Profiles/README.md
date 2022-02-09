# AxSem_Profiles
These are a bunch of AxSem RadioLab profiles, and they all run on the DVK-2 motherboard.
* NB: All EDL packets are "MSB first", otherwise "LSB first"
* **Be sure to scroll right to see all of profile detail**

| Profile name | Target | Conversion | Modulation | Bitrate | Traffic | Comments |
| --- | --- | --- | --- | --- | --- | --- |
| [AX_C3_L_RX](AX_C3_L_RX) | C3 board AX5043 | L band receive through pinheader | FSK | 60k | **Rx** / L band receiver side of BER test | Created |
| [AX_Radio_Board_L_TX_Send_EDL_TXEN](AX_Radio_Board_L_TX_Send_EDL_TXEN) | AxSem daughter board| L band upconverter | FSK | 60k | **Tx** / EDL "TXEN" packet | |
| [AX_Radio_Board_RX](AX_Radio_Board_RX) | AxSem daughter board | Direct UHF | FSK | 96k | **Rx** / Receiver side of BER test | Created |
| [AX_Radio_Board_TX](AX_Radio_Board_TX) | AxSem daughter board | Direct UHF | FSK | 96k | **Tx** / Transmitter side of BER test | Created |
| [AX_Radio_Board_TX_9600](AX_Radio_Board_TX_9600) | AxSem daughter board | Direct UHF | FSK / G3RUH | 9600 | **Tx** / Transmit AX.25 Packet with payload "Hi" | Created, configuration confirmed, tested working, **used frequently** |
| [AX_Radio_Board_TX_Send_EDL_FILEUP](AX_Radio_Board_TX_Send_EDL_FILEUP) | AxSem daughter board | Direct UHF | FSK | 60k | **Tx** / EDL "FILE UPLOAD" | Created, configuration confirmed, tested working, **used frequently**, small file |
| [AX_Radio_Board_TX_Send_EDL_TXDIS](AX_Radio_Board_TX_Send_EDL_TXDIS) | AxSem daughter board | Direct UHF | FSK | 60k | **Tx** / EDL "TXDIS" | |
| [AX_Radio_Board_TX_Send_EDL_TXEN](AX_Radio_Board_TX_Send_EDL_TXEN) | AxSem daughter board | Direct UHF | FSK | 60k | **Tx** / EDL "TXEN" | Created, configuration confirmed, tested working, **First successful EDL test** |
| [AX_Vigely_Dev_Board_L_RX](AX_Vigely_Dev_Board_L_RX) | Vigely's AX5043 dev board | L band downconverter | MSK | 120k | **Rx** / L band receiver side of BER test | Created, configuration confirmed, tested working, **This was also used with C3 board using pinheader** |
| [AX_Vigely_Dev_Board_L_TX](AX_Vigely_Dev_Board_L_TX) | Vigely's AX5043 dev board | L band upconverter | MSK | 120k | **Tx** / Transmitter side of BER test | Created, configuration confirmed, tested working |
| [AX_Vigely_Dev_Board_L_TX_Send_EDL_BIG_DATA](AX_Vigely_Dev_Board_L_TX_Send_EDL_BIG_DATA) | Vigely's AX5043 dev board | L band upconverter | FSK | 60k | **Tx** / EDL "FILE UPLOAD | 1k file; Fails |
| [AX_Vigely_Dev_Board_L_TX_Send_EDL_BIG_DATA_2](AX_Vigely_Dev_Board_L_TX_Send_EDL_BIG_DATA_2) | Vigely's AX5043 dev board | L band upconverter | FSK | 60k | **Tx** / EDL "FILE UPLOAD" | 240 byte EDL frame |
| [AX_Vigely_Dev_Board_L_TX_Send_EDL_TXDIS](AX_Vigely_Dev_Board_L_TX_Send_EDL_TXDIS) | Vigely's AX5043 dev board | L band upconverter | FSK | 60k | **Tx** / EDL "TXDIS" | Created, configuration confirmed, tested working, **Only works with external synth ref** |
| [AX_Vigely_Dev_Board_L_TX_Send_EDL_TXEN](AX_Vigely_Dev_Board_L_TX_Send_EDL_TXEN) | Vigely's AX5043 dev board | L band upconverter | FSK | 60k | **Tx** / EDL "TXEN" | |
