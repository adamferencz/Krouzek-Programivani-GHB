class Mover {

  PVector location;
  PVector velocity;
  // Acceleration is the key!
  PVector acceleration;
  // The variable topspeed will limit the magnitude of velocity.
  float topspeed;
  PVector mouse;

  Mover() {
    location = new PVector(width/2,height/2);
    velocity = new PVector(0,0);
    acceleration = new PVector(0,0);
    topspeed = 10;
  }

  void update() {
    float distance = dist(mouseX,mouseY,location.x,location.y);
    float magnitude = map(distance,0,width,10,0);
    magnitude *= 0.1;
    
    mouse = new PVector(mouseX,mouseY);
    acceleration = mouse.sub(location);
    acceleration.setMag(magnitude);
    
    
    //[full] Velocity changes by acceleration and is limited by topspeed.
    velocity.add(acceleration);
    velocity.limit(topspeed);
    //[end]
    location.add(velocity);
  }

  void display() {
    stroke(0);
    strokeWeight(1);
    fill(175);
    ellipse(location.x,location.y,30,30);
    
    
    float SHOW = 20;
    
    //line between
    stroke(0,100);
    strokeWeight(1);
    line(location.x,location.y,mouseX,mouseY);
    
    //velocity
    stroke(0,255,0);
    strokeWeight(4);
    line(location.x,location.y,location.x + velocity.x * SHOW,location.y + velocity.y * SHOW);
    
    //acceleration
    stroke(255,0,0);
    strokeWeight(4);
    line(location.x,location.y,location.x + acceleration.x * SHOW,location.y + acceleration.y * SHOW);
    
    
    
  }

  void checkEdges() {
    if (location.x > width) {
      location.x = 0;
    } else if (location.x < 0) {
      location.x = width;
    }

    if (location.y > height) {
      location.y = 0;
    } else if (location.y < 0) {
      location.y = height;
    }
  }
}