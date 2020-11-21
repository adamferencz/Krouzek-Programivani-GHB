class Barrel{
  float x;
  float y;
  
  Barrel(float inx, float iny){
   x = inx;
   y = iny;
  }
  
  void display(){
    circle(x, y, 50);
  }
}
