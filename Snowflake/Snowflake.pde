int count = 1;
PVector[] loc = new PVector[count];
float[] sz = new float[count];
float t;

void setup() {
size (1000, 800);
  //initialize variables
  for (int i = 0; i < count; i++) {
    sz[i] = random(5, 10);
    loc[i] = new PVector(random(width), random(-3*height/2, -sz[i]/2));
  }
  noStroke();
  fill(255);
}

void draw() {
  background (0);
  t+= 1/4;
  
  for (int i = 0; i < count; i++) {
    //move snowflake
    loc[i].x = random (0, width)  + sin (t);
    loc[i].y += 5;
    //draw snowflake
    ellipse(loc[i].x, loc[i].y, sz[i], sz[i]);
    //restart snowflake
    if (loc[i].y - sz[i]/2 > height) {
      loc[i].set(random(width), random (-3*height/2, -sz[i]/2));
    }
  }
}
