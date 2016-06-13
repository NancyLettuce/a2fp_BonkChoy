person player;
wall[] walls; 
end g;

void setup() {
 
  size(750, 750);
 
  player = new person(50,300);
  g = new end(700, 700);
 
  walls = new wall[11];
  walls[0] = new wall(250,0,40,500);
  walls[1] = new wall(500, 250,40,500);
  walls[2] = new wall(80, 0, 20, 190);
  walls[3] = new wall(80, 200, 20, 500);
  walls[4] = new wall(120, 0, 20, 200);
  walls[5] = new wall(120, 250, 20, 300);
  walls[6] = new wall(120, 560, 20, 300);
  walls[7] = new wall(140, 300, 348, 20);
  walls[8] = new wall(140, 400, 345, 20);
  walls[9] = new wall(140, 500, 340, 20);
  walls[10] = new wall(140, 600, 380, 20);
} 

void draw() {
 
  background(#E25E75); 
  noStroke(); 
 
  player.draw();
  g.draw(); 
  
  player.move(walls, g);
 
  for(int i = 0; i < walls.length; i++){
    walls[i].draw();
  }
  
  if (player.completed == true) {noLoop();}

}
