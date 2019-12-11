// Cviceni 2 - pohyb
// Procesing prednaska - Tvoje první hra
// Adam Ferencz 25.5. 2018

float x = 0;

void setup(){
  size(640,360);
}

void draw(){
  x = x + 5;
  background(255);
  ellipse(x,height/2,200,200);
}
