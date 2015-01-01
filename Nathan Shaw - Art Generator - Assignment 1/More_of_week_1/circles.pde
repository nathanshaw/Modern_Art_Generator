//array out ofbounds error i cant figure out
/*
class oblongs
{
  //my variables
  float t, g, x, y;
  int number, i;
//my arrays for creatingrandom perameters for my oblongs
  float [] oblongSize = new float[number + 1];
  float [] xPosition = new float[number + 1];
  float [] yPosition = new float[number + 1];
  //int [] moves = new int[5];
  //constructor
  oblongs(float xpos, float ypos, int amount, float grey)
  {
    x = xpos;
    y = ypos;
    g = grey;
    number = amount;
  } 
  
  void setup() {

    for (int i = 0; i < number; i++) {
      oblongSize[i] = random(3, 78);
      xPosition[i] = random(0, width);
      yPosition[i] = random(0, height);
    }  

    //moves[0] = 1;
    //moves[1] = 1;
    //moves[2] = -1;
    //moves[3] = -1;
    //moves[4] = 12;
  }

  void update()
  {
    for (int n = 0; n < number; n++) {
      //xPosition[i] += moves[int(random(4))];
      //yPosition[i] += moves[int(random(4))];
      smooth();
      stroke(g, random(40, 80), random(80, 95));
      ellipse(xPosition[n], yPosition[n], oblongSize[n], oblongSize[n]);
       
    }
  }
}
*/
