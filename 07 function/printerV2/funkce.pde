void printPicture(){
  int x = 20;
  int y = 20;
  int d = 50;
  for (int i = 0; i < 10; i++) {
    for (int j = 0; j < 10; j++) {
      x = x + int(random(-10,10));
      y = y + int(random(-10,10));
      d = d - 2;
      noFill();
      circle(mouseX + x, mouseY + y, d);
    }
  }
}

void printTriangle(){
  fill(52);
  triangle(mouseX-70,mouseY+50,mouseX+70,mouseY+50,mouseX,mouseY-70);
  fill(255,0,0);
  circle(mouseX+25,mouseY+25,50);
  fill(0,255,0);
  circle(mouseX-25,mouseY+25,50);
  fill(0,0,255);
  circle(mouseX,mouseY-20,50);
}

void obr(int x, int y) {
  fill(220);
  ellipse(x, y, 100, 100);
  //rotate(PI / 4);
  rectMode(CENTER);
  fill(51);
  rect(x-15,y-65, 130, 30);
  rect(x+15,y+65, 130, 30);
  rect(x-65,y+15, 30, 130);
  rect(x+65,y-15, 30, 130);
  rectMode(CORNER);
}

void smile(){
  int hlavaz=200;
  int oko1z=50;
  int oko2z=50;
  int pusaz2=100;
  
  fill(236,32,4);
  rect(mouseX-50,mouseY+40,pusaz2,20); 

  fill(245,229,64);
  ellipse(mouseX,mouseY,hlavaz,hlavaz);
  fill(2,155,196);
  ellipse(mouseX-40,mouseY-40,oko1z,oko1z);
  fill(2,155,196);
  ellipse(mouseX+40,mouseY-40,oko2z,oko2z);
}

void star(int x, int y) {
    fill(255, 0, 0);
    stroke(255, 0, 0);
    rect(x-25, y-25, 50, 50);
    triangle(x-25, y-25, x-70, y, x-25, y+25);
    triangle(x-25, y-25, x+25, y-25, x, y-70);
    triangle(x+25, y+25, x+25, y-25, x+70, y);
    triangle(x+25, y+25, x, y+70, x-25, y+25);
  }
