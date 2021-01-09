// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

// Example 1-2: Bouncing Ball, with PVector!
PVector location;
PVector velocity;
PVector acc;

void setup() {
  size(1080,920);
  background(255);
  location = new PVector(100,100);
  velocity = new PVector(2.5,5);
  acc = new PVector(0,0);
}

void draw() {
  noStroke();
  fill(255,10);
  rect(0,0,width,height);
  
  //get acc
  PVector mouse = new PVector(mouseX, mouseY);
  acc = PVector.sub(mouse, location); 
  
  acc.setMag(0.5);
  //acc.normalize();
  //acc.mult(2);
  
  //update velocity
  velocity.add(acc);
  velocity.limit(20);
  //velocity.mult(0.1);
  // Add the current speed to the location.
  location.add(velocity);
  
  //odraz
  //if ((location.x > width) || (location.x < 0)) {
  //  velocity.x = velocity.x * -1;
  //}
  //if ((location.y > height) || (location.y < 0)) {
  //  velocity.y = velocity.y * -1;
  //}

  // Display circle at x location
  stroke(0);
  fill(175);
  ellipse(location.x,location.y,16,16);
}
