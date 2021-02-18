class Ball {
  float x;
  float y;
  float sx;
  float sy;

  Ball() {
    sx = 5;
    sy = 5;
  }

  void move() {
    x += sx;
    y += sy;
  }
  
  void display() {
    ellipse(x, y, 50, 50);
  }
  
  void bounce() {
    if (x > width || x < 0) {
      sx *= -1;
    }

    if (y > height || y < 0) {
      sy *= -1;
    }
  }
}
