class Catcher{
  int x;
  int y;
  int rwidth;
  int rheigth;
  
  Catcher(){
    x = mouseX; 
    rwidth = 100;
    rheigth = 19;
    y = height - 10;
  }
  
  void move(){
    x = mouseX;
  }
  
  void display(){
    adam.resize(0,150);
    image(adam, x - rwidth/2, y - 120);
    //rectMode(CENTER);
    //rect(x,y,rwidth,rheigth);
  }
  
  
  
}
