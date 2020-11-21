class Ball {
  float x;//pozice
  float y;
  float d;//prumer
  float sx;
  float sy;

  Ball(float inX, float inY, float inD, float inS) {
    x = inX;
    y = inY;
    d = inD;
    sx = inS;
    sy = inS;
  }

  void bounce() {
    if (x > width || x < 0) {
      sx *= -1;
    }

    if (y > height || y < 0) {
      sy *= -1;
    }
  }

  void move() {
    x += sx;
    y += sy;
  }

  void display() {
    circle(x, y, d);
  }
}
