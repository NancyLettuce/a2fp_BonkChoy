import javax.swing.JOptionPane;

class Kitchen extends Room{
  
  public Kitchen() {
    story = "";
    room = "Kitchen";
    success = "";
    inventory = new ArrayList<String>();
    inventory.clear();//clears inventory for each level
  }
  
  public void draw() {
    if ( KeyExist() == true ) {
      if ( isFound(currObj) == true ) {
        popup(currObj, room);
      }
      else {
        addInventory(currObj);
      }//end else
    }//keyExist
  }
   
}
