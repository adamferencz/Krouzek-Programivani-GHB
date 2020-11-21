int x;
int x1;
int speed;
int speed1;

void setup(){
  size(640,360);//width, height
  x = 50;
  x1 = 200; 
  speed = 2;
  speed1 = 2;
}

void draw(){ 
  background(255, 0, 0); //0 cerna - 255 bila

  x = x + speed;
  x1 = x1 + speed1;
  
  if(x > width){ 
    speed = -speed*2;
  }
  
  if(x < 0){
    speed = -speed;
  }
  
  if(x1 > width){ 
    speed1 = -speed1*2;
  }
  
  if(x1 < 0){
    speed1 = -speed1;
  }
  
  strokeWeight(5);
  stroke(0, 255, 0);
  fill(100, 50, 200);
  
  circle(x, 180, 100);
  circle(x1, 180, 100);
}
