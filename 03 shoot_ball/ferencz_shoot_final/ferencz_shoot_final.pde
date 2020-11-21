// Hlavni program - jednoducha hra (hitball)
// Procesing prednaska - Tvoje první hra
// Adam Ferencz 25.5. 2018
// Upraveno na kostru 29.9. 2019

// DATA - potrebne globalni promenne
float targetX;                                      // X-ova souradnice cile
float targetY;                                      // Y-ova souradnice cile
float targetD;                                      // prumer cile
float targetYSpeed;                                 // rychlost cile

float ballX;                                        // X-ova souradnice mice
float ballY;                                        // Y-ova souradnice mice
float ballD;                                        // prumer mice
float ballXSpeed;                                   // rychlost mice

boolean isFlying;     

int score;
int miss;

int red;
/* Funkce pripravy
 * Zde se nastavuje pocatecni stav programu.
 */
void setup() {
  size(640, 360);                                    // nastaveni velikosti okna

  targetD = 50;                                     // velikost cile
  targetX = width - targetD/2;                      // X-ova souradnice targetu se nastavi tesne vlevo
  targetY = height/2;                               // target zacne uprostred
  targetYSpeed = 1;                                 // rychlost targetu

  ballD = 25;                                       // nastavim velikost mice
  ballX = ballD/2;                                  // X-ova pozice se nastavi tesne vlevo
  ballY = height/2;                                 // mic zacne uprostred
  ballXSpeed = 5;                                   // rychlost mice

  isFlying = false;

  red = 0;

  score = 0;
  miss = 0;
}


/* Funkce vykreslovani
 * Funkce se cyklicky opakuje 60x za sekuncy (FPS).
 * V kazdem cyklu si funkce vypocita potrebne udaje a vykresli scenu.
 * Funkci jsme pomyslne rozdelili na vypocetni LOGIC a kreslivi DRAW sekci.
 */
void draw() { 
  // LOGIC SECTON -------------------------------------------------------------------------------------------------------------------

  //target
  targetY = targetY + targetYSpeed;
  if (targetY < 0  || targetY > height) {
    targetYSpeed = -targetYSpeed;
  }

  if (isFlying) {
    //fly
    ballX = ballX + ballXSpeed;
  } else {
    //mover
    ballY = mouseY;
  }

  //detekce doteku
  float d = dist(ballX, ballY, targetX, targetY);

  if (d < ballD/2 + targetD/2) {
    //trefil ses
    red = 255;
    score = score + 1;
    println(score);
    ballX = ballD/2;
    isFlying = false;
  }

  //reset protoze netrefa
  if (ballX > width) {
    ballX = ballD/2;
    isFlying = false;
    miss++;
  }


  // DRAW SECTION -------------------------------------------------------------------------------------------------------------------
  background(255);                                  // reset obrazu

  fill(red, 0, 0);                                        // barva vyplne kruhu
  //START HERE - dopln promenne, tak aby se vykreslil target a ball
  ellipse(targetX, targetY, targetD, targetD);         // vykreslim target
  ellipse(ballX, ballY, ballD, ballD);  // vykreslim ball
  textSize(21);
  text("Score: " + score,20, 30);
  text("Miss: " + miss,20, 60);
  
  if(score+miss == 0) {
    text("Hit rate: ?? %",20, 90);
  } else {
    text("Hit rate: " + 100/(score+miss) * score + " %",20, 90);
  }
  
}


/* Funkce detekce stisku libovolneho tlacitka
 * Po stisknuti libovoln0ho tlacitka se vykona to co je ve funkci.
 */
void keyPressed() {                                  // detekce stisknuti libovolneho tlacitka
  if (key == 's') {
    isFlying = !isFlying;
  }
}
