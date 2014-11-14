float bally;
float Vy = 0;
float Ay = .1;
float sz = 50;

void setup () {
  size (1000, 800);
  fill (0);
  bally = height/4;
}

void draw () {
  background (255);

  Vy += Ay; //Change Velocity
  bally += Vy; //Change Displacement

  ellipse (width/2, bally, sz, sz);

//Bounce Ball
  if (bally + sz/2 >= height) {
    bally=height - sz/2;
    Vy *=-1;
  }
}

