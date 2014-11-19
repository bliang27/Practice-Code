float x;
float y;
float sz = 100;

void setup () {
  size (1000, 800); 
  textAlign (CENTER);
  textSize (50);
}

void draw () {
  x = mouseX;
  y = mouseY;

  if ((sq(abs(x - width/2)) + sq(abs(y - height/2))) <= sq(sz/2)) {
    background (255); 
    text ("STOP!", width/2, 200);
  } else {
    background (0); 
    text ("DON'T TOUCH THE BUTTON", width/2, 200);
  }

fill (255, 0, 0);
ellipse (width/2, height/2, sz, sz);
}
