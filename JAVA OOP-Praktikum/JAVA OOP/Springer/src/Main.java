import java.util.Scanner;

public class Main {
   public static void main(String[] args)
   {
	   Scanner input = new Scanner(System.in);
	   System.out.println("Bitte geben Sie Schachbrettgroesse ein: ");
	  
      final int BOARD_SIZE = Integer.parseInt(input.nextLine());
      Board myBoard = new Board (BOARD_SIZE);
      System.out.println("Bitte geben Sie Kooardinate ein: ");
      int x = Integer.parseInt(input.nextLine());
      int y = Integer.parseInt(input.nextLine());
      Point location = new Point (x, y);
      Knight myKnight = new Knight (location, myBoard);
      
      myKnight.findResults();
      //while (myKnight.canMove (myBoard))
        // myKnight.move (myBoard);
      //System.out.println (myBoard);
     // System.out.println ( location.numberOfExits(myKnight, myBoard));
   }// method main
}// class Example8KnightTour
//
