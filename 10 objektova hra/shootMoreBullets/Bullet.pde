class Bullet {
  float x;
  float y;
  float xSpeed;
  float d;
  boolean isFlying;

  Bullet() {
    d = 10;
    x = d/2;
    y = height/2;
    xSpeed = 5;
  }
  
  void shoot(){
    isFlying = true;
  }
  
  void move() {
    if(isFlying){
      x = x + xSpeed;
    } else {
      y = mouseY;
    }
    if (x > width){
      reset();
    }
  }

  void display() {
    circle(x, y, d);
  }
  
  void reset(){
    isFlying = false;
    x = d/2;
    y = mouseY;
  }
  
}
