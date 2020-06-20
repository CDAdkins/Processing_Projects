float xPos;
float yPos;

final float SIZE = 30;
final float VARIATION = 5;
final color c1 = color(255, 255, 255);
final color c2 = color(255, 0, 0);

void setup() {
    size(1280, 720);
    //fullScreen();
    background(30, 30, 30);

    xPos = width / 2;
    yPos= height / 2;
    strokeWeight(1.5);
    stroke(0);
    fill(c1);
    
    ellipse(xPos, yPos, SIZE, SIZE);

    fill(c2);

    ellipse(xPos, yPos, SIZE, SIZE);
    
}

void draw() {
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