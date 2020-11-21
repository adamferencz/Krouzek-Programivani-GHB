Ball[] balls;

//Ball ball;
//Ball ball1;

//for cyklus

// [] pole array

void setup(){
  size(640,320);
  
  balls = new Ball[10];
  for(int i = 0; i < 10  ; i++){
    float d  = random(1, 100);
    float s  = random(1, 10);
    balls[i] = new Ball(300, 100, d, s);
  }
  
  //ball = new Ball(300, 100, 80, 2);//tlustej
  //ball1 = new Ball(300, 300, 10, 8);//hubenej
}

void draw(){
  background(255); 

  
  for(int i = 0; i < 10  ; i++){
    balls[i].move();
    balls[i].bounce();
    balls[i].display();
  }
  
  //ball1.move();
  //ball1.bounce();
 
  //ball.display(); 
  //ball1.display(); 
}
