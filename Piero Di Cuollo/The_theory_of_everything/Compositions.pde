void Agent()
{
 for (int i=0; i<=1500; i++) 
  {
   direction = (int) random(0, 8);

      if (direction == NORTH) {  
      posY -= stepSize; 
   } 
    else if (direction == NORTHEAST) {
      posX += stepSize;
      posY -= stepSize;
   } 
    else if (direction == EAST) {
      posX += stepSize;
   } 
    else if (direction == SOUTHEAST) {
      posX += stepSize;
      posY += stepSize;
   }
    else if (direction == SOUTH) {
      posY += stepSize;
   }
    else if (direction == SOUTHWEST) {
      posX -= stepSize;
      posY += stepSize;
   }
    else if (direction == WEST) {
      posX -= stepSize;
   }
    else if (direction == NORTHWEST) {
      posX -= stepSize;
      posY -= stepSize;
   }

    if (posX > width) posX = 0;
    if (posX < 0) posX = width;
    if (posY < 0) posY = height;
    if (posY > height) posY = 0;
    
    pushMatrix();
    fill(158, 49,60, 5);
    noStroke();
    ellipse(posX, posY, diameter, diameter);
    popMatrix();
   }

}

void Agent1()
{
 for (int i=0; i<=1500; i++) 
  {
    direction = (int) random(0, 8);

    if (direction == NORTH) {  
      posY1 -= stepSize; 
   } 
    else if (direction == NORTHEAST) {
      posX1 += stepSize;
      posY1 -= stepSize;
   } 
    else if (direction == EAST) {
      posX1 += stepSize;
   } 
    else if (direction == SOUTHEAST) {
      posX1 += stepSize;
      posY1 += stepSize;
   }
    else if (direction == SOUTH) {
      posY1 += stepSize;
   }
    else if (direction == SOUTHWEST) {
      posX1 -= stepSize;
      posY1 += stepSize;
   }
    else if (direction == WEST) {
      posX1 -= stepSize;
   }
    else if (direction == NORTHWEST) {
      posX1 -= stepSize;
      posY1 -= stepSize;
   }

    if (posX1 > width) posX1 = 0;
    if (posX1 < 0) posX1 = width;
    if (posY1 < 0) posY1 = height;
    if (posY1 > height) posY1 = 0;
    
    pushMatrix();
    fill(30, 92, 90, 5);
    noStroke();
    ellipse(posX1, posY1, diameter, diameter);
    popMatrix();
   }

}

void Composition0()
{
   
  float time = millis() * 0.000001;
  
   for(int i=0; i<numPoints; i++)
   {
    angle = TWO_PI / numPoints * i;
    float xx = map(21, 0, width, 0, 30);
    float yy = map(682, 0, height, 0, 300);
    
    float wave_height = radius * xx;
    int wave_amount = (int)yy;
    float radius_addon = wave_height * (sin( (angle + time) * wave_amount));
     
    float x = xyArray[i][0];
    float y = xyArray[i][1]; 
    
     x += sin(angle) * (radius + radius_addon);
     y += cos(angle) * (radius + radius_addon);
     
     pushMatrix();
     translate(width/2, height/2, 350);
     strokeWeight(1);
     stroke(0, 0, 0);
     line(x, y, 5, 5);
     popMatrix();
     
     pushMatrix();
     translate(width/2, height/2, 340);
     strokeWeight(1);
     stroke(225, 93, 88);
     line(x, y, 5, 5);
     popMatrix();
   
     pushMatrix();
     translate(width/2, height/2, 330);
     strokeWeight(1);
     stroke(225, 93, 88);
     line(x, y, 5, 5);
     popMatrix();
   
     pushMatrix();
     translate(width/2, height/2, 320);
     strokeWeight(1);
     stroke(225, 93, 88);
     line(x, y, 5, 5);
     popMatrix();
     
     pushMatrix();
     translate(width/2, height/2, 280);
     strokeWeight(1);
     stroke(114, 100, 84, 150);
     line(x, y, 5, 5);
     popMatrix();
     
     pushMatrix();
     translate(width/2, height/2, 270);
     strokeWeight(1);
     stroke(114, 100, 84, 150);
     line (x, y, 5, 5);
     popMatrix();
   
     pushMatrix();
     translate(width/2, height/2, 268);
     strokeWeight(1);
     stroke(0, 100, 100);
     line (x, y, 5, 5);
     popMatrix();
     
     pushMatrix();
     translate(width/2, height/2, 258);
     strokeWeight(1);
     stroke(0, 100, 100);
     line (x, y, 5, 5);
     popMatrix();
    }

}

