int redValue = 0;
int greenValue = 0;

void setup(){
  size(640,320);
}
void draw(){
  //logic
  
  
  //draw
  fill(redValue, greenValue, 0);
  ellipse(320, 180, 200, 200); 
}

void mouseClicked() {
  if (redValue == 0) {
    redValue = 255;
  } else {
    redValue = 0;
  }
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      greenValue = greenValue + 20;
    } else if (keyCode == DOWN) {
      greenValue = greenValue - 20;
    } 
  }
}
