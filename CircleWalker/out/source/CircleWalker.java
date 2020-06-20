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

public class CircleWalker extends PApplet {

float xPos;
float yPos;

final float SIZE = 30;
final float VARIATION = 5;
final int c1 = color(255, 255, 255);
final int c2 = color(255, 0, 0);

public void setup() {
    
    //fullScreen();
    background(30, 30, 30);

    xPos = width / 2;
    yPos= height / 2;
    strokeWeight(1.5f);
    stroke(0);
    fill(c1);
    
    ellipse(xPos, yPos, SIZE, SIZE);

    fill(c2);

    ellipse(xPos, yPos, SIZE, SIZE);
    
}

public void draw() {
    fill(c1);
    xPos += random(-VARIATION, VARIATION);
    yPos += random(-VARIATION, VARIATION);
    ellipse(xPos, yPos, SIZE, SIZE);

    fill(c2);

    xPos += random(-VARIATION, VARIATION);
    yPos += random(-VARIATION, VARIATION);
    ellipse(xPos, yPos, SIZE, SIZE);

    // Add if statements for when it reaches the edges.
    // if xPos > width then xPos += -VARIATION; etc.
    //
    // Idea: Make a square variant that either goes up, down, left or right.
    // Only let it move around a grid dependant on its size.
}
  public void settings() {  size(1280, 720); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "CircleWalker" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
