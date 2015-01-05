ArrayList<Star> stardust = new ArrayList<Star>(); //ArrayList for stardust particles
PImage space; //Star Image for Background
int criticalmass = 50;

void setup() {
  noStroke();
  noCursor();
  size (1500, 800);
  imageMode (CENTER);
  space = loadImage ("Space.png");
}

void draw () {
  background (space); //Set Background as Space

    stardust.add(new Star ()); //Continually Adds new stardust particles

  for (int i = 0; i < stardust.size (); i++) { 
    Star alpha = stardust.get(i); 
    alpha.display(); //Display stardust particles

    if (alpha.wall ()) { //If a particle touches the wall, remove it
      stardust.remove(i);
    }

    for (int j = 0; j < stardust.size (); j++) { 
      Star beta = stardust.get(j);

      if (i!=j) { //Attract other stardust particles, but not self
        alpha.gravity (beta);

        if (alpha.sz > criticalmass) { //If a stardust particle reaches a critical mass, make it still
          alpha.stay();
        } else { //If not, make the stardust particles move
          alpha.move ();
        }

        if (alpha.collide (beta)) { // If the particles collide, cause the larger particle to increase in size and remove the smaller particle

          if (alpha.sz > beta.sz) {  //If the particles collide and alpha is larger than beta, increase the size of alpha and remove beta
            alpha.grow(beta);
            stardust.remove(j);
          } else { //If the particles collide and beta is larger than alpha, increase the size of beta and remove alpha
            beta.grow(alpha);
            stardust.remove(i);
          }
        }
      }
    }
  }
}

