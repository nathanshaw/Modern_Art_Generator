/*

class smartWalker {
  int x, y, a;
  float s;
  float chanceX, chanceY;

  smartWalker(int xValue, int yValue, float size, int activityLevel) {
    x = xValue;
    y = yValue;
    s = size;
    a = activityLevel;
  }

  void update() {
    ellipse(x, y, s, s);//the s value will make it a circle
    strokeWeight(s/2);//makes it thicker   
    stroke(random(255), random(255), random(255));//the color
    chanceX = random(3);
    chanceY = random(3);
    s = s * random(2); 
    if ( x > 1200 || x < -200) {
      x = mouseX;
    }
    if ( y > 1200 || y < -200) {
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

    if (x < mouseX) {
      x += 12;
    }
    else {
      x -= 12;
    }
    if ( x < mouseY) {
      y += 12;
    }
  }
*/
