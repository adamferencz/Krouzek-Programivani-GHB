
  
void setup() {
  size(640, 360, P2D);
}

void draw() {
  background(255);
  
  fill(255, 0, 0);
  circle(30, 30, 30);
  
  fill(0, 0, 255);
  circle(30, 300, 30);
  //<>//
}

void mousePressed(){

  print(hue(get(mouseX,mouseY)));
  print(saturation(get(mouseX,mouseY)));
  print(brightness(get(mouseX,mouseY)));
}
