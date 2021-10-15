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
         
                                                    
/* Funkce pripravy
 * Zde se nastavuje pocatecni stav programu.
 */
void setup(){
  size(640,360);                                    // nastaveni velikosti okna
 
  targetD = 50;                                     // velikost cile
  targetX = width - targetD/2;                      // X-ova souradnice targetu se nastavi tesne vlevo
  targetY = height/2;                               // target zacne uprostred
  targetYSpeed = 7;                                 // rychlost targetu
 
  ballD = 25;                                       // nastavim velikost mice
  ballX = ballD/2;                                  // X-ova pozice se nastavi tesne vlevo
  ballY = height/2;                                 // mic zacne uprostred
  ballXSpeed = 5;                                   // rychlost mice

}


/* Funkce vykreslovani
 * Funkce se cyklicky opakuje 60x za sekuncy (FPS).
 * V kazdem cyklu si funkce vypocita potrebne udaje a vykresli scenu.
 * Funkci jsme pomyslne rozdelili na vypocetni LOGIC a kreslivi DRAW sekci.
 */
void draw(){ 
  // LOGIC SECTON -------------------------------------------------------------------------------------------------------------------
  
  targetY = targetY + targetYSpeed;
  
  //odraz se nahoru od spoda
  if(targetY > height-targetD/2){
    targetYSpeed = -targetYSpeed; 
  }
  
  if(targetY < 0+targetD/2){
    targetYSpeed = -targetYSpeed; 
  }
  
  
  
  ballY = mouseY;
  
  
   
  // DRAW SECTION -------------------------------------------------------------------------------------------------------------------
  background(255);                                  // reset obrazu
  
  fill(255);                                        // barva vyplne kruhu
  //START HERE - dopln promenne, tak aby se vykreslil target a ball
  ellipse(targetX, targetY, targetD, targetD);         // vykreslim target
  ellipse(ballX, ballY, ballD, ballD);                 // vykreslim ball
  
}


/* Funkce detekce stisku libovolneho tlacitka
 * Po stisknuti libovoln0ho tlacitka se vykona to co je ve funkci.
 */
void keyPressed(){                                  // detekce stisknuti libovolneho tlacitka

}
