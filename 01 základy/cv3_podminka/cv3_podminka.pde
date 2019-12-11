// Cviceni 3 - podminka
// Procesing prednaska - Tvoje první hra
// Adam Ferencz 25.5. 2018

float x = 0;
float speed = 5;
void setup(){
  size(640,360);
}

void draw(){
  x = x + speed;
  if (x > width) {
    x = 0;
    speed = speed + 2;
  }
  background(255);
  ellipse(x,height/2,200,200);
}
