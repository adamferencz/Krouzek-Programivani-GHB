Ball[] balls;

//Ball ball;
//Ball ball1;

//for cyklus

// [] pole array

int COUNT = int(random(0,20));
int visible;
int maxvisible;

void setup(){
  size(640,320); 
  maxvisible = COUNT;
  balls = new Ball[COUNT];
  for(int i = 0; i < COUNT  ; i++){
    float d  = random(1, 100);
    float s  = random(1, 10);
    balls[i] = new Ball(300, 100, d, s);
  }
  
  //ball = new Ball(300, 100, 80, 2);//tlustej
  //ball1 = new Ball(300, 300, 10, 8);//hubenej
}

void draw(){
  //if ...
  background(255);
  //else
  //background(255, 0 ,0);

  
  for(int i = 0; i < COUNT  ; i++){
    balls[i].move();
    balls[i].bounce();
    if (i > visible) break;
    balls[i].display();
  }
  
  //ball1.move();
  //ball1.bounce();
 
  //ball.display(); 
  //ball1.display(); 
}

void mouseWheel(MouseEvent event) {
  float direction = event.getCount();
  if (direction == 1) {
    visible += 1;
  } 

  if (direction == -1) {
    visible -= 1;
  }

  if (visible < 0 ) {
    visible = maxvisible;
  } else if (visible > maxvisible) {
    visible = 0;
  }
}
