import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class ImageProcessing extends PApplet {

public void setup() {
    
}

public void draw() {
    rect(width/2, height/2, 50, 50);
}
  public void settings() {  size(500, 300); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "ImageProcessing" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
