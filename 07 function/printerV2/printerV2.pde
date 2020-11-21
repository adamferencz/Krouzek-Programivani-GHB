int id, maxId;

void setup() {
  size(640, 420);
  id = 0;
  maxId = 4;
}

void draw() {
  fill(255);
  rect(0, 0, 80, 30);
  fill(0);
  text("ID> " + id, 10, 10);
  
}

void mouseClicked() {
  if (id == 0){
    printPicture();
  } else if ( id == 1){
    printTriangle();
  } else if ( id == 2){
    obr(mouseX, mouseY);
  } else if ( id == 3){
    smile();
  } else if ( id == 4){
    star(mouseX, mouseY);
  } 
}



void mouseWheel(MouseEvent event) {
  float direction = event.getCount();
  if (direction == 1) {
    id += 1;
  } 

  if (direction == -1) {
    id -= 1;
  }

  if (id < 0 ) {
    id = maxId;
  } else if (id > maxId) {
    id = 0;
  }
}
