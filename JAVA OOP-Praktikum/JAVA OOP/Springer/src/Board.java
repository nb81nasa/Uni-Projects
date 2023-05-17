import java.util.List;

public class Board
{
   //===========================================================
   // Supports a few actions on the board.
   //===========================================================
   private final int SIZE;
   private int[][] timeOfVisit;
   private int numberOfVisitedPoints;
 
   
  public Board (int BOARD_SIZE)
   {
      SIZE = BOARD_SIZE;
      timeOfVisit = new int [SIZE] [SIZE];
      for (int i=0; i < SIZE; i++)     // superfluous
         for (int j=0; j < SIZE; j++)
            timeOfVisit [i][j] = 0;
      numberOfVisitedPoints = 0;
   }// method Board

   int getSize()
   {return SIZE;}

 public  int getTimeOfVisit (int x, int y)
   {return timeOfVisit[x][y];}

 public  void placeKnight (Point P) // change board information as knight moves
   {
      numberOfVisitedPoints++;
      timeOfVisit [P.getX()] [P.getY()] = numberOfVisitedPoints;
   }// method placeKnight
  
 public String toString()
   { 
      String result = "";
      char letter = 'A';
    	for (int row=SIZE; row >0; row--)
      {
         for (int col=0; col <SIZE; col++)
         {
        System.out.print(letter + "" + row + " ");
             if (timeOfVisit [col][row-1] < 10)
               result += " ";
            result += timeOfVisit [col][row-1] + " ";
    
             letter++;
            }
  letter = 'A' ;

         result += "\n";
         
     System.out.print("\n");   
     
     
     }return result;
     }// method toString
   
   
   public String result() 
   {String ergebnis = "";
	  	for (int row=SIZE-1; row >=0; row--)
	      {
	         for (int col=0; col <SIZE; col++)
	         {
	        	 
				while(timeOfVisit!=null) {
	        		 ergebnis += " ";
	        		 ergebnis+=timeOfVisit [col][row] + " ";
				} 
	         }
		   
	   }return ergebnis;
		
   }
   
   @Override
   public boolean equals(Object o) {
	   
	   if(o == null) {
		   return true;
	   }
	   if(o ==null || !(o instanceof Board)) {
		   return false;
	   }
	   Board b = (Board) o;
	   
	   return this.timeOfVisit.equals(b.getTimeOfVisit());
	   
   }
   public int[][] getTimeOfVisit() {
	   return this.timeOfVisit;
   }
}// class Board

