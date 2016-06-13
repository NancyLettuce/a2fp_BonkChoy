import javax.swing.JOptionPane;

class Kitchen extends Room{
  PImage knife,knife1;
  PImage cookedChicked,cooked;
  
  public Kitchen() {
    story = "";
    room = "Kitchen";
    success = "";
    inventory = new HashMap<String,String>();
    inventory.clear();//clears inventory for each level
    code.clear();
    sObj.clear();
    points.clear();
    sObj.put("240,300,350,400", "knife");
    sObj.put("700,750,490,530", "cookedChicked");
  }
  
  public void draw() {
    image(knife, 260, 375);
    image(cookedChicked, 725,510);
    if ( KeyExist() == true ) {
      if ( isFound(currObj) == true ) {
        popup(currObj,room);
        mousePressed= false;
      }
      else {
        if ( inInventory(currObj) == false) {
          addInventory(currObj);
        }
        if (inInventory(currObj) == true) {
          mousePressed= false;
          moveInventory(currObj);
          if ( currObj.equals("knife") ) {
            points.add( new ImageCoordinate(invX, invY, knife1, knife) );
          }
          else if ( currObj.equals("cookedChicked") ) {            
            points.add( new ImageCoordinate(invX, invY, cooked, cookedChicked) );
          }  
        }
      }//else
    }//keyExist
  }
  
}
