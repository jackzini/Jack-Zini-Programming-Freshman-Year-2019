class Laser {
  int x, y, w, h;
  float speed;
  color c;


  Laser(int x, int y, color c) {
    this.x = x;
    this.y = y;
    w = 5;
    h = 15;
    this.c = c;
    speed = 10;
  }

  void fire() {
    y -= speed;
  }
  boolean reachedTop() {
    if (y<0) {
      return true;
    } else {
      return false;
    }
  }
//boolean hitRock() {
//  if (dist(l.x, l.y, rock.x, rock.y) < rock.r) {
//       return true; 
//       lasers.remove(lasers);
//      } else{
        

  void display() {
    rectMode(CENTER);
    fill(c);
    noStroke();
    rect(x, y, w, h);
  }
}
