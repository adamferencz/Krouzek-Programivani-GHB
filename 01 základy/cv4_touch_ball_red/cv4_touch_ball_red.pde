int x, y, xspeed, yspeed, diameter;

void setup(){
  size(640, 480);
  x = 100;
  y = 100;
  xspeed = 10;
  yspeed = 10;
  diameter = 100;
}

void draw(){
  background(255);
  
  if (x > width - 50 || x < 0 + 50){
    xspeed = -xspeed;
  }
  
  if (y > height - 50|| y < 0 + 50){
    yspeed = -yspeed;
  }
  
  fill(255);
  float d = dist(x,y,mouseX, mouseY);
  if (d  <  diameter/2){
    fill(255, 0, 0);
  }
  
  x = x + xspeed;
  y = y + yspeed;
  circle(x, y, 100);
}
