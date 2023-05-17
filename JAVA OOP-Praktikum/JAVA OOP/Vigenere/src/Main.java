import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Scanner;

public class Main {
	
	public static void main(String[] args) throws Exception {

    		Vigenere vig = new Vigenere();
    		Scanner scanner = new Scanner(System.in);
    		System.out.println("Geben Sie bitte der Name des Files an: ");	
    		String filename = scanner.nextLine();
    		  FileReader fr = new FileReader(new File("").getAbsolutePath()+File.separator+filename);
    //		  FileReader fr = new FileReader("/u/nb81nasa/Schreibtisch/trololo.txt");
    		  BufferedReader br = new BufferedReader(fr);
  
        String text = "";	
        		
                
                System.out.println("Key zum verschlüsseln eingeben: ");		
                String key = scanner.nextLine();
                
                System.out.println("Verschlüsseln?? Oder entschlüsseln??  gib 1 oder 2");
                Scanner input=new Scanner(System.in);;
				String eingabe=input.nextLine();
                String art=eingabe;
              	int dibil = Integer.parseInt(art);
              	
              	
                if(dibil==1) {
                System.out.println("\n Chiffrierter Text: " );
                try { 
                	
                	do {
                      text = br.readLine();
                  String enc = vig.encrypt(text, key);
                String dec = vig.decrypt(enc, key); 
                System.out.println(enc);
 
                    } while(text!=null); 
                 
				} catch (Exception e) {
			System.out.println("\n        Chiffriertabelle!");
				 
				 }
            int[][] table = vig.createTable();
                }
               
                else if(dibil==2){
                	
                	System.out.println("\n Dechiffrierter Text: " );
                	try {
                    	do {
                          text = br.readLine();
                    
                    String dec = vig.decrypt(text, key); 
                    System.out.println(dec);
                        } while(text!=null); 
                     
    				} catch (Exception e) {
    			System.out.println("\n        Chiffriertabelle!");
    				 
    				 }
                int[][] table = vig.createTable();
                    }
                }
	
}