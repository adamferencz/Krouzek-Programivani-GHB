float x;
float y;
float d;
float s;

float x1;
float y1;
float d1;
float s1;

void setup() {
  size(640, 360);
  x  = 100;
  y = 100;
  d = 50;
  s = 5;
  
  x1  = 400;
  y1 = 200;
  d1 = 100;
  s1 = 3;
  
}

void draw() {

  y = y - s;
  if (y > height || y < 0) {
    s *= -1;
  }
  
  y1 = y1 - s1;
  if (y1 > height || y1 < 0) {
    s1 *= -1;
  }

  background(255);
  circle(x, y, d);
  circle(x1, y1, d1);
}
