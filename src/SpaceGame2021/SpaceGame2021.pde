// SpaceGame 2020 December
// by Macy Thompson
SpaceShip s1;
ArrayList<Laser> lasers;
ArrayList<Rock> rocks;
ArrayList<Star> stars;
ArrayList<PowerUp> pUps;
Timer timer, puTimer; // puTimer;
int score, pass;
boolean play;



void setup() {
  size(600, 500);
  s1 = new SpaceShip(#9DA3B9);
  lasers = new ArrayList();
  rocks = new ArrayList();
  stars = new ArrayList();
  pUps = new ArrayList();
  timer= new Timer(int(random(1500, 2500)));
  puTimer = new Timer(int(random(5000, 10000)));
  timer.start();
  score = 0;
  pass = 0;
  play = false;
  puTimer.start();
  //puTimer = new Timer(5000, 10000);
  //puTimer.start();
}

void draw() {
  noCursor();
  background(0);
  if (!play) {
    startScreen();
  } else {
    stars.add(new Star(int(random(width)), int(0), color((random(190, 255)))));
    for (int i = 0; i < stars.size(); i++) {
      Star star = stars.get(i);
      star.display();
      star.move();
      if (star.reachedBottom()) {
        stars.remove(star);
      }
    }
    if (timer.isFinished()) {
      rocks.add(new Rock(int (random(width)), -50));
      timer.start();
    }
    s1.display(mouseX, mouseY);

    // Rock Distribution
    for (int i = 0; i < rocks.size(); i++) {
      Rock rock = rocks.get(i);
      rock.display();
      rock.move();
      //Rock vs. Ship Collision
      if (s1.rockIntersect(rock)) {
        s1.health -= 25;

        rocks.remove(rock);
        score+=rock.health;
      }
      //dispose of rocks at bottom
      if (rock.reachedBottom()) {
        pass++;
        rocks.remove(rock);
      }
    }
    s1.display(mouseX, mouseY);

    for (int i = 0; i < lasers.size(); i++) {
      Laser laser = lasers.get(i);
      laser.display();
      laser.fire();
      //Laser vs. Rock Intersection
      for (int j = 0; j < rocks.size(); j++) {
        Rock rock = rocks.get(j);
        if (rock.laserIntersect(laser)) {
          score+=10;
          rock.health-=15;
          lasers.remove(laser);
          if (rock.health<1) {
            rocks.remove(rock);
            score+= 50;
          }
        }
        if (puTimer.isFinished()) {
          pUps.add(new PowerUp(int (random(width)), -50));
          puTimer.start();
        }
      }
      if (laser.reachedTop()) {
        lasers.remove(laser);
      }
    }

    // Power Up Distribution
    for (int i = 0; i < pUps.size(); i++) {
      PowerUp pu = pUps.get(i);
      pu.display();
      pu.move();
      //Power Up and Ship Collision
      if (s1.puIntersect(pu)) {
        //PowerUp Affects
        if (pu.pu ==0) {//Adds health
          s1.health += 100;
          } else if (pu.pu == 1) { //Adds super weapon
          pass -=2;
        } else if (pu.pu == 2) { //Adds 1 Life
          s1.lives += 5;
        }
        pUps.remove(pu);

        if (pu.reachedBottom()) {
          pass++;
          pUps.remove(pu);
        }
      }
    }
  }
  infoPanel();

  //GameOver Logic
  if (s1.health<1 || pass>10){ //&& s1.lives<1 ) {
    play = false;
    gameOver();
  }
}


void mousePressed() {
  lasers.add(new Laser(color(245, 250, 255), s1.x, s1.y));
}

void keyPressed() {
  //use enter/return for firing
}

void startScreen() {
  background(0);
  textAlign(CENTER);
  textSize(40);
  text("Stellar novis itinere", width/2, 60);
  textSize(15);
  text("Welcome to your Space Journey", width/2, height/2);
  text("Click... If you dare!", width/2, height/2+20);
  text("Developed by: Macy Tompson", width/2, height/2+40);

  if (mousePressed) {
    play = true;
  }
}



void infoPanel() {
  fill(128, 128);
  rectMode(CORNER);
  rect(500, 0, width-100, height);
  fill(255);
  textAlign(CENTER);
  text("Health: " + s1.health, 550, 40);
  text("Lives: " + s1.lives, 550, 80);
  text("Level: " + s1.health, 550, 120);
  text("Score: " + score, 550, 160);
  text("Pass: " + pass, 550, 200);
}

void gameOver() {
  background(0);
  textAlign(CENTER);
  textSize(40);
  text("Stellar novis itinere", width/2, 60);
  text("GAME OVER", width/2, height/2);
  text("Final Score:" + score, width/2, height/2+40);


  noLoop();
}
