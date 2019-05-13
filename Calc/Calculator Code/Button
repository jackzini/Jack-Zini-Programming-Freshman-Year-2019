class Button {
  //Member variables
  int x, y, w, h, v;
  String op;
  boolean hov, asOperator;


  //multiple constructors for numbers and other buttons
  Button(int x, int y, int w, int h, int v) {
    this.x = x; 
    this.y = y;
    this.w = w;
    this.h = h;
    this.v = v;
    hov = false;
  }

  Button asOperator(String op) {
    this.op = op;
    asOperator= true;
    return this;
  }

  //Display Method
  void display() {
    if (asOperator) {
      rectMode(CENTER);
      if(hov) {
      fill(175);
    } else {
      fill(235);
    }
      rect(x, y, w, h);
      fill(0);
      textAlign(CENTER, CENTER);
      textSize(26);
      text(op, x, y);
    } else {
      rectMode(CENTER);
        if(hov) {
      fill(175);
    } else {
      fill(235);
    }
      rect(x, y, w, h);
      fill(0);
      textAlign(CENTER, CENTER);
      textSize(26);
      text(v, x, y);
    }
  }
  //Hover Method
  void hover() {
    hov = mouseX > x-w/2 && mouseX < x+w/2 && mouseY > y-h/2 && mouseY < y+h/2;
  }
}
