class Player {
  PVector location;
  PVector velocity;
  PVector acc;
  PVector accMouse;
  float r;
  color c;

  Player() {
    location = new PVector(100, 100);
    velocity = new PVector(2.5, 5);
    acc = new PVector(0, 0);
    r = 16;
    c = #FF2E4E;
  }

  void checkAllFood() {
    for (int i = food.size() - 1; i >= 0; i--) {
      Food f = food.get(i);
      if (isOverlapping(f)) {
        //yes we eat food :)
        c=f.c;//get colour of food
        food.remove(i);
      } //else no
    }
  }

  boolean isOverlapping(Food f) {
    float d = dist(location.x, location.y, f.location.x, f.location.y);
    if (d < r/2 + f.r/2) {
      return true;
    } else {
      return false;
    }
  }
  
  void applyForce(PVector force){
    acc.add(force);
  }
  
  
  
  void update() {
    //get accMouse
    PVector mouse = new PVector(mouseX, mouseY);
    accMouse = PVector.sub(mouse, location);  
    accMouse.setMag(0.5);
    applyForce(accMouse);
    
    //update velocity
    velocity.add(acc);
    velocity.limit(10);

    // Add the current speed to the location.
    location.add(velocity);
    acc.mult(0);
  }

  void display() {
    stroke(0);
    fill(c);
    ellipse(location.x, location.y, r, r);
  }
}
