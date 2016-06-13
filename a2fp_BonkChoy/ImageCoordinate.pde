class ImageCoordinate {
  int x, y, transparency;
  PImage img;
  PImage old;
 
  ImageCoordinate(int x, int y, PImage img, PImage old) {
    this.x = x;
    this.y = y;
    this.img = img;
    this.old = old;
  }

  void display() {
    image(old, x, y);
    if (dist(mouseX, mouseY, x, y) < 15) {
      ellipse(x, y, 10, 10);
      rect(x-1, y-1, img.width+2, img.height+2);
      img.resize(0,100);
      image(img, x, y);
    }
    else {
      fill(0);
      ellipse(x, y, 10, 10);
      fill(0, transparency);
      transparency += 5;
    }
  }
  
}
