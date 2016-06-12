//Each number corresponds to a different method, which is a puzzle in of itself. The draw() method will activate the approriate puzzle.
class Puzzle {
  
  public int puzzleNum;
  
  public Puzzle() {puzzleNum = 0;}
  public Puzzle(int Num) {puzzleNum = Num;}
  
  public voud draw() {
  }
  
  public void picPuzzle() { 
    PicPiece[][] board = new PicPiece[4][4];
    int counter = 0;
    for (int i = 0; i < 4; i ++) {
      for (int j = 0; j < 4; j++) {
        if (i == 0 && j == 0) {board[i][j] == new PicPiece(counter, 0, 0, false);}
        board[i][j] = new PicPiece(counter, i, j, true);
        }
      }
    boolean passed = false;
    
    //displayboard;
    for (int i = 0; i < 4; i ++) {
      for (int j = 0; j < 4; j++) {
        stroke (board[i][j].getColor());
        }
      }
    
    while (passed == false;) {
      if (mouseClicked()) {
        PicPuzzle a = board[mouseX][mouseY];
        if (a.getHasPiece() == true;) {
          if (keyPressed && key == 'w') {a.swap(board[a.getX_cor()][a.getY_cor() + 1]);}
          if (keyPressed && key == 'd') {a.swap(board[a.getX_cor() + 1][a.getY_cor()]);}
          if (keyPressed && key == 's') {a.swap(board[a.getX_cor()][a.getY_cor() - 1]);}
          if (keyPressed && key == 'a') {a.swap(board[a.getX_cor() - 1][a.getY_cor()]);}
        }
      }
      if {//x_cor and y_cor of all the images; }
    }
  }
  
  
}
