float xPos;
float yPos;

final float SIZE = 5;
final float VARIATION = SIZE;
final color c1 = color(100, 180, 100);
final color c2 = color(80, 180, 80);
int direction = 0;
boolean currentColor;


void setup() {
    size(1280, 720);
    // fullScreen();
    background(30, 30, 200);

    xPos = random(width);
    yPos = random(height);

    strokeWeight(1.5);
    stroke(0);
    fill(c1);
    
    rect(xPos, yPos, SIZE, SIZE);
}

void draw() {
    // background(30, 30, 200);
    for (int i = 0; i < 5; i++) {
        drawBlock();
    }
}

void drawBlock() {
    chooseDirection();
    chooseColor();
    edgeDetector();
    rect(xPos, yPos, SIZE, SIZE);
}

void edgeDetector() {
    if (xPos > width || xPos < 0) {
        xPos = random(width);
        yPos = random(height);
    }
    if (yPos > height || yPos < 0) {
        xPos = random(width);
        yPos = random(height);
    }
}

void chooseDirection() {
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

void chooseColor() {
    if (currentColor) {
        fill(c1);
        currentColor = false;
    } else {
        fill(c2);
        currentColor = true;
    }
}