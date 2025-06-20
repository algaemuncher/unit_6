import processing.javafx.*;
float shakeX, shakeY,j;
int starAmount = 125;
int roadAmount = 7;
star[] stars = new star[starAmount];
road[] roadlines = new road[roadAmount];

void setup() {
  size(800, 800, FX2D);
  rectMode(CENTER);
  noStroke();
  for (int i = 0; i<starAmount; i++) {
    stars[i] = new star(random(width), random(height));
  }
  for (int i =0; i<roadAmount; i++) {
    j=i;
    roadlines[i] = new road(225+ i*65,280+ i*45);
  }
  shakeX = sin(PI)*-16;
  shakeY = cos(PI)*-16;
  //shakeX = shakeX * random(-0.8,-0.5);
  //shakeY = shakeY * random(-0.8,-0.5);
}

void draw() {
  fill(0, 30);
  noStroke();
  rect(width/2, height/2, width, height);
  for (int i =0; i < starAmount; i++) {
    stars[i].show();
    stars[i].act();
  }
  for (int i =0; i < roadAmount; i++) {
    roadlines[i].spawn();
    roadlines[i].act();
  }
}
