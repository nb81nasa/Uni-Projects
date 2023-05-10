<Qucs Schematic 0.0.19>
<Properties>
  <View=0,-397,1572,395,1.331,0,0>
  <Grid=10,10,1>
  <DataSet=Einführung.dat>
  <DataDisplay=Einführung.dpl>
  <OpenDisplay=0>
  <Script=Einführung.m>
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
  <Vdc V1 1 40 -150 18 -26 0 1 "UG" 1>
  <GND * 1 40 -100 0 0 0 0>
  <.DC Strombestimmung 1 240 -340 0 39 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <Eqn Gesamtstrom 1 60 -350 -34 16 0 0 "I=-V1.I" 1 "yes" 0>
  <.SW Spannungsvariation 1 440 -350 0 51 0 0 "Strombestimmung" 1 "lin" 0 "UG" 0 "0" 1 "10" 1 "3" 1>
  <R R1 1 120 -150 15 -26 0 1 "R" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <.SW Widerstandsvariation 1 730 -350 0 51 0 0 "Spannungsvariation" 1 "lin" 0 "R" 0 "500" 1 "1500" 1 "5" 1>
</Components>
<Wires>
  <40 -200 40 -180 "" 0 0 0 "">
  <40 -200 120 -200 "" 0 0 0 "">
  <120 -200 120 -180 "" 0 0 0 "">
  <120 -120 120 -100 "" 0 0 0 "">
  <40 -100 120 -100 "" 0 0 0 "">
  <40 -120 40 -100 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
