
PVector center;
PVector mouse;
void setup(){
 size(640, 480);
 center = new PVector(width/2, height/2);
 mouse = new PVector(mouseX, mouseY);
 
 
}

void draw(){
 background(255);
 
 mouse.set(mouseX, mouseY);
 
 stroke(0);
 line(0,0, center.x, center.y);
 line(0,0, mouse.x, mouse.y);
 
 PVector res = PVector.sub(mouse, center);
 stroke(255,0, 0);
 line(center.x, center.y, res.x, res.y);
 
 
}