void Composition1()
{
float time = millis() * 0.000001;
  
  
  
 for(int i=0; i<numPoints; i++)
 {
  angle = TWO_PI / numPoints * i;
  float xx = map(360, 0, width, 0, 10);
  float yy = map(367, 0, height, 0, 300);
  
  float wave_height = radius * xx;
  int wave_amount = (int)yy;
  float radius_addon = wave_height * (sin( (angle + time) * wave_amount));
   
  float x = xyArray[i][0];
  float y = xyArray[i][1]; 
  
  x += sin(angle) * (radius + radius_addon);
  y += cos(angle) * (radius + radius_addon);
     
   pushMatrix();
   translate(width/2, height/2);
   fill (240, 100, 100);
   ellipse (x, y, 5, 5);
   popMatrix();
   
   pushMatrix();
   translate(width/2, height/2);
   rotate(45);
   fill(240, 100, 100);
   ellipse (x, y, 5, 5);
   popMatrix();
 
   pushMatrix();
   translate(width/2, height/2);
   rotate(90);
   fill(240, 100, 100);
   ellipse(x, y, 5, 5);
   popMatrix();
 
   pushMatrix();
   translate(width/2, height/2);
   rotate(135);
   fill(240, 100, 100);
   ellipse(x, y, 5, 5);
   popMatrix();
   
   pushMatrix();
   translate(width/2, height/2);
   rotate(180);
   fill(120, 100, 100);
   ellipse (x, y, 5, 5);
   popMatrix();
   
   pushMatrix();
   translate(width/2, height/2);
   rotate(235);
   fill(120, 100, 100);
   ellipse (x, y, 5, 5);
   popMatrix();
 
   pushMatrix();
   translate(width/2,height/2);
   rotate(280);
   fill(0, 100, 100);
   ellipse (x, y, 5, 5);
   popMatrix();
 
   pushMatrix();
   translate(width/2, height/2);
   rotate(280);
   fill(0, 100, 100);
   ellipse (x, y, 5, 5);
   popMatrix();
   
   pushMatrix();
   translate(width/2, height/2);
   rotate(280);
   fill(0, 100, 100);
   ellipse (x, y, 5, 5);
   popMatrix();
  }

}

void Composition2()
{
 
  float time = millis() * 0.000001;
  
  for(int i=0; i<numPoints; i++)
 {
  angle = TWO_PI / numPoints * i;
  float xx = map(136, 0, width, 0, 30);
  float yy = map(391, 0, height, 0, 300);
  
  float wave_height = radius * xx;
  int wave_amount = (int)yy;
  float radius_addon = wave_height * (sin( (angle + time) * wave_amount));
   
  float x = xyArray[i][0];
  float y = xyArray[i][1]; 
  
  x += sin(angle) * (radius + radius_addon);
  y += cos(angle) * (radius + radius_addon);
   
 
   pushMatrix();
   translate(width/2, height/2);
   noStroke();
   fill(221, 92, 33);
   ellipse(x, y, 1, 1);
   popMatrix();
   
   pushMatrix();
   translate(width/2, height/2);
   rotate(45);
   noStroke();
   fill(221, 92, 33);
   ellipse(x, y, 1, 1);
   popMatrix();
 
 
   pushMatrix();
   translate(width/2, height/2);
   rotate(90);
   noStroke();
   fill(221, 92, 33);
   ellipse (x, y, 1, 1);
   popMatrix();
 
   pushMatrix();
   translate(width/2, height/2);
   rotate(135);
   noStroke();
   fill(221, 92, 33);
   ellipse(x, y, 1, 1);
   popMatrix();
   
   pushMatrix();
   translate(width/2, height/2);
   rotate(180);
   noStroke();
   fill(221, 92, 33);
   ellipse (x, y, 1, 1);
   popMatrix();
   
   pushMatrix();
   translate(width/2, height/2);
   rotate(235);
   noStroke();
   fill(221, 92, 33);
   ellipse (x, y, 1, 1);
   popMatrix();
 
   pushMatrix();
   translate(width/2, height/2);
   rotate(280);
   noStroke();
   fill(221, 92, 33);
   line (x, y, 1, 1);
   popMatrix();
  }

}
void Composition3()
{
  float time = millis() * 0.000001;
  
  for(int i=0; i<numPoints; i++)
 {
  angle = TWO_PI / numPoints * i;
  float xx = map(122, 0, width, 0, 122);
  float yy = map(845, 0, height, 0, 845);
  
  float wave_height = radius * xx;
  int wave_amount = (int)yy;
  float radius_addon = wave_height * (sin( (angle + time) * wave_amount));
   
  float x = xyArray[i][0];
  float y = xyArray[i][1]; 
  
  x += sin(angle) * (radius + radius_addon);
  y += cos(angle) * (radius + radius_addon);
   
   
  pushMatrix();
  translate(width/2, height/2);
  stroke(240, 100, 100);
  noFill();
  ellipse(x, y, 5, 5);
  popMatrix();
 }      

}


