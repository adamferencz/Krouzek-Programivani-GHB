class Jezus{
  float x;
  float y;
  float speed;
  //pridat mu 10 naboju
  Pressent[] b = new Pressent[10];
//pridat pocitadlo na reaload  
  
  //pridat flag zda je nabito
  
  Jezus(){
    x = width/2;
    y = height/2;
    speed = 5;
    for(int i = 0; i < 10; i++){
      b[i] = new Pressent(this);
    }
    //inicializovat spravne prodane hodnoty
 }
 
 //pohyb vsech naboju - zavolat jejich funkci, ketra to umi
 void  movePressents(){
    for(int i = 0; i < 10; i++){
      b[i].move();
    }
 }
 
 //vystrelit na urcitou vzdalenost
 void shoot(int dir){
   for(int i = 0; i < 10; i++){
     if(b[i].isFlying == false){
       b[i].shoot(dir);
       break;
     }
   }
 }
 
 // dobijeni naboju
 
   void display() {
    //circle(x, y, 50);
    
    imageMode(CORNER);
    jezusImg.resize(0,50);
    image(jezusImg,x,y);
    
    //zobrazovat naboje
    for(int i = 0; i < 10; i++){
      b[i].display();
    }
  }
  
  void move(int dir){
    if (dir == 0) {
      y -= speed;//up
    } else if (dir == 1) {
      y += speed;//down
    } else if (dir == 2) {
      x -= speed;//left
    } else if (dir == 3) {
      x += speed;//right
    }
  }
 
 void reload(){
   for(int i = 0; i < 10; i++){
      b[i].reset();
    }
 }
  
}
