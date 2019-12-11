float x1;
float y1;

void setup() {
 
  fullScreen();
  x1 = random(100,400);
  y1 = random(100,400);
  
}

void draw() {
   
  background(40,40,40);
  line(x1,y1,mouseX,mouseY);
 
  fill(255);
  text(dist(x1,y1,mouseX,mouseY),mouseX,mouseY);
  
  
}
