int actCol;
int actRow;

int RWIDTH = 100; // how big is the rectagle

void setup() {
  size(1000, 500);
  actCol = 1;
  actRow = 1;
}

void draw() {
  for (int col = 0; col < 10; col++) {
    for (int row = 0; row < 5; row++) {
      if (col == actCol && row == actRow) {
        fill(255, 0, 0);
      } else {
        fill(255);
      }
      rect(col * RWIDTH, row * RWIDTH, RWIDTH, RWIDTH);
    }
  }
}

void mouseReleased() {
  for (int col = 0; col < 10; col++) {
    for (int row = 0; row < 5; row++) {
      if (mouseX > col*RWIDTH && mouseX < col*RWIDTH + RWIDTH && mouseY > row * RWIDTH && mouseY < row * RWIDTH + RWIDTH ) {
        actCol = col;
        actRow = row;
      }
    }
  }
}
