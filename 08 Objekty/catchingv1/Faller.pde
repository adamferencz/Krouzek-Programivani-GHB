class Faller {
  float x;
  float y;
  float d;
  float r;
  float ySpeed;
  boolean isMoving;


  Faller() {
    x=width/2;
    y=height/2;
    d=30;
    r=d/2;
    ySpeed = 2;
    isMoving = true;
  }

  void move() {
    if (isMoving) {
      //move
      y = y + ySpeed;
    } else {
      x = mouseX;
    }
    //reset
    if (y > height) {
      y = 0;
    }
  }

  void display() {
    circle(x, y, d);
  }

  void reset() {
    x=random(width);
    y=-50;
    isMoving = true;
  }
}
