class Mover{
  float x;
  float y;
  float speed;
  
  Mover(){
    x = width/2;
    y = height/2;
    speed = 5;
 }
 
   void display() {
    circle(x, y, 50);
  }
  
  void move(int dir){
    if (dir == 0) {
      y -= speed;//up
    } else if (dir == 1) {
      y += speed;//down
    } else if (dir == 2) {
      x -= speed;//left
    } else if (dir == 3) {
      x += speed;//right
    }

  }
 
  
}
