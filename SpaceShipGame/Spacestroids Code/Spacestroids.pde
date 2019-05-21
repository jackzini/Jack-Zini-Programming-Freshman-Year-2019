//Spacestroid Game
//Jack Zini
SpaceShip s1;
Timer timer;
Timer levelTimer;
ArrayList<Rock> rocks;
ArrayList <Laser> lasers;
int rockRate = 1000;
int level = 1;
int score = 0;
boolean play = false;
boolean ticker = false;
int health = 1000;
String ticText = "";
// import processing.sound.*;
//SoundFile laser;
//SoundFile crash;
//SoundFile GameOver;
//Global Variables for Game LOGIC

void setup() {
  size(1000, 1000);
  background(20, 0, 50);
  s1 = new SpaceShip(50);
  lasers = new ArrayList<Laser>();
  rocks = new ArrayList<Rock>();
  timer = new Timer(rockRate);
  levelTimer = new Timer(2000);
  timer.start();
  //laser = new SoundFile(this, "Laser.wav");
  //crash = new SoundFile(this, "Crash.wav");
 // GameOver = new SoundFile(this, "GameOver.wav");
}

void draw() {
  background(15, 0, 50);
  noCursor();

  if (!play) {
    startScreen();
  } else if (play) {

    if (frameCount % 1000 == 10) {
      level++;
      ticText = "Level:" + level;
      ticker();
      rockRate-=50;
      timer.totalTime = rockRate;
    }
    // Add rocks based on timer
    if (timer.isFinished()) {
      if (random(101)>10) {
        rocks.add(new Rock(int(random(width)), -20, false));
      } else {
        rocks.add(new Rock(int(random(width)), -20, true));
      }
      timer.start();
    }
    // Render Rocks
    //for (int i = rocks.size()-1; i>=0; i--) {
    for (int i= rocks.size()-1; i>=0; i--) {
      Rock rock = (Rock) rocks.get(i);
      rock.move();
      rock.display();
      if (rock.reachedBottom()) {
        rocks.remove(rock);
      }

      for (int j = lasers.size()-1; j>=0; j--) {
        Laser l = (Laser) lasers.get(j);
        if (dist(l.x, l.y, rock.x, rock.y) < rock.r) {
          rock.health-=5;
          lasers.remove(l);
          if (rock.health<1) {


            rocks.remove(rock);
            score += 100;
          }
        }
      }
      if (dist(s1.x, s1.y, rock.x, rock.y) < s1.r) {
        s1.health-=10;
        //crash.play();
        if (rock.isPU) {
          rocks.remove(rock);
          s1.health+=20;
        } else {
          rocks.remove(rock);
        }
      }
    }


    for (int i = lasers.size()-1; i>=0; i--) {
      Laser laser = (Laser) lasers.get(i);
      laser.fire();
      laser.display();  
      if (laser.reachedTop()) {
        lasers.remove(laser);
      }
    }
    if (ticker) {
      if (!levelTimer.isFinished()) {
        fill(255, 127);
        textSize(44);
        textAlign(CENTER);
        text(ticText, width/2, height/2);
      } else if (!levelTimer.isFinished() && health < 30) {
        fill(255, 127);
        textSize(44);
        textAlign(CENTER);
        text(ticText, width/2, height/2);
      }
    }
    s1.setLocation(mouseX, mouseY);
    s1.display();
    updateDisplay();
    if (s1.health<1) {
      gameOver();
      //GameOver.play();
    }
  }
}
void updateDisplay() {
  fill(127, 127);
  rect(0, 0, width, 80);
  fill(255);
  text("Score:" +score, 35, 30);
  text("Health:" + s1.health, 45, 50);
  text("Level:" + level, 30, 70);
}

void gameOver() {
  background(0);
  textAlign(CENTER);
  fill(255, 0, 0);
  text("Game Over!", width/2, height/2);
  noLoop();
}

void ticker() {
  levelTimer.start();
  ticker = true;
  if (levelTimer.isFinished());
  ticker = false;
}
void keyPressed() {
  if (key == ' ') {
    lasers.add(new Laser(s1.x+31, s1.y+15, color(random(200, 255), 10, 10)));
    lasers.add(new Laser(s1.x-31, s1.y+15, color(random(200, 255), 10, 10)));
    if (s1.health>0) {
      //laser.play();
    }
  }
}
void startScreen() {
  background(20, 0, 50);
  textAlign(CENTER);
  textSize(15);
  fill(255, 0, 0);
  text("Welcome!", width/2, height/2);
  text("Click to Continue... IF YOU DARE", width/2, height/2+20);

  if (mousePressed) {
    play = true;
  }
}
