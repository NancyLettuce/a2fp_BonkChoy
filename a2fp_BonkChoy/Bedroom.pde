import javax.swing.JOptionPane;

class Bedroom extends Room{
  
  person player;
  wall[] walls; 
  end g;
  PImage bedr;
  
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

  //sprite rubik's cube
  
  public Bedroom() {
    story = "";
    room = "Bedroom";
    success = "";
    inventory = new HashMap<String,String>();
    inventory.clear();//clears inventory for each level
    code.clear();
    sObj.clear();
    code.put("door", "brandy");//placeholder
    sObj.put("400,450,425,475", "door");//placeholder
    sObj.put("840,860,440,460", "note0");//890,400
    sObj.put("600,640,380,400", "note1");//600,380
    sObj.put("400,450,250,290", "note2");//hidden under covers 410,260
    //sObj.put("580,600,150,200", "note3");//IN A CHEST with key
    //sObj.put("300,400,300,400", "puzzle");//puzzle
    //puzzle.put("Note4"
    sObj.put("200,220,200,220", "note5");//210,210
    
    sObj.put("200,250,550,580", "keys");//200,560
    sObj.put("760,810,250,300", "rubik");//780,275
    
  }
  
  public void draw() {
    boolean puzzle = false;
    rubik.display(780,275); 
    image(note0, 850, 450);
    image(note1, 600, 380);
    image(note5, 210,210);
    image(keys, 200,560);
    //chest section
    if (mousePressed) {
      if (mouseX > 580 && mouseX < 600 && mouseY > 150 && mouseY < 200) {
        if ( inInventory("keys") ) {
          story = "You have unlocked the box!";
          sObj.put("580,600,150,200", "note3");
          unlock(currObj);
        }
      }//coord
      else if (mouseX > 300 && mouseX < 400 && mouseY > 300 && mouseY < 400) {
        puzzle = true;
      }//for puzzle

    }//mousepress
    if (mouseX > 300 && mouseX < 400 && mouseY > 300 && mouseY < 400) {
      background(#E25E75); 
      noStroke(); 
       
      player.draw();
      g.draw(); 
        
      player.move(walls, g);
       
      for(int i = 0; i < walls.length; i++){
        walls[i].draw();
      } 
      if (player.completed == true) {
        sObj.put("300,400,300,400", "note4");
        redraw();
      }
    }
    
    if ( KeyExist() == true) {
      if ( isFound(currObj) == true) {//code needed
        story = "Enter the correct code.";
        popup(currObj, room);
        mousePressed= false;
      }
      else {
        if ( inInventory(currObj) == false) {
          addInventory(currObj);
        }
        if (inInventory(currObj) == true) {
          moveInventory(currObj);
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
    }//keyExist
    
  }
  
  public void redraw() {
    int x; int y;
    image(bedr, 0, 0);
    rubik.display(780,275); 
    image(note0, 850, 450);
    image(note1, 600, 380);
    image(note5, 210,210);
    image(keys, 200,560);
    
    for (String s: inventory.keySet()) {
      String coord = inventory.get(s);
      String[] subKey =  coord.split(",");
      x = Integer.parseInt(subKey[0]);
      y = Integer.parseInt(subKey[1]);
      if (s.equals("note0")) {
        points.add( new ImageCoordinate(x, y, Note0, note0) );
      }
      else if (s.equals("note1")) {
        points.add( new ImageCoordinate(x, y, Note1, note1) );
      }
      else if (s.equals("note2")) {
        points.add( new ImageCoordinate(x, y, Note2, note2) );
      }
      else if (s.equals("note3")) {
        points.add( new ImageCoordinate(x, y, Note3, note3) );
      }
      else if (s.equals("note4")) {
        points.add( new ImageCoordinate(x, y, Note4, note4) );
      }
      else if (s.equals("note5")) {
        points.add( new ImageCoordinate(x, y, Note5, note5) );
      }
      else if (s.equals("keys")) {
        points.add( new ImageCoordinate(x, y, Keys, keys) );
      }
    }

      
      if (mousePressed) {
        System.out.println("kms");
        if (mouseX > 580 && mouseX < 600 && mouseY > 150 && mouseY < 200) {
          if ( inInventory("keys") ) {
            story = "You have unlocked the box!";
            sObj.put("580,600,150,200", "note3");
            unlock(currObj);
          }
        }//coord
  
      }//mousepress
      
       if ( KeyExist() == true) {
        if ( isFound(currObj) == true) {//code needed
          story = "Enter the correct code.";
          popup(currObj, room);
          mousePressed= false;
        }
        else {
          if ( inInventory(currObj) == false) {
            addInventory(currObj);
          }
          if (inInventory(currObj) == true) {
            moveInventory(currObj);
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
      }//keyExist

  }

}
