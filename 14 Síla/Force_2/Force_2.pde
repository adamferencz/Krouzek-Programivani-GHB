// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

Mover m;

void setup() {
  size(640,360);
  m = new Mover(); 
}

void draw() {
  background(255);
  
  PVector g = new PVector(0,0.5); 
  m.applyForce(g);
  
  if(mousePressed){
      PVector wind = new PVector(0.2,0);
    m.applyForce(wind);
  }

  
  
  m.update();
  m.display();
  m.checkEdges();

}
