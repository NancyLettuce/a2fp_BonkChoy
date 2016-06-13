import javax.swing.JOptionPane;

class Kitchen extends Room{
  
  PImage knife;
  PImage cookedChicked;
  
  public Kitchen() {
    story = "";
    room = "Kitchen";
    success = "";
    inventory = new ArrayList<String>();
    inventory.clear();//clears inventory for each level
    //I hope i did this correctly
    code.clear();
    sObj.clear();
    points.clear();
    sObj.put("240, 300, 350, 400", "knife");
    sObj.put("700, 750, 490, 530", "cookedChicked");
  }
  
  public void draw() {
    image("knife", 260, 375);
    image("cookedChicked", 725, 510);
    
    if ( KeyExist() == true ) {
      if ( isFound(currObj) == true ) {
        popup(currObj, room);
      }
      else {
        addInventory(currObj);
        if (inInventory(currObj) == true) {
        }
      }//end else
    }//keyExist
  }
   
}
