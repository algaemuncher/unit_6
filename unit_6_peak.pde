import processing.javafx.*;
float shakeX, shakeY, j;
int starAmount = 135;
int roadAmount = 15;
int carAmount = 4;
star[] stars = new star[starAmount];
road[] roadlines = new road[roadAmount];
cart[] carts = new cart[carAmount];
PImage yoshi;
PImage toad;
PImage bowser;
PImage luigi;


void setup() {
  size(800, 800, FX2D);
  rectMode(CENTER);
  noStroke();
  yoshi = loadImage("yoshi.png");
  toad = loadImage("toad.png");
  bowser = loadImage("bowser.png");
  luigi = loadImage("luigi.png");
  for (int i = 0; i<starAmount; i++) {
    stars[i] = new star(random(width), random(height));
  }
  for (int i =0; i<roadAmount; i++) {
    j=i;
    roadlines[i] = new road(map(i, 0, roadAmount, 225, 225+7*65), map(i, 0, roadAmount, 280, 200+7*45));//225+ i*65,280+ i*45
  }
  for (int i =0; i<carAmount; i++) {
    carts[i] = new cart(i);
  }
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
  for (int i =0; i < carAmount; i++) {
    carts[i].summon();
    carts[i].drive();
  }
}
