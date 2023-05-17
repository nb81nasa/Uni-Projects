
public class Variante3 extends Spiel {

	public Variante3(Spieler[] spieler, int rundenAnzahl) {
		super(spieler, rundenAnzahl);
		
	}
	
	private static String spielregeln = "Alle Augen werden addiert. Wuerfelt man eine Eins, wird die Augensumme auf 0 gesetzt.";
	
	public void auswerten(Spieler spieler, int ergebnis) {
		if (ergebnis == 1) {
			spieler.setPunkte(0);
		}
		else {
			spieler.setPunkte(spieler.getPunkte() + ergebnis);
		}
	}


	public String getSpielregeln() {
		return spielregeln;
	}

}
