float scale;

void setup(){
  size(640,320);
  scale = 1;
}

void draw(){
  //draw_coords();
}

void smile(int x, int y){
  fill(255);
  circle(x,y,200*scale);
  circle(x,y,30*scale);
  circle(x-40*scale,y-35*scale,50*scale);
  circle(x+20*scale,y-35*scale,50*scale);
  rect(x-70*scale, y+40*scale, 120*scale, 20*scale);
}

void draw_coords(){
  fill(0);
  text(mouseX +" /"+ mouseY,mouseX, mouseY);
}

void mouseReleased(){
  int x = mouseX;
  int y = mouseY;
  smile(x,y);
}

void mouseWheel(MouseEvent event) {
  float direction = event.getCount();
  if(direction == 1){
    scale += 0.1;
  } 
  
  if (direction == -1) {
    scale -= 0.1;
  }
}
