String[] Bruno = {
  "Thing1", "Thing2", "Thing3", "Thing4", "Thing5"
};
int i;

void setup () {
  size (displayWidth, displayHeight);
  background (0);
  textSize (50);
  textAlign (CENTER);
  fill (255, 0, 0);
}

void draw () {
  for (int i=0; i<Bruno.length; i++) {
    text(Bruno[i], width/2, height/2-150+50*i);
  }
}

