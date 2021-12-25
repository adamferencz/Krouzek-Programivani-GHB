class Pressent{
  int x;
  int y;
 Pressent(){
   x = int(random(width));
   y = int(random(height));
 }
 
 void port(){
   x = int(random(width));
   y = int(random(height));
 }
 
 void move(){
   //x = mouseX;
   //y = mouseY;
    // int cmd = int(random(1,4));
    //switch(cmd) {
    //  case 1:
    //    if (x > 5) x -=5;
    //    break;
    //  case 2: 
    //    if (x < width-5) x +=5;
    //    break;
    //  case 3: 
    //    if (y > 0+5) y -=5;
    //    break;
    //  case 4: 
    //    if (y < height-5) y +=5;
    //    break;
    //  }
 }
 
 void display(){
   imageMode(CENTER);
   image(pressentImage, x, y);
   //circle(x, y, 100);
 }
 
}
