class Bullet {
  float x;
  float y;
  float xSpeed;
  float d;
  boolean isFlying;

  Bullet() {
    d = 10;
    x = d/2;
    y = mouseY;
    xSpeed = 5;
    isFlying = true;
  }
  
  void shoot(){
    isFlying = true;
  }
  
  void move() {
    x = x + xSpeed;
    
    if (x > width){
      isFlying = false;
    }
  }

  void display() {
    circle(x, y, d);
  }
  
}
