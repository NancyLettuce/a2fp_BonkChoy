import javax.swing.JOptionPane;

class Bedroom extends Room{

  Sprite hi = new Sprite();
  Animation rand;
  
  PImage note0;
  PImage note1;
  PImage note2;
  PImage note3;
  PImage note4;
  PImage note5;
  
  public Bedroom() {
    story = "";
    room = "Bedroom";
    success = "";
    inventory = new ArrayList<String>();
    inventory.clear();//clears inventory for each level
    code.put("door", "brandy");//placeholder
    sObj.put("400,450,425,475", "door");//placeholder
    sObj.put("840,860,440,460", "note0");//890,400
    sObj.put("590,610,370,390", "note1");//600,380
    sObj.put("400,450,250,290", "note2");//hidden under covers 410,260
    sObj.put("200,400,200,400", "note3");//IN A CHEST with key
    sObj.put("200,400,200,400", "note4");//special with puzzle
    //puzzle.put("Note4"
    sObj.put("200,220,200,220", "note5");//210,210
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
  
  
