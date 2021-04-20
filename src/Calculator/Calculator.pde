Button[] buttons = new Button[22]; //<>//
String displayVal = "0.0";
String op = ""; // operator to use in a calculation
boolean left = true;
float r = 0.0; //what is right of the operator
float l = 0.0; //what is left of the operator
float result = 0.0; //the answer
int currentNum = 0;

void setup() {
  size(480, 640);
  displayVal = "0";
  op = "";
  left = true;
  r = 0.0;
  l = 0.0;
  result = 0.0;
  buttons[0] = new Button(30, 75, 45, 45, "  +/-", false);
  buttons[1] = new Button(140, 140, 80, 80, "8", true);
  buttons[2] = new Button(260, 140, 80, 80, "9", true);
  buttons[3] = new Button(20, 240, 80, 80, "4", true);
  buttons[4] = new Button(140, 240, 80, 80, "5", true);
  buttons[5] = new Button(260, 240, 80, 80, "6", true);
  buttons[6] = new Button(20, 340, 80, 80, "1", true);
  buttons[7] = new Button(140, 340, 80, 80, "2", true);
  buttons[8] = new Button(260, 340, 80, 80, "3", true);
  buttons[9] = new Button(20, 440, 80, 80, "0", true);
  buttons[10] = new Button(380, 440, 80, 80, "÷", false);
  buttons[11] = new Button(380, 340, 80, 80, "*", false);
  buttons[12] = new Button(380, 240, 80, 80, "-", false);
  buttons[13] = new Button(380, 140, 80, 80, "+", false);
  buttons[14] = new Button(140, 440, 80, 80, ".", false);
  buttons[15] = new Button(260, 440, 80, 80, "x²", false);
  buttons[16] = new Button(380, 540, 80, 80, "=", false);
  buttons[17] = new Button(260, 540, 80, 80, "√", false);
  buttons[18] = new Button(140, 540, 80, 80, "cos", false);
  buttons[19] = new Button(20, 540, 80, 80, "sin", false);
  buttons[20] = new Button(30, 15, 45, 45, "C", false);
  buttons[21] = new Button(20, 140, 80, 80, "7", true);
}
void draw() {
  background(127);
  for (int i=0; i<buttons.length; i++) {
    buttons[i].display();
    buttons[i].hover();
  }
  updateDisplay();
}
void updateDisplay() {
  rectMode(CORNER);
  fill(255);
  rect(115, 35, 330, 70, 15);
  fill(0);
  rect(120, 40, 320, 60, 15);
  textSize(20);
  fill(255);

  //Render Scaling Text
  if (displayVal.length()<13) {
    textSize(32);
  } else if (displayVal.length()<14) {
    textSize(28);
  } else if (displayVal.length()<15) {
    textSize(26);
  } else if (displayVal.length()<17) {
    textSize(24);
  } else if (displayVal.length()<19) {
    textSize(22);
  } else if (displayVal.length()<21) {
    textSize(20);
  } else if (displayVal.length()<23) {
    textSize(18);
  } else if (displayVal.length()<25) {
    textSize(16);
  } else {
    textSize(14);
  }
  textAlign(RIGHT);
  text(displayVal, width - 80, 80);
}

void mouseReleased() {
  println("L:" + l + "R:" + r + "Op:" + op);
  println("Result:" + result + "Left:" +left);
  for (int i=0; i<buttons.length; i++) {
    if (buttons[i].hover && displayVal.length()<20) {
      if (left) {//Left Number
        if (displayVal.equals("0")) {
          displayVal = (buttons[i].val);
          l=float(displayVal);
        } else {
          displayVal += (buttons[i].val);
          l=float(displayVal);
        }
      } else {
        if (displayVal.equals("0")) {
          displayVal = (buttons[i].val);
          l=float(displayVal);
        } else { 
          displayVal += (buttons[i].val);
          r=float(displayVal);
        }
      }
    }
  }
}
void keyPressed() {
  println("KEY:" + key + "keyCode:" + keyCode);
  
  if(key == '0') {
    handleEvent("0", true);
  }
}

String handleEvent(String val, boolean num) {
  if(left & num){
    
  }
  return val;
}

void performCalulation() {
  if (op.equals("+")) {
    result = l + r;
  } else if (op.equals ("-")) {
    result = l - r;
  } else if (op.equals ("*")) {
    result = l * r;
  } else if (op.equals ("÷")) {
    result = l / r;
  }
  l = result;
  displayVal = str(result);
  left = true;
}
