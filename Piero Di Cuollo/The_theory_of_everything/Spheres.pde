void Moon()
{
 pushMatrix();
 translate (width/2, height/2, -100);
 rotateY(radians(frameCount*0.2));
 noStroke();
 directionalLight(0, 0, 86, 1, 1, 1);
 sphere(400);
 popMatrix();
}


void Sun()
{
  float time = millis() * 0.000001;
  
for(int i=0; i<numPoints; i++)
 {
  angle = TWO_PI / numPoints * i;
  float xx = map(823, 0, width, 0, 30);
  float yy = map(521, 0, height, 0, 300);
  
  float wave_height = radius * xx;
  int wave_amount = (int)yy;
  float radius_addon = wave_height * (sin( (angle + time) * wave_amount));
   
   
  float x = xyArray[i][0];
  float y = xyArray[i][1]; 
  
   
  x += sin(angle) * (radius + radius_addon);
  y += cos(angle) * (radius + radius_addon);
   
  pushMatrix();
  translate(width/2, height/2);
  stroke(0, 0, 100);
  noFill();
  ellipse(x, y, 1, 1);
  popMatrix();
   
  pushMatrix();
  translate(width/2, height/2);
  rotate(45);
  stroke(0, 0, 100);
  noFill();
  ellipse(x, y, 1, 1);
  popMatrix();
 
  pushMatrix();
  translate(width/2, height/2);
  rotate(90);
  stroke(0, 0, 100);
  noFill();
  ellipse(x, y, 1, 1);
  popMatrix();
 
  pushMatrix();
  translate(width/2, height/2);
  rotate(135);
  stroke(0, 0, 100);
  noFill();
  ellipse(x, y, 1, 1);
  popMatrix();
   
  pushMatrix();
  translate(width/2, height/2);
  rotate(180);
  stroke(0, 0, 100);
  noFill();
  ellipse (x, y, 1, 1);
  popMatrix();
   
  pushMatrix();
  translate(width/2, height/2);
  rotate(235);
  stroke(0, 0, 100);
  noFill();
  ellipse (x, y, 1, 1);
  popMatrix();
 
  pushMatrix();
  translate(width/2, height/2);
  rotate(280);
  stroke(0, 0, 100);
  noFill();
  line (x, y, 5, 5);
  popMatrix();
 }

}