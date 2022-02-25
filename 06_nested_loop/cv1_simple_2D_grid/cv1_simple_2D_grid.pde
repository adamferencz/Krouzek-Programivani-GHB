void setup() {
  size(500, 500);
}

void draw() {
  background(255);
  for (int i = 0; i < 500; i += 50) {
    for (int j = 0; j < 500; j += 50) {
      rect(i, j, 50, 50);
    }
  }
}
