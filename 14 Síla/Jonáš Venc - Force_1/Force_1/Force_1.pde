// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com
int p;
Mover m;

void setup() {
  size(640,360);
  m = new Mover(); 
}


void draw() {
  background(255);
  
  PVector g = new PVector(0,0.1);
  m.applyForce(g);
  
  //PVector wind = new PVector(0.2,0);
  //m.applyForce(wind);

  m.update();
  m.display();
  m.checkEdges();

}
void mouseReleased(){
  m.acceleration = new PVector(m.location.x/-50-mouseX/-50,m.location.y/-50-mouseY/-50);
  p=1;
}
