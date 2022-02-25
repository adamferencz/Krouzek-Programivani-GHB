int ai = 0;
int aj = 0;

void setup() {
  size(500, 500);
}

void draw() {
  background(255);
  for (int i = 0; i < 10; i ++) {
    for (int j = 0; j < 10; j ++) {
      rect(i*50, j*50, 50, 50);
      // && altgr + C
      if(mouseY > j*50 && mouseY < j*50 + 50 && mouseX > i*50 && mouseX < i*50 + 50){
        ai = i;
        aj = j;
      }
    }
  }
  fill(255, 0, 0);
  rect(ai*50, aj*50, 50, 50);
  fill(255);
}
