<Qucs Schematic 0.0.19>
<Properties>
  <View=-50,-49,1577,925,1,50,50>
  <Grid=10,10,1>
  <DataSet=Hazards.dat>
  <DataDisplay=Hazards.dpl>
  <OpenDisplay=0>
  <Script=Hazards.m>
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
  <Inv Y1 1 320 250 -26 27 0 0 "1 V" 0 "20 ps" 0 "10" 0 "DIN40900" 0>
  <Inv Y2 1 430 250 -26 27 0 0 "1 V" 0 "20 ps" 0 "10" 0 "DIN40900" 0>
  <Inv Y3 1 540 250 -26 27 0 0 "1 V" 0 "20 ps" 0 "10" 0 "DIN40900" 0>
  <XOR Y4 1 640 210 -26 27 0 0 "2" 0 "1 V" 0 "10 ps" 0 "10" 0 "DIN40900" 0>
  <.Digi Digi1 1 930 150 0 51 0 0 "TimeList" 1 "7 ns" 0 "VHDL" 0>
  <DigiSource X 1 260 200 -35 16 0 0 "1" 0 "low" 0 "2ns; 2ns" 0 "1 V" 0>
</Components>
<Wires>
  <350 250 400 250 "" 0 0 0 "">
  <460 250 510 250 "" 0 0 0 "">
  <260 200 260 250 "" 0 0 0 "">
  <260 250 290 250 "" 0 0 0 "">
  <260 200 610 200 "Q" 600 150 340 "">
  <570 250 610 250 "" 0 0 0 "">
  <610 220 610 250 "" 0 0 0 "">
  <670 210 670 210 "Y" 700 180 0 "">
  <610 250 610 250 "U" 600 270 0 "">
</Wires>
<Diagrams>
  <Time 140 517 1026 146 3 #c0c0c0 1 00 1 0 1 8 1 0 1 1 1 0 1 23 315 0 225 "" "" "">
	<"y.X" #0000ff 0 3 0 0 0>
	<"u.X" #ff0000 0 3 0 0 0>
	<"q.X" #ff00ff 0 3 0 0 0>
  </Time>
</Diagrams>
<Paintings>
</Paintings>
