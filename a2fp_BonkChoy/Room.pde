import java.io.*;
import java.util.*;
import javax.swing.JOptionPane;

class Room {
  
  //key written as "x,x1,y,y1"
  protected Map<String, String> sObj = new HashMap<String, String>();//coord , special obj
  protected Map<String, String> obj = new HashMap<String, String>();//obj , coord
  protected Map<String, String> code = new HashMap<String, String>();//special obj , required password
  protected String story;//storyline
  protected boolean pass;//level passed
  
  protected String currObj;//object you are clicking on
  
  void draw() {
    rect(20,30,100,100);
  }
  
  public void popup(String obj) {
    JOptionPane pane= new JOptionPane("message", JOptionPane.OK_CANCEL_OPTION);
    final String pass = pane.showInputDialog("Please enter the correct code.");
    if (pass == null) {
      pane.getRootFrame().dispose();  
    }
    else if ("".equals(pass)) {//if nothing entered
      pane.getRootFrame().dispose(); 
    }
    else if ( code.get(obj).equals(pass) ) {//if matched key to value
      pane.showMessageDialog(null, "Correct Code.", "Info", pane.INFORMATION_MESSAGE);
      pane.getRootFrame().dispose();
    }
    else {//when press cancel
      pane.getRootFrame().dispose();
    }
  }
  
  //Does the object you clicked on protected by code????
  public boolean isFound(String obj) {
    ArrayList<String> names = new ArrayList<String>();
    for (String key: code.keySet()) {
      names.add(key);
    }
    for (int ctr = 0; ctr < names.size(); ctr ++) {
      if ( obj.equals( names.get(ctr)) ) {
      //if the object is one that needs password input
        return true;
      }
    }
    return false;
  }
  
  //Is the object you clicked on special???
  //preserves it for use in other cases
  public boolean KeyExist() {
    ArrayList<String> keys= new ArrayList<String>();
    for (String key: sObj.keySet()) {
      keys.add(key);
    }
    for (int i = 0; i < keys.size(); i++) {
      String[] subKey =  keys.get(i).split(",");
      int x = Integer.parseInt(subKey[0]);
      int x1 = Integer.parseInt(subKey[1]);
      int y = Integer.parseInt(subKey[2]);
      int y1 = Integer.parseInt(subKey[3]);
      if (mouseX < x && mouseX > x1 && mouseY < y && mouseY > y1) {
        String need = keys.get(i);//the coordinates of our object
        currObj = sObj.get(need);//use coordinates to get value/name of object
        return true;
      }
    }
    return false;
  }
}
