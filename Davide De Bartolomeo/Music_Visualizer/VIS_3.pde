void vis3()
{
  float a = 0.0;
  float inc = TWO_PI/25.0;
  int m = 200;
  
  rectMode(CORNER);
  for(int i = 0; i < 100 ; i += 4)
  {  

  pushMatrix();
  
  translate(width/4, 0);

  beginShape();
  fill(0, 255, 0);
  vertex(width/2 - 150, height/2 + sin(a) * m/6 * spettro[1]);
  vertex(width/2, height/2 - 150 + sin(a) * m/6 * spettro[1]);
  vertex(width/2 + 150 , height/2 + sin(a) * m/6 * spettro[1]);
  vertex(width/2 , height/2 + 150 + sin(a) * m/6 * spettro[1]);
  endShape();
  
  beginShape();
  fill(0);
  noStroke();
  vertex(width/2 - 100, height/2 + sin(a) * m/6 * spettro[1]);
  vertex(width/2, height/2 - 100 + sin(a) * m/6 * spettro[1]);
  vertex(width/2 + 100 , height/2 + sin(a) * m/6 * spettro[1]);
  vertex(width/2 , height/2 + 100 + sin(a) * m/6 * spettro[1]);
  endShape();
  
  beginShape();
  fill(0, 255, 0);
  noStroke();
  vertex(width/2 - 50 , height/2 + sin(a) * m * spettro[1]);
  vertex(width/2 , height/2 - 50 + sin(a) * m * spettro[1]);
  vertex(width/2 + 50, height/2  + sin(a) * m * spettro[1]);
  vertex(width/2 , height/2 + 50 + sin(a) * m * spettro[1]);
  endShape();
  
  a += inc;
  popMatrix();
  
  pushMatrix();
  
  translate(- width/4, 0);

  beginShape();
  fill(0, 255, 0);
  vertex(width/2 - 150, height/2 + sin(a) * m/6 * spettro[1]);
  vertex(width/2, height/2 - 150 + sin(a) * m/6 * spettro[1]);
  vertex(width/2 + 150 , height/2 + sin(a) * m/6 * spettro[1]);
  vertex(width/2 , height/2 + 150 + sin(a) * m/6 * spettro[1]);
  endShape();
  
  beginShape();
  fill(0);
  noStroke();
  vertex(width/2 - 100, height/2 + sin(a) * m/6 * spettro[1]);
  vertex(width/2, height/2 - 100 + sin(a) * m/6 * spettro[1]);
  vertex(width/2 + 100 , height/2 + sin(a) * m/6 * spettro[1]);
  vertex(width/2 , height/2 + 100 + sin(a) * m/6 * spettro[1]);
  endShape();
  
  beginShape();
  fill(0, 255, 0);
  noStroke();
  vertex(width/2 - 50 , height/2 + sin(a) * m * spettro[1]);
  vertex(width/2 , height/2 - 50 + sin(a) * m * spettro[1]);
  vertex(width/2 + 50, height/2  + sin(a) * m * spettro[1]);
  vertex(width/2 , height/2 + 50 + sin(a) * m * spettro[1]);
  endShape();
  
  a += inc;
  popMatrix();
  
  
  }
  pushMatrix();

  //MUSIC VIS BOT

  int r = (int)map(bande, 0, 512, 0, 70);
 
  for(int i = 0; i <r ; i++)
  {
    stroke(0);
    smooth();
    fill(0, 255, 0);
    rect(i * 10 , height- 10 - spettro[i] * (height), 10, height - spettro[i]  * (height));
  }
  
  popMatrix();  
}