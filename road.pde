class road{
  float x1,x2,c1,c2,c3;
  road(float a, float b){
    x1=a;
    x2=b;
    c1 = map(j,0,7,0,300);
  }
  void spawn(){
    x1+=shakeX;
    x2+=shakeX;
    if (c1>255){
      c1-=255;
    }
    
    colorMode(HSB);
    stroke(c1,100,100,230);
    strokeWeight(map(roadAmount,3,15,105,35));
    line(x1,height,x2,0);
    
  }
  void act(){
    c1+=map(mouseX,0,width,0,20);
  }
}
