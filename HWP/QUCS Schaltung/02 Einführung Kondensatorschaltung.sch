<Qucs Schematic 0.0.19>
<Properties>
  <View=0,0,1400,912,1.21,80,57>
  <Grid=10,10,1>
  <DataSet=02 Einführung Kondensatorschaltung.dat>
  <DataDisplay=02 Einführung Kondensatorschaltung.dpl>
  <OpenDisplay=0>
  <Script=02 Einführung Kondensatorschaltung.m>
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
  <GND * 1 100 330 0 0 0 0>
  <C C1 1 220 260 17 -26 0 1 "100 nF" 1 "5" 0 "neutral" 0>
  <Vac V1 1 100 260 18 -26 0 1 "5 V" 1 "1 GHz" 0 "0" 0 "0" 0>
  <.TR TR1 1 350 120 0 51 0 0 "lin" 1 "0" 1 "5 ns" 1 "1000" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <.AC AC1 1 610 120 0 39 0 0 "lin" 1 "100 Hz" 1 "100 kHz" 1 "500" 1 "no" 0>
</Components>
<Wires>
  <100 290 100 330 "" 0 0 0 "">
  <100 190 100 230 "" 0 0 0 "">
  <100 190 220 190 "" 0 0 0 "">
  <220 190 220 230 "" 0 0 0 "">
  <100 330 220 330 "" 0 0 0 "">
  <220 290 220 330 "" 0 0 0 "">
  <220 190 220 190 "U" 250 160 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
