void vis1()
{
  int m = (int)map(bande,0, 512, 0, 51);
  
  rectMode(CORNER);
  fill(0, 255, 0);
  rect(width/2, 0, width/2, height);
  
  for(int i = 0; i < m ; i++)   // circle right
  {
  fill(0);
  //strokeWeight(2);
  //stroke(0, spettro[i] * 10000, 0);
  ellipse(width/2, height/2, 300 + spettro [i] * 300 , 300 + spettro[i] * 300);
  }
  
  fill(0);    //black rect left
  noStroke();
  rect(0, 0, width/2, height);
  
  strokeWeight(2);
  stroke(0, 255, 0);
  line(width/2, 0, width/2, height);
  
  for(int i = 0; i < m; i++)  // vis left line
  {
    strokeWeight(5);
    stroke(0, 255, 0);
    line( i * 6, height/2 -2, i * 6, height/2 -2 - spettro[i]  * height);
    line( i * 6, height/2 + 3, i * 6, height/2 + 3 - spettro[i]  *(-height));

  }
  
  // middle graphic
  
  strokeWeight(2);
  stroke(0, 255, 0);
  fill(0);
  ellipse(width/2, height/2, 200, 200); 
  
  noStroke();
  fill(255);
  ellipse(width/2, height/2, 60, 60);
 

  
}