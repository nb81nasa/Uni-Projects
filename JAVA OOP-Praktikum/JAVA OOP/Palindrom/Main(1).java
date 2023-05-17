
import java.math.BigInteger;
import java.util.Scanner;

public class Main {
	/**
	 * Main startet das Programm. Hier wird die Zahl gefragt. 
	 * Falls es nicht die Zahl angegeben wird, sondern Zeichen oder Buchstabe, wird Program meckern
	 * @param args
	 */
	public static void main(String[] args) {
		 
		while (true){
			try { 
		SpiegelZahl numb = new SpiegelZahl();
		System.out.println("Bitte geben Sie die Zahl ein: ");
		Scanner in = new Scanner(System.in);
		BigInteger zahl = in.nextBigInteger();
		numb.checkPalindrom(zahl);
		 break;
			} 
			
			catch (Exception e) {
		      System.out.println("Something went wrong.");
		    }
		}
	}
}

