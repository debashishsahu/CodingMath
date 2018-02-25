
float arrowX, arrowY, dx, dy, angle; 
float pradius, pspeed, pangle, pcenterX, pcenterY;

void setup() {
   size(400, 400);
   
   // initialize variables
   arrowX = width/2;
   arrowY = height/2;
   dx = 0; dy = 0;
   angle = 0;
   
   // for the circular path
   pradius = 100;
   pcenterX = width/2;
   pcenterY = height/2;
   
   pspeed = 0.005;
   pangle = 0;
}

void draw() {
  background(0);
  
  // calculate of the arrow on the circular path
  arrowX = pcenterX + pradius * cos(pangle);
  arrowY = pcenterY + pradius * sin(pangle);
  
  pushMatrix();
    translate(arrowX, arrowY);
    rotate(angle);
    stroke(255);
    line(-20, 0, 20, 0);
    line(10, -10, 20, 0);
    line(10, 10, 20, 0);
  popMatrix();
  
  dx = mouseX - arrowX;
  dy = mouseY - arrowY;
  angle = atan2(dy, dx);
  
  pangle += pspeed;
}