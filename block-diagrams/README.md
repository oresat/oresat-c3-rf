## Block diagrams for the C3 communications channels

- The primary L band receiver on the satellite.<br>___L-band-receiver-vX.X.pdf___
  - 1260 to 1270 MHz uplink engineering channel
  - 1575 MHz GPS receiver

- The primary UHF transmitter and secondary receiver on the satellite.<br>___70cm-transceiver-vX.X.pdf___
  - 435 to 438 MHz downlink engineering and public channel
  - 435 to 438 MHz uplink engineering channel

## Power budget estimations

Power budget for the C3 card radios. Includes front-end components, AX5043 IC transceiver, and supply losses.  See Excel spreadsheet for more details: ___power-budget-c3-rf.xlsx___

### Summary:
|                                   | <br><br>Power (mW) |  <br><br>Duty Cycle (%)  | Effective<br>Current (mA)<br>@ 7.2V | <br>Energy/period<br>(mWh) |
|-----------------------------------|:------------------:|:------------------------:|:-----------------------------------:|:--------------------------:|
| <strong>L band Rx</strong>        |         163        |            100           |                 22.6                |             244            |
| <strong>UHF Rx</strong>           |         70         |            98            |                 9.6                 |             104            |
| <strong>UHF Tx C.W. Beacon</strong>    |        1260        |             1            |                 1.7                 |             19             |
| <strong>UHF Tx AX.25 Beacon</strong> |        2118        |             1            |                 2.9                 |             32             |
|                                   |                    | <strong>TOTALS:</strong> |        <strong>36.9</strong>        |    <strong>399</strong>    |

#### Notes:
- L band Rx excludes GPS receiver
- UHF Tx C.W. beacon estimated for 0.1W PA output
- UHF Tx AX.25 beacon estimated for 1.0W PA output
- Period = LEO Orbit ~ 90 min
