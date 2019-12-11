Ball b;

void setup() {
  size(640, 320);

  b = new Ball();
}

void draw() {
  background(255);

  b.display();
  b.move();
  b.bounce();
}
