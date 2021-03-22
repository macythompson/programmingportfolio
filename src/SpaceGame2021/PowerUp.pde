class PowerUp {
  //member variables
  int x, y, speed, r, pu;
  String[] puInfo = {"Health", "Super", "+1 Life"};
  PImage PlusOneLife;
  PImage Health;
  PImage Pass;


  //constructor
  PowerUp(int x, int y) {
    r=80;
    this.x = x;
    this.y = y;
    speed = int(random(1, 5));
    pu = int(random(3));
    PlusOneLife = loadImage("New Piskel (6).png");
    Health = loadImage("New Piskel-2.png.png");
    Pass = loadImage("pass-3.png.png");
  }
  void move() {
    y+=speed;
  }

  boolean reachedBottom() {
    if (y> height + r*4) {
      return true;
    } else { 
      return false;
    }
  }


  //member methods
  void display() {
    switch(pu) {
    case 0://Health
      image(Health, x, y);
      break;
    case 1: // Pass
      image(Pass, x, y);
      break;
    case 2: // +1 Life
      image(PlusOneLife, x, y);
      break;
    }
  }
}
