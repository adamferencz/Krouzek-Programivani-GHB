class Faller {
  float x;
  float y;
  float d;
  float r;
  float ySpeed;
  float xSpeed;
  boolean isMoving;


  Faller() {
    x=width/2;
    y=height/2;
    d=30;
    r=d/2;
    ySpeed = 2;
    xSpeed = 0;
    isMoving = true;
  }

  void move() {
    if (isMoving) {
      //move
      y = y + ySpeed;
      x = x + xSpeed;
      bounce();
    } else {
      //x = mouseX;
      //bounce();
      
    }
    //lose the game
    if (y > height) {
      game = false;
    }
  }
  
  void bounce(){
    if(x <= 0 || x > width){
      xSpeed *= -1;
    }
    if(y < 0){
      ySpeed *= -1;
    }
  }
  
  void display() {
    circle(x, y, d);
  }

  void reset() {
    x=random(width);
    y=10;
    isMoving = true;
    ySpeed = 2;
    xSpeed = 0;
  }
}
