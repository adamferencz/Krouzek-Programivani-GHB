class Kid {

  float x;
  float y;
  float speedX;
  float speedY;

  boolean isHappy;

  Kid() {
    x = random(-2*width, 2*width);
    y = random(-2*height, 2*height);
    speedX = 0;
    speedY = 0;

    isHappy = false;
  }

  void display() {
    //circle(x, y, 30);
    
    
    imageMode(CENTER);
    kidImg.resize(0,40);
    image(kidImg,x,y);
  }

  void move(float jx, float jy) {
    if (isHappy == false) {

      if (jx - x > 0) {
        speedX = 1;
      } else {
        speedX = -1;
      }

      if (jy - y > 0) {
        speedY = 1;
      } else {
        speedY = -1;
      }
    }

    x += speedX;
    y += speedY;
  }

  void hit(float sx, float sy) {
    speedX = sx;
    speedY = sy;

    isHappy = true; //<>//
  }
  
  void reset(){
    x = random(-2*width, 2*width);
    y = random(-2*height, 2*height);
    
    isHappy = false;
  }
  
}
