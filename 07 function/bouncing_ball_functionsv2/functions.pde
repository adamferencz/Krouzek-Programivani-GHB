void die() {
  //die umri
  float d = dist(ballX, ballY, mouseX, mouseY);
  if (  d   <   50/2 + 50/2) {
    //zastavit!!! 
    isAlive = false;
  } else {
    //pohybovat dal
    move();
  }
  
  if (score > 5) { 
      //todo
    }
}

void eat() {
  //eat food
  float d = dist(foodX, foodY, mouseX, mouseY);
  if (  d   <   50/2 + 50/2) {
    //papej jidlo
    score++; //score = score +1;
    foodX = int(random(0, 640));
    foodY = int(random(0, 320));
  } else {
    //nic nedelame no
  }
}

void move() {
  ballX += speedX * (score+1) * 0.1;
  ballY += speedY * (score+1) * 0.1;
  
  if (score > 5) { 
      //todo
    }
}

void bounce() {
  if (ballX > width || ballX < 0) {
    speedX *= -1;
  }

  if (ballY > height || ballY < 0) {
    speedY *= -1;
  }
  
  if (score > 5) { 
      //todo
  }
}

void display() {
  fill(250, 0, 0); //mic
  circle(ballX, ballY, 50);
  
  if (score > 5) { 
      //todo
  }

  fill(0, 255, 0); //myska
  ellipse(mouseX, mouseY, 50, 50);

  fill(0, 255, 255); //jidlo
  ellipse(foodX, foodY, 50, 50);

  fill(0);
  textSize(20);
  textAlign(CORNER);
  text("Score: " + score, 10, 30);
}
