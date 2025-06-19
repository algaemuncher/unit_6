import processing.javafx.*;
PImage explosion;
int n = 500;
float ax,ay,vx,vy;

drawing[] pixel = new drawing[n];
void setup() {
  size(800, 800, FX2D);
  rectMode(CENTER);
  background(0);
  noFill();
  explosion = loadImage("explosion.gif");
  image(explosion, 0, 0, width, height);
  noStroke();
  ax=width/2;
  ay=height/2;
  vx = 8;
  vy = vx;
  int i = 0;
  while (i<n) {
    pixel[i] = new drawing();
    i++;
  }
}

void draw() {
  image(explosion, 0, 0, width, height);
  ax+=vx;
  ay+=vy;
  if (ax>width||ax<0){
    vx = -vx;
  }
  if (ay<0||ay>height){
    vy = -vy;
  }
  int i = 0;
  while (i < n) {
    pixel[i].did();
    pixel[i].spawn();
    i++;
  }
}
