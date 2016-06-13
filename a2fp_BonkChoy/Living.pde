import javax.swing.JOptionPane;

public class Living extends Room{
  
  PImage keys,Keys;
  PImage ax,ax1;
  PImage book0, b1984;
  PImage book1, fah;
  PImage paper, paper1;
  
  public Living() {
    story = "";
    success = "";
    room = "Living";
    inventory = new HashMap<String,String>();
    inventory.clear();//clears inventory for each level
    code.clear();
    sObj.clear();
    points.clear();
    code.put("box", "1533");
    sObj.put("600,700,400,500", "box");//chest
    sObj.put("595,640,275,305", "book0");//1984 600,290
    sObj.put("75,150,470,530", "ax");
  }
  
  public void draw() {
    image(book0, 600, 290);
    image(ax, 100, 500);
    if (success.equals(room)) {
      return;
    }
    if (mousePressed) {
      if (mouseX > 300 && mouseX < 450 && mouseY > 290 && mouseY < 375) {
        if ( inInventory("ax") ) {
          story = "You have split the table in half with the axe!";
          inventory.remove("ax");
          inventory.put("filler", "1,2,3,4");
          sObj.put("300,450,290,375", "book1");
          unlock(currObj);
        }
      }//axe and table
      else if (mouseX > 250 && mouseX < 450 && mouseY > 100 && mouseY < 150) {
        if ( inInventory("book1") ) {
          story = "You have thrown the book into the fire!";
          inventory.remove("book1");
          inventory.put("more", "1,2,3,4");
          sObj.put("250,450,100,150", "paper");
          unlock(currObj);
        }
      }//book and fire
      else if (mouseX > 100 && mouseX < 225 && mouseY > 100 && mouseY < 200) {
        if ( inInventory("keys") ) {
          story = "You've unlocked the door!";
          success = room;
          unlock(currObj);
        }
      }//exit
    }//mousepress 
    if ( KeyExist() == true ) {   
      if ( isFound(currObj) == true ) {
        story = "Enter the correct 4 digit code.";
        popup(currObj, room);
        mousePressed= false;
        System.out.println(success);
        if ( currObj.equals("box") && success.equals("yay")) {
          sObj.put("600,700,400,500", "keys");//adds key to sObj
        }
      }
      else {
        if ( inInventory(currObj) == false) {
          addInventory(currObj);
        }
        if (inInventory(currObj) == true) {
          mousePressed= false;
          moveInventory(currObj);
          if ( currObj.equals("ax") ) {
            points.add( new ImageCoordinate(invX, invY, ax1, ax) );
          }
          else if ( currObj.equals("book0") ) {            
            points.add( new ImageCoordinate(invX, invY, b1984, book0) );
          }  
          else if ( currObj.equals("book1") ) {            
            points.add( new ImageCoordinate(invX, invY, fah, book1) );
          }
          else if ( currObj.equals("keys") ) {
            points.add( new ImageCoordinate(invX, invY, Keys, keys) );
          }
          else if ( currObj.equals("paper") ) {
            points.add( new ImageCoordinate(invX, invY, paper1, paper) );
          }
        }
      }//else
    }//keyExist
  }
   
}
