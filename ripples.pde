import processing.javafx.*;

int n = 30;
hamon[] ripple = new hamon[n];
void setup() {
  size(800, 800, FX2D);
  background(0);
  noFill();
  int i = 0;
  while (i<n) {
    ripple[i] = new hamon();
    i++;
  }
}

void draw() {
  background(0);
  int i = 0;
  while (i < n) {
    ripple[i].spawn();
    ripple[i].did();
    i++;
  }
}
