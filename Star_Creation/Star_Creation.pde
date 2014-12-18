ArrayList<Star> stardust = new ArrayList<Star>();

void setup() {
  noStroke();
  size (1500, 800);
}

void draw () {
  for (int i = 0; i < stardust.size (); i++) {
    Star a = stardust.get(i);
  a.display();
  a.move();
}
class Star {
  PVector loc, vel, acc;
  float sz;

  Star () {
    loc = new PVector (random (sz/2, width-sz/2), random (sz/2, height-sz/2));
    vel = new PVector ();
    acc = new PVector ();
    sz = 10;
  }

  void display () {
    ellipse (loc.x, loc.y, sz, sz);
  }

  void gravity (Star otherdust) {
    acc = new PVector.sub(otherdust.loc, loc);
    acc.setMag (.1);
  }

  void move () {
    vel.add (acc);
    loc.add (vel);
  }
}
}

