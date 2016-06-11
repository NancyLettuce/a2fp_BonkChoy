import javax.swing.JOptionPane;

class Bedroom extends Room{
  
  public Bedroom() {
    story = "";
    pass = false;
    code.put("Bed", "123");//placeholder
  }
  
  public void draw() {
    String object = "Bed";//placeholder
    if ( isFound(object) == true ) {
      popup(object);
    }
    else {
      System.out.println("hi");//placeholder
    }
  }
  
  public void play() {
    while (pass == false) {
        if (mouseClicked && mouseX == 
    }
    { }
  }
   
}
