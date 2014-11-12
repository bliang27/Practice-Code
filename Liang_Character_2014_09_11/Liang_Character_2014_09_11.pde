int x;
int y;

void setup (){
size (400,500);
x=185;
y=120;
}

void draw (){
 x=mouseX;
 y=mouseY;
background (255,255,255);

if (mousePressed){
  //head
fill (255,255,0);
rect (x-10,y-70,50,50);

//eyes
fill (0,0,0);
rect (x,y-60,10,10);
rect (x+20,y-60,10,10);

//mouth
rect (x,y-40,30,10);

//antennae
line (x,y-70,x,y-80);
line (x+30,y-70,x+30,y-80);
ellipse (x,y-85,10,10);
ellipse (x+30,y-85,10,10);

//body
noStroke ();
rect (x,y-20,30,40);
fill (225,225,0);
rect (x,y-10,30,10);
rect (x,y+10,30,10);
noFill ();
stroke (0,0,0);
rect (x,y-20,30,40);

//Left Arm
line (x,y,x-20,y);
line (x-20,y,x-20,y-20);

//Right Arm
line (x+30,y,x+50,y);
line (x+50,y,x+50,y-20);

//Left Leg
line (x+10,y+20,x+10,y+50);
line (x+10,y+50,x,y+50);

//Right Leg
line (x+20,y+20,x+20,y+50);
line (x+20,y+50,x+30,y+50);

//Left Wing
stroke (0,0,0);
noFill ();
  arc (x,y,50,40,HALF_PI,PI+HALF_PI);
arc (x+30,y,50,40,PI+HALF_PI,2*PI+HALF_PI);
} else
{
//head
fill (255,255,0);
rect (x-10,y-70,50,50);

//eyes
fill (0,0,0);
rect (x,y-60,10,10);
rect (x+20,y-60,10,10);

//mouth
rect (x,y-40,30,10);

//antennae
line (x,y-70,x,y-80);
line (x+30,y-70,x+30,y-80);
ellipse (x,y-85,10,10);
ellipse (x+30,y-85,10,10);

//body
noStroke ();
rect (x,y-20,30,40);
fill (225,225,0);
rect (x,y-10,30,10);
rect (x,y+10,30,10);
noFill ();
stroke (0,0,0);
rect (x,y-20,30,40);

//Left Arm
line (x,y,x-20,y);
line (x-20,y,x-20,y-20);

//Right Arm
line (x+30,y,x+50,y);
line (x+50,y,x+50,y-20);

//Left Leg
line (x+10,y+20,x+10,y+50);
line (x+10,y+50,x,y+50);

//Right Leg
line (x+20,y+20,x+20,y+50);
line (x+20,y+50,x+30,y+50);

//Left Wing
stroke (0,0,0);
noFill ();
arc (x,y,100,40,HALF_PI,PI+HALF_PI);

//Right Wing
arc (x+30,y,100,40,PI+HALF_PI,2*PI+HALF_PI);
}
}
