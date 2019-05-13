String displayVal, leftVal, rightVal;
char opVal;
float result;
boolean firstNum, dec;

void setup() {
  size(250, 300);
  displayVal = "";
  leftVal = "";
  rightVal = "";
  opVal = ' ';
  result = 0.0;
  firstNum = true;
  dec = false;
  numBtns[0] = new Button(100, 275, 100, 50, 0);
  numBtns[1] = new Button(75, 225, 50, 50, 1);
  numBtns[2] = new Button(125, 225, 50, 50, 2);
  numBtns[3] = new Button(175, 225, 50, 50, 3);
  numBtns[4] = new Button(75, 175, 50, 50, 4);
  numBtns[5] = new Button(125, 175, 50, 50, 5);
  numBtns[6] = new Button(175, 175, 50, 50, 6);
  numBtns[7] = new Button(75, 125, 50, 50, 7);
  numBtns[8] = new Button(125, 125, 50, 50, 8);
  numBtns[9] = new Button(175, 125, 50, 50, 9);
  opBtns[0] = new Button(225, 225, 50, 50, 0).asOperator("+");
  opBtns[1] = new Button(175, 275, 50, 50, 0).asOperator(".");
  opBtns[2] = new Button(225, 275, 50, 50, 0).asOperator("=");
  opBtns[3] = new Button(225, 175, 50, 50, 0).asOperator("-");
  opBtns[4]  = new Button(225, 125, 50, 50, 0).asOperator("x");
  opBtns[5] = new Button(225, 75, 50, 50, 0).asOperator("÷");
  opBtns[6] = new Button(175, 75, 50, 50, 0).asOperator("%");
  opBtns[7]  = new Button(125, 75, 50, 50, 0).asOperator("+/-");
  opBtns[8] = new Button(50, 75, 100, 50, 0).asOperator("C");
  opBtns[9] = new Button(25, 125, 50, 50, 0).asOperator("√");
  opBtns[10] = new Button(25, 175, 50, 50, 0).asOperator("x²");
  opBtns[11] = new Button(25, 225, 50, 50, 0).asOperator("x³");
  opBtns[12] = new Button(25, 275, 50, 50, 0).asOperator("π");
}




void draw() {
  background(0, 35, 100);
  for (int i=0; i<numBtns.length; i++) {
    numBtns[i].display();
    numBtns[i].hover();
  }
  for (int i=0; i<opBtns.length; i++) {
    opBtns[i].display();
    opBtns[i].hover();
  }
  updateDisplay();
}


void updateDisplay() {
  rectMode(CENTER);
  fill(230, 230, 255);
  rect(125, 25, 250, 50, 5);
  fill(0);
  textSize(20);
  textAlign(RIGHT);
  text(displayVal, 230, 25);
}

void keyPressed() {
  if (key == '1') {
    handlekeyPress(true, "1");
  } else if (key == '2') {
    handlekeyPress(true, "2");
  } else if (key == '3') {
    handlekeyPress(true, "3");
  } else if (key == '4') {
    handlekeyPress(true, "4");
  } else if (key == '5') {
    handlekeyPress(true, "5");
  } else if (key == '6') {
    handlekeyPress(true, "6");
  } else if (key == '7') {
    handlekeyPress(true, "7");
  } else if (key == '8') {
    handlekeyPress(true, "8");
  } else if (key == '9') {
    handlekeyPress(true, "9");
  } else if (key == '+') {
    handlekeyPress(false, "+");
  } else if (key == '-') {
    handlekeyPress(true, "-");
  } else if (key == 'X') {
    handlekeyPress(true, "*");
  } else if (key == '/') {
    handlekeyPress(true, "÷");
  }
}

void handlekeyPress(boolean num, String val) {
  if (num) {
    if (firstNum) {
      leftVal += val;
      displayVal = leftVal;
    } else {
      rightVal +=
        displayVal= rightVal;
    }
  }
}


void mouseReleased() {
  for (int i=0; i<numBtns.length; i++) {
    if (numBtns[i].hov) {
      if (firstNum) {
        leftVal += str(numBtns[i].v);
        displayVal = leftVal;
      } else {
        rightVal += str(numBtns[i].v);
        displayVal = rightVal;
      }
    }
  }
  for (int i=0; i<opBtns.length; i++) {
    if (opBtns[i].hov) {
      if (opBtns[i].op == "+") {
        opVal = '+';
        firstNum = false;
      } else if (opBtns[i].op == "-") {
        opVal = '-';
        firstNum = false;
      } else if (opBtns[i].op == "x") {
        opVal = 'x';
        firstNum = false;
      } else if (opBtns[i].op == "÷") {
        opVal = '÷';
        firstNum = false;
      } else if (opBtns[i].op == "=") {
        performCalc();
      } else if (opBtns[i].op == "C") {
        clearApp();
      } else if (opBtns[i].op == ".") {
        if (!dec) {
          if (firstNum) {
            leftVal += opBtns[i].op;
            displayVal = leftVal;
            dec = true;
          } else {
            rightVal += opBtns[i].op;
            displayVal = rightVal;
            dec = true;
          }
        }
      } else if (opBtns[i].op == "+/-") {
        if (firstNum) {
          leftVal = str(float(leftVal) * -1);
          displayVal = leftVal;
        } else {
          rightVal = str(float(rightVal) * -1);
          displayVal = rightVal;
        }
      } else if (opBtns[i].op == "√") {
        if (firstNum) {
          leftVal = str(sqrt(float(leftVal)));
          displayVal = leftVal;
        } else {
          rightVal = str(sqrt(float(rightVal)));
          displayVal = rightVal;
        }
      } else if (opBtns[i].op == "π") {
        leftVal = str(PI);
        displayVal = leftVal;
      } else if (opBtns[i].op == "x²") {
        if (firstNum) {
          leftVal = str(sq(float( leftVal)));
          displayVal = leftVal;
        } else {
          rightVal = str(sq(float(rightVal)));
          displayVal = rightVal;
        }
      } else if (opBtns[i].op == "x³") {
        if (firstNum) {
          leftVal = str(float(leftVal) *float(leftVal) *float(leftVal));
          displayVal = leftVal;
        } else {
          rightVal = str(float(rightVal) *float(rightVal) *float(rightVal));
          displayVal = rightVal;
        }
      }
    }
  }
}
{
}
void performCalc() {
  if (opVal == '+') {
    result = float(leftVal) + float(rightVal);
    displayVal = str(result);
  } else if (opVal == '-') {
    result = float(leftVal) - float(rightVal);
    displayVal = str(result);
  } else if (opVal == 'x') {
    result = float(leftVal) * float(rightVal);
    displayVal = str(result);
  } else if (opVal == '÷') {
    result = float(leftVal) / float(rightVal);
    displayVal = str(result);
  }
  leftVal = displayVal;
  firstNum = true;
}



void clearApp() {
  displayVal = "";
  leftVal = "";
  rightVal = "";
  opVal = ' ';
  result = 0.0;
  firstNum = true;
}
