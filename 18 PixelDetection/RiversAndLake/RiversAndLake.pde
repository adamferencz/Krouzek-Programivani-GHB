int x, y, speed, nextX, nextY, widthOfPlayer, heightOfPlayer;
boolean moveRightPlayer, moveLeftPlayer, moveUpPlayer, moveDownPlayer; //BALL
PImage backGround, player;

void setup () {
  size (700, 700, P2D);
  x = width/2;
  y = height/2;
  speed = 2;
  widthOfPlayer = 70;
  heightOfPlayer = 100;
  backGround = loadImage ("testNaPotok.png");
  player = loadImage("TeddyFrontSide.png");
}

void draw () {
  colorMode(RGB, 255);
  background (255);
  picture();
  //player ();
  movePlayer();
  fill (255, 0, 0);
  printColor();
  noFill();
}

void keyPressed () {
  keyMovePlayerCONTROL ();
}

void keyReleased() {
  keyDontMovePlayerCONTROL ();
}

void player () {
  rectMode(CENTER);
  rect (x, y, widthOfPlayer, heightOfPlayer);
  fill(0, 255, 0);
  circle (x, y, 10);
  noFill();
}

void picture () {
  image (backGround, 0, 0);
  imageMode(CENTER);
  player.resize(70, 100);
  image (player, x, y);
  imageMode(CORNER);
}

void printColor () {
  colorMode(HSB, 255);
  text("hue:  " + hue(get(mouseX, mouseY)), 20, 20);
  text("saturation:  " + saturation(get(mouseX, mouseY)), 20, 40);
  text("brightness:  " + brightness(get(mouseX, mouseY)), 20, 60);
  text("x:  " + x, 20, 80);
  text("y:  " + y, 20, 100);
  text("nextX:  " + nextX, 20, 120);
  text("nextY:  " + nextY, 20, 140);
}

void keyMovePlayerCONTROL () {
  if (key == 'd' || key == 'D') {
    moveRightPlayer = true;
  }
  if (key == 'a' || key == 'A') {
    moveLeftPlayer = true;
  }
  if (key == 'w' || key == 'W') {
    moveUpPlayer = true;
  }
  if (key == 's' || key == 'S') {
    moveDownPlayer = true;
  }
}



void keyDontMovePlayerCONTROL () {
  if (key == 'd' || key == 'D') {
    moveRightPlayer = false;
  }
  if (key == 'a' || key == 'A') {
    moveLeftPlayer = false;
  }
  if (key == 'w' || key == 'W') {
    moveUpPlayer = false;
  }
  if (key == 's' || key == 'S') {
    moveDownPlayer = false;
  }
}

void movePlayer () {
  if (moveRightPlayer) {
    nextY = y;
    nextX = (x + widthOfPlayer/2) + speed;
    if (hue(get(nextX, nextY)) <= 126 && hue(get(nextX, nextY)) >= 123 && saturation(get(nextX, nextY)) >= 200 && saturation(get(nextX, nextY)) <= 230 && brightness(get(nextX, nextY)) >= 185  && brightness(get(nextX, nextY)) <= 210) {
    } else {
      x += speed;
    }
  }
  if (moveUpPlayer) {
    nextX = x;
    nextY = (y - heightOfPlayer/2) - speed;
    if (hue(get(nextX, nextY)) <= 126 && hue(get(nextX, nextY)) >= 123 && saturation(get(nextX, nextY)) >= 200 && saturation(get(nextX, nextY)) <= 230 && brightness(get(nextX, nextY)) >= 185  && brightness(get(nextX, nextY)) <= 210) {
    } else {
      y -= speed;
    }
  }
  if (moveDownPlayer) {
    nextX = x;
    nextY = (y + heightOfPlayer/2) + speed;
    if (hue(get(nextX, nextY)) <= 126 && hue(get(nextX, nextY)) >= 123 && saturation(get(nextX, nextY)) >= 200 && saturation(get(nextX, nextY)) <= 230 && brightness(get(nextX, nextY)) >= 185  && brightness(get(nextX, nextY)) <= 210) {
    } else {
      y += speed;
    }
  }

  if (moveLeftPlayer) {
    nextY = y;
    nextX = (x - widthOfPlayer/2) - speed;
    if (hue(get(nextX, nextY)) <= 126 && hue(get(nextX, nextY)) >= 123 && saturation(get(nextX, nextY)) >= 200 && saturation(get(nextX, nextY)) <= 230 && brightness(get(nextX, nextY)) >= 185  && brightness(get(nextX, nextY)) <= 210) {
    } else {
      x -= speed;
    }
  }
}
