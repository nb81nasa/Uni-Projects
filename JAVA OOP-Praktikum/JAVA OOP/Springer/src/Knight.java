import java.util.ArrayList;
import java.util.List;
import java.util.Stack;

public class Knight
{
   //===========================================================
   // Supports a few actions of the knight.
   //===========================================================
   private final int [][] STEPS = {{2, 1}, {1, 2}, {-1, 2}, {-2, 1},
                                   {-2, -1}, {-1, -2}, {1, -2}, {2, -1}};
   private Point position;
   private Board myBoard;
   private List<Board> foundBoards = new ArrayList<>();
   private Stack<Point> poss= new Stack<>();
   
   public Knight (Point location, Board myBoard)
   {	
	   this.myBoard = myBoard;
	   placeAt (location, myBoard);}

   int[][] getSteps()
   {return STEPS;}

   public void findResults() {
	   move();
	   System.out.println(myBoard);
   }
   
   private void placeAt (Point location, Board myBoard) // place the knight
   {
      position = new Point (location);
      myBoard.placeKnight (position);
   }// method placeAt

   boolean canMove (Board myBoard) // check if the knight can move at all
   {return position.numberOfExits (this, myBoard) > 0;}

   // Moves the knight. First we check all possible continuations to see
   // what is the minimal number of exits from each of them. Then we find
   // all moves leading to a point with such a number of exits. Finally,
   // we select randomly one of these points.
   void move ()
   {
      int minExits = minNumberOfExits (myBoard);
      int possibilities = numberOfHardPoints (minExits, myBoard);
      for(int i = 1; i <= possibilities; i++) {
    	  Point next = newLocation (i, myBoard, minExits);
    	  poss.push(next);
      }
      placeAt (poss.pop(), myBoard);
      if(!poss.empty()) {
    	  move();
      }
   }// method move

   // Finds minimal number of exits from any of the points the knight can
   // move to.
   private int minNumberOfExits (Board myBoard)
   {
      int exits = STEPS.length + 1;
      for (int i=0; i < STEPS.length; i++)
      {
         Point next = position.translate (getSteps()[i]);
         if (next.inBoard (myBoard) && !next.visited (myBoard))
            exits = Math.min (exits, next.numberOfExits (this, myBoard));
      }
      return exits;
   }// method minNumberOfExits

   // Finds the number of points with a minimal possible number of
   // continuations at the next stage.
   private int numberOfHardPoints (int exits, Board myBoard)
   {
      int number = 0;
      for (int i=0; i < STEPS.length; i++)
      {
         Point next = position.translate (getSteps()[i]);
         if (next.inBoard (myBoard) && !next.visited (myBoard)
                && next.numberOfExits (this, myBoard) == exits)
            number++;
         
      }
    
      return number;
   }// method numberOfHardPoints

   // Selects the point the knight moves to.
   private Point newLocation (int which, Board myBoard, int exits)
   {
      int number = 0, i = 0;
      Point next = new Point();
     
     
      while (number <which)
      {
         next = position.translate (getSteps()[i]);
         if (next.inBoard (myBoard) && !next.visited (myBoard)
                && next.numberOfExits (this, myBoard) == exits)
            number++;
        
         i++;
      }
  
      return next;
   }// method newLocation
   
   
   
}// class Knight


