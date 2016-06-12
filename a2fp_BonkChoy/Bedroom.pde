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
        if (mouseClicked && KeyExist?()) {
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
   
  public boolean KeyExist? () {
    String[] keys = sObj.keySet().toArray();
    for (int i = 0; i < keys.length; i++) {
      String[] subKey = keys[i].split(",");
      if (mouseX < subKey[0] && mouseX > subKey[1] && mouseY < subKey[2] && mouseY > subKey[3])
        {return true;}
    }
    return false;
  }
}
