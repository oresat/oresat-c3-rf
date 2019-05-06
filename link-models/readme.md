### Link budget models for the C3 communications channels

The source of these spreadsheets are from Jan King and are located at the [AMSAT-UK IARU website](http://www.amsatuk.me.uk/iaru/spreadsheet.htm)

- The primary uplink (L band) and downlink (UHF) link model:
   ___AMSAT-IARU_Link_Model_PDX_CS0_v1_primary.xlsx___

- The secondary uplink (UHF) link model:
   ___AMSAT-IARU_Link_Model_PDX_CS0_v1_secondary.xlsx___

Notes:
- The 'Transmitters' and 'Receivers' sheets have been customized
  - Block diagrams reflect correct design
  - System noise temperature is more precise
- The 'System Performance Summary' sheet has been customized
  - Power levels in dBm
  - More link losses details

### Friis formula calculators
___Friis_noise_temp_calculators.xlsx___

The noise temperature calculators for the spacecraft and ground station receivers based on Friis formula.  The link model spreadsheets include Friis formula for use with an antenna as the source.  The calculator spreadsheet includes the following tabs for comparison.

- General: [Friis formula](https://en.wikipedia.org/wiki/Friis_formulas_for_noise)
- SME: A modified formula used for systems with an antenna as the source.  [Wertz, J., Everett, D., Puschell, J. (2011). Space Mission Engineering: The New SMAD (pp. 477). Hawthorne, CA: Microcosm Press.](http://www.sme-smad.com/)
- King: Jan King's formula based on SME. Assumes the effective temperature of the feed and passives prior to the first LNA is referenced from T<sub>0</sub>
- Subtotal: The Friis formula subtotal section used in the link model spreadsheets; Receivers sheet, T<sub>ComRcvr</sub> cell. Excludes the source (antenna) and passives prior to the first LNA
