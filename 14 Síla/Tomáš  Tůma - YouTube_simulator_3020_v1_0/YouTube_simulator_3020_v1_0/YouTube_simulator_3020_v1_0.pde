Mover[] movers = new Mover[90];
PImage userImg, adImg, backgImg;
void setup() {
  fullScreen();
  for (int i = 0; i < movers.length; i++) {
    movers[i] = new Mover();
  }
  userImg = loadImage("user.png");
  adImg = loadImage("ad.png");
  backgImg = loadImage("backg.png");
}
void draw() {
  background(255);
  for (int i = 0; i < movers.length; i++) {
    movers[i].update();
    movers[i].display();
  }
  imageMode(CORNER);
  backgImg.resize(width, height);
  image(backgImg, 0, 0);
  imageMode(CENTER);
  userImg.resize(50, 50);
  image(userImg, mouseX, mouseY);
}
