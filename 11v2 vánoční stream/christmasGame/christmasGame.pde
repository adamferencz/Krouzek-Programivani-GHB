Jezus jezus;
Kid[] kid = new Kid[10];

PImage jezusImg;
PImage kidImg;
PImage pressentImg;

boolean gameOver = false;

void setup() {
  size(1200, 700); 
  jezus = new Jezus();
  
  jezusImg = loadImage("jezus.png");
  pressentImg = loadImage("pressent.jpg");
  kidImg = loadImage("kid.png");

  for (int i = 0; i < 10; i++) {
    kid[i] = new Kid();
  }
}


void draw() {
  
  
  if (gameOver){
    background(255, 0, 0);
  } else {
    background(255);
  }
  
    
  
  
  jezus.movePressents();
  jezus.display();


  for (int i = 0; i < 10; i++) {

    for (int j = 0; j < 10; j++) {
      float d = dist(kid[i].x, kid[i].y, jezus.b[j].x, jezus.b[j].y);

      if (d < 30) {
        kid[i].hit(jezus.b[j].speedX, jezus.b[j].speedY);
      }
    }
    
    float d = dist(kid[i].x, kid[i].y, jezus.x, jezus.y);
    
    if (d < 31) {
      gameOver = true;
    }
    
    if (d > 3*width) {
      kid[i].reset();
    }


    kid[i].move(jezus.x, jezus.y);
    kid[i].display();
  }
}


void keyPressed() {
  if (keyCode == UP) jezus.move(0);
  if (keyCode == DOWN) jezus.move(1);
  if (keyCode == LEFT) jezus.move(2);
  if (keyCode == RIGHT) jezus.move(3);
}


void keyReleased() {
  if (key == 'w') jezus.shoot(0);
  if (key == 's') jezus.shoot(1);
  if (key == 'a') jezus.shoot(2);
  if (key == 'd') jezus.shoot(3);

  if(key == 'r') jezus.reload();
}
