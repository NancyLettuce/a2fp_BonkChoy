public class Animation {
  PImage[] sprites;
  int amount;
  int frame;
  
  int xcor;//store coord of sprite
  int ycor;
  
  public Animation(String[] images, int count, int wide) {
    amount = count;
    sprites = new PImage[amount];
    for (int ctr = 0; ctr < amount; ctr++) {
      sprites[ctr] = loadImage(images[ctr]);
      sprites[ctr].resize(0,wide);
    }
  }

  void display(int xpos, int ypos) {
    xcor = xpos;//stores coordinates of sprite
    ycor = ypos;
    frame = (frame+1) % amount;
    image(sprites[frame], xpos, ypos);
  }
  
  int getWidth() {
    return sprites[0].width;
  }
  
  int getHeight() {
    return sprites[0].height; 
  }
  
}
