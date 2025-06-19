import processing.javafx.*;

int n = int(random(20));
spike[] spikes = new spike[n];
void setup() {
  size(800, 800, FX2D);
  background(0);
  noFill();
  int i = 0;
  while (i<n) {
    spikes[i] = new spike();
    i++;
  }
}

void draw() {
  int i = 0;
  while (i < n) {
    spikes[i].spawn();
    spikes[i].did();
    i++;
  }
}
