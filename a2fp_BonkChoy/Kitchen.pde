import javax.swing.JOptionPane;

class Kitchen extends Room{
  
  public Kitchen() {
    story = "";
    room = "Kitchen";
    success = "";
  }
  
  public void draw() {
    if ( KeyExist() == true ) {
      if ( isFound(currObj) == true ) {
        popup(currObj, room);
      }
      else {
        addInventory(currObj);
      }
    }
  }
   
}