void Composition4()
{
  float time = millis() * 0.000011;
  
  for(int i=0; i<numStrings; i++)
 {
  angle = TWO_PI / numStrings * i;
  float xx1 = map(1066, 0, width, 0, 30);
  float yy1 = map(62, 0, height, 0, 300);
  
  float wave_height = radius * xx1;
  int wave_amount = (int)yy1;
  float radius_addon = wave_height * (sin( (angle + time) * wave_amount));
   
  float x1 = xyArray1[i][0];
  float y1 = xyArray1[i][1]; 
  
  x1 += sin(angle) * (radius + radius_addon);
  y1 += cos(angle) * (radius + radius_addon);
   
  pushMatrix();
  strokeWeight(0.4);
  stroke(0, 0, 100);
  noFill();
  curve(x1, y1, width/2,height/2, 20, 20, 1000, 1000);
  popMatrix();
 
  pushMatrix();
  strokeWeight(0.4);
  stroke(0, 0, 100);
  noFill();
  curve(x1, y1, width/2,height/2, width-50, height-50, 1000, 1000);
  popMatrix();
 
  pushMatrix();
  strokeWeight(0.4);
  stroke(0, 0, 100);
  noFill();
  curve(x1, y1, width/2,height/2, 20, height-50, 1000, 1000);
  popMatrix();
 
  pushMatrix();
  strokeWeight(0.4);
  stroke(0, 0, 100);
  noFill();
  curve(x1, y1, width/2,height/2, width-20, 20, 1000, 1000);
  popMatrix();
 }

}

void blackHole()
{
  t += 0.025;            
  
  if(t >= 1) 
  t = 0;
  
  translate(width/2, height/2);

  for(int i = 0; i<n; i++)
  {
   randomSeed(i);

   float ti = t + norm(i, 0, n);
  
   ti = ti % 1;
  
   float phi = random (random(TAU))+HALF_PI;
   float r = map(random(random(1)), 0, 1, 400, 400);
   float rr = map (ease(ti, 2), 0, 1, r, 100);
   float x = rr * cos(phi);
   float y = rr * sin(phi);
  
   float a = map(cos(map(ti, 0, 1, 0, TAU) - PI), 1, -1, 100, 0);
  
    if(random(1)< 0.05)
     {
      col0 = color(black);
      sw = 2;
     }
    
    else if(random(1)> 0.96)
     {
      col0 = color(blue, 80, 100);
      sw = 1;
     }
    
    else
     {
      col0 = color(300);
      sw = 0.4;
     }
    
    stroke(col0, a);
    strokeWeight(sw);
    point(x, y);
   }

}



void Composition5()
{
  pushMatrix();
  stroke(0, 0, 100);
  strokeWeight(5);
  noFill();
  ellipseMode(CENTER);
  ellipse(width/2, height/2, 400, 400);
  popMatrix();
  
  pushMatrix();
  strokeWeight(3);
  stroke(0, 0, 100);
  fill(0, 0, 100);
  ellipseMode(CENTER);
  ellipse(width/2, height/2, 10, 10);
  popMatrix();
}