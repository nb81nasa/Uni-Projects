<Qucs Schematic 0.0.19>
<Properties>
  <View=-129,-167,965,836,0.751316,0,0>
  <Grid=10,10,1>
  <DataSet=Diodenkennlinie.dat>
  <DataDisplay=Diodenkennlinie.dpl>
  <OpenDisplay=0>
  <Script=Diodenkennlinie.m>
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
  <GND * 1 20 280 0 0 0 0>
  <Idc I1 1 20 200 18 -26 0 1 "I" 1>
  <.DC StromUndSpannung 1 520 50 0 41 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <R R1 1 80 140 -26 -53 0 2 "50 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <IProbe Ampermeter 1 170 140 -26 16 0 0>
  <Eqn Eqn1 1 390 420 -34 16 0 0 "Kennlinie=0.7438+2*I" 1 "yes" 0>
  <.SW Stromvariation 1 40 370 0 51 0 0 "StromUndSpannung" 1 "lin" 1 "I" 1 "0 A" 1 "100 mA" 1 "200" 1>
  <Diode D_1N4148_1 1 340 200 13 -26 0 1 "222p" 0 "1.65" 0 "4p" 0 "0.333" 0 "0.7" 0 "0.5" 0 "0" 0 "0" 0 "2" 0 "68.6m" 0 "5.76n" 0 "0" 0 "0" 0 "1" 0 "1" 0 "75" 0 "1u" 0 "26.85" 0 "3.0" 0 "1.11" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "1.0" 0 "normal" 0>
  <VProbe Voltmeter 1 250 210 -31 28 1 3>
</Components>
<Wires>
  <20 280 270 280 "" 0 0 0 "">
  <20 230 20 280 "" 0 0 0 "">
  <20 140 20 170 "" 0 0 0 "">
  <20 140 50 140 "" 0 0 0 "">
  <270 140 270 200 "" 0 0 0 "">
  <270 220 270 280 "" 0 0 0 "">
  <200 140 270 140 "" 0 0 0 "">
  <110 140 140 140 "" 0 0 0 "">
  <340 140 340 170 "" 0 0 0 "">
  <270 140 340 140 "" 0 0 0 "">
  <270 280 340 280 "" 0 0 0 "">
  <340 230 340 280 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 70 760 400 164 3 #c0c0c0 1 00 1 0 0.02 0.1 0 0 0.2 1 1 -1 1 1 315 0 225 "I in A" "U in V" "">
	<"Kennlinie" #00007f 0 3 0 0 0>
	<"Ampermeter.I" #ff0000 0 3 0 0 0>
	<"Voltmeter.V" #ff00ff 0 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
</Paintings>
