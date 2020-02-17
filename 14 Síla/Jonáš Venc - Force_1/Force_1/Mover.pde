// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

class Mover {

  PVector location;
  PVector velocity;
  PVector acceleration;
  PVector xyz;

  Mover() {
    location = new PVector(30,30);
    velocity = new PVector(0,0);
    acceleration = new PVector(0,0);
    xyz = new PVector(0,-0,1);
  }
  
void applyForce(PVector force){
  if(p==0){
   acceleration = force;; 
  }
  if(p==1){
   p=0;
  }
  
  //acceleration.add(force);
}

  
  
  void update() {
    velocity.add(acceleration);
    location.add(velocity);
    acceleration.mult(0);
  }

  void display() {
    stroke(0);
    strokeWeight(2);
    fill(127);
    ellipse(location.x,location.y,48,48);
  }

  void checkEdges() {

    if (location.x > width) {
      location.x = width;
      velocity.x *= -0;
    } else if (location.x < 0) {
      velocity.x *= -0;
      location.x = 0;
    }

    if (location.y > height) {
      velocity.y *= -0;
      location.y = height;
    }

  }

}
