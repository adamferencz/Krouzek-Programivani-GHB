int redValue = 0;

void setup(){
  size(640,320);
}
void draw(){
  //logic
  
  
  //draw
  fill(redValue, 0, 255);
  ellipse(320, 180, 200, 200); 
}

void mouseClicked() {
  if (redValue == 0) {
    redValue = 255;
  } else {
    redValue = 0;
  }
}
