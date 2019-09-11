## Block diagrams for the C3 communications channels

- The primary L band receiver on the satellite.<br>___L-band-front-end-receiver-vX.X.pdf___
  - 1260 to 1270 MHz uplink engineering channel
  - 1575 MHz GPS receiver

- The primary UHF transmitter and secondary receiver on the satellite.<br>___70cm-front-end-transceiver-vX.X.pdf___
  - 435 to 438 MHz downlink engineering and public channel
  - 435 to 438 MHz uplink engineering channel

## Power budget estimations

|                        |       <br>L-band       |       <br>UHF Rx      |    UHF Tx<br>Beacon   |  UHF Tx<br>Telemetry  |
|:----------------------:|:----------------------:|:---------------------:|:---------------------:|:---------------------:|
|          5.0V          |            -           |           -           |         400mA         |         600mA         |
|          2.7V          |          39mA          |          16mA         |          21mA         |          29mA         |
|          1.8V          |          1.5mA         |         1.5mA         |         1.5mA         |         1.5mA         |
| <strong>Power</strong> | <strong>110mW</strong> | <strong>46mW</strong> | <strong>2.1W</strong> | <strong>3.1W</strong> |

#### Notes:
- L band Rx excludes GPS receiver
- UHF Tx beacon estimated for 0.1W PA output
- UHF Tx telemetry estimated for 1.0W PA output
