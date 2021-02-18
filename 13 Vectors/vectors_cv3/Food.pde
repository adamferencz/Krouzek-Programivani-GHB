class Food {
  PVector location;
  color c;
  float r;
  Food(){
    location = new PVector(random(0,width), random(0,height));
    c = color(random(0,255), random(0,255), random(0,255));
    //c = #CC6600;
    r = 30;
  }
   
  void display() {
    stroke(0);
    fill(c);
    ellipse(location.x, location.y, r, r);
  }
}
