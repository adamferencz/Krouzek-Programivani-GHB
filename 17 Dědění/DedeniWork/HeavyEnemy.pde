class HeavyEnemy extends Enemy{
  HeavyEnemy(float randy) {
    super(randy);
    hp = 10;
    speed = 0.33;
  }
  
  void display() {   
    fill(color(255, 200, 200));
    rect(x, y, d, d);
    fill(0);
    text(hp,x+10,y);
  }
}
