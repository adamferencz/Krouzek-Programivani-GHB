class Catcher {
  float x;
  float y;
  float h;
  float w;

  Catcher() {
    x=width/2;
    y=height - 10;
    h= 20;
    w= 100;
  }

  void move() {
    x=mouseX;
  }

  void display() {
    rectMode(CENTER);
    rect(x, y, w, h);
    rectMode(CORNER);
  }

  void catchFaller(Faller f) {
    if (f.y >= y - 20) {
      float xl = mouseX - w/2 - f.r;
      float xr = mouseX + w/2 + f.r;
      
      if(f.x > xl && f.x < xr){
        //f.isMoving = false;
        
        //odraz od platformy
        f.ySpeed *= -1.4;
        
        if (f.ySpeed > 8){
          f.ySpeed = 8;
        }
  
        f.xSpeed += random(-5,5);
      }
    }
  }
}
