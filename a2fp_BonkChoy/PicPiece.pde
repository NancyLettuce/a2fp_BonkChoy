class PicPiece {
  
  private int _pieceNum;
  private int X_cor;
  private Y_cor;
  
  public PicPiece(int num, int x, int y) {
    _pieceNum = num;
    X_cor = x;
    Y_cor = y;
  }
  
  public int getNum() {return _pieceNum;}
  public int getX() {return X_cor;}
  public int getY() {return Y_cor;}
  
  public void setX(int x) {X_cor = x;}
  public void setY(int y) {Y_cor = y;}
  
}

