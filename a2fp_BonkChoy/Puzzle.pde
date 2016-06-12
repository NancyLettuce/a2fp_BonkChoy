//Each number corresponds to a different method, which is a puzzle in of itself. The draw() method will activate the approriate puzzle.
class Puzzle {
  
  public int puzzleNum;
  
  public Puzzle() {puzzleNum = 0;}
  public Puzzle(int Num) {puzzleNum = Num;}
  
  public voud draw() {
  }
  
  public void picPuzzle() { 
    //600 pixel boardsize
    PicPiece[][] board = new PicPiece[600][600];
    int counter = 0;
    for (int i = 0; i < 600; i += 150) {
      for (int j = 0; j < 600; j += 150) {
        if (i == 0 && j == 0) {board[i][j] == new PicPiece(counter, 0, 0, false);}
        board[i][j] = new PicPiece(counter, i, j, true);
        }
      }
    boolean passed = false;
    
    //displayboard;
    for (int i = 0; i < 600; i += 150) {
      for (int j = 0; j < 600; j += 150) {
        board[i][j].display());
        }
      }
    
    while (passed == false;) {
      //test to see where the piece has landed.
      if (mouseClicked()) {
        int x = mouseX;
        int y = mouseY;
        PicPiece a = null;
        for (int i = 0; i < 600; i += 150) {
          for (int j =  0; j < 600; j += 150) {
              if (x > board[i][j].getX() && x < board[i][j].getX() + 150 && y > board[i][j].getY() && y < board[i][j].getY() + 150) {
                a = board[i][j]; }
          }
        }
        
        if (a.getHasPiece() == true;) {
          if (keyPressed && key == 'w' && board[a.getX_cor()][a.getY_cor() + 150].getHasPiece() == false) 
            {a.swap(board[a.getX_cor()][a.getY_cor() + 150]);}
          if (keyPressed && key == 'd' && board[a.getX_cor() + 150][a.getY_cor()].getHasPiece() == false) 
            {a.swap(board[a.getX_cor() + 150][a.getY_cor()]);}
          if (keyPressed && key == 's' && board[a.getX_cor()][a.getY_cor() - 150].getHasPiece() == false) 
            {a.swap(board[a.getX_cor()][a.getY_cor() - 150]);}
          if (keyPressed && key == 'a'&& board[a.getX_cor()-150][a.getY_cor()].getHasPiece() == false) 
            {a.swap(board[a.getX_cor() - 150][a.getY_cor()]);}
        }
      }
      
      //Testing for correct answer
      if {//x_cor and y_cor of all the images; }
    }
  }
  
  
}
