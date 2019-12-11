class Bullet {
 float x;
 float y;
 float speedX;
 float speedY;
 Mover mover;
 
  
 Bullet(Mover m){
   mover = m;
   x = mover.x;
   y = mover.y;
   
 }
 
 void display(){
   circle(x,y,20);
 }
 
 void behave(){
   x = mover.x;
   y = mover.y;
 }
  
}
