class Player{
  int x;
  int y;
  String name;
  int score;
  color clr;
  
 Player(String _name){
   x = 400;
   y = 400;
   name = _name;
   score = 0;
   clr = color(random(255),random(255), random(255));
 }
 
 void move(String[] comm){
   for (String cmd : comm) {
      switch(cmd) {
      case "a":
        if (x > 5) x -=5;
        break;
      case "d": 
        if (x < width-5) x +=5;
        break;
      case "w": 
        if (y > 0+5) y -=5;
        break;
      case "s": 
        if (y < height-5) y +=5;
        break;
      }
    } 
 }
 
 boolean check(){
   float d = dist(pressent.x, pressent.y, x, y);
   
   if (d < 50/2 + 100/2){
     return true;
   } else {
     return false; 
   }
 }
 
 void display(){
   fill(clr);
   ellipse(x, y, 50, 50);
   fill(0);
   textSize(18);
   textAlign(CENTER, CENTER);
   text(name.charAt(0) + ":" + score,x, y);
 }
}
