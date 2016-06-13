person player;
wall[] walls; 
 
void setup() {
 
  size(750, 750);
 
  player = new person(50,300);
 
  walls = new wall[3];
  walls[0] = new wall(250,0,40,500);
  walls[1] = new wall(500,250,40,500);
  walls[2] = new wall(40, 20, 20, 500);
 
} 
void draw() {
 
  background(255, 255, 255); 
  noStroke(); 
 
  player.draw();
  player.move(walls);
 
  for(int i = 0; i < walls.length; i++){
    walls[i].draw();
  }
 
