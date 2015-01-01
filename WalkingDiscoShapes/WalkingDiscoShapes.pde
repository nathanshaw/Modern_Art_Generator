walker wa, wb, wc, wd;
smartWalker sa, sb, sc, sd;
lines la;

void setup(){
 frameRate(6);

size (1000,1000);
la = new lines();
wa = new walker(250,250,40,10);
wb = new walker(750,750,30,8);
wc = new walker(350,500,20,9);
wd = new walker(275,275,15,7);
sa = new smartWalker(250,250,6,10,7);
sb = new smartWalker(750,750,30,80,6);
sc = new smartWalker(350,500,90,90,5);
sd = new smartWalker(275,275,55,70,4);
}

void draw(){
 background(random(35), random(30), 0);
 la.update();
wa.update(); 
wb.update();
wc.update();
wd.update();
sa.update(); 
sb.update();
sc.update();
sd.update();
}
