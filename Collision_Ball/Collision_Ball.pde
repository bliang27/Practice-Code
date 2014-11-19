int a = 20; //Ammount
PVector Loc[] = new PVector [a]; //Location
PVector V[] = new PVector [a]; //Velocity
PVector mouse;
float sz = 50;
float C[] = new float [a];

void setup () {
  size (1000, 800);

  for (int i = 0; i<Loc.length; i+= 1) {
    Loc[i] = new PVector (random(width/2), random(height/2));
    V[i] = PVector.random2D ();
    V[i].mult (random (1, 6));
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
     ellipse (Loc[i].x, Loc[i].y, sz, sz);
  }
}

