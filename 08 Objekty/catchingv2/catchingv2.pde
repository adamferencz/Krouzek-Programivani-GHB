boolean game;
Catcher catcher;
Faller faller;
void setup() {
  size(640, 320);
  game = true;
  catcher = new Catcher();
  faller = new Faller();
}

void draw() {
  background(255);
  if (game) {
    catcher.move();
    catcher.display();
    catcher.catchFaller(faller);
    
    faller.move();
    faller.display();
  } else {
    textAlign(CENTER);
    fill(0);
    textSize(50);
    text("You are noob...", width/2, height/2);
    fill(255);
  }
}

void keyPressed() {
  if (key == 'r' || key == 'R') {
    faller.reset();
    game = true;
  }
}
