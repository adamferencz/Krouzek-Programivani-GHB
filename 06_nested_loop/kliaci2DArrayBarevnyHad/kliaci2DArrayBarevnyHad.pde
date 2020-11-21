
boolean painting;
int sj, si;
int [][][] sel;
int bodySize;

void setup() {
  size(1000, 500);
  si = 1;
  sj = 5;

  sel = new int[5][10][4];

  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 10; j++) {
      sel[i][j][0] = -1;//sel[i][j][0] -- poradi ,,  sel[i][j][1] --- barva
    }
  }

  painting = false;
  bodySize = 0;
}


void draw() {

  if (painting) {
    drawArray();
  }

  //projdi vsechny radky
  for (int i = 0; i < 5; i++) {
    //vykresli radek
    for (int j = 0; j < 10; j++) { 

      if (sel[i][j][0] >= 0) {//jdu barvit
        
        fill(sel[i][j][1], sel[i][j][2], sel[i][j][3]);
              
      } else {
        fill(255, 255, 255);
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

void mouseReleased() {
  painting = false;
}

void mousePressed() {
  painting = true;
}

void shift() {
  for (int i = 0; i < 5; i++) {
    //vykresli radek
    for (int j = 0; j < 10; j++) {
      sel[i][j][0]--;
    }
  }
}

void keyPressed(){
  

}

void drawArray() {
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
        if (sel[i][j][0] < 0) {
          if (bodySize > 15) {
            shift();
            bodySize--;
          }
          sel[i][j][0] = bodySize;
          
          sel[i][j][1] = int(random(0,255));//r
          sel[i][j][2] = int(random(0,255));//g
          sel[i][j][3] = int(random(0,255));//b
          bodySize++;
        }
      }
    }
  }
}
