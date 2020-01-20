int COUNT = 20;

Faller[] f = new Faller[COUNT];

Catcher c;

void setup(){
  size(1600, 900);
  
  for(int i = 0; i < COUNT; i++){
    f[i] = new Faller();
  }
   
  c = new Catcher();
}

void draw(){
  background(255);
  
  c.move();
  c.display();
  
  for(int i = 0; i < COUNT; i++){
    f[i].fall();
    if (f[i].landed()) f[i].reset();
    f[i].catcheMe(c);
    
    f[i].display();
  }
}
