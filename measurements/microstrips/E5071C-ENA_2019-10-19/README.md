## E5071C-ENA_2019-10-19
Measure and determine correct microstrip width for 50 ohm impedance on OSH Park's 4-layer stackup operating below 3 GHz.  Four 50 mm long microstrip test boards were measured; 0.34, 0.36, 0.38, and 0.40 mm.

---

### Procedure

    1) Measure S11 and S21 for each board
    2) Analyze TDR from transformed S11

#### Equipment

    DUT: Microstrip test boards
    VNA: Agilent E5071C ENA

#### Sweep Setup

    Start: 200 MHz
    Stop: 20 GHz
    Points: 401

#### Calibration

    Type: Full 2-port (open, short, load, thru)
    Kit:

#### TDR Setup
Simulated TDR based on the frequency domain transformation to time domain.  Time-domain reflectometry (TDR) uses input return loss scattering parameters (S11) in real format.

    Type: Low-pass mode
    Response: Step
    Window: Normal

---

### Results
- [ADS schematic of imported S parameter data](microstrips_schematic.pdf)
- [S11 and S21, 200 MHz to 20 GHz](microstrips_S11_S21_200M-20G.pdf)
- [S11 and S21, 400 MHz to 4 GHz](microstrips_S11_S21_400M-4G.pdf)
- [TDR screen shot comparison](microstrips_TDR_compare.pdf)

---

### Conclusion
The correct 50 ohm microstrip impedance is 0.38 mm for below 3 GHz operation on OSH Park's 4-layer stackup.

---

### Reference
- [Agilent E5071C Manual](http://ena.support.keysight.com/e5071c/manuals/webhelp/eng/index.htm)
