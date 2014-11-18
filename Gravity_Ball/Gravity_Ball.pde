float ballx;
float bally; //Location
float Vx = 10; // X Velocity
float Vy = 0; // Y Velocity
float Ax = 0; // X Acceleration
float Ay = .1; // Y Acceleration
float sz = 50; //Size

void setup () {
  size (1000, 800);
  fill (0);
  ballx = width/2;
  bally = height/4;
}

void draw () {
  background (255);

  Vx += Ax; //Change X Velocity based on X Accleration
  Vy += Ay; //Change Y Velocity based on Y Acceleration
  ballx += Vx; //Change X Displacement based on X Velocity
  bally += Vy; //Change Y Displacement based on Y Velocity

    ellipse (width/2, bally, sz, sz); //Create Ellipse

  //Bounce Ball
  if (bally + sz/2 >= height) {
    bally=height - sz/2; //Reset Ball Location
    Vy *= .9; //Friction
    Vy = -abs(Vy); //Reverse Velocity
  }

  if (ballx + sz/2 >= width) {
    Vx = -abs(Vx);
  }

  if (ballx - sz/2 <= 0) {
    Vx = abs(Vx);
  }
}

