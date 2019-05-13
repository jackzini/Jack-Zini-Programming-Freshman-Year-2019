class Rock {
  int x, y; 
  int speed; 
  color c;
  int r; 
  int health = 15;
  boolean isPU;

  Rock(int x, int y, boolean isPU) {
    r = int(random(30, 55)); 
    this.x = x;
    this.y = y;
    this.isPU = isPU;
    speed = int(random(1, 3));    
    c = color(random(111), random(122), 111); 
    health = r;
  }

  void move() {
    y += speed;
  }

  boolean reachedBottom() {
    if (y > height + r*4) { 
      return true;
    } else {
      return false;
    }
  }

  void display() {
    noStroke();
    if (isPU) {
      fill (255, 33, 33);
    } else {
      if (health<10) {
        fill(50);
      } else if (health <(15)) { 
        fill(150);
      } else { 
        fill(200);
      }
    }
    ellipse(x, y, r, r);
    if (isPU) {
      fill(255);
      text("Health", x, y+5);
    }
  }
}
