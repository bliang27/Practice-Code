GravityBall[] ball1 = new GravityBall [50];

void setup () {
  for (int i=0; i<ball1.length; i++) {
    ball1[i] = new GravityBall ();
  }
  size (1000, 800);
  fill (0);
}

void draw () {
  for (int i=0; i<ball1.length; i++) {
    background (255);
    ball1[i].display();
    ball1[i].move();
    ball1[i].bounce();
  }
}

class GravityBall {
  float ballx; //X Location
  float bally; //Y Location
  float Vx; // X Velocity
  float Vy; // Y Velocity
  float Ax; // X Acceleration
  float Ay; // Y Acceleration
  float sz; //Size

  GravityBall () {
    bally = random (50, 100); // Y Location
    Vx = 0; // X Velocity
    Vy = 5; // Y Velocity
    Ax = 0; // X Acceleration
    Ay = .1; // Y Acceleration
    sz = random (10, 50); //Size
  }

  void display () {
    ellipse (width/2, bally, sz, sz); //Create Ellipse
  }

  void move () {
    Vx += Ax; //Change X Velocity based on X Accleration
    Vy += Ay; //Change Y Velocity based on Y Acceleration
    ballx += Vx; //Change X Displacement based on X Velocity
    bally += Vy; //Change Y Displacement based on Y Velocity
  }

  void bounce () {
    //Bounce Ball
    if (bally + sz/2 >= height) {
      bally=height - sz/2; //Reset Ball Location
      Vy *= .9; //Friction
      Vy = -abs(Vy); //Reverse Velocity
    }
  }
}

