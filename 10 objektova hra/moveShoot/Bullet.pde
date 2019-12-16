class Bullet {
 float x;
 float y;
 float speedX;
 float speedY;
 
 //defaultni rychlost
 //flag zda leti nebo ne
 
 Mover mover;
 
  
 Bullet(Mover m){
   mover = m;
   x = mover.x;
   y = mover.y;
   //init
 }
 
 void display(){
   circle(x,y,20);
 }
 
 void move(){
   
   //pokud leti tak tady
   
   x = mover.x;
   y = mover.y;
 }
 
 //funkce na vystreleni naboje
 
 //funkce na reset naboje
  
}
