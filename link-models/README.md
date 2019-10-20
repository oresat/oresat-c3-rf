## Link Budget Models for the C3 Channels

The source of these link model spreadsheets are from Jan King and are located at the [AMSAT-UK IARU website](http://www.amsatuk.me.uk/iaru/spreadsheet.htm).  The spreadsheets have been customized from revision 2.5.5 which are signified by a suffix letter.  In addition, for OreSat protocol information please visit our [GitHub protocol page](https://github.com/oresat/oresat-design/tree/gh-pages/protocol).  For OreSat's bulk-data mission uplink and downlink models using 802.11b please visit our [GitHub DxWiFi page](https://github.com/oresat/oresat-dxwifi-hardware).

- The primary engineering uplink and downlink using UniClOGS (University Class Open Ground Station)
  - ___OreSat1_link_model_v2.5.5a_eng_primary.xlsx  (PDF summary)___
  - L band 1265 MHz GMSK uplink and UHF 436.5 MHz GMSK downlink

- The secondary engineering uplink using UniClOGS (University Class Open Ground Station)
  - ___OreSat1_link_model_v2.5.5a_eng_secondary.xlsx  (PDF summary)___
  - UHF 436.5 MHz GMSK uplink

- The public telemetry and APRS downlink using a handheld receiver
  - ___OreSat1_link_model_v2.5.5a_public.xlsx  (PDF summary)___
  - UHF 436.5 MHz G3RUH FSK w/ AX.25

- The C.W. beacon downlink using a handheld receiver
  - ___OreSat1_link_model_v2.5.5a_beacon.xlsx  (PDF summary)___
  - UHF 436.5 MHz C.W. in 100Hz

Notes:
- The 'Transmitters' and 'Receivers' sheets have been customized
  - Block diagrams reflect correct design
  - System noise temperature is more precise
- The 'System Performance Summary' sheet has been customized
  - Power levels in dBm
  - More link details

## Friis formula calculators
___Friis_noise_temp_calculators.xlsx___

The noise temperature calculators for the spacecraft and ground station receivers based on Friis formula.  The link model spreadsheets include Friis formula for use with an antenna as the source.  The calculator spreadsheet includes the following tabs for comparison.

- General: [Friis formula](https://en.wikipedia.org/wiki/Friis_formulas_for_noise)
- SME: A modified formula used for systems with an antenna as the source.  [Wertz, J., Everett, D., Puschell, J. (2011). Space Mission Engineering: The New SMAD (pp. 477). Hawthorne, CA: Microcosm Press.](http://www.sme-smad.com/)
- King: Jan King's formula based on SME. Assumes the effective temperature of the feed and passives prior to the first LNA is referenced from T<sub>0</sub>
- Subtotal: The Friis formula subtotal section used in the link model spreadsheets; Receivers sheet, T<sub>ComRcvr</sub> cell. Excludes the source (antenna) and passives prior to the first LNA
