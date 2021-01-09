//Bullet[] bullets;
ArrayList<Bullet> bullets;


Enemy enemy;
Player player;
void setup(){
  size(640, 320);
  enemy = new Enemy();
  player = new Player();
  
  //bullets = new Bullet[10];
  bullets = new ArrayList();
  
//  for(int i = 0; i < 10; i++){
//    bullets[i] = new Bullet();
//  }
  
  
}

void draw(){
  background(255);
  
  //logic
  player.move();
  
  enemy.move();
  enemy.bounce();
  
  player.display();
  enemy.display();
  
  for(Bullet bullet : bullets){
    bullet.move();
    bullet.display();
    
  }
  
  for(int i = bullets.size() - 1; i >= 0 ; i--){
    if(!bullets.get(i).isFlying){
      bullets.remove(i);
    }
  }

}

void keyPressed() {                                  // detekce stisknuti libovolneho tlacitka
  if (key == 's') {
    
    bullets.add(new Bullet());
    
    
    // for .... a dalsi veci viz obr
    //for(int i = 0; i < 10; i++){
    //  if(!bullets[i].isFlying){
    //    bullets[i].shoot();
    //    break;
    //  } 
    //}
  }
}
