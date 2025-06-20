class star {
  float x, y, size, opacity, r, repeat, t;

  star(float a, float b) {
    x = a;
    y = b;
    size = random(8);
    opacity = 100;
  }

  void show() {
    pushMatrix();
    translate(x+shakeX, y+shakeY);
    rotate(r);
    noStroke();
    fill(235, opacity);//232,224,77
    square(0, 0, size);
    popMatrix();
  }

  void act() {
    //opacity -= 1;
    if (repeat>0) {
      if (t==0) {
        r+=map(size, 0, 10, 0.2,0.02);
        size += 0.03;
        opacity += 0.5;
      } else if (t==1) {
        r-=map(size, 0, 10, 0.2,0.02);
        size -= 0.03;
        opacity -= 0.5;
      }
      if (size>10){
        t=1;
      }
      if (size<-1){
        t=0;
      }
      repeat -= 1;
    } else if (int(random(40)) == 1) {
      repeat = random(20,80);
      t = int(random(2));
    }
  }
}
