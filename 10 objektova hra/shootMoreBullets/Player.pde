class Player{
  float x;
  float y;
  float d;
  
  Player(){
    d = 30;
    x = d/2;
    y = height/2;
  }
  
  void move() {
    y = mouseY;
  }

  void display() {
    circle(x, y, d);
  }
  
}
