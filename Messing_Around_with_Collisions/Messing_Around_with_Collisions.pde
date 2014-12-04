Bouncer[] balls = new Bouncer[10];
int p=1;
void setup() {
  size(800, 600);
  for (int i = 0; i < balls.length; i++) {
    balls[i] = new Bouncer(random(20, 40), random(5, 10));
  }
}

void draw() {
  background (0);
  for (int i = 0; i < balls.length; i++) {
    balls[i].display();
    balls[i].move();
    balls[i].wallBounce();
    for (int j = 0; j < balls.length; j++) {
      if (i!=j) {
        balls[i].collideWith(balls[j]);
      }
    }
  }
}

class Bouncer {
  PVector loc, vel;
  float sz;
  float speed;
  color c;

  Bouncer(float tempsz, float tempspeed) {
    sz = tempsz;
    loc = new PVector(random(sz, width-sz), random(sz, height-sz));
    vel = PVector.random2D();
    speed = tempspeed;
    vel.mult(speed);
    c = color(255, 0, 0);
  }

  void display() {
    ellipse(loc.x, loc.y, sz, sz);
  }

  void move() {
    loc.add(vel);
  }

  void wallBounce() {
    if (loc.x + sz/2 >= width ) {
      vel.x = -abs(vel.x);
    } 
    if (loc.x - sz/2 <= 0) {
      vel.x = abs(vel.x);
    }
    if (loc.y + sz/2 >= height ) {
      vel.y = -abs(vel.y);
    } 
    if (loc.y - sz/2 <= 0) {
      vel.y = abs(vel.y);
    }
  }

  void collideWith(Bouncer tempball) {
    if (loc.dist(tempball.loc) < sz/2 + tempball.sz/2) {
      vel = PVector.sub(loc, tempball.loc);
      vel.normalize();
      vel.setMag(speed);
      background (c);
    }
  }
}

