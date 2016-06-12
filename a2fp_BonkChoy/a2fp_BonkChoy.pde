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
