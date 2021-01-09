PVector center, mouse, vel, poz;


void setup() {
  size(640, 360);
  center = new PVector(width/2, height/2);
  mouse = new PVector(mouseX, mouseY);
  vel = PVector.sub(mouse, center);
  poz = PVector.add(vel, center);
}

void draw() {
  background(255);


  mouse.set(mouseX, mouseY);

  vel = PVector.sub(mouse, center);
  
  //vel.mult(0.5);
  float mag = vel.mag();  
  //vel.div(mag);
  
  vel.normalize();
  
  vel.mult(100);
  
  mag = vel.mag();
  
  fill(0);
  textSize(20);
  text(mag, 20, 20);
  fill(255);
  
  poz = PVector.add(vel, center);

  fill(0, 255, 255);
  line(center.x, center.y, poz.x, poz.y);
  //line(0, 0, mouse.x, mouse.y);
  //line(0, 0, center.x, center.y);
  //fill(255, 0, 0);
  //ellipse(elpoz.x, elpoz.y, 30,30);
}
