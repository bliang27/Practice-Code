float ty;
float tx;
float V;
float a;
int s;
float t;
float rx;
float ry;
void setup () {
   size (1000, 700);
  ty=0;
  tx=0;
  V=0;
  s=0;
  a=0;
  t=0;
  rx=(width/2-10);
  ry=(height/2+100);
}

void draw () {
  float Vox=V/2;
  float Voy=V*0.866;
  float x=50+Vox*tx-a*t*t/5;
  float y=height-125-Voy*ty+.098*ty*ty/2; 

  //Background
  background (255, 255, 255);
  fill (0, 200, 0);  
  rect (0, height-100, width, height-100);
  strokeWeight (5);
  line (width-100, height-100, width-100, height-250);
  line (width-100, height-250, width, height-100);
  strokeWeight (1);
  textSize (30);
  textAlign (CENTER);
  text ("Score:", width-100, 50);
  text (s, width-50, 50);

  //Ball
  fill (0, 0, 0);
  ellipse ( x, y, 50, 50);


  //General Game Mechanics
  textSize (10);
  text (tx, width-50, height-50);
  if (y>height-125) {
    ty=0;
  }
  if (y>=(height-225) && x==(width-100)) {
    s++;
  }
  if (x>=width || y<=0 || x<=0) {
    ellipse (50, height-125, 50, 50);
    tx=0;
    ty=0;
    V=0;
    a=0;
  }

  //Shot Mechanics
  if (mousePressed) {
     Vox=0;
    Voy=0;
    V=V+1;
    ty=0;
    tx=0;
  } else {
    ty++;
    tx++;
  }

  //Wall Mechanics
  rect (rx, ry, 20, 150);
  if (x+25==rx && y+25>ry)
  {
    a=1.00001;
    t=0;
  }
  t++;
  text (V, 200,200);
}

