ArrayList<Particle> particles;
static final int COUNT = 100;

void setup() {
   size(800, 800);
   smooth();
   
   // create particles
   particles = new ArrayList<Particle>();
   
   for(int i=0; i < COUNT; i++){
     particles.add(new Particle());  
   }
}

void draw() {
  background(0);
  
  // draw each particles
  for(Particle particle : particles ){
    particle.display();
  }
}