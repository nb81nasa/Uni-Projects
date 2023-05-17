
public class Variante2 extends Spiel {
	
	public Variante2(Spieler[] spieler, int rundenAnzahl) {
		super(spieler, rundenAnzahl);
	}
	
	private static String spielregeln = "Nur die geraden Augen werden addiert.";
	
	public void auswerten(Spieler spieler, int ergebnis) {
		if (ergebnis % 2 == 0) {
			spieler.setPunkte(spieler.getPunkte() + ergebnis);
		}
	}


	public String getSpielregeln() {
		return spielregeln;
	}

}
