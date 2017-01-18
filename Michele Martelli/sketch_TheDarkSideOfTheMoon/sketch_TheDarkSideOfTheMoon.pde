float maxX;
float maxY;
float x;
float y;
int r = 200; // right, moving right to the center

void setup() 
{
  size(900, 900);
  smooth();
  noFill();
}

void draw() 
{
  //BACKGROUND, + FIXED FIGURES
  background(0);
  stroke(255);
  noFill();
  triangle(450, 100, 50, 800, 850, 800); 
  fill(255, 255, 255, 220);
  stroke(255);
  PShape w;
     w = createShape();
     w.beginShape();
     w.vertex(0, 500);
     w.vertex(0, 510);
     w.vertex(251, 420);
     w.vertex(257, 410);
     w.vertex(0, 500);
     w.vertex(257, 410);
     w.vertex(410, 390);
     w.vertex(390, 460);
     w.vertex(251, 420);
     
     shape (w, 10, 10);
     w.endShape();
     
    noFill();
  
  // SQUARES CIRCLE MOVE
  maxX = (float)180/width*mouseX;
  maxY = (float)180/height*mouseX;

  translate(width/2, height/2);
  for (int i = 0; i < 360; i+=2) 
  {
     x = sin(radians(i)) * maxX;
     y = cos(radians(i)) * maxY;
    
    //1st RED FIGURE
    stroke(255, 3, 3);
    pushMatrix();
    translate(x+r, y-120);
    rotate(radians(i-frameCount));
    rect(0, 0, 35, 35);
    popMatrix();
    
    pushMatrix();
    translate(-x+r, -y-120);
    rotate(radians(i-frameCount));
    rect(0, 0, 35, 35);
    popMatrix();
    
    //2nd ORANGE FIGURE
    stroke(255, 142, 3);
    pushMatrix();
    translate(x+r, y-40);
    rotate(radians(i-frameCount));
    rect(0, 0, 35, 35);
    popMatrix();
    
    pushMatrix();
    translate(-x+r, -y-40);
    rotate(radians(i-frameCount));
    rect(0, 0, 35, 35);
    popMatrix();
    
    
    //3rd YELLOW FIGURE
    stroke(255, 247, 3);
    pushMatrix();
    translate(x+r, y+40);
    rotate(radians(i-frameCount));
    rect(0, 0, 35, 35);
    popMatrix();
    
    pushMatrix();
    translate(-x+r, -y+40);
    rotate(radians(i-frameCount));
    rect(0, 0, 35, 35);
    popMatrix();
    
    
    //4th GREEN FIGURE
    stroke(3, 255, 46);
    pushMatrix();
    translate(x+r, y+120);
    rotate(radians(i-frameCount));
    rect(0, 0, 35, 35);
    popMatrix();
    
    pushMatrix();
    translate(-x+r, -y+120);
    rotate(radians(i-frameCount));
    rect(0, 0, 35, 35);
    popMatrix();

    //5th LIGHT BLU FIGURE
    stroke(3, 232, 255);
    pushMatrix();
    translate(x+r, y+200);
    rotate(radians(i-frameCount));
    rect(0, 0, 35, 35);
    popMatrix();
    
    pushMatrix();
    translate(-x+r, -y+200);
    rotate(radians(i-frameCount));
    rect(0, 0, 35, 35);
    popMatrix();
    
    //6th PURPLE FIGURE
    stroke(221, 3, 255);
    pushMatrix();
    translate(x+r, y+280);
    rotate(radians(i-frameCount));
    rect(0, 0, 35, 35);
    popMatrix();
    
    pushMatrix();
    translate(-x+r, -y+280);
    rotate(radians(i-frameCount));
    rect(0, 0, 35, 35);
    popMatrix();
 
  }
}