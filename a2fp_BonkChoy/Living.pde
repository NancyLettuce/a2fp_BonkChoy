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
        System.out.println("hi");//placeholder
      }
    }
  }
   
}
