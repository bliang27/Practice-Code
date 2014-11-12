float x;
float y;
void setup () {
  size (800, 800);
  background (255);
  stroke (255, 0, 0);
  strokeWeight (5);
}

void draw () {
  for (float x=0; x<= width; x +=width/5) {
    for (float y=0; y<= height; y +=height/5) {
    if (mouseX>=x && mouseX<=x+width/5 && mouseY>=y && mouseY<=y+height/5) {
      fill (0);
    }
    rect (x, y, width/5, height);
    fill (255);
    }
  }
}

