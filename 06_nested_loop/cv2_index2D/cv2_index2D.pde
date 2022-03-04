int ai = 0;
int aj = 0;

boolean[][] field;
int size;
int count;
void setup() {
  size(500, 500);
  size = 50;
  count = width/size;
  field  = new boolean[count][count];
  
  
  for (int i = 0; i < count; i ++) {
    for (int j = 0; j < count; j ++) {
      field[i][j] = false;
    }
  }
  
  
}

void draw() {
  background(255);
  for (int i = 0; i < count; i ++) {
    for (int j = 0; j < count; j ++) {
      if (field[i][j] == true){
        fill(255, 0,0);
      } else {
        fill(255);
      }
      rect(i*size, j*size, size, size);
      // && altgr + C
      if(mouseY > j*size && mouseY < j*size + size && mouseX > i*size && mouseX < i*size + size){
        ai = i;
        aj = j;
      }
    }
  }
  fill(255, 200, 200);
  rect(ai*size, aj*size, size, size);
  fill(255);
}


void mouseClicked(){
  field[ai][aj] = true;
}
