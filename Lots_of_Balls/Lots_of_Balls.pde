float x[] =new float[4];
float y[] = new float[4];
float sz[] = new float[4];
float speed[] = new float[4];
float speedX[] = new float[4];
float speedY[] = new float[4];
float a=random (255);
float b=random (255);
float c=random (255);
float aspeed = random (3);
float bspeed = random (3);
float cspeed = random (3);

void setup () {
  background (0);
  size (displayWidth, displayHeight);
  for (int i=0; i<x.length; i+= 1) {
    x[i]= random (width);
    y[i]= random (height);
    sz[i]= random (50);
    speed[i] = 1;
    speedX[i]= random (5);
    speedY[i]= random (5);
    noStroke();
  }
}

void draw () {
  a+= aspeed;
  b+= bspeed;
  c+= cspeed;
  if (a>255 || a<0) {
    aspeed *= -1;
  }
  if (b>255 || b<0) {
    bspeed *= -1;
  }
  if (c>255 || c<0) {
    cspeed *= -1;
  }
  map (mouseX, 0, width, 0, 255);
  map (mouseY, 0, height, 0, 255);
  fill (a, b, c, 50);
  for (int i=0; i<x.length; i+= 1) {
    ellipse (x[i], y[i], sz[i], sz[i]);
    sz[i]+= speed[i];
    x[i]+=speedX[i];
    y[i]+=speedY[i];
    if (sz[i] >=51 || sz[i] < 0) {
      speed[i]=-speed[i];
    }
    if (x[i]+sz[i]/2>=width || x[i]-sz[i]/2<0) {
      speedX[i]=-speedX[i];
    }
    if (y[i]+sz[i]/2>=height || y[i]-sz[i]/2<0) {
      speedY[i]=-speedY[i];
    }
  }
}

