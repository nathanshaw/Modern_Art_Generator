import oscP5.*;
import netP5.*;

Diagonals da, db, dc, dd;
Squares qa, qb;
walker wa, wb, wc, wd, we, wf, wg, wh, wi, wj, wk, wl, wm, wn;
smartWalker sa, sb, sc, sd;
OscP5 oscp5;
NetAddress myRemoteLocation;
lines la;
//oblongs oa;
/*
  boolean sketchFullScreen(){
 return true; 
 }
 */
String name;//this will one day print out a file with a number after but i am having problems
int t1, t2, c;
float chance;
int shot = 0;//this will count up and give each screenshot a number

void setup()
{

  frameRate(5);
  // size (displayWidth, displayHeight,OPENGL); 
  size (500, 500);
  //oa = new oblongs(120,120,500,200);
  la = new lines();
  qa = new Squares(50, 52, 50, 55, 44, 92, 20, 35);
  qb = new Squares(123, 152, 150, 155, 144, 192, 120, 135);
  sa = new smartWalker(250, 250, 6, 10, 7);
  sb = new smartWalker(750, 750, 30, 80, 6);
  sc = new smartWalker(350, 500, 90, 90, 5);
  sd = new smartWalker(275, 275, 55, 70, 4);
  wa = new walker(250, 250, 40, 10);
  wb = new walker(750, 750, 30, 8);
  wc = new walker(350, 500, 20, 9);
  wd = new walker(275, 275, 15, 7);
  we = new walker(800, 800, 52, 15);
  wf = new walker(600, 900, 3, 13);
  wg = new walker(55, 720, 65, 12);
  wh = new walker(250, 250, 40, 10);
  wi = new walker(750, 750, 30, 8);
  wj = new walker(350, 500, 20, 9);
  wk = new walker(275, 275, 15, 7);
  wl = new walker(800, 800, 52, 15);
  wm = new walker(600, 900, 3, 13);
  wn = new walker(55, 720, 65, 12);
  da = new Diagonals(723, 80, 400, 2, 214);
  db = new Diagonals(400, 700, 120, 3, 14);
  dc = new Diagonals(233, 350, 738, 4, 135);
  dd = new Diagonals(560, 55, 76, 5, 22);
  oscp5 = new OscP5(this, 12001);//listening port
  myRemoteLocation = new NetAddress("10.0.1.7.", 12000);//the IP address of my PC
}

void draw()
{

  //chance = random(0.9);//was for changing the background color
  smooth();
  background(0);
  //oa.update();
  la.update();
  qa.update();
  qb.update();
  da.update();
  db.update();
  dc.update();
  dd.update();
  wa.update();
  wb.update();
  wc.update();
  wd.update();
  we.update();
  wf.update();
  wg.update();
  wh.update();
  wi.update();
  wj.update();
  wk.update();
  wl.update();
  wm.update();
  wn.update();
  sa.update();
  sb.update();
  sc.update();
  sd.update();
  
//the functions that i call
  //sendMousePos();
  //sendSmartSquares(sa.x, sa.y);
  //sendQuadInfo(qa.x1, qa.x2, qa.x3, qa.x4, qa.y1, qa.y2, qa.y3, qa.y4);
  
  if (mousePressed == true) {
    frameRate(.3);
    name = "Modern Art" + str(shot) + "jpg";
    print(name);
    save(name);
    sendMouseClick();
    shot++;
  }
  else {
    frameRate(random(10));
  }
}


void sendQuadInfo(float x1, float x2, float x3, float x4, float y1, float y2, float y3, float y4) {
  OscMessage myInfo = new OscMessage("/quad");
  myInfo.add(x1);
  myInfo.add(x2);
  myInfo.add(x3);
  myInfo.add(x4);
  myInfo.add(y1);
  myInfo.add(y2);
  myInfo.add(y3);
  myInfo.add(y4);
  //print(x1, x2, x3, x4, y1, y2, y3, y4);
  oscp5.send(myInfo, myRemoteLocation);
}
void sendMousePos() {
  int x = mouseX;
  int y = mouseY;
  OscMessage mousePos = new OscMessage("/mouse/pos");
  mousePos.add(x);
  mousePos.add(y);
  oscp5.send(mousePos, myRemoteLocation);
}
void sendMouseClick() {
  int x = mouseX;
  int y = mouseY;
  OscMessage myMessage = new OscMessage("/mouse/click");
  myMessage.add(x);
  myMessage.add(y);
  //println("x: ", x, "y: ", y);
  oscp5.send(myMessage, myRemoteLocation);
}

void sendSmartSquares(float x, float y) {
  OscMessage squareInfo = new OscMessage("/squares");
  squareInfo.add(x);
  squareInfo.add(y);
  oscp5.send(squareInfo, myRemoteLocation);
}

