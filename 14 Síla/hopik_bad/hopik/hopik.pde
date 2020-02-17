

float ballD = 50;
float ballR = ballD/2;
float ballX;
float ballY;

float xSpeed = 1;
float ySpeed;
float ySpeed0 = 0;

float bounceCounter = 0;
float acc;
float t = 0;
boolean xPath = true;
//boolean yPath = false;
boolean move = true;
boolean back = true;
boolean load = false;

int clickCounter = 0;

float colourR = 255;
float colourG = 255;
float colourB = 255;




void setup () {
  size(640, 360);
  ballX = 50;
  ballY = height - ballR - 10;
  acc = 1;
  frameRate(60);
}



void draw(){
  //***logic
  
  //time
  t++;
  
  
  if(move){
    //xBounce
    if(ballX > width - ballR|| ballX < 0 + ballR){
     xPath = !xPath;
     
     colourR = random(0,255);
     colourG = random(0,255);
     colourB = random(0,255);
    }
    
    //yBounce
    if(ballY >= height - ballR){
      ySpeed = ySpeed0 - bounceCounter*acc;
      bounceCounter++;
      
     colourR = random(0,255);
     colourG = random(0,255);
     colourB = random(0,255);
    }
    
    //x move
    if(xPath){
     ballX += xSpeed; 
    }else{
      ballX -= xSpeed;
    }
    
    //y move
      ballY -= ySpeed;
      ySpeed -= acc;
  
    //STOP
    if (bounceCounter*acc > ySpeed0){
      move = false;
      bounceCounter = 0;
      ballY = height - ballR;
      ySpeed = 0;
      ySpeed0 = 0;
      colourR = random(100,255);
      colourG = 0;
      colourB = 0;
    }
    if (ballY > height){
     
      println("propadl !!!!!!!!!!!!!!!!!!!!!!!");
    }
  } else{
  
  }
  
  //draw
  if(back){
   background(255);
  }
  fill(colourR, colourG, colourR);
  strokeWeight(3);
  ellipse(ballX,ballY,ballD,ballD);
  println("ball - " + ballX, ballY, "speed " + ySpeed, "time - " + t );
  if(load){
   line(ballX, ballY, mouseX, mouseY);
   fill(random(0,255),random(0,255),random(0,255));
   ellipse(mouseX, mouseY, 20, 20);
  }
}
void mousePressed(){
  //logic
  clickCounter++;
  
  //draw
  if(clickCounter < 2){
    load = true;
  }else{
   clickCounter = 0;
   
   move = true;
   load = false;
   
   ySpeed0 += dist(ballX, mouseY , ballX, ballY)/10;
   println(dist(ballX, mouseY , ballX, ballY)/10);
   
   if(mouseX < ballX){
     xSpeed = -dist(ballX, ballY , mouseX, ballY)/10;
   }else{
     xSpeed = dist(ballX, ballY , mouseX, ballY)/10;
   }
   
  }
  
}

void keyPressed() {
  back = false;  
 }
void keyReleased() {
  back = true; 
 }