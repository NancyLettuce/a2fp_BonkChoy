import java.io.*;
import java.util.*;

class Room {
  
  protected Map<String, String> sObj = new HashMap<String, String>();//special obj and coord
  protected Map<String, String> obj = new HashMap<String, String>();//obj and coord
  protected String story;//storyline
  protected boolean bed;//level passed  
  protected boolean live;//level passed 
  protected boolean kit;//level passed 
  
  void draw() {
    rect(20,30,100,100);
  }
  
}
