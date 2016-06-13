import javax.swing.JOptionPane;

class Kitchen extends Room{
  PImage knife,knife1;
  PImage cookedChicked,cooked;
  PImage grade, grade1;
  
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
    sObj.put("400,500,0,100", "door");
    code.put("door", "passing");//placeholder
  }
  
  public void draw() {
    image(knife, 260, 375);
    image(cookedChicked, 725,510);
    if ( KeyExist() == true ) {
      if ( isFound(currObj) == true) {//code needed
        story = "Enter the correct code.";
        popup(currObj, room);
        mousePressed= false;
      }
      else {
        if ( inInventory(currObj) == false) {
          addInventory(currObj);
          if ( inInventory("knife") && inInventory("cookedChicked") ) {
            sObj.put("200,300,200,300", "grade");
            image(grade,250,250);
          }
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
          else if ( currObj.equals("grade") ) {            
            points.add( new ImageCoordinate(invX, invY, grade1, grade) );
          } 
        }
      }//else
    }//keyExist
  }
  
}
