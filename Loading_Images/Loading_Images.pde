PImage GG;

void setup () {
 size (1000, 800); 
   GG = loadImage ("GG.png");
   textAlign (CENTER);
}

void draw () {
  if (mousePressed){
  image (GG, width/3, height/4);
}
else {
  text ("CLICK MOUSE", width/2, height/2);}
}
