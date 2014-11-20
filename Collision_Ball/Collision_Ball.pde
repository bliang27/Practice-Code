int a = 20; //Ammount
PVector Loc[] = new PVector [a]; //Location
PVector V[] = new PVector [a]; //Velocity
PVector mouse;
float sz = 50;
float C[] = new float [a];
PVector Store[] = new PVector [a];

void setup () {
  size (1000, 800);

  for (int i = 0; i<a; i+= 1) {
    Loc[i] = new PVector (random(width/2), random(height/2));
    V[i] = PVector.random2D ();
    V[i].mult (random (1, 10));
    mouse = new PVector ();
  }
}

void draw () {
  mouse.set (mouseX, mouseY);
  background (0);

  for (int i = 0; i<Loc.length; i+= 1) {
    Loc[i].add (V[i]);

    if (Loc[i].x-sz/2 < 0) {
      V[i].x = abs(V[i].x);
    }

    if (Loc[i].x+sz/2 > width) {
      V[i].x = -abs(V[i].x);
    }

    if (Loc[i].y-sz/2 < 0) {
      V[i].y = abs(V[i].y);
    }

    if (Loc[i].y+sz/2 > height) {
      V[i].y = -abs(V[i].y);
    }

    if (Loc[i].dist(mouse) < sz/2) {
      C[i] = 255;
      fill (0, 0, C[i]);
    } else {
      C[i] = 255;
      fill (C[i], 0, 0);
    }

    for (int j = 0; j<a; j ++) {
      if (i!=j) {
        if (Loc[i].dist(Loc[j]) <= sz) {
          if (Loc[i].y > Loc[j].y) {
            V[i].y = abs(V[i].y);
            V[j].y = -abs(V[j].y);
          } else {
            V[i].y = -abs(V[i].y);
            V[j].y = abs(V[j].y);
          }
          if (Loc[i].x > Loc[j].x) {
            V[i].x = abs(V[i].x);
            V[j].x = -abs(V[j].x);
          } else {
            V[i].x = -abs(V[i].x);
            V[j].x = abs(V[j].x);
          }
        }
      }
    }

    ellipse (Loc[i].x, Loc[i].y, sz, sz);
  }
}

