class LightEnemy extends Enemy {
  int flash;
  LightEnemy(float randy) {
    super(randy);
    hp = 2;
    speed = 0.666;
    flash = 20;
  }

  void display() {   
    fill(color(0));
    triangle(x, y, x + d, y + d, x + d, y);
    fill(0);
    text(hp, x+10, y);
  }

  void move() {

    super.move();

    flash--;
    if (flash <= 0) {
      float r = random(0, 4);

      if (r < 2) {
        y-=speed*100;
      } else {
        y+=speed*100;
      }

      flash = 120;
    }
  }
}
