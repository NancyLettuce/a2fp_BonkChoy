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
    image(note0, 850, 450);
    image(note1, 600, 380);
    image(note5, 210,210);
    //rand.display(600,600);
    if ( KeyExist() == true ) {
      if ( isFound(currObj) == true ) {
        popup(currObj, room);
      }
      else {
        addInventory(currObj);
        if (inInventory(currObj) == true) {
          moveInventory();
          if ( currObj.equals("note0") ) {
            image(note0, invX, invY);
          }
          else if ( currObj.equals("note1") ) {
            image(note1, invX, invY);
          }
          else if ( currObj.equals("note2") ) {
            image(note2, invX, invY);
            image(note2, 410, 260);
          }
          else if ( currObj.equals("note3") ) {
            image(note3, invX, invY);
          }
          else if ( currObj.equals("note4") ) {
            image(note4, invX, invY);
          }
           else if ( currObj.equals("note5") ) {
            image(note5, invX, invY);
          }
        }
      }//end else
    }keyExist
  }
  
  
