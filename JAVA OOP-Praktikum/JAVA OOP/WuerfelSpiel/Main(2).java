import java.awt.Desktop;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Scanner;

public class Main {
	/**
	 * Haelt die Main Methode
	 * @author Nodira Beresowsky
	 */

	public static void main(String[] args) throws IOException{
		/**
         * Main Methode fuer Einlesen von Nutzerwuensch, Chiffrierung/Dechiffrierung ausfuehren und Speicherung in einer neue Datei
         * @param args Werden nicht verwendet.
         */
		Scanner scanner = new Scanner(System.in); 
		Encode encode = new Encode();
		Decode decode = new Decode();
		Desktop desktop = Desktop.getDesktop();
		System.out.println("Geben Sie der Name des Files an");
		while(scanner.hasNextLine()) {	
		try {	
		String read = scanner.nextLine();
		FileReader fr = new FileReader(new File("").getAbsolutePath() + File.separator + read);
		BufferedReader br = new BufferedReader(fr);
		System.out.println("Geben Sie der Name neues Files an");
		String kuku = scanner.nextLine();
		FileWriter writer = new FileWriter(new File("")+kuku);
		File file = new File(new File("")+kuku);
		String text;		
		while(true)	{
					System.out.println("Key zum Verschluesseln eingeben: ");   
					String key = scanner.nextLine();
					for(int i = 0; i<key.length(); i++){
					 if(!Character.isLetter(key.charAt(i))) {
					      System.out.println("Key muss nur Buchstaben enthalten!!!");
					      key=scanner.nextLine();
					    	}
					 }
					System.out.println("Druecke 1 fuer Encode oder 2 fuer Decode");
					while(true) {
						    try {
									String eingabe=scanner.nextLine();
									String art = eingabe;
									int variant = Integer.parseInt(art);
						if (variant==1) {
										System.out.println("\n           Chiffriertabelle!!!\n");
										encode.createTable();
										try {
											System.out.println("\nHere we go!!!\n");
												do{
														while ((text=br.readLine())!= null) {												
														String enc = encode.encrypt(text, key);	
														System.out.println(enc);
														writer.write(enc+System.getProperty( "line.separator"));			 
														} 
														writer.flush();
														writer.close();
														br.close();
														desktop.open(file);
													}while(text!=null);
													break;
												} finally{
											System.out.println("\nDanke und Tschuess!");
											}
										}
						if (variant==2) {
										System.out.println("\n         Dechiffriertabelle!!!\n");
										encode.createTable();
										try {
										System.out.println("\nHere we go!!!\n");
												do{
														while ((text = br.readLine())!= null) {
														String dec = decode.decrypt(text, key);	
														System.out.println(dec);
														writer.write(dec+System.getProperty( "line.separator" ));
														}
														writer.flush();
														writer.close();
														br.close();
														desktop.open(file);
														} while(text!=null);
													break;	
													}finally{
											System.out.println("\nDanke und Tschuess!");
												}	
											} 
						if(variant!=1||variant!=2) {
								throw new Exception();
										}
									} catch(Exception e) {
										System.out.println("Bitte geben Sie 1 oder 2 ein!");
								} 
							}break;
						}break;	
					}catch(Exception e) {
				System.out.println("Datei nicht gefunden, versuche nochmal");
			} 
		}scanner.close();	 
	} 
}
