// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

class Mover {

  PVector location;
  PVector velocity;
  PVector acceleration;
  Mover() {
    location = new PVector(30,30);
    velocity = new PVector(0,0);
    acceleration = new PVector(0,0);
  }
  
  void applyForce(PVector force){
    if(p==1){
    acceleration = force;
  }
  if(p==0){
    p=1;
  }
  }
  
  void update() {
    velocity.add(acceleration);
    location.add(velocity);
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
      velocity.x *= -0.5;
    } else if (location.x < 0) {
      velocity.x *= -0.5;
      location.x = 0;
    }

    if (location.y > height) {
      velocity.y *= -0.95;
      location.y = height;
    }

  }

}
