class Faller{
  int x;
  int y;
  int d;
  int speed;
  boolean isCatched;
  
  Faller(){
   x = 100;
   y = 100;
   d = 30;
   speed = 5;
   isCatched = false;
 }
 
 void display(){
  circle(x,y,d); 
 }
 
 void fall(){
   if(isCatched) x = mouseX;
   else y+=speed;
 }
 
 boolean landed(){
    if(y>height) return true;
    else return false;
 }
 
 void catcheMe(Catcher c){
    
   boolean isInside = (c.x - c.rwidth/2 < x && c.x + c.rwidth/2 > x );
   boolean isTouching = y > c.y - c.rheigth - d/2;
   
   if (isInside && isTouching) isCatched = true;
 }
 
 void reset(){
   y = 100;
   d = 30;
   isCatched = false;
 }
 
}
