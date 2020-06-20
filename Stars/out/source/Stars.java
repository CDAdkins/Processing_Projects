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

public class Stars extends PApplet {

Star[] stars = new Star[1000];
float speed;

public void setup() {
    
    //size(1280, 720);
    
    for (int i = 0; i < stars.length; i++) {
        stars[i] = new Star();
    }
}

public void draw() {
    speed = map(mouseX, 0, width, 0, 25);
    background(0);
    translate(width / 2, height / 2);
    translate(0, mouseY / 20);
    for (int i = 0; i < stars.length; i++) {
        stars[i].update();
        stars[i].show();
    }
}

class Star {
    float x;
    float y;
    float z;

    float pz;

    Star() {
        x = random(-width/2, width/2);
        y = random(-height/2, height/2);
        z = random(width/2);
        pz = z;
    }

    public void update() {
        z = z - speed;
        if (z < 1) {
            z = width/2;
            x = random(-width/2, width/2);
            y = random(-height/2, height/2);
            pz = z;
        }
    }

    public void show() {
        fill(255);
        noStroke();
        float sx = map(x / z, 0, 1, 0, width/2);
        float sy = map(y / z, 0, 1, 0, height/2);

        float r = map(z, 0, width/2, 3, 0);
        ellipse(sx, sy, r, r);

        float px = map(x / pz, 0, 1, 0, width/2);
        float py = map(y / pz, 0, 1, 0, height/2);

        pz = z;

        stroke(255);
        line(px, py, sx, sy);
    }
}
  public void settings() {  fullScreen(); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Stars" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
