PVector Loc; //Location
PVector V; //Velocity
PVector a; //Acceleration
float sz = 50;

void setup () {
  background (0);
  noStroke ();
  size (1000, 800);
  colorMode (HSB, 360, 100, 100, 100);
  Loc = new PVector (width/2, height/2);
  V = PVector.random2D ();
  a = new PVector ();
}

void draw () {
  fill (frameCount%360, 100, 100, 100);

  a.set (random (-.1, .1), random (-.1, .1));
  V.add (a);
  Loc.add (V);

  if (Loc.x+sz/2 < 0) {
    Loc.x = width +sz/2;
  }

  if (Loc.x-sz/2 > width) {
    Loc.x = -sz/2;
  }

  if (Loc.y+sz/2 < 0) {
    Loc.y = height +sz/2;
  }

  if (Loc.y-sz/2 > height) {
    Loc.y = -sz/2;
  }

  ellipse (Loc.x, Loc.y, sz, sz);
}

