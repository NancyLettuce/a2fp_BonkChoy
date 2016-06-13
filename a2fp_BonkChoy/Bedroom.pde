import javax.swing.JOptionPane;

class Bedroom extends Room{

  Cube cube = new Cube();
  Animation rubik;
  PImage rubiks;
  
  PImage note0,Note0;
  PImage note1,Note1;
  PImage note2,Note2;
  PImage note3,Note3;
  PImage note4,Note4;
  PImage note5,Note5;
  
  PImage keys,Keys;
  
  public Bedroom() {
    story = "";
    room = "Bedroom";
    success = "";
    inventory = new ArrayList<String>();
    inventory.clear();//clears inventory for each level
    code.put("door", "brandy");//placeholder
    sObj.put("400,450,425,475", "door");//placeholder
    sObj.put("840,860,440,460", "note0");//890,400
    sObj.put("600,640,380,400", "note1");//600,380
    sObj.put("400,450,250,290", "note2");//hidden under covers 410,260
    sObj.put("200,400,200,400", "note4");//special with puzzle
    //puzzle.put("Note4"
    sObj.put("200,220,200,220", "note5");//210,210
    
    sObj.put("200,220,550,580", "keys");//200,560
    sObj.put("760,810,250,300", "rubik");//780,275
  }
  
  public void draw() {
    image(note0, 850, 450);
    image(note1, 600, 380);
    image(note5, 210,210);
    image(keys, 200,560);
    //rand.display(600,600);
    if (mousePressed) {
      if (mouseX > 580 && mouseX < 600 && mouseY > 150 && mouseY < 200) {
        if ( inInventory("keys") ) {
          sObj.put("580,600,150,200", "note3");
          unlock();
        }
      }//coord
    }//mousepress
    if ( KeyExist() == true ) {
      if ( isFound(currObj) == true ) {
        popup(currObj, room);
      }
      else {
        addInventory(currObj);
        if (inInventory(currObj) == true) {
          moveInventory();
          mousePressed = false;
          if ( currObj.equals("note0") ) {
            points.add( new ImageCoordinate(invX, invY, Note0, note0) );
          }
          else if ( currObj.equals("note1") ) {
            points.add( new ImageCoordinate(invX, invY, Note1, note1) );
          }
          else if ( currObj.equals("note2") ) {
            points.add( new ImageCoordinate(invX, invY, Note2, note2) );
          }
          else if ( currObj.equals("note3") ) {
            points.add( new ImageCoordinate(invX, invY, Note3, note3) );
          }
          else if ( currObj.equals("note4") ) {
            points.add( new ImageCoordinate(invX, invY, Note4, note4) );
          }
           else if ( currObj.equals("note5") ) {
            points.add( new ImageCoordinate(invX, invY, Note5, note5) );
          }
          else if ( currObj.equals("keys") ) {
            points.add( new ImageCoordinate(invX, invY, Keys, keys) );
          }
          else if ( currObj.equals("rubik") ) {
            points.add( new ImageCoordinate(invX, invY, rubiks, rubiks) );
          }
        }
      }//end else
    }keyExist
  }
  
  
