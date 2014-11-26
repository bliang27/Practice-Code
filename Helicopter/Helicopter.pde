float y;
int t;
float rx;
float ry1;
float ry2;
float RX;
float RY1;
float RY2;
float a;
int score;
float fc=-30;

void setup () {
  size (1000, 600);
  fill (0);

  //Variables
  y=height/2;
  rx=width-100;
  RX=width;
  a=0;
  ry1=random (height-200);
  RY1=random (height-200);
  frameRate(60);
}

void draw () {
  background (#93EEF2);
  //Ball Movement
  fill (255, 255, 0);

  //Ball Movement
  ellipse (100, y, 50, 50);
  if (keyPressed) {
      y=y-5;
  } else {
   y+= 4; 
  }

  //Wall
  ry2=ry1+150;
  RY2=RY1+150;

  if (ry1>0) {
    ry1=ry1 ;
  }
  if (RY1>0) {
    RY1=RY1;
  }
  fill (0, 255, 0);
  rect (rx, 0, 30, ry1);
  rect (RX, 0, 30, RY1);
  rect (rx, ry2, 30, height);
  rect (RX, RY2, 30, height);
  rx=rx-5;

  if (a==1) {
    RX=RX-5;
  }

  if (rx<=width/2) {
    a=1;
  }
  if (rx==0-20) {
    ry1=random (height-300);
    rx=width;
  }
  if (RX==0-20) {
    RY1=random (height-300);
    RX=width;
  }

  //Ball Mechanics
  if (y<=25) {
    y=25;
  }
  if (y>=height-125) {
    score=0;
    setup ();
    y=height/2;
  }
  if (rx==125 && y<=ry1+25 || rx==125 && y>=ry2-25) {
    setup();
    y=height/2;
    score=0;
  }
  if (RX==125 && y<=RY1+25 || RX==125 && y>=RY2-25) {
    setup();
    y=height/2;
    score=0;
  }
  if (rx==125 && y>=ry1+25 || rx==125 && y<=ry2-25) {
    score=score+1;
  }
  if (RX==125 && y>=RY1+25 || RX==125 && y<=RY2-25) {
    score=score+1;
  }

  //Colors
  fill (0);
  textSize (25); 
  text (score, width/2, height/2);
  text ("Score:", width/2-75, height/2);
  fill (#6C4C19);
  rect (0, height-100, width, 100);
}

