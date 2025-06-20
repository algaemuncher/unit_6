import processing.javafx.*;
int starAmount = 125;
star[] stars = new star[starAmount];

void setup() {
  size(800, 800, FX2D);
  rectMode(CENTER);
  noStroke();
  for (int i = 0; i<starAmount; i++){
    stars[i] = new star(random(width),random(height));
  }
}

void draw() {
  fill(0,30);
  rect(width/2, height/2, width, height);
  for (int i =0; i < starAmount; i++) {
    stars[i].show();
    stars[i].act();
  }
}
