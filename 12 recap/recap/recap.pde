int COUNT = 20;
int score = 0;

Faller[] f = new Faller[COUNT];

Catcher c;
PImage adam;
PImage money;

void setup(){
  size(1600, 900);
  
  for(int i = 0; i < COUNT; i++){
    f[i] = new Faller();
  }
   
  c = new Catcher();
  
  adam = loadImage("adam.jpg");
  money = loadImage("money.png");
}

void draw(){
  background(255);
  
  if(score == 20){
   //huraaaaaa 
  }
  
  c.move();
  c.display();
  
  score = 0;
  for(int i = 0; i < COUNT; i++){
    f[i].fall();
    if (f[i].landed()) f[i].reset();
    f[i].catcheMe(c);
    
    f[i].display();
    
    if (f[i].isCatched) score++;
    
  }
  
  fill(0);
  text(score,10,10);
  fill(255);
}
