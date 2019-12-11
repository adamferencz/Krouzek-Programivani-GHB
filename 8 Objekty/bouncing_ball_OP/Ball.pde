class Ball {
  int x;
  int y;
  int speedY;
  int speedX;

  Ball() {
    x = 50;
    y = 60;
    speedY = 5;
    speedX = 5;
  }

  void display() {
    ellipse(x, y, 50, 50);
  }

  void move() {
    x += speedX;
    y += speedY;
  }

  void bounce() {
    if (x > width || x < 0) {
      speedX *= -1;
    }

    if (y > height || y < 0) {
      speedY *= -1;
    }
  }
}
