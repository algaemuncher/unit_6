class cart {
  float x, y, vx, vy, shakeTimes, cartype;
  boolean Shaked=false;
  cart(int number) {
    vx = random(-0.5, 0.5);
    vy = -10;
    x = map(vx, -0.5, 0.5, 500, 220);
    y = random(1000, 1500);

    cartype=number;
  }
  void summon() {
    if (cartype==0) {
      image(yoshi, x, y);
    } else if (cartype==1) {
      image(toad, x, y);
    } else if (cartype==2) {
      image(bowser, x, y);
    } else if (cartype==3) {
      image(luigi, x, y);
    }
  }

  void drive() {
    x+=vx+shakeX;
    y+=vy+shakeY;
    if (y-shakeY<-100) {
      x = random(-0.5, 0.5);
      x = map(vx, -0.5, 0.5, 500, 220);
      y = random(1000, 2000);
      Shaked = false;
    }

    if (y-shakeY<825 &&y-shakeY >775 && Shaked == false) {
      shakeX += sin(PI)*-3.5;
      shakeY += cos(PI)*-3.5;
      shakeTimes = 20;
      Shaked=true;
    } else if (shakeTimes > 0) {
      shakeX = shakeX * random(-0.2, -0.1);
      shakeY = shakeY * random(-0.2, -0.1);
      if (shakeTimes == 20) {
        shakeX +=  sin(PI)*-1.3;
        shakeY += cos(PI)*-1.3;
      }
      shakeTimes -=1 ;
    } else {
    }
  }
}
