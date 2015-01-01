class smartWalker {
  float x, y, w, h, chanceX, chanceY;
  int a;

  smartWalker(float xPos, float yPos, float rWidth, float rHeight, int activityLevel) {
    x = xPos;
    y = yPos;
    w = rWidth;
    h = rHeight;
    a = activityLevel;
  }

  void update() {
    rect(x, y, w, h);
    smooth();
    //these variables are for random movement
    chanceX = random(3);
    chanceY = random(3);
    
    strokeWeight(random(40));//the boarder size



    //for movement on the X-axis
    if (chanceX < 1) {
      x -= a;
      fill(random(255));
    }
    else if (chanceX < 2) {
      x = x;
    } 
    else {
      x += a;
    }
//for movement on the Y-axis
    if (chanceY < 1) {
      y -= a;
    }
    else if (chanceY < 2) {
      y = y;
    } 
    else {
      y += a;
    }
    //for gravity twards the mouse X - Axis
    if (x < mouseX){
     x += random(15); 
    }
    else{
     x -= random(15); 
    }
    //gravity twards the mouse Y-axis
    if (y < mouseY){
     y += random(15); 
    }
    else{
     y -= random(15); 
    }
  }
}

