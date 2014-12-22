ArrayList<Star> stardust = new ArrayList<Star>();

void setup() {
  noStroke();
  size (1500, 800);
  fill (0);
}

void draw () {
  background (0);

  if (mousePressed) {
    stardust.add(new Star ()) ;
  }

  for (int i = 0; i < stardust.size (); i++) {
    Star a = stardust.get(i);
    a.display();
    a.move();
    for (int j = 0; j < stardust.size (); j++) {
      Star otherdust = stardust.get(j);
      if (i!=j) {
        a.gravity(otherdust);
      }
    }
  }
}

