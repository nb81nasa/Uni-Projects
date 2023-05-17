import java.io.IOException;
import java.util.IllegalFormatException;
import java.util.Scanner;

import javax.script.ScriptException;


public abstract  class Spiel {
	
	private int rundenAnzahl;
	private int spielerAnzahl;
	private Spieler spieler[];
	private int aktuelleRunde;
	private Wuerfel wuerfel;
	
	
	public Spiel(Spieler spieler[], int rundenAnzahl ) {
		
		this.spieler=spieler;
		this.aktuelleRunde=aktuelleRunde;
		this.wuerfel = new Wuerfel(6);
		this.rundenAnzahl = rundenAnzahl;
	}

	
	public int getAktuelleRunde(){
		return aktuelleRunde;
	}
	
	public int getRundenAnzahl(){
		return rundenAnzahl;
	}

	public int getSpielerAnzahl() {
		return spielerAnzahl;
	}
	
	public static Spiel erstelleSpiel() {
		
		Spiel spiel;
		int variante;
		int rundenAnzahl;
		int spielerAnzahl;
		Spieler spieler[];
		
		spielerAnzahl = berechneSpieleranzahl();
		spieler = spielerName(spielerAnzahl);
		rundenAnzahl = ermittleRundenanzahl();
		variante = waehleVariante();
		
		switch (variante) {
		case 1: spiel = new Variante1(spieler, rundenAnzahl); break;
		case 2:	spiel = new Variante2(spieler, rundenAnzahl); break;
		case 3: spiel = new Variante3(spieler, rundenAnzahl); break;
		default: spiel = null;
	}
		return spiel;
	
	
}
	
	private static int berechneSpieleranzahl() {
		boolean spieleranzahlAkzeptiert = false;
		int zahl=0;
		
		while (!spieleranzahlAkzeptiert) {
			System.out.println("Geben Sie die Spieleranzahl ein: ");
			Scanner scanner = new Scanner(System.in);
			try {	// Wenn ungueltige Zeichen eingegeben werden
				zahl = scanner.nextInt();
				if (zahl > 100) {
					System.out.println("Die Spieleranzahl darf nicht mehr als 100 betragen.");
				} else if(zahl < 2) {
					System.out.println("Es muss zumindest zwei Spieler geben.");
				} else {
					spieleranzahlAkzeptiert = true;
				}
			} catch (Exception e) {
				System.out.println("Bitte geben Sie eine Zahl ein.");
			}
		}
		return zahl;
	}
	
	private static Spieler[] spielerName(int spielerAnzahl){
		Spieler spieler[] =  new Spieler[spielerAnzahl];
		for(int i=0; i<spielerAnzahl; i++) {
			System.out.println("Spieler geben Sie Ihre Name ein: ");
			Scanner scanner = new Scanner(System.in);
	
				String name = scanner.next();
			spieler[i] = new Spieler(name, 0);
			
		}
		return spieler;
	
}
	
	private static  int waehleVariante() {
		boolean varianteAkzeptiert = false;
		int zahl = 0; 
		
		while (!varianteAkzeptiert) {
			 System.out.print("Waelen Sie eine Spielvariante: ");
			 Scanner scanner = new Scanner(System.in);
			
			
			try {	// Falls ungueltige Zeichen eingegeben werden
				zahl = scanner.nextInt();
				if (zahl > 3 || zahl < 1) {
					System.out.println("Geben Sie 1, 2 oder 3 ein.");
				} else {
					varianteAkzeptiert = true;
				}
			} catch (NumberFormatException e) {
				System.out.println("Bitte geben Sie eine Zahl ein.");
				}
	
			}return zahl;
		}
		

	private static int ermittleRundenanzahl() {
		boolean rundenanzahlAkzeptiert = false;
		int zahl = 0; 
		
		while (!rundenanzahlAkzeptiert) {
			System.out.println("Geben Sie die Rundenanzahl ein: ");
			Scanner scanner = new Scanner(System.in);
			
			try {	// Falls ungueltige Zeichen eingegeben werden
				zahl = scanner.nextInt();
				if (zahl > 100) {
					System.out.println("Die Rundenanzahl darf nicht mehr als 100 betragen.");
				} else if(zahl < 1) {
					System.out.println("Es muss mindestens eine Runde geben.");
				} else {
					rundenanzahlAkzeptiert = true;
				}
			} catch (Exception e) {
				System.out.println("Bitte geben Sie eine Zahl ein.");
			}
		}
		return zahl;
	}
	
	public void starte() {
		boolean Weiterspielen = true;
		boolean EingabeAkzeptiert = true;
		
		do {
			System.out.println("Spielregeln: " + getSpielregeln());
			
			for (int i = 1; i <= rundenAnzahl; i++) {
				System.out.println("Runde " + i + " beginnt.");
				starteRunde();
			}
			spielEnde();
			
			do {
				System.out.println("Moechten Sie weiter spielen? ja/nein");
				Scanner sc = new Scanner(System.in);
				String input = sc.next();
				EingabeAkzeptiert = true;
				
				if(input.equals("ja")) {
					Weiterspielen = true;
					System.out.println("Es wird weiter gespielt");
				} else if(input.equals("nein")) {
					Weiterspielen = false;
					System.out.println("Das Spiel wird beendet.");
				} else {
					System.out.println("Bitte geben Sie ja oder nein ein.");
					EingabeAkzeptiert = false; 
				}
			} while (!EingabeAkzeptiert);
		} while (Weiterspielen);
	}
	
	public abstract String getSpielregeln();

	/**
	 * Laesst alle Spieler einmal wuerfeln
	 */
	public void starteRunde() {
		for (int i = 0; i < spieler.length; i ++) {
			int gewuerfelteZahl = spieler[i].naechstesZug(wuerfel);
			auswerten(spieler[i], gewuerfelteZahl);
			System.out.println(spieler[i].getName() + " hat jetzt " + spieler[i].getPunkte() + " Punkte");
		}
		return;
	}

	/** Errechnet die Punktzahl nach einem Wurf
	 * @param spieler Spieler, der gewuerfelt hat
	 * @param ergebnis Zahl, die gewuerfelt wurde
	 */
	public abstract void auswerten(Spieler spieler, int ergebnis)  ;

	/**gibt die Rangfolge der Spieler und die erreichte Augensumme aus
	 */
	public void spielEnde() {
		
		System.out.println("Das Spiel ist vorbei.");
		System.out.println(" - Rangliste - ");
		System.out.println("Platz\tName\t\terreichte Augensumme");
		for (int i = 0; i < spieler.length; i ++) {
			System.out.println((i+1) + "\t" + spieler[i].getName() + "\t\t" + spieler[i].getPunkte());
		}
		return;
	}
	
	
}