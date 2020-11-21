Catcher catcher;
Faller faller;
void setup() {
  size(640, 320);
  catcher = new Catcher();
  faller = new Faller();
}

void draw() {
  background(255);

  catcher.move();
  catcher.display();

  catcher.catchFaller(faller);
  faller.move();
  faller.display();
}

void keyPressed() {
  if (key == 'r' || key == 'R') {
    faller.reset(); 
  }
}
