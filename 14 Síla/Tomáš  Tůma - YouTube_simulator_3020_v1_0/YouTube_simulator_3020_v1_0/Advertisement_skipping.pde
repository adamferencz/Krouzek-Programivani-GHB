class Mover {
  //pozice, rychlost, zrychlení;
  PVector location, velocity, acceleration;
  float topspeed;
  Mover() {
    location = new PVector(random(width), random(height));
    velocity = new PVector(0, 0);
    topspeed = 4;
  }
  void update() {
    PVector mouse = new PVector(mouseX, mouseY);
    PVector acceleration = PVector.sub(mouse, location);
    acceleration.setMag(0.2);
    acceleration.normalize();
    acceleration.mult(0.2);
    velocity.add(acceleration);
    velocity.limit(topspeed);
    location.add(velocity);
  }
  void display() {
    stroke(0);
    strokeWeight(2);
    ellipse(location.x, location.y, 10, 10);
    imageMode(CENTER);
    adImg.resize(54, 16);
    image(adImg, location.x, location.y);
  }
}
