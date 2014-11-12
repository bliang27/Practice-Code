//Solving vertex of parabola

float x;
float y;

void setup () {
  println ("x = " + vertexX (1, 2));
  println ("y = " + vertexY (1, 2, 3));
  println ("Vertex: (" + x + ", " + y + ")");
}

void draw () {
}

float vertexX (float a, float b) {
  x=-b/(2*a);
  return x;
}

float vertexY (float a, float b, float c) {
  y=a*sq(x)+b*x+c;
  return y;
}

