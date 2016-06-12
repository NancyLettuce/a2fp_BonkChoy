import javax.swing.JOptionPane;

class Living extends Room{
  
  public Living() {
    story = "";
    success = "";
    room = "Living";
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
