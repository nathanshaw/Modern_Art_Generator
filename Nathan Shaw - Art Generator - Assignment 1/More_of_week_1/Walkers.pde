//class for a random point object
class walker {
  int x, y, s, a;
  float chanceX, chanceY;

  walker(int xValue, int yValue, int size, int activityLevel) {
    x = xValue;
    y = yValue;
    s = size;
    a = activityLevel;
  }

  void update() {
    ellipse(x, y, s, s);//the s value will make it a circle
    strokeWeight(s/6);//makes it thicker   
    stroke(mouseX,mouseY,(mouseX*mouseY+ 1));//the color
    chanceX = random(3);
    chanceY = random(3);

    if ( x > displayWidth || x < 0) {
      x = mouseX;
    }
    if ( y > displayHeight || y < 0) {
      y = mouseY;
    }
    if (chanceX < 1) {
      x -= a;
    }
    else if (chanceX < 2) {
      x = x;
    } 
    else {
      x += a;
    }

    if (chanceY < 1) {
      y -= a;
    }
    else if (chanceY < 2) {
      y = y;
    } 
    else {
      y += a;
    }
  }
}

