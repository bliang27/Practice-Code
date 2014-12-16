ArrayList<Fire> flame = new ArrayList<Fire>();

void setup() {
  noStroke();
  size(1000, 800);
}

void draw() {
  fill (255, 0, 0);
  if (mousePressed) {
    flame.add(new Fire());
  }
  background(255);
  for (int i = flame.size ()-1; i >= 0; i--) {
    Fire particle = flame.get(i);
    particle.display();
    particle.move();
  }
  
  fill (0);
  rect (0, mouseY - 50, mouseX, 100);
  
}

class Fire {
  PVector loc, vel;
  float sz;

  Fire () {
    loc = new PVector (random (mouseX - 50, mouseX + 50), random (mouseY - 40, mouseY + 40));
    vel = new PVector (random (15, 20), random (-8, 8));
    sz = 30;
  }

  void display() {
    ellipse (loc.x, loc.y, sz, sz);
  }

  void move() {
    loc.add (vel);
  }
  
  void Color () {
    
  }
}

