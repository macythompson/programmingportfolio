class SpaceShip {
  //member variables
  int x, y, health, lives, rad;
  color c;
  float easing;
  PImage PlayerShip;

  //constructor
  SpaceShip(color c) {
    x = 0;
    y = 0;
    health = 100;
    lives = 5;
    this.c = c;
    easing = 0.05;
    rad = 25;
    PlayerShip = loadImage("playerShip (6).png");
  }

  //member methods
  void display(int x, int y) {
    this.x = x;
    this.y = y;
    imageMode(CENTER);
    image(PlayerShip, x, y);
    //Alignment
    //noStroke();
    //rectMode(CENTER);
    ////Body of ship
    //fill(c);
    //rect(x, y, 40, 65);
    ////Top of Ship
    //fill(c);
    //triangle(x, y-60, x-35, y+20, x+35, y+20);
    //fill(100);
    //rect(x, y-28, 30, 10);
    ////Shooters
    //stroke(247, 228, 57);
    //line(x-22, y-30, x-22, y-60);
    //line(x+21, y-30, x+21, y-60);
    //noStroke();
    //fill(c);
    //rect(x-20, y-40, 10, 40);
    //rect(x+20, y-40, 10, 40);
    //rect(x+20, y-50, 5, 40);
    //rect(x-20, y-50, 5, 40);
    ////Wings
    //fill(89, 12, 12);
    //triangle(x-10, y-15, x-50, y+30, x-10, y+40);
    //triangle(x+10, y-15, x+50, y+30, x+10, y+40);
    //fill(255);
  }

  // method will detect rock vs. ship
  boolean rockIntersect(Rock rock) {
    float distance = dist(x, y, rock.x, rock.y);
    if (distance < rad + rock.rad) {
      return true;
    } else {
      return false;
    }
  }
   boolean puIntersect(PowerUp pu) {
    // Calculate distance
    float distance = dist(x, y, pu.x, pu.y); 

    // Compare distance to sum of radii
    if (distance < rad + pu.r) { 
      return true;
    } else {
      return false;
    }
  }
}
