class Star {

  //member variables
  int x, y, dia;
  color c;

  //constructor
  Star(int x, int y, color c) {
    this.c = c;
    this.x = x;
    this.y = y;
    dia = int(random(1, 3));
  }

  boolean reachedBottom() {
    if (y>height+50) {
      return true;
    } else {
      return false;
    }
  }

  void move() {
    y+=random(2, 10);
  }

  //member methods
  void display() {
    fill(c);
    noStroke();
    ellipse(x, y, dia, dia);
  }
}
