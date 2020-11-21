int ballX;
int ballY;

int speedX;
int speedY;

int foodX;
int foodY;
int score;

boolean isAlive;

void setup() {
  size(1000, 500);
  //fullScreen();
  ballX = 50;
  ballY = 50;
  speedX = 5;
  speedY = 5;
  foodX = int(random(0, width));
  foodY = int(random(0, height));
  score = 0;

  isAlive = true;
}

void draw() {
  background(255);

  if (isAlive) {
    eat();  
    die();
    bounce();
    display();
  } else {
    fill(0);
    textAlign(CENTER);
    textSize(80);
    text("GAMEOVER", width/2, height/2 -20);
    fill(0);
    textSize(30);
    text("Score: " + score, width/2, height/2 + 50);
  }
}

void mouseClicked(){
  //reset
  speedX = 5;
  speedY = 5;
  foodX = int(random(0, width));
  foodY = int(random(0, height));
  score = 0;
  isAlive = true;
}
//CTRL + T
