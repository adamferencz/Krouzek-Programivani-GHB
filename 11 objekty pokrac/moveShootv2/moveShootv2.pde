
Mover mover;
Bullet bullet;

void setup(){
 size(640,320); 
 mover = new Mover();
 bullet = new Bullet(mover);
}


void draw(){
  background(255);
  
  bullet.move();
  
  mover.display();
  bullet.display();
   
}


void keyPressed(){
  if(keyCode == UP) mover.move(0);
  if(keyCode == DOWN) mover.move(1);
  if(keyCode == LEFT) mover.move(2);
  if(keyCode == RIGHT) mover.move(3);
}


void keyReleased(){
  if(key == 'w') bullet.shoot(0);
  if(key == 's') bullet.shoot(1);
  if(key == 'a') bullet.shoot(2);
  if(key == 'd') bullet.shoot(3);
  
  if(key == 'r') bullet.reset();
}
