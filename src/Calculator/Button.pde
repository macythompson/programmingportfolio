class Button {
  // Member Variable
  int x, y, w, h;
  color c1, c2, c3, c4;
  String val;
  boolean hover;
  boolean numButton;

  // Constructor
  Button(int tempX, int tempY, int tempW, int tempH, String tempVal, boolean numButton) {
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
    c1 = #ffc905;
    c2 = #ffb405;
    c3 = #abb3db;
    c4 = #8190db;
    val = tempVal;
    hover = false;
    this.numButton = numButton;
  }

  // Display Method
  void display() {
    textSize(15);
    textAlign(CENTER);
    if (numButton) { 
      if (hover) {
        fill(c2);
      } else {
        fill(c1);
      }
    }else {
      if (hover) {
        fill(c3);
      } else {
        fill(c4);
      }
    }
    rect(x, y, w, h);
    fill(0);
    text(val, x+10, y+30);
  } 

  // Hover Method
  void hover() {
    hover = (mouseX>x && mouseY>y && mouseX<x+w && mouseY<y+h);
  }
}
