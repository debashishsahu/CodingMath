
float arrowX, arrowY, dx, dy, angle;
void setup() {
   size(400, 400);
   
   // initialize variables
   arrowX = width/2;
   arrowY = height/2;
   dx = 0; dy = 0;
   angle = 0;
}

void draw() {
  background(0);
 
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
}