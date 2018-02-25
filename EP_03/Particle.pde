class Particle {
  float centerX = 0, centerY = 0;
  float x, y = 0;
  float xradius = 0;
  float yradius = 0;
  float xangle = 0;
  float yangle = 0;
  float xspeed = 0;
  float yspeed = 0;
  float cradius = 5;
  
  Particle() {
    // initialize variables
   centerX = width/2;
   centerY = height/2;
   
   xradius = random(width/2);
   yradius = random(height/2);
   
   xspeed = random(0.1);
   yspeed = random(0.1);
  }
  
  void display() {
   // calculate the position
   x = centerX + xradius * cos(xangle);
   y = centerY + yradius * sin(yangle);
   
   ellipse(x, y, cradius, cradius);
   
   xangle += xspeed;
   yangle += yspeed;
  }
};