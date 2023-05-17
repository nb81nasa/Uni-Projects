
import java.math.BigInteger;

/**
 * Das Hauptteil des Programms. Hier wird die Zahl in einen Palindrom umwandelt
 */

public class SpiegelZahl {
	/**
	 * Konstruktor des Programs. Hier wird die maximale Anzahl der Iterationen initialisiert
	 */
	private int iterations = 1000;
	
	/**
	 * Hier wird Spiegelzahl erzeugt
	 * @param zahl
	 * @return reverse
	 */
	public BigInteger reverse(BigInteger zahl) {
		
		BigInteger reverse = BigInteger.ZERO;
		
		while (zahl.compareTo(BigInteger.ZERO) == 1) {
			
			BigInteger remainder = zahl.mod(BigInteger.valueOf(10));
			reverse = reverse.multiply(BigInteger.valueOf(10)).add(remainder);
			zahl = zahl.divide(BigInteger.valueOf(10));
		}
		return reverse;
		
	}
		
	/**
	 * Hier wird ueberprueft, ob die Zahl ein Palindromzahl ist
	 * @param zahl
	 * @return true oder false
	 */
		public boolean isPalindrom(final BigInteger zahl) {
			System.out.println("Palindrome?: " + zahl);
			
			if(zahl.equals(reverse(zahl))) {
				System.out.println("Ja! ");
				return true;
			}
			System.out.println("nein  :( ");	
			return false;	
			}
		
	/**
	 * Hier wird die Zahl und Spiegelzahl solange addiert, bis das Ergebnis eine Palindromzahl ist,
	 *  und auch die Anzahl der Schritte sowie der Rechenweg bis zur Spiegelzahl angezeigt
	 * @param zahl
	 * @return true oder false
	 */
		public boolean checkPalindrom(BigInteger zahl) {
			for(int i=1; i<iterations+1; i++) {
				System.out.println("Schritt: " + i );
				System.out.println(zahl +"+"+ reverse(zahl)+ "=" +zahl.add(reverse(zahl)));
				zahl = zahl.add(reverse(zahl));
				if(isPalindrom(zahl)) {
					
				return true;	
				}
			} 
			return false;
		}
}	