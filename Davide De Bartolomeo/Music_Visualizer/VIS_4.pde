void vis4()
{
  float radius = 72 ; // Size of the circle
  int numPoints = 512; // Number of points 
  float[][] xyArray = new float[numPoints][3];
  float angle;

  rectMode(CORNER);

  smooth();

  background(0);
  
  
  for(int i=0;i<numPoints;i++) 
  { 
    angle = TWO_PI / (float)numPoints ; 

    float x = radius * sin(angle * i);
    float y = radius * cos(angle * i);
    xyArray[i][0] = x; 
    xyArray[i][1] = y; 
    xyArray[i][2] = 0.0;
  }

  for(int i=0;i<numPoints;i++)
  { 
    angle = TWO_PI / (float)numPoints * i; 
    
    int wave_amount = 15 ;
    
    float radius_addon = (spettro[i] * 600)* sin((angle) *  spettro[i] * 2 * wave_amount);
    
    
    float x = xyArray[i][0];
    float y = xyArray[i][1];
    
    x += sin(angle)*(radius + radius_addon);
    y += cos(angle)*(radius + radius_addon);
    
    
    int rnd = (int)random(3,15);
   
    pushMatrix();
    translate(width/2, height/2);
    rotate(PI - 40);
    strokeWeight(3);
    stroke(0, 255, 0);
    fill(0, 255, 0);
    ellipse(x, y, rnd, rnd);
    popMatrix();
    
    pushMatrix();
    translate(width/2, height/2);
    rotate(PI);
    strokeWeight(3);
    stroke(0, 255, 0);
    fill(0, 255, 0);
    ellipse(x, y, rnd, rnd);
    popMatrix();
    
    pushMatrix();
    translate(width/2, height/2);
    strokeWeight(3);
    stroke(0, 255, 0);
    fill(0, 255, 0);
    ellipse(x, y, rnd, rnd);
    popMatrix();
    
    pushMatrix();
    translate(width/2, height/2);
    rotate(PI - 100);
    strokeWeight(3);
    stroke(0, 255, 0);
    fill(0, 255, 0);
    ellipse(x, y,rnd, rnd);
    popMatrix();
    
    pushMatrix();
    translate(width/2, height/2);
    rotate(-100);
    strokeWeight(3);
    stroke(0, 255,0);
    fill(0, 255, 0);
    ellipse(x, y, rnd, rnd);
    popMatrix();
   
    pushMatrix();
    translate(width/2, height/2);
    strokeWeight(3);
    rotate(-40);
    stroke(0, 255,0);
    fill(0, 255,0);
    ellipse(x, y, rnd, rnd);
    popMatrix();
    
    pushMatrix();
    translate(width/2, height/2);
    strokeWeight(3);
    rotate(PI - 180);
    stroke(0, 255, 0);
    fill(0, 255, 0);
    ellipse(x, y, rnd, rnd);
    popMatrix();
    
    pushMatrix();
    translate(width/2, height/2);
    strokeWeight(3);
    rotate(-180);
    stroke(0, 255, 0);
    fill(0, 255, 0);
    ellipse(x, y, rnd, rnd);
    popMatrix();
    
    pushMatrix();
    translate(width/2, height/2);
    rotate(PI - 230);
    strokeWeight(3);
    stroke(0, 255, 0);
    fill(0, 255, 0);
    ellipse(x, y, rnd, rnd);
    popMatrix();
    
    pushMatrix();
    translate(width/2, height/2);
    rotate(-230);
    strokeWeight(3);
    stroke(0,255, 0);
    fill(0, 255, 0);
    ellipse(x, y, rnd, rnd);
    popMatrix();
    
    pushMatrix();
    translate(width/2, height/2);
    rotate(PI-165);
    strokeWeight(3);
    stroke(0, 255, 0);
    fill(0, 255, 0);
    ellipse(x, y, rnd, rnd);
    popMatrix();
    
    pushMatrix();
    translate(width/2, height/2);
    rotate(-165);
    strokeWeight(3);
    stroke(0, 255, 0);
    fill(0, 255, 0);
    ellipse(x, y, rnd, rnd);
    popMatrix();

    
    pushMatrix();
    translate(width/2, height/2);
    rotate(random(0, 360));
    strokeWeight(3);
    stroke(0, 255, 0);
    fill(0,255, 0);
    ellipse(x, y, 5, 5);
    popMatrix();
    
    
  }
  
    //strokeWeight(11);
    //stroke(0, 255, 0);
    //fill(0);
    //ellipse(width/2, height/2  , 290, 290);
    
    img = loadImage("teschio.png");
    
    img.resize(200, 200);
    imageMode(CENTER);
    image(img,width/2,height/2);
    
}