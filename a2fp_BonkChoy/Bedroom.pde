import javax.swing.JOptionPane;

class Bedroom extends Room{

  Sprite hi = new Sprite();
  Animation rand;
  
  public Bedroom() {
    story = "";
    room = "Bedroom";
    success = "";
    inventory = new ArrayList<String>();
    inventory.clear();//clears inventory for each level
    code.put("Door", "brandy");//placeholder
    sObj.put("0,200,0,200", "Door");//placeholder
    sObj.put("200,400,200,400", "Note");//placeholder
  }
  
  public void draw() {
    rand.display(600,600);
    if ( KeyExist() == true ) {
      if ( isFound(currObj) == true ) {
        popup(currObj, room);
      }
      else {
        if (addInventory(currObj) == true) {
          rand.display(invX,invY);
        }
      }
    }
  }
  
  
