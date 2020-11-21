Ball ball;
Ball ball1;

void setup(){
  size(640,320);
  ball = new Ball(300, 100, 80, 2);//tlustej
  ball1 = new Ball(300, 300, 10, 8);//hubenej
}

void draw(){
  //logic
  ball.move();
  ball.bounce();
  
  ball1.move();
  ball1.bounce();
 
  //draw
  background(255);
  ball.display(); 
  ball1.display(); 
}

class Ball {
  float x;//pozice
  float y;
  float d;//prumer
  float sx;
  float sy;

  Ball(float inX, float inY, float inD, float inS) {
    x = inX;
    y = inY;
    d = inD;
    sx = inS;
    sy = inS;
  }

  void bounce() {
    if (x > width || x < 0) {
      sx *= -1;
    }

    if (y > height || y < 0) {
      sy *= -1;
    }
  }

  void move() {
    x += sx;
    y += sy;
  }

  void display() {
    circle(x, y, d);
  }
}
