int circlenumber = 10;
float size = 30;
float[] x = new float[circlenumber];
float[] y = new float[circlenumber];
boolean down, left, right=false;
boolean up=true;
float speed = 10;

void setup () {
  size( displayWidth, displayHeight);
  fill (255);
  for (int i=0; i<x.length-1; i++) {
    x[i]=width/2;
    y[i]=height/2;
  }
}

void draw () {
  background (0);

  for (int i=0; i<x.length-1; i++) {
    x[i]=x[i+1];
    y[i]=y[i+1];
  }

  if (up == true) {
    y[circlenumber-1] -= speed;
  }
  if (down == true) {
    y[circlenumber-1]+= speed;
  }
  if (left == true) {
    x[circlenumber-1]-= speed;
  }
  if (right == true) {
    x[circlenumber-1]+= speed;
  }

  for (int i=circlenumber-1; i>=0; i--) {
    circledraw (x[i]+width/2, y[i]+height/2, size);
  }
}

void keyPressed () {
  if (keyCode == UP && down == false) {
    up = true;
    down = false;
    left = false;
    right = false;
  }
  if (keyCode == DOWN && up == false) {
    down = true;
    up = false;
    left = false;
    right = false;
  }
  if (keyCode == LEFT && right == false) {
    left = true; 
    up = false;
    down = false;
    right = false;
  }
  if (keyCode == RIGHT && left == false) {
    right = true; 
    up = false;
    down = false;
    left = false;
  }
}

void circledraw (float x, float y, float size) {
  for (int i=circlenumber-1; i>=0; i--) {
    ellipse (x, y, size, size);
  }
}

