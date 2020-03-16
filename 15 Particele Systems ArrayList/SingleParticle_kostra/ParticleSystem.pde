class ParticleSystem {
  ArrayList<Particle> particleSystem;

  ParticleSystem() {
    particleSystem = new ArrayList();
  }

  void addParticle() {
    particleSystem.add(new Particle(new PVector(width/2, 20)));
  }

  void run() {
    for (int i = particleSystem.size() - 1; i >= 0; i--) {
      Particle p = particleSystem.get(i);
      p.run();

      if (p.isDead()) {
        particleSystem.remove(i);
      }
    }
  }
}
