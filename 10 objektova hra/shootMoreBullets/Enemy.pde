class Enemy {
  float ySpeed;
  float x;
  float y;
  float d;

  Enemy() {
    ySpeed = 2;
    d = 50;
    x = width - d/2;
    y = height/2;
  }

  void hit() {
    //???
  }

  void bounce() {
    if (y < 0  || y > height) {
      ySpeed = -ySpeed;
    }
  }

  void move() {
    y += ySpeed;
  }

  void display() {
    circle(x, y, d);
  }
}
