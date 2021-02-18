Ball ball;

void setup(){
  size(640,320);
  ball = new Ball();
}

void draw(){
  background(255);
  ball.move();
  ball.bounce();
  ball.display();
}
