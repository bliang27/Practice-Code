float bally; //Location
float Vy = 0; //Velocity
float Ay = .1; // Acceleration
float sz = 50; //Size

void setup () {
  size (1000, 800);
  fill (0);
  bally = height/4;
}

void draw () {
  background (255);

  Vy += Ay; //Change Velocity based on Acceleration
  bally += Vy; //Change Displacement based on Velocity

  ellipse (width/2, bally, sz, sz); //Create Ellipse

//Bounce Ball
  if (bally + sz/2 >= height) {
    bally=height - sz/2; //Reset Ball Location
    Vy *=-1; //Reverse Velocity
  }
}

