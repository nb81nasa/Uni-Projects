<Qucs Schematic 0.0.19>
<Properties>
  <View=0,18,1106,719,0.826446,0,0>
  <Grid=10,10,1>
  <DataSet=Passive Filter.dat>
  <DataDisplay=Passive Filter.dpl>
  <OpenDisplay=0>
  <Script=Passive Filter.m>
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
  <R R1 5 360 100 -26 15 0 0 "1.5 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <C C1 5 500 160 17 -26 0 1 "100 nF" 1 "" 0 "neutral" 0>
  <GND * 1 500 210 0 0 0 0>
  <GND * 1 240 220 0 0 0 0>
  <Vac V1 5 240 160 18 -26 0 1 "5 V" 1 "5 kHz" 1 "0" 0 "0" 0>
  <.AC Aufgabe2d 1 220 320 0 40 0 0 "lin" 1 "100 Hz" 1 "10 kHz" 1 "1000" 1 "no" 0>
  <.TR Aufgabe2b 1 680 50 0 51 0 0 "lin" 1 "0" 1 "1 ms" 1 "101" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <Eqn Grenzfrequenz 1 790 510 -34 16 0 0 "fg=(acfrequency-1/(2*3.1415*R1.R*C1.C))" 1 "yes" 0>
</Components>
<Wires>
  <240 100 330 100 "" 0 0 0 "">
  <240 100 240 130 "" 0 0 0 "">
  <240 190 240 220 "" 0 0 0 "">
  <390 100 500 100 "" 0 0 0 "">
  <500 100 500 130 "" 0 0 0 "">
  <500 190 500 210 "" 0 0 0 "">
  <500 210 500 220 "" 0 0 0 "">
  <240 100 240 100 "A" 270 70 0 "">
  <500 100 500 100 "B" 530 70 0 "">
</Wires>
<Diagrams>
  <Rect 650 376 409 136 3 #c0c0c0 2 00 1 0 0.0002 0.001 0 -6 2 6 1 -1 1 1 315 0 225 "t in s" "U in V" "A in blau, B in rot">
	<"A.Vt" #0000ff 2 3 0 0 0>
	<"B.Vt" #ff0000 2 3 0 0 0>
  </Rect>
  <Rect 190 612 486 142 3 #c0c0c0 1 00 1 0 2000 10000 1 0 2 6 0 -1 1 1 315 0 225 "U in V" "f in Hz" "fg">
	<"B.v" #ff0000 2 3 0 0 0>
	<"A.v" #00007f 2 3 0 0 0>
	<"fg" #ff00ff 2 3 0 0 1>
  </Rect>
</Diagrams>
<Paintings>
</Paintings>
