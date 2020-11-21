

void setup() {
  size(1000, 500);
}


void draw() {
  
  background(255);
  
  //projdi vsechny radky
  for (int i = 0; i < mouseY / 100 +1; i++) {
    //vykresli radek
    for (int j = 0; j < mouseX /100 +1; j++) { 
      rect(j*100, i*100, 100, 100);
    }
  }





  //rect(200,100,100,100);
  //rect(300,100,100,100);
}
