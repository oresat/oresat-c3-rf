## Microstrip Boards

Microstrip evaluation boards to determine the 50 ohm microstrip width using OSH Park's 4-layer stackup for sub 3 GHz use.  Four 50 mm long microstrip boards with end-launch SMA connectors were designed; 0.34, 0.36, 0.38, and 0.40 mm widths.  The calculated 50 ohm width should be around 0.34 mm, however, the measured 50 ohm width is around 0.38 mm.  Phase velocity and effecitve permittivity was also measured using a very long microstrip on [OreSat's backplane](https://github.com/oresat/oresat-backplane).

### [EAGLE CAD Files](../../eagle/test/)
Four varying widths on two physical boards.  Two variations on each board; top and bottom.  OSH Park always ships a minimum of 3 boards per design.

    oresat-c3-rf/eagle/test/
      microstrip-test-4-layer-sma-34-40
      microstrip-test-4-layer-sma-36-38

### [2019-10-19 E5071C-ENA](2019-10-19-E5071C-ENA)
Measure and determine correct microstrip width for 50 ohm impedance on OSH Park's 4-layer stackup operating below 3 GHz.  Four 50 mm long microstrip test boards were measured; 0.34, 0.36, 0.38, and 0.40 mm.

### [2019-08-30 E5071C-ENA](2019-08-30-E5071C-ENA)
Measure and determine correct microstrip width for 50 ohm impedance on OSH Park's 4-layer stackup operating below 3 GHz.  Two 50 mm long microstrip test boards were measured with 0.34, and 0.40 mm widths, and a 180 mm long 0.38 mm width.  Phase velocity was also measured and effective permittivity was calculated by inducing discontinuties across the 180 mm long microstrip.

### References
- [OSH Park 4-layer stackup](https://docs.oshpark.com/services/four-layer/)
