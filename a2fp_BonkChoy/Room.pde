import java.io.*;
import java.util.*;
import javax.swing.JOptionPane;

class Room {
  
  protected Map<String, String> sObj = new HashMap<String, String>();//special obj and coord
  protected Map<String, String> obj = new HashMap<String, String>();//obj and coord
  protected String story;//storyline
  protected boolean pass;//level passed
  
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
  
}
