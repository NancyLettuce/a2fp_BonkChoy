import javax.swing.JOptionPane;

class Bedroom extends Room{
  
  public Bedroom() {
    story = "";
    room = "Bedroom";
    success = "";
    code.put("Bed", "123");//placeholder
    sObj.put("0,200,0,200", "Bed");//placeholder
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
  
  public void play() {
    while (pass == false) {
        if (mouseClicked() && KeyExist?()) {
          //Add item to inventory }
        else if (mouseClicked() && //something to identify puzzle) {
          //run puzzle method
        }
    }
    System.outprintln ("Level Completed")
    { }
  }
  
  public void puzzle1() {
    if (mouseClicked() 
  }
}
