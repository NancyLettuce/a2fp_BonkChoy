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
    else if ("".equals(pass)) {
      pane.getRootFrame().dispose(); 
    }
    else if ( code.get(obj).equals(pass) ) {
      pane.showMessageDialog(null, "Correct Code.", "Info", pane.INFORMATION_MESSAGE);
      pane.getRootFrame().dispose();
    }
    else {
      pane.getRootFrame().dispose();
    }
  }
  
}
