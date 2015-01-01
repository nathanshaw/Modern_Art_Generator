class lines {
  int num = 200;
  int[] xPos = new int[num];
  int[] yPos = new int[num];

  void setup() {
    for (int i = 0; i < num; i++) {
      xPos[i] = i*3;
      yPos[i] = 10 + (i*3);
    }
  }

  void diagonals(int x, int y) {
    line(x, y, x+100, y+100);
  }
  void update() {


    for (int i = 0; i < num; i++) {
      xPos[i] += 12;
      
      diagonals(xPos[i], yPos[i]);
      
      if (xPos[i] > (width + 100)) { 
        xPos[i] = -100;
      }
      
    }
  }
}




