import java.util.Scanner;

public class Spieler implements Comparable {

	private String name;
	private int punkte;
	
	public Spieler (String name, int spunkte) {
		this.name =name;
		this.punkte = spunkte;
	}
	
	public String getName() {
		return name;
	}
	
	public int getPunkte() {
		return punkte;
	}

	public void setPunkte (int Apunkte) {
		this.punkte = Apunkte;
	}
	
	public int naechstesZug(Wuerfel wuerfel) {
		
		System.out.println(name+" ist am Zug. Druecke ENTER zum wuerfeln!");
		Scanner sc = new Scanner(System.in);
		sc.nextLine();
		
		int wurf = wuerfel.wuerfeln();
		System.out.println("Gewuerfelte Zahl: "+wurf);

		return wurf;
	}
	
	public int compareTo(Object spieler) {
		
	    if (spieler instanceof Spieler)
		    return Integer.compare(((Spieler)spieler).getPunkte(), getPunkte());
	    else
	        return 0;
	    
	}

}
