// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

//Particle p;
 ParticleSystem ps;
 ArrayList systems;

void setup() {
  size(800, 200);
  
  ps = new ParticleSystem();
  
  background(255);
  smooth();
}

void draw() {
  background(255);
  
  ps.addParticle();
  ps.run();
  
}
