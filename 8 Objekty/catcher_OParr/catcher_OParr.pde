int COUNT = 20;

//Faller f;
Faller[] f = new Faller[COUNT];

Catcher c;

void setup(){
  size(640, 320);
  
  //f = new Faller();
  for(int i = 0; i < COUNT; i++){
    f[i] = new Faller();
  }
   
  c = new Catcher();
}

void draw(){
  background(255);
  
  c.move();
  c.display();
  
  //f.fall();
  //if (f.landed()) f.reset();
  //f.catcheMe(c);
  for(int i = 0; i < COUNT; i++){
    f[i].fall();
    if (f[i].landed()) f[i].reset();
    f[i].catcheMe(c);
    
    f[i].display();
  }
}

void mouseReleased(){
 //f.reset(); 
 //f1.reset(); 
}
