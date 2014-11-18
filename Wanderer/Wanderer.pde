float x, y; //Location
float Vx, Vy; //Velocity
float ax, ay; //Acceleration
float sz = 50;

void setup () {
  background (0);
  noStroke ();
  size (1000, 800);
  colorMode (HSB, 360, 100, 100, 100);
  x = width/2;
  y = height/2;
  Vx = 0;
  Vy = 0;
}

void draw () {
  fill (frameCount%360, 100, 100, 100);

  ax = random (-.5, .5);
  ay = random (-.5, .5);
  
  Vx += ax;
  Vy += ay;

  x += Vx;
  y += Vy;

  if (x+sz/2 < 0) {
    x = width +sz/2;
  }

  if (x-sz/2 > width) {
    x = -sz/2;
  }

  if (y+sz/2 < 0) {
    y = height +sz/2;
  }

  if (y-sz/2 > height) {
    y = -sz/2;
  }
  
  ellipse (x, y, sz, sz);
}

