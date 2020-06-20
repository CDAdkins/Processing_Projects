// Declaring the buttons.
Button bZero;
Button bDot;
Button bEquals;
Button bOne;
Button bTwo;
Button bThree;
Button bPlus;
Button bFour;
Button bFive;
Button bSix;
Button bMinus;
Button bSeven;
Button bEight;
Button bNine;
Button bMultiply;
Button bAC; // Clear button.
Button bPosNeg; // Positive / Negative Toggle.
Button bPercent;
Button bDivide;
String answer;


void setup() {
    // Setting up the window.
    //size(365, 450);
    size(325, 450);
    background(0);
    stroke(255);
    fill(10);
    PFont font;


    // Initializing some constant values.
    final float bWidth = width/4;
    final float bHeight = height/6.5;

    // Initializing our buttons.
    bZero = new Button("0", 0, height - bHeight, bWidth * 2, bHeight);
    bDot = new Button(".", bWidth * 2, height - bHeight, bWidth, bHeight);
    bEquals = new Button("=", bWidth * 3, height - bHeight, bWidth, bHeight);
    bOne = new Button("1", 0, height - bHeight * 2, bWidth, bHeight);
    bTwo = new Button("2", bWidth, height - bHeight * 2, bWidth, bHeight);
    bThree = new Button("3", bWidth * 2, height - bHeight * 2, bWidth, bHeight);
    bPlus = new Button("+", bWidth * 3, height - bHeight * 2, bWidth, bHeight);
    bFour = new Button("4", 0, height - bHeight * 3, bWidth, bHeight);
    bFive = new Button("5", bWidth, height - bHeight * 3, bWidth, bHeight);
    bSix = new Button("6", bWidth * 2, height - bHeight * 3, bWidth, bHeight);
    bMinus = new Button("-", bWidth * 3, height - bHeight * 3, bWidth, bHeight);
    bSeven = new Button("7", 0, height - bHeight * 4, bWidth, bHeight);
    bEight = new Button("8", bWidth, height - bHeight * 4, bWidth, bHeight);
    bNine = new Button("9", bWidth * 2, height - bHeight * 4, bWidth, bHeight);
    bMultiply = new Button("x", bWidth * 3, height - bHeight * 4, bWidth, bHeight);
    bAC = new Button("AC", 0, height - bHeight * 5, bWidth, bHeight);
    bPosNeg = new Button("+/-", bWidth, height - bHeight * 5, bWidth, bHeight);
    bPercent = new Button("%", bWidth * 2, height - bHeight * 5, bWidth, bHeight);
    bDivide = new Button("/", bWidth * 3, height - bHeight * 5, bWidth, bHeight);
    answer = "0";

    bEquals.myColor   = color(240, 115, 0);
    bPlus.myColor     = color(240, 115, 0);
    bMinus.myColor    = color(240, 115, 0);
    bMultiply.myColor = color(240, 115, 0);
    bDivide.myColor   = color(240, 115, 0);

    bEquals.fontColor   = color(255);
    bPlus.fontColor     = color(255);
    bMinus.fontColor    = color(255);
    bMultiply.fontColor = color(255);
    bDivide.fontColor   = color(255);

}

void draw() {
    background(25);
    if(bOne.MouseIsOver() && mousePressed) {
        answer += "1";
    }
    bZero.Draw();
    bDot.Draw();
    bOne.Draw();
    bTwo.Draw();
    bThree.Draw();
    bFour.Draw();
    bFive.Draw();
    bSix.Draw();
    bSeven.Draw();
    bEight.Draw();
    bNine.Draw();
    bAC.Draw();
    bPosNeg.Draw();
    bPercent.Draw();

    bDivide.Draw();
    bMultiply.Draw();
    bMinus.Draw();
    bPlus.Draw();
    bEquals.Draw();

    fill(255);
    textSize(50);
    text(answer, width/2, height / 8);
    textSize(20);

}