class road{
  float x1,x2,c1,c2,c3;
  road(float a, float b){
    x1=a;
    x2=b;
    c1 = map(j,0,7,0,300);
  }
  void spawn(){
    colorMode(HSB);
    stroke(c1,100,100,230);
    strokeWeight(65);
    line(x1,height,x2,0);
  }
  void act(){
    
  }
}
