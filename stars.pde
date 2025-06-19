import processing.javafx.*;

Star[] theStar;
int allthestars=100;

void setup(){
  size(800,800,FX2D);
  rectMode(CENTER);
  noStroke();
  background(0);
  
  theStar = new Star[allthestars];
  int i = 0;
  while (i < allthestars){
    theStar[i] = new Star();
    i++;
  }
}

void draw(){
  int i = 0;
  while (i < allthestars){
    theStar[i].show();
    theStar[i].act();
    i++;
  }
  fill(0,30);
  rect(width/2,height/2,width,height);
}
