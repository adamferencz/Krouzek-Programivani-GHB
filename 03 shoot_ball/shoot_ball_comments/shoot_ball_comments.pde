// Hlavni program - jednoducha hra (hitball)
// Procesing prednaska - Tvoje první hra
// Adam Ferencz 25.5. 2018

// DATA - potrebne globalni promenne
float targetX;                                      // X-ova souradnice cile
float targetY;                                      // Y-ova souradnice cile
float targetD;                                      // prumer cile
float targetYSpeed;                                 // rychlost cile

float ballX;                                        // X-ova souradnice mice
float ballY;                                        // Y-ova souradnice mice
float ballD;                                        // prumer mice
float ballXSpeed;                                   // rychlost mice
boolean ballFlying;                                 // stav mice (leti/neleti)

int hit;                                            // pocitadlo tref
int miss;                                           // pocitadlo netref
float rate;                                         // procentualni uspesnost
           
                                                    
/* Funkce pripravy
 * Zde se nastavyje pocatecni stav programu.
 */
void setup(){
  size(640,360);                                    // nastaveni velikosti okna
 
  targetD = 50;                                     // velikost cile
  targetX = width - targetD/2;                      // X-ova souradnice targetu se nastavi tesne vlevo
  targetY = height/2;                               // target zacne uprostred
  targetYSpeed = 1;                                 // rychlost targetu
 
  ballD = 25;                                       // nastavim velikost mice
  ballX = ballD/2;                                  // X-ova pozice se nastavi tesne vlevo
  ballY = height/2;                                 // mic zacne uprostred
  ballXSpeed = 5;                                   // rychlost mice
  ballFlying = false;                               // pocatecni stav mice je false tj. nevystrelen

  hit = 0;                                          
  miss = 0;
  rate = 0; 
}


/* Funkce vykreslovani
 * Funkce se cyklicky opakuje 60x za sekuncy (FPS).
 * V kazdem cyklu si funkce vypocita potrebne udaje a vykresli scenu.
 * Funkci jsme pomyslne rozdelili na vypocetni LOGIC a kreslivi DRAW sekci.
 */
void draw(){ 
  // LOGIC SECTON -------------------------------------------------------------------------------------------------------------------
  targetY = targetY + targetYSpeed;                 // pohyb cile

  if (targetY - targetD/2 < 0 || targetY + targetD/2 > height ){    
    targetYSpeed = targetYSpeed * -1;               // odraz targetu od steny
  }
  
  if (ballFlying == false){                         // kontrola zda je mic vystrelen
    ballY = mouseY;                                 // horizontalni pohyb mice podle mysi
  } else {
    ballX = ballX + ballXSpeed;                     // let mice po jeho vystreleni
  }
  
  float d = dist(ballX,ballY,targetX,targetY);      // vypocet vzdalenosti mice a targetu
  if (d < ballD/2 + targetD/2){                     // kontrola zda se prekryva mic a target
    ballFlying = false;                             // mic jiz neleti
    ballX = ballD/2;                                // mic se vraci do zakladni polohy
    hit = hit +1;                                   // zapocitavame score
  }
  
  if (ballX > width){                               // kontrola zda je mic mimo obrazovku
    ballFlying = false;                             // mic jiz neleti                     
    ballX = ballD/2;                                // mic se vraci do zakladni polohy
    miss = miss + 1;                                  // je zapocitan miss
  }
  
  if (hit+miss != 0) rate = 100*hit/(hit+miss);     // pocitani procentualni uspesnosti s osetrenim chyby ZERODIVISION (deleni nulou)
  
  // DRAW SECTION -------------------------------------------------------------------------------------------------------------------
  background(255);                                  // reset obrazu
  
  fill(255);                                        // barva vyplne kruhu
  ellipse(targetX,targetY,targetD,targetD);         // vykreslim target
  ellipse(ballX,ballY,ballD,ballD);                 // vykreslim ball
  
  fill(0);                                          // barva pisma
  textSize(20);                                     // velikost pisma
  text("Hit: " + hit, width/2,20);                  // Vypis hit
  text("Miss: " + miss, width/2,40);                // Vypis miss
  text("Rate: " + rate + "%", width/2,60);          // Vypis rate
  
}


/* Funkce detekce stisku libovolneho tlacitka
 * Po stisknuti libovoln0ho tlacitka se vykona to co je ve funkci.
 */
void keyPressed(){                                  // detekce stisknuti libovolneho tlacitka
  ballFlying = true;                                // vystreleni mice
}