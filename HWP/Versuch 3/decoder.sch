<Qucs Schematic 0.0.19>
<Properties>
  <View=-229,220,2287,1646,0.901016,0,0>
  <Grid=10,10,1>
  <DataSet=decoder.dat>
  <DataDisplay=decoder.dpl>
  <OpenDisplay=0>
  <Script=decoder.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Erstellt von:>
  <FrameText2=Datum:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <Inv Y2 1 1690 600 -26 27 0 0 "1 V" 0 "0" 0 "10" 0 "DIN40900" 0>
  <Inv Y3 1 1680 810 -26 27 0 0 "1 V" 0 "0" 0 "10" 0 "DIN40900" 0>
  <Inv Y4 1 1660 1020 -26 27 0 0 "1 V" 0 "0" 0 "10" 0 "DIN40900" 0>
  <AND Y6 1 1850 410 -26 27 0 0 "2" 0 "1 V" 0 "0" 0 "10" 0 "DIN40900" 0>
  <OR Y7 1 2040 320 -26 37 0 0 "3" 0 "1 V" 0 "0" 0 "10" 0 "DIN40900" 0>
  <OR Y8 1 2040 430 -26 27 0 0 "2" 0 "1 V" 0 "0" 0 "10" 0 "DIN40900" 0>
  <OR Y9 1 2050 560 -26 27 0 0 "2" 0 "1 V" 0 "0" 0 "10" 0 "DIN40900" 0>
  <OR Y10 1 2100 710 -26 37 0 0 "3" 0 "1 V" 0 "0" 0 "10" 0 "DIN40900" 0>
  <AND Y11 1 2090 830 -26 27 0 0 "2" 0 "1 V" 0 "0" 0 "10" 0 "DIN40900" 0>
  <AND Y12 1 1870 970 -26 27 0 0 "2" 0 "1 V" 0 "0" 0 "10" 0 "DIN40900" 0>
  <OR Y13 1 2100 930 -26 27 0 0 "2" 0 "1 V" 0 "0" 0 "10" 0 "DIN40900" 0>
  <OR Y14 1 2100 1020 -26 27 0 0 "2" 0 "1 V" 0 "0" 0 "10" 0 "DIN40900" 0>
  <AND Y5 1 1850 330 -26 27 0 0 "2" 0 "1 V" 0 "0" 0 "10" 0 "DIN40900" 0>
  <dff_SR Y15 1 210 540 -46 64 0 0 "6" 0 "5" 0 "1 ns" 0>
  <dff_SR Y16 1 210 730 -46 64 0 0 "6" 0 "5" 0 "1 ns" 0>
  <dff_SR Y17 1 210 910 -46 64 0 0 "6" 0 "5" 0 "1 ns" 0>
  <logic_1 S1 1 -70 1050 -35 18 0 0 "1" 0>
  <AND Y18 1 610 460 -53 -26 0 3 "2" 0 "1 V" 0 "0" 0 "10" 0 "DIN40900" 0>
  <AND Y19 1 710 460 -53 -26 0 3 "2" 0 "1 V" 0 "0" 0 "10" 0 "DIN40900" 0>
  <AND Y20 1 820 460 -63 -26 0 3 "3" 0 "1 V" 0 "0" 0 "10" 0 "DIN40900" 0>
  <AND Y21 1 930 460 -53 -26 0 3 "2" 0 "1 V" 0 "0" 0 "10" 0 "DIN40900" 0>
  <AND Y22 1 1010 460 -53 -26 0 3 "2" 0 "1 V" 0 "0" 0 "10" 0 "DIN40900" 0>
  <OR Y23 1 670 600 -74 -26 0 3 "3" 0 "1 V" 0 "0" 0 "10" 0 "DIN40900" 0>
  <OR Y24 1 980 600 -64 -26 0 3 "2" 0 "1 V" 0 "0" 0 "10" 0 "DIN40900" 0>
  <DigiSource S2 1 160 710 -35 16 0 0 "3" 1 "low" 0 "2ns; 2ns" 0 "1 V" 0>
  <DigiSource S3 1 160 890 -35 16 0 0 "4" 1 "low" 0 "2ns; 2ns" 0 "1 V" 0>
  <DigiSource S4 1 160 520 -35 16 0 0 "2" 1 "low" 0 "2ns; 2ns" 0 "1 V" 0>
  <DigiSource S5 1 80 1050 -35 16 0 0 "1" 1 "low" 0 "2ns; 2ns" 0 "1 V" 0>
  <.Digi Digi1 1 90 1230 0 51 0 0 "TruthTable" 1 "10 ns" 0 "VHDL" 0>
</Components>
<Wires>
  <1570 600 1660 600 "" 0 0 0 "">
  <1570 680 1570 810 "" 0 0 0 "">
  <1570 810 1650 810 "" 0 0 0 "">
  <1570 880 1570 1020 "" 0 0 0 "">
  <1570 1020 1630 1020 "" 0 0 0 "">
  <1720 320 1820 320 "" 0 0 0 "">
  <1740 340 1740 1020 "" 0 0 0 "">
  <1740 340 1820 340 "" 0 0 0 "">
  <1570 490 1570 600 "" 0 0 0 "">
  <1800 400 1800 490 "" 0 0 0 "">
  <1800 400 1820 400 "" 0 0 0 "">
  <1570 880 1810 880 "" 0 0 0 "">
  <1810 420 1810 880 "" 0 0 0 "">
  <1810 420 1820 420 "" 0 0 0 "">
  <1880 300 1880 330 "" 0 0 0 "">
  <1880 300 2010 300 "" 0 0 0 "">
  <1880 410 1900 410 "" 0 0 0 "">
  <1900 320 1900 410 "" 0 0 0 "">
  <1900 320 2010 320 "" 0 0 0 "">
  <1920 340 1920 680 "" 0 0 0 "">
  <1920 340 2010 340 "" 0 0 0 "">
  <2070 320 2170 320 "" 0 0 0 "">
  <1720 320 1720 560 "" 0 0 0 "">
  <1720 560 1990 560 "" 0 0 0 "">
  <1990 420 1990 560 "" 0 0 0 "">
  <1990 420 2010 420 "" 0 0 0 "">
  <2000 440 2000 1020 "" 0 0 0 "">
  <2000 440 2010 440 "" 0 0 0 "">
  <2070 430 2170 430 "" 0 0 0 "">
  <1810 880 2020 880 "" 0 0 0 "">
  <2020 570 2020 880 "" 0 0 0 "">
  <2080 560 2170 560 "" 0 0 0 "">
  <1880 330 1970 330 "" 0 0 0 "">
  <1970 330 1970 690 "" 0 0 0 "">
  <1970 690 2070 690 "" 0 0 0 "">
  <1880 410 1880 710 "" 0 0 0 "">
  <1880 710 2070 710 "" 0 0 0 "">
  <2010 550 2020 550 "" 0 0 0 "">
  <2010 550 2010 810 "" 0 0 0 "">
  <1860 680 1920 680 "" 0 0 0 "">
  <1860 680 1860 730 "" 0 0 0 "">
  <1860 730 2070 730 "" 0 0 0 "">
  <2130 710 2190 710 "" 0 0 0 "">
  <2120 830 2190 830 "" 0 0 0 "">
  <1720 560 1720 580 "" 0 0 0 "">
  <1720 580 1720 600 "" 0 0 0 "">
  <1720 580 1850 580 "" 0 0 0 "">
  <1850 580 1850 780 "" 0 0 0 "">
  <1850 780 2060 780 "" 0 0 0 "">
  <2060 780 2060 820 "" 0 0 0 "">
  <1690 1020 1700 1020 "" 0 0 0 "">
  <1700 1020 1740 1020 "" 0 0 0 "">
  <1700 900 1700 1020 "" 0 0 0 "">
  <1700 900 2050 900 "" 0 0 0 "">
  <2050 840 2050 900 "" 0 0 0 "">
  <2050 840 2060 840 "" 0 0 0 "">
  <1900 970 2050 970 "" 0 0 0 "">
  <2050 940 2050 970 "" 0 0 0 "">
  <2050 940 2070 940 "" 0 0 0 "">
  <2130 930 2200 930 "" 0 0 0 "">
  <1740 1020 1770 1020 "" 0 0 0 "">
  <1770 1020 2000 1020 "" 0 0 0 "">
  <1770 980 1770 1020 "" 0 0 0 "">
  <1770 980 1840 980 "" 0 0 0 "">
  <1710 810 1720 810 "" 0 0 0 "">
  <1720 810 2010 810 "" 0 0 0 "">
  <1720 810 1720 960 "" 0 0 0 "">
  <1720 960 1840 960 "" 0 0 0 "">
  <1570 680 1790 680 "" 0 0 0 "">
  <1790 680 1860 680 "" 0 0 0 "">
  <1790 680 1790 1010 "" 0 0 0 "">
  <1790 1010 2070 1010 "" 0 0 0 "">
  <1570 490 1800 490 "" 0 0 0 "">
  <2130 1020 2200 1020 "" 0 0 0 "">
  <-70 480 210 480 "" 0 0 0 "">
  <-70 850 -70 1050 "" 0 0 0 "">
  <-70 850 210 850 "" 0 0 0 "">
  <-70 480 -70 670 "" 0 0 0 "">
  <-70 670 -70 850 "" 0 0 0 "">
  <-70 670 210 670 "" 0 0 0 "">
  <80 930 160 930 "" 0 0 0 "">
  <80 930 80 1050 "" 0 0 0 "">
  <80 750 80 930 "" 0 0 0 "">
  <80 750 160 750 "" 0 0 0 "">
  <80 560 80 750 "" 0 0 0 "">
  <80 560 160 560 "" 0 0 0 "">
  <260 520 410 520 "" 0 0 0 "">
  <410 270 410 520 "" 0 0 0 "">
  <260 560 430 560 "" 0 0 0 "">
  <430 290 430 560 "" 0 0 0 "">
  <260 710 450 710 "" 0 0 0 "">
  <450 320 450 710 "" 0 0 0 "">
  <260 750 470 750 "" 0 0 0 "">
  <260 890 490 890 "" 0 0 0 "">
  <260 930 510 930 "" 0 0 0 "">
  <510 380 510 930 "" 0 0 0 "">
  <210 970 210 1030 "" 0 0 0 "">
  <210 790 210 820 "" 0 0 0 "">
  <470 330 470 750 "" 0 0 0 "">
  <490 350 490 890 "" 0 0 0 "">
  <490 350 600 350 "" 0 0 0 "">
  <600 350 600 430 "" 0 0 0 "">
  <430 290 620 290 "" 0 0 0 "">
  <620 290 620 430 "" 0 0 0 "">
  <600 350 700 350 "" 0 0 0 "">
  <700 350 700 430 "" 0 0 0 "">
  <470 330 720 330 "" 0 0 0 "">
  <720 330 720 430 "" 0 0 0 "">
  <610 490 610 570 "" 0 0 0 "">
  <610 570 650 570 "" 0 0 0 "">
  <510 380 800 380 "" 0 0 0 "">
  <800 380 1270 380 "" 0 0 0 "">
  <800 380 800 430 "" 0 0 0 "">
  <410 270 840 270 "" 0 0 0 "">
  <840 270 840 430 "" 0 0 0 "">
  <450 320 820 320 "" 0 0 0 "">
  <820 320 820 430 "" 0 0 0 "">
  <670 490 710 490 "" 0 0 0 "">
  <670 490 670 570 "" 0 0 0 "">
  <690 540 690 570 "" 0 0 0 "">
  <690 540 820 540 "" 0 0 0 "">
  <820 490 820 540 "" 0 0 0 "">
  <720 330 920 330 "" 0 0 0 "">
  <920 330 1270 330 "" 0 0 0 "">
  <920 330 920 430 "" 0 0 0 "">
  <840 270 940 270 "" 0 0 0 "">
  <940 270 940 430 "" 0 0 0 "">
  <620 290 1020 290 "" 0 0 0 "">
  <1020 290 1020 430 "" 0 0 0 "">
  <820 320 1000 320 "" 0 0 0 "">
  <1000 320 1000 430 "" 0 0 0 "">
  <930 490 930 570 "" 0 0 0 "">
  <930 570 970 570 "" 0 0 0 "">
  <1010 490 1010 570 "" 0 0 0 "">
  <990 570 1010 570 "" 0 0 0 "">
  <670 630 670 730 "" 0 0 0 "">
  <1020 290 1100 290 "" 0 0 0 "">
  <1000 930 1100 930 "" 0 0 0 "">
  <1100 290 1270 290 "" 0 0 0 "">
  <1100 290 1100 930 "" 0 0 0 "">
  <980 630 980 820 "" 0 0 0 "">
  <940 270 1490 270 "" 0 0 0 "">
  <1490 270 1490 380 "" 0 0 0 "">
  <1490 490 1570 490 "" 0 0 0 "">
  <1000 320 1450 320 "" 0 0 0 "">
  <1450 320 1450 680 "" 0 0 0 "">
  <1450 680 1570 680 "" 0 0 0 "">
  <700 350 1410 350 "" 0 0 0 "">
  <1410 350 1410 880 "" 0 0 0 "">
  <1410 880 1570 880 "" 0 0 0 "">
  <1490 410 1490 490 "" 0 0 0 "">
  <1490 410 1780 410 "" 0 0 0 "">
  <1780 410 1780 920 "" 0 0 0 "">
  <1780 920 2070 920 "" 0 0 0 "">
  <1750 1030 2070 1030 "" 0 0 0 "">
  <1750 380 1750 1030 "" 0 0 0 "">
  <1490 380 1490 410 "" 0 0 0 "">
  <1490 380 1750 380 "" 0 0 0 "">
  <2170 320 2170 320 "a" 2200 290 0 "">
  <2170 430 2170 430 "b" 2200 400 0 "">
  <2170 560 2170 560 "c" 2200 530 0 "">
  <2190 710 2190 710 "d" 2220 680 0 "">
  <2190 830 2190 830 "e" 2220 800 0 "">
  <2200 930 2200 930 "f" 2230 900 0 "">
  <2200 1020 2200 1020 "g" 2230 990 0 "">
  <410 270 410 270 "q0" 440 240 0 "">
  <450 320 450 320 "q1" 480 290 0 "">
  <490 350 490 350 "q2" 530 320 0 "">
</Wires>
<Diagrams>
  <Truth 890 1511 575 441 3 #c0c0c0 1 00 1 0 1 1 1 0 1 1 1 0 1 16 315 0 225 "" "" "">
	<"a.X" #0000ff 0 3 0 0 0>
	<"b.X" #0000ff 0 3 0 0 0>
	<"c.X" #0000ff 0 3 0 0 0>
	<"d.X" #0000ff 0 3 0 0 0>
	<"e.X" #0000ff 0 3 0 0 0>
	<"f.X" #0000ff 0 3 0 0 0>
	<"g.X" #0000ff 0 3 0 0 0>
	<"q2.X" #0000ff 0 3 0 0 0>
	<"q1.X" #0000ff 0 3 0 0 0>
	<"q0.X" #0000ff 0 3 0 0 0>
  </Truth>
</Diagrams>
<Paintings>
</Paintings>