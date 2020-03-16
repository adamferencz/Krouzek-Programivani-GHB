int ballX;
int ballY;
int speedX;
int speedY;

void setup(){
  size(640,320);
  speedX = 5;
  speedY = 5;
}

void draw(){
  //logic
  ballX += speedX;
  ballY += speedY;
  
  if(ballX > width || ballX < 0){
    speedX *= -1;
  }
  
  if(ballY > height || ballY < 0){
    speedY *= -1;
  }
  
  //draw
  //background(255);
  ellipse(ballX, ballY, 50, 50);
  
}
