class Rock {
  //member variables
  int x, y, health, speed, rad;
  PImage asteroid;

  //constructor
  Rock(int x, int y) {
    this.x = x;
    this.y = y;
    health = 40;
    rad = 25;
    speed = int(random(2, 5));
    asteroid = loadImage("Rock.png");
  }

  boolean reachedBottom() {
    if (y>height+50) {
      return true;
    } else {
      return false;
    }
  }

  void move() {
    y+=speed;
  }


  //member methods
  void display() {
    image(asteroid, x, y);
    //if(health>40){
    //noStroke();
    //fill(#A58B48);
    //ellipse(x, y, health, health);
    //}

  }
  // method will detect rock vs. laser
  boolean laserIntersect(Laser laser) {
    float distance = dist(x, y, laser.x, laser.y);
    if (distance < rad + laser.rad) {
      return true;
    } else {
      return false;
    }
  }
}
