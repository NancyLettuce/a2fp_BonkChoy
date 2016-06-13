class wall {
 
  float x;
  float y;
  float w;
  float h;
 
  wall(float _x, float _y, float _w, float _h){
    x = _x;
    y = _y;
    w = _w;
    h = _h;
  }
 
  void draw(){
    fill(0);
    rect(x,y,w,h);
  }
 
}
