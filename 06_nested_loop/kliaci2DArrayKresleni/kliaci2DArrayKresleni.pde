
boolean painting;
int sj, si;
boolean [][] sel;

void setup() {
  size(1000, 500);
  si = 1;
  sj = 5;

  sel = new boolean[5][10];

  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 10; j++) {
      sel[i][j] = false;
    }
  }
  
  painting = false;
}


void draw() {
  
  if (painting){
    drawArray();
  }
  
  //projdi vsechny radky
  for (int i = 0; i < 5; i++) {
    //vykresli radek
    for (int j = 0; j < 10; j++) { 

      if (sel[i][j] == true) {
        fill(255, 0, 0);
      } else {
        fill(255);
      }
      
      if (si == i && sj == j) {
        fill(255, 0, 0);
      }

      rect(j*100, i*100, 100, 100);
    }
  }
}
//dist

//every rect shoud have own boolean<<

void mouseReleased(){
  painting = false;
}

void mousePressed() {
  painting = true;
}

void drawArray(){
  for (int i = 0; i < 5; i++) {
    //vykresli radek
    for (int j = 0; j < 10; j++) { 
      //mouseX, mouseY
      //i, j
      int x = j * 100;
      int y = i * 100;
      if (x < mouseX && x + 100 > mouseX && y < mouseY && y + 100 > mouseY) {//fixme
        //hej kamo zapis si nekam ze je to ctverecek i = 1, j = 0
        si = i;
        sj = j;
        
        sel[i][j] = true;
      }
    }
  }
}
