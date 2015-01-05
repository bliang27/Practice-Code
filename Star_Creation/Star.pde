class Star {
  PVector loc, vel, acc; //Location, Velocity, Acceleration
  float sz; //Size

  Star () {
    loc = new PVector (random (sz/2, width - sz/2), random (sz/2, height - sz/2)); //Location is random across the screen
    vel = new PVector (); 
    acc = new PVector ();
    sz = 10; 
  }

  void display () { //Display particles
    fill (random (255), random (255), random (255), 150); //Causes the colors to randomly change
    ellipse (loc.x, loc.y, sz, sz); //Creates ellipses
  }

  void move () { //Move particles
    vel.add (acc); //Add acceleration to velocity
    loc.add (vel); //Add velocity to location
  }

  void gravity (Star beta) { //Gravitate particles toward each other
    acc = PVector.sub(beta.loc, loc); //Set direction of acceleration to beta
    acc.setMag (.00001*beta.sz); //Sets the magnitude of acceleration proportionally to the size of beta
  }

  void grow (Star beta) { //Increase the size of the particle
    sz += beta.sz/4; //Increase the size proportionally to the size of beta
  }

  void stay () { //Make particle not move
    vel.set(0, 0); //Set velocity to 0
    acc.set(0, 0); //Set acceleration to 0
  }
  
  boolean wall () { //If the particle touches the wall
    if (loc.x + sz/2 > width || loc.x - sz/2 < 0 || loc.y + sz/2 > height || loc.y - sz/2 < 0) {
      return true;
    } else {
      return false;
    }
  }

  boolean collide (Star beta) { //If particles collide with each other
    if (loc.dist(beta.loc) < sz/2 + beta.sz/2) { 
      return true;
    } else {
      return false;
    }
  }
}

