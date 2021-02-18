int timer;
Player player;
ArrayList<Food> food;
void setup() {
  size(1080, 920);
  background(255);
  player = new Player();
  food = new ArrayList();
  timer = 0;
}

void draw() {
  cleanBackground();

  if (timer == 60) {
    food.add(new Food());
    timer = 0;
  }

  for (Food f : food) {
    f.display();
  }

  //for (int i = 0; i < food.size(); i++){
  //   Food f = food.get(i);
  //   f.display(); 
  //}


  
  player.checkAllFood();
  
  for (int i = food.size() - 1; i > 0; i--) {
    Food f = food.get(i);
    f.display();
  }

  player.update();
  player.display();


  timer++;
}

void cleanBackground() {
  noStroke();
  fill(255, 20);
  rect(0, 0, width, height);
}

void mouseReleased(){
  PVector mouse = new PVector(mouseX, mouseY);
  PVector force = PVector.sub(mouse, player.location).setMag(30);  
  player.applyForce(force );
}
