int size = 50;

void setup(){
 size (300, 300);
 smooth();
  
}

void draw(){
  for (int h = 0; h < width; h += size) {
    for (int v = 0; v < height; v += size) { 
      if ((h+v) % 20 ==0) {  
        fill(0, 150, 0); 
      }
      else { 
        fill(0, 0, 150);
      } 
        rect (h, v, size, size);
     }
   }
   PImage img = loadImage("queen.png");
 image(img, 0, 0);
 image(img, 50, 0);
 image(img, 100, 0);
 image(img, 150, 0);
 image(img, 200, 0);
 image(img, 250, 0);
 }

//hashMap


protected Map<Integer,String> pieces = new HashMap<Integer, String>();
pieces.put(0, "0,0");
pieces.put(1, "50,0");
pieces.put(2, "100,0");
pieces.put(3, "150,0");
pieces.put(4, "200,0");
pieces.put(5, "250,0");

//checks to see if there is a piece on the current coordinate
public int KeyExist() {
    ArrayList<String> keys= new ArrayList<String>();
    for (String key: pieces.keySet()) {
      keys.add(key);
    }
    for (int i = 0; i < keys.size(); i++) {
      String[] subKey =  keys.get(i).split(",");
      int x = Integer.parseInt(subKey[0]);
      //int x1 = Integer.parseInt(subKey[1]);
      int y = Integer.parseInt(subKey[2]);
      //int y1 = Integer.parseInt(subKey[3]);
      if (mousePressed) {
        if (mouseX > x && mouseX < x1 && mouseY > y && mouseY < y1) {
          String need = keys.get(i); //the coordinates of our object
          currObj = pieces.get(need);//use coordinates to get value/name of object
          return currObj;
        }
      }
    }
    return -1;
  }