Mover m;

void setup() {
  size(640, 360);
  m = new Mover();
}

void draw() {
  background(255);
  line(m.location.x, m.location.y,mouseX,mouseY);
  fill(255,0,0);
  ellipse(mouseX,mouseY,20,20);
  PVector g= new PVector(0, 0.5);
  m.applyForce(g);
  
 
 // PVector wind= new PVector(0.2, 0);
  //m.applyForce(wind);
  

  m.update();
  m.display();
  m.checkEdges();
}
void mousePressed(){
  PVector mouse = new PVector(mouseX,mouseY);
  PVector shoot = PVector.sub(mouse, m.location);
  shoot.setMag(5);
  m.applyForce(shoot);
}
