
float[][] bc = {{200,200},{300,300},{500,500}};
ArrayList<Barrel> barrels;
void setup() {
  size(800, 800);
  barrels = new ArrayList<Barrel>();
  
  for (int i = 0; i < 3; i++) {
    barrels.add(new Barrel(bc[i][0], bc[i][1]));  
  }
}

void draw() {
  for (Barrel barrel : barrels) {
    barrel.display();
  }
}
