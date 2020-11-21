int x, y, widthOfEllipse, heightOfEllipse;
boolean inside;

void setup() {
  size (600, 600);
  widthOfEllipse = 250;
  heightOfEllipse = 120;
}

void draw () {
  background (255);
  x = width/2;
  y = height/2;
  strokeWeight (10);
  stroke (255, 0, 0);
  ellipse (x, y, widthOfEllipse, heightOfEllipse);
  if (pointInEllipse (mouseX, mouseY, x, y, widthOfEllipse/2, heightOfEllipse/2)) {
    textSize (32);
    fill (0);
    text ("inside!", mouseX, mouseY);
    noFill();
  }
}

boolean pointInEllipse (float x, float y, float sx, float  sy, float rx, float ry) {
  float p = (pow((x - sx), 2) / pow(rx, 2)) + (pow((y - sy), 2) / pow(ry, 2));
  if (p <= 1) {
    return true;
  } else {
    return false;
  }
}
