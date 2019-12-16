class Bullet {
 float x;
 float y;
 float speedX;
 float speedY;
 float defaultSpeed;
 boolean isFlying;
 
 
 //defaultni rychlost
 //flag zda leti nebo ne
 
 Mover mover;
 
  
 Bullet(Mover m){
   mover = m;
   x = mover.x;
   y = mover.y;
   isFlying = false;
   defaultSpeed = 20;
   speedX = 0;
   speedY = 0;
   //init
 }
 
 void display(){
   circle(x,y,20);
 }
 
 void move(){
   
   //pokud leti tak tady
   if(isFlying){
     x += speedX;
     y += speedY;
   } else{
     x = mover.x;
     y = mover.y;
   }

 }
 
 //funkce na vystreleni naboje
   void shoot(int dir){
    if (dir == 0) { //<>//
      speedY = -defaultSpeed;//up  
    } else if (dir == 1) {
      speedY = defaultSpeed;//down
    } else if (dir == 2) {
      speedX = -defaultSpeed;//left
    } else if (dir == 3) {
      speedX = defaultSpeed;//right
    }
    isFlying = true;
  }
 
 //funkce na reset naboje
 void reset(){
   x = mover.x;
   y = mover.y;
   isFlying = false;
   speedX = 0;
   speedY = 0;
 }
  
}
