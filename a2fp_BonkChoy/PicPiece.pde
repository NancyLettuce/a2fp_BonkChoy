class PicPiece {
  
  private int _pieceNum;
  private int X_cor;
  private int Y_cor;
  private boolean hasPiece;
  private color c;
  
  public PicPiece(int num, int x, int y, boolean a, color C) {
    _pieceNum = num;
    X_cor = x;
    Y_cor = y;
    hasPiece = a;
    c = C;
  }
  
  public int getNum() {return _pieceNum;}
  public int getX() {return X_cor;}
  public int getY() {return Y_cor;}
  public boolean getHasPiece() {return hasPiece;}
  public getColor() {return c;}
  
  public void setX(int x) {X_cor = x;}
  public void setY(int y) {Y_cor = y;}
  
  public void swap(PicPiece other) {
    tmpX = this.X_cor;
    tmpY = this.Y_cor;
    this.X_cor = other.X_cor;
    this.Y_cor = other.Y_cor;
    other.X_cor = tmpX
    other.Y_cor; = tmpY;
  }
  
}

