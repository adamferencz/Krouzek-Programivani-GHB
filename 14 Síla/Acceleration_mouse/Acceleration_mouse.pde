// Declare Mover object.
Mover mover;

void setup() {
  //size(640,360);
  fullScreen();
  // Create Mover object.
  mover = new Mover();
  
  //MY
  //frameRate(2);
}

void draw() {
  background(255);

  //[full] Call functions on Mover object.
  mover.update();
  //mover.checkEdges();
  mover.display();
  //[end]
}