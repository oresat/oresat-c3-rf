### Link budget models for the C3 communications channels

The source of these spreadsheets are from Jan King and are located at the [AMSAT-UK IARU website](http://www.amsatuk.me.uk/iaru/spreadsheet.htm)

- The primary uplink (L band) and downlink (UHF) link model:
   ___AMSAT-IARU_Link_Model_Rev2.5.5_mod_PDX_CS0_primary.xlsx___

- The secondary uplink (UHF) link model:
   ___AMSAT-IARU_Link_Model_Rev2.5.5_mod_PDX_CS0_secondary.xlsx___

Notes:
- The 'Transmitters' and 'Receivers' pages have been customized. Refer to these [block diagrams](https://github.com/oresat/oresat-c3-rf/tree/master/block-diagrams)
- The 'System Performance Summary' page has broken references for transmitters and receivers details, but the link budget reference is accurate.  Use the 'Transmitters', 'Receivers', 'Uplink Budget', and 'Downlink Budget' pages for details.

### Friis formula calculators
___Friis_noise_temp_calculators.xlsx___

The noise temperature calculators for the spacecraft and ground station receivers based on Friis formula.  The link model spreadsheets include Friis formula for use with an antenna as the source.  The calculator spreadsheet includes the following tabs for comparison.

- General: [Friis formula](https://en.wikipedia.org/wiki/Friis_formulas_for_noise)
- SME: A modified formula used for systems with an antenna as the source.  [Wertz, J., Everett, D., Puschell, J. (2011). Space Mission Engineering: The New SMAD (pp. 477). Hawthorne, CA: Microcosm Press.](http://www.sme-smad.com/)
- King: Jan King's formula based on SME. Excludes the effective temperature of the feed and passives prior to the first LNA.
- Subtotal: The Friis formula subtotal section used in the link model spreadsheets; Receivers tab, T<sub>2ndStage</sub> cell. Excludes the source (antenna) and passives prior to the first LNA.
