class ball {
 
  float x;
  float y;
 
  ball(float _x, float _y){
    x = _x;
    y = _y;
  }
 
  void draw(){
    fill(128);
    ellipse(x,y,25,25);
  }
 
  void move(wall[] walls){
 
    float possibleX = x;
    float possibleY = y;
 
    if (keyPressed==true) {
 
      println(key);
 
      if (key=='a') { 
        possibleX= possibleX - 5;
      } 
      if (key=='d') { 
        possibleX = possibleX + 5;
      } 
      if (key=='w') { 
        possibleY = possibleY - 5;
      } 
      if (key=='s') { 
        possibleY = possibleY + 5;
      }
    }
 
    boolean didCollide = false;
    for(int i = 0; i < walls.length; i++){
      if(possibleX > walls[i].x && possibleX < (walls[i].x + walls[i].w) && possibleY > walls[i].y && possibleY < walls[i].y + walls[i].h){
        didCollide = true;
      }
    }
 
    if(didCollide == false){
      x = possibleX;
      y = possibleY;
    }
 
  }
 
}
