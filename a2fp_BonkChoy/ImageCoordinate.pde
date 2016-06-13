class ImageCoordinate {
  int x, y, transparency;
  PImage img;
 
  ImageCoordinate(int x, int y, PImage img) {
    this.x = x;
    this.y = y;
    this.img = img;
  }

  when you hover over the coordinate, a larger version of the image pops up
  void display() {
    if (dist(mouseX, mouseY, x, y) < 15) {
      ellipse(x, y, 10, 10);
      rect(x-1, y-1, img.width+2, img.height+2);
      img.resize(0,50);
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
