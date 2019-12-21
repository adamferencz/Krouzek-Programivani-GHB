Mover mover;

void setup(){
 size(640,320); 
 mover = new Mover();

}


void draw(){
  background(255);
  mover.moveBullets();
  mover.display(); 
}


void keyPressed(){
  if(keyCode == UP) mover.move(0);
  if(keyCode == DOWN) mover.move(1);
  if(keyCode == LEFT) mover.move(2);
  if(keyCode == RIGHT) mover.move(3);
}


void keyReleased(){
  if(key == 'w') mover.shoot(0);
  if(key == 's') mover.shoot(1);
  if(key == 'a') mover.shoot(2);
  if(key == 'd') mover.shoot(3);
  
  //if(key == 'r') mover.reset();
}
