GravityBall[] ball1 = new GravityBall [250];
GravityBall Mouse;

void setup () {
  size (1000, 800);
  for (int i=0; i<ball1.length; i++) {
    ball1[i] = new GravityBall ();
  }
  Mouse = new GravityBall (100, 255);
}

void draw () {
  background (0, 0, 0);
  for (int i=0; i<ball1.length; i++) {
    ball1[i].Color();
    ball1[i].display();
    ball1[i].move();
    ball1[i].bounce();
  }
  Mouse.Color();
  Mouse.display();
  Mouse.mouse();
}

class GravityBall {
  float ballx; //X Location
  float bally; //Y Location
  float Vx; // X Velocity
  float Vy; // Y Velocity
  float Ax; // X Acceleration
  float Ay; // Y Acceleration
  float sz; //Size
  color c; //Color

  GravityBall (float tempsz, int tempc) {
    sz = tempsz; //Size
    c = tempc; //Color
  }

  GravityBall () {
    ballx = random (sz/2, width-sz/2);
    bally = random (sz/2, height-sz/2); // Y Location
    Vx = 0; // X Velocity
    Vy = 5; // Y Velocity
    Ax = 0; // X Acceleration
    Ay = .1; // Y Acceleration
    sz = random (10, 75); //Size
    c = color(random (255), random (255), random (255)); //Color
  }
  void mouse () {
    ballx = mouseX;
    bally = mouseY;
  }

  void Color () {
    fill (c);
  }

  void display () {
    ellipse (ballx, bally, sz, sz); //Create Ellipse
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

