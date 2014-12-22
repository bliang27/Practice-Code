class Star {
  PVector loc, vel, acc;
  float sz;

  Star () {
    loc = new PVector (width/2, height/2);
    vel = new PVector ();
    acc = new PVector ();
    sz = 50;
  }
  void display () {
    ellipse (loc.x, loc.y, sz, sz);
  }
  void gravity (Star otherdust) {
    acc = PVector.sub(otherdust.loc, loc);
    acc.setMag (.1);
  }
  void move () {
    vel.add (acc);
    loc.add (vel);
  }
}

