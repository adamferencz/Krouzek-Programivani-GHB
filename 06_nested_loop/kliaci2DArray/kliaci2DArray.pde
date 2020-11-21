

int sj, si;

void setup() {
  size(1000, 500);
  si = 1;
  sj = 5;
}


void draw() {

  //projdi vsechny radky
  for (int i = 0; i < 5; i++) {
    //vykresli radek
    for (int j = 0; j < 10; j++) { 

      if (si == i && sj == j) {
        fill(255, 0, 0);
      } else {
        fill(255);
      }

      rect(j*100, i*100, 100, 100);
    }
  }
}
//dist

//every rect shoud have own boolean<<


void mouseClicked() {
  //projdi vsechny radky
  //si = si +1; //down
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
      }
    }
  }
}
