                   class SpaceShip {
  // Member Variables
  int x, y;
  int r;
  color c1, c2, c3;
  //float speed;
  int health = 100;
  // Constructor
 
 void setLocation( int x, int y) {
    this.x = x;
    this.y = y; 
   }
  
  SpaceShip(int r) {
    this.r = r;
    c1 = color(50,10,10, 150);
    x = 0;
    y = 0;
  }
  
  

  // Member methods
  void display() {    
    rectMode(CORNER);
    noCursor();
    fill( random(255), random(0), random(0), random(255));
    ellipse(x+15, y+80, 15, 30);
    ellipse(x-15, y+80, 15, 30);
    fill(150);
    stroke(150);
    strokeWeight(4);
    line(x-30, y+40, x-30, y+15);
    line(x+30, y+40, x+30, y+15);

    stroke(1);
    strokeWeight(2);
    ellipse(x, y, 50, 100);
    rect(x-20, y+40, 10, 30);
    rect(x+10, y+40, 10, 30);
    strokeWeight(0);
    fill(255, 0, 0);
    triangle(x, y-65, x-20, y-35, x+20, y-35);
    triangle(x-22.5, y+20, x-40, y+50, x-15, y+40);
    triangle(x+22.5, y+20, x+40, y+50, x+15, y+40);
    fill(0, 0, 150);
    ellipse(x, y, 25, 50);
    strokeWeight(2);
    stroke(150);
    line(x-20, y, x+20, y);
  }
}
