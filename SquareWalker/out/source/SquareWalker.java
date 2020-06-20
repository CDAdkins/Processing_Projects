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

public class SquareWalker extends PApplet {

float xPos;
float yPos;

final float SIZE = 5;
final float VARIATION = SIZE;
final int c1 = color(100, 180, 100);
final int c2 = color(80, 180, 80);
int direction = 0;
boolean currentColor;


public void setup() {
    
    // fullScreen();
    background(30, 30, 200);

    xPos = random(width);
    yPos = random(height);

    strokeWeight(1.5f);
    stroke(0);
    fill(c1);
    
    rect(xPos, yPos, SIZE, SIZE);
}

public void draw() {
    // background(30, 30, 200);
    for (int i = 0; i < 5; i++) {
        drawBlock();
    }
}

public void drawBlock() {
    chooseDirection();
    chooseColor();
    edgeDetector();
    rect(xPos, yPos, SIZE, SIZE);
}

public void edgeDetector() {
    if (xPos > width || xPos < 0) {
        xPos = random(width);
        yPos = random(height);
    }
    if (yPos > height || yPos < 0) {
        xPos = random(width);
        yPos = random(height);
    }
}

public void chooseDirection() {
    direction = (int)random(0, 4); // 0: up, 1: down, 2: left, 3: right.
    switch(direction) {
        case 0:
            yPos -= VARIATION;
            break;
        case 1:
            yPos += VARIATION;
            break;
        case 2:
            xPos += VARIATION;
            break;
        case 3:
            xPos -= VARIATION;
            break;
    }
}

public void chooseColor() {
    if (currentColor) {
        fill(c1);
        currentColor = false;
    } else {
        fill(c2);
        currentColor = true;
    }
}
  public void settings() {  size(1280, 720); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "SquareWalker" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
