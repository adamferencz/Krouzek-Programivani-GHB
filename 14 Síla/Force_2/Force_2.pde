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
  

   //   PVector wind = new PVector(0.2,0);
   //m.applyForce(wind);


  
  
  m.update();
  m.display();
  m.checkEdges();

}

void mouseClicked(){
  m.velocity.mult(0);
  PVector mouse = new PVector(mouseX, mouseY);
  PVector accelerationShoot = PVector.sub(mouse, m.location);
  accelerationShoot.setMag(30);
  m.applyForce(accelerationShoot); //<>//
}
