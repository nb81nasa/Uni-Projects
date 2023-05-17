
public class Variante1 extends Spiel{
	
	public Variante1(Spieler[] spieler, int rundenAnzahl) {
		super(spieler, rundenAnzahl);	
	}
	private static String spielregeln = "Alle Augen werden addiert.";
	
		public void auswerten(Spieler spieler, int ergebnis) {
			spieler.setPunkte(spieler.getPunkte() + ergebnis);
	
		}
		
		public String getSpielregeln() {
			return spielregeln;
		}

}
	
