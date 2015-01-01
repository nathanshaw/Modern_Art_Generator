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
    ellipse(x, y, s, s);
    ellipse(x+50, y+50, s*.5, s*.5);
    ellipse(x +100, y+100, s*2, s*2);//the s value will make it a circle
    strokeWeight(s/6);//makes it thicker   
    stroke(random(255), random(255), random(255));//the color
    smooth();
    //these variables are for random movement
    chanceX = random(3);
    chanceY = random(3);

    if ( x > 1200 || x < -200) {
      x = 500;
    }
    if ( y > 1200 || y < -200) {
      y = 500;
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

