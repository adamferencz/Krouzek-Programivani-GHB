
Faller f;
Catcher c;

void setup(){
  size(640, 320);
  f = new Faller();
  c = new Catcher();
}

void draw(){
  background(255);
  
  f.fall();
  if (f.landed()) f.reset();
  f.catcheMe(c);
  
  c.move();
  
  
  c.display();
  
  f.display();
}

void mouseReleased(){
 f.reset(); 
}
