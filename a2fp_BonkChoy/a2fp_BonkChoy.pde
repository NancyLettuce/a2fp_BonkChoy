Bedroom bed = new Bedroom();
Kitchen food = new Kitchen();
Living tv = new Living();

PImage bedroom;
PImage kitchen;
PImage livingroom;

void setup() {
  size(912,680);
  
  bedroom = loadImage("bedroom.jpg");
  bedroom.resize(0, 600);
 
  livingroom = loadImage("bedroom.jpg");//placeholder
  livingroom.resize(0, 600);
  
  kitchen = loadImage("bedroom.jpg");//placeholder
  kitchen.resize(0, 600);
  
  bed.rand = new Animation(bed.hi.sprites, 4, 20);//sample sprite
  bed.note0 = loadImage("Yorkie.png");
  bed.note0.resize(0,20);
  bed.note1 = loadImage("Armadillo.png");
  bed.note1.resize(0,20);
  bed.note2 = loadImage("Rat.png");
  bed.note2.resize(0,20);
  bed.note3 = loadImage("Narwhal.png");
  bed.note3.resize(0,20);
  bed.note4 = loadImage("Bat.png");
  bed.note4.resize(0,20);
  bed.note5 = loadImage("Dog.png");
  bed.note5.resize(0,20);
  
  bed.keys = loadImage("key.png");
  bed.keys.resize(0,20);
}

void draw() {
  if (bed.success.equals("")) {//if no levels passed
    image(bedroom, 0, 0);
    bed.draw();
    if ( bed.success.equals("Bedroom") ) {//if bedroom passed
      image(livingroom, 0, 0);
      tv.draw();
      if ( tv.success.equals("Living") ) {//if living room passed
        image(kitchen, 0, 0);
        food.draw();
      }//end kitchen
    }//end living
  }//end bedroom
}
