PImage bg;
int x, y, d, nextX, nextY;
boolean Red, Blue, Green;

void setup () {
  size (700, 700, P2D);
  bg = loadImage ("barvy.png");
  x = width/2;
  y = height/2;
  nextX = x;
  nextY = y;
  d = 40;
}


void draw () {
  pictures();
  player();
  printColor();
  move();
}


void pictures () {
  image (bg, 0, 0);
}

void player () {
  circle (x, y, d);
}


//GREEN
//hue(get(nextX, nextY)) <= 100 && hue(get(nextX, nextY)) >= 89 && (saturation(get(nextX, nextY)) >= 255 && brightness(get(nextX, nextY)) >= 255 )

//BLUE
//hue(get(nextX, nextY)) >= 160 && hue(get(nextX, nextY)) <= 170 && (saturation(get(nextX, nextY)) >= 255 && brightness(get(nextX, nextY)) >= 255 )

//RED
//hue(get(nextX, nextY)) <= 1 && (saturation(get(nextX, nextY)) >= 255 && brightness(get(nextX, nextY)) >= 255 )

void move () {
  if (key == CODED) {
    if (keyCode == UP) {
      nextX = x;
      nextY = (y - d/2) - 5; //y - (d/2 + 1);
      if (hue(get(nextX, nextY)) <= 100 && hue(get(nextX, nextY)) >= 89 && (saturation(get(nextX, nextY)) >= 255 && brightness(get(nextX, nextY)) >= 255 )) {
      } else {
        y -= 5;
      }
    }
    if (keyCode == DOWN) {
      nextX = x;
      nextY =(y + d/2) + 5; // (d/2 + 1);
      if (hue(get(nextX, nextY)) <= 100 && hue(get(nextX, nextY)) >= 89 && (saturation(get(nextX, nextY)) >= 255 && brightness(get(nextX, nextY)) >= 255 )) {
      } else {
        y += 5;
      }
    }
    if (keyCode == RIGHT) {
      nextY = y;
      nextX = (x + d/2) + 5; // (d/2 + 1);
      if (hue(get(nextX, nextY)) <= 100 && hue(get(nextX, nextY)) >= 89 && (saturation(get(nextX, nextY)) >= 255 && brightness(get(nextX, nextY)) >= 255 )) {
      } else {
        x += 5;
      }
    }
    if (keyCode == LEFT) {
      nextY = y;
      nextX = (x - d/2) - 5; // (d/2 + 1);
      if (hue(get(nextX, nextY)) <= 100 && hue(get(nextX, nextY)) >= 89 && (saturation(get(nextX, nextY)) >= 255 && brightness(get(nextX, nextY)) >= 255 )) {
      } else {
        x -= 5;
      }
    }
  }
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
