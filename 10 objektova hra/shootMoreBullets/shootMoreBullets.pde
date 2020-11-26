
Bullet bullet;
//TODO Bullet[] ...

Enemy enemy;
Player player;
void setup(){
  size(640, 320);
  enemy = new Enemy();
  player = new Player();
  bullet = new Bullet();
  //TODO new Array .... Bullet[ ... ]
  //TODO for .... inicializace .. [] new Bullet
  
}

void draw(){
  background(255);
  
  //logic
  player.move();
  
  // for .... 
  bullet.move();
  
  enemy.move();
  enemy.bounce();
  
  //draw
  player.display();
  enemy.display();
  bullet.display();
}

void keyPressed() {                                  // detekce stisknuti libovolneho tlacitka
  if (key == 's') {
    // for .... a dalsi veci viz obr
    bullet.shoot();
  }
}
