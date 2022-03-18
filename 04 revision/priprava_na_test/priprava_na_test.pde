float px, py;
float fx, fy;
float ex, ey;
float exs, eys;

boolean gameover;

int score;


void setup() {
  size(800, 600);

  px = mouseX;
  py = mouseY;

  fx = random(0, width);
  fy = random(0, height);

  ex = 100;
  ey = 100;

  exs = 20;
  eys = 20;

  gameover = false;
  
  score = 0;
}

void draw() {
  background(255);

  if (gameover == true) {
    textSize(50);
    text("GAme over", width/2, height/2);
  } else {
    textSize(50);
    text("Score: " + score, 100, 100);


    //logic
    
    
    px = mouseX;
    py = mouseY;

    
    ex = ex + exs;
    ey = ey + eys;

    if (ex > width || ex < 0) {
      exs *= -1;
    }

    if (ey > height || ey < 0) {
      eys *= -1;
    }

    float dist =  dist(fx, fy, px, py);
    if (dist < 50) {
      fx = random(0, width);
      fy = random(0, height);
      score++;
      exs*=1.1;
      eys*=1.1;
      
      
    }

    dist =  dist(ex, ey, px, py);
    if (dist < 50) {
      gameover = true;
      score = 0;
    }


    //draw
    fill(0, 0, 255);
    circle(px, py, 50);


    fill(0, 255, 0);
    circle(fx, fy, 50);

    fill(255, 0, 0);
    circle(ex, ey, 50);
  }
}

void mousePressed(){
  gameover = false;
}
