// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

// Example 1-1: Bouncing Ball, no vectors
//float x = 100;
//float y = 100;
PVector location = new PVector(100,100);
//float xspeed = 2.5;
//float yspeed = 2;
PVector velocity = new PVector(2,2.5);

void setup() {
  size(800, 200);
  smooth();
}

void draw() {
  background(255);


  // Add the current speed to the location.
  //x = x + xspeed;
  //y = y + yspeed;
  //location = location + velocity
  location.add(velocity);

  if ((location.x > width) || (location.x < 0)) {
    velocity.x = velocity.x * -1;
  }
  if ((location.y > height) || (location.y < 0)) {
    velocity.y = velocity.y * -1;
  }


  // Display circle at x location
  stroke(0);
  strokeWeight(2);
  fill(127);
  ellipse(location.x, location.y, 48, 48);
}
