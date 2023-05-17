
public class Vigenere {
    public static int[][] createTable()  {
            	int[][] table=new int[26][26];
                int rem=0, n=26;
                int value;
                for(int i=0;i<n;i++) {
                    for(int j=0;j<n;j++)  {
                        value=j+rem;
                        if(value>25)  {
                            value=value-26;
                        }
                        table[i][j]=(char) (value+65);
                    }   rem++;
                }
                
                for(int i=0;i<n;i++)  {
                    for(int j=0;j<n;j++)   {
                       char b=(char)(table[i][j]);
                        System.out.print(b);
                        System.out.print(" ");
                        }
                      System.out.println();
                }  return table;
              }
            
            static String encrypt(String text, String key) {
               String res = "";
               text = text.toLowerCase();
               text= text.replace("ä", "ae");
               text=text.replaceAll("ö", "oe");
               text=text.replaceAll("ü", "ue");
               text= text.replaceAll("ß", "ss");
               key = key.toLowerCase();
               key= key.replace("ä", "ae");
               key=key.replaceAll("ö", "oe");
               key=key.replaceAll("ü", "ue");
               key= key.replaceAll("ß", "ss");
            
            //   System.out.println("\nUmlaute killer    "+text);
                for (int i = 0, j = 0; i < text.length(); i++) {
                   char c = text.charAt(i);
                   	if (c < 'a' || c > 'z') {
                	   res+=((char)c);
                  }
                   	else if(c > 'a' || c < 'z') {
                    	res += ((char)((c + key.charAt(j) - 2 * 'a') % 26 + 'a'));
                    	j = ++j % key.length();
                   } 
                 
                } return res;
            }     
            
            static String decrypt(String text, String key) {
                String res = "";
                key = key.toLowerCase();
                key= key.replace("ä", "ae");
                key=key.replaceAll("ö", "oe");
                key=key.replaceAll("ü", "ue");
                key= key.replaceAll("ß", "ss");
                text = text.toLowerCase();
                text= text.replace("ä", "ae");
                text=text.replaceAll("ö", "oe");
                text=text.replaceAll("ü", "ue");
                text= text.replaceAll("ß", "ss");
                
                 for (int i = 0, j = 0; i < text.length(); i++) {
                    char c = text.charAt(i);
                    	if (c < 'a' || c > 'z') {
                 	   res+=((char)c);
                   }
                    	else if(c > 'a' || c < 'z') {
                     	res += ((char)((c - key.charAt(j) + 26) % 26 + 'a'));
                     	j = ++j % key.length();
                    } 
                    
                 } return res;
             }     
}