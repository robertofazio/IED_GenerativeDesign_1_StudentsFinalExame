void vis2()
{
  float a = 0.0;
  float inc = TWO_PI/25;
  int m = 200;
  
  background(0, 150, 0);  
  
  rectMode(CENTER);
  strokeWeight(2);
    
  pushMatrix();
  fill(255);
  stroke(0);
  translate(100,-85);
  rotate(TWO_PI/20);
  rect(width/2, height/2, 280, 400);
  popMatrix();
  
  //RIGHT SIDE
  
  pushMatrix();
  rotate(TWO_PI/20);
  translate(0, - 61);
  
  int n= (int)map(bande, 0, 512, 0, 400);
  
    for(int i = 0; i < n; i++)
  {
    line( 560 , i , 560 - spettro[i] *(-width/2), i );
  }  
  popMatrix();
  
  //RIGHT SIDE
  
  pushMatrix();
  rotate(TWO_PI/20);
  pushMatrix();
  rotate(-PI);
  translate(-560, 63);
  
  int r= (int)map(bande, 0, 512, 0, 280);
  
    for(int i = 0; i < r; i++)
  {
    line( i, 0,i,-spettro[i] * (-height/2));
  }  
  popMatrix();  
  popMatrix();
  
  // LEFT SIDE 
  
  pushMatrix();
  rotate(TWO_PI/20);
  translate(280, 139);
  
  int q = (int)map(bande, 0, 512, 0, 280);
  
  for(int i = 0 ; i < q ; i++)
  {
    line(i, 200, i, 200- spettro[i] * (-height/2));
  }
  popMatrix();
  
  pushMatrix();
  rotate(TWO_PI/20);
  pushMatrix();
  translate(560, 340);
  rotate(PI);
  
  int w = (int)map(bande , 0, 512, 0, 402);
  
  for(int i = 0; i < w ; i++)
  {
   line( 280 , i , 280 - spettro[i] *(-width/2), i );
  }
  popMatrix();
  popMatrix();
  
  
  //QUADRI BORDI
  
  pushMatrix();
  fill(255);
  stroke(0);
  translate(-80, 120);
  rotate( -TWO_PI/20);
  rect(width/2, height/2, 280, 400);
  translate(160,25);
  quadri();
  popMatrix();
  
  pushMatrix();
  rotate(- TWO_PI/20);
  translate(287, 465);
  quadri();
  popMatrix();
  
  pushMatrix();
  rotate(- TWO_PI/20);
  translate(285,112);
  quadri();
  popMatrix();
  
  pushMatrix();
  rotate(- TWO_PI/20);
  translate(48,465);
  quadri();
  popMatrix();
  
  //CUORI BORDI
  
  pushMatrix();
  rotate(TWO_PI/20);
  translate(273,305);
  cuori();
  popMatrix();
  
  pushMatrix();
  rotate(TWO_PI/20);
  translate(510, -50);
  cuori();
  popMatrix();
  
  pushMatrix();
  rotate(TWO_PI/20);
  translate(510,300);
  cuori();
  popMatrix();
  
  strokeWeight(2);
  stroke(0);
  fill(255);
  rect(width/2, height/2, 280, 400);
    
    
   //PICCHE BORDI 
    
   pushMatrix();
   translate(200,50);
   picche();
   popMatrix();
   
   pushMatrix();
   translate(265,450);
   rotate(PI);
   picche();
   popMatrix();
   
   pushMatrix();
   translate(505,450);
   rotate(PI);
   picche();
   popMatrix();
   
   pushMatrix();
   translate(430,50);
   picche();
   popMatrix();
    
  //picche left
  
  for(int i = 0; i < 400; i += 2)
  {
    strokeWeight(2);
    noFill();
    beginShape(); //left up
    stroke(0);
    curveVertex(width/2, 100 + sin(a) * m * spettro[i]);
    curveVertex(width/2, 100 + sin(a) * m * spettro[i]);
    curveVertex(width/2 - 20,150 + sin(a) * m * spettro[i]);
    curveVertex(width/2 - 80, height/2 - 20 + sin(a) * m * spettro[i]);
    curveVertex(width/2 - 80, height/2 - 20 + sin(a) * m * spettro[i]);
    endShape();

    beginShape(); // middle left
    curveVertex(width/2 - 80, height/2 - 20 + sin(a) * m * spettro[i]);
    curveVertex(width/2 - 80, height/2 - 20 + sin(a) * m * spettro[i]);
    curveVertex(width/2 - 100, height/2 + 40 + sin(a) * m * spettro[i]);
    curveVertex(width/2 - 70, height/2 + 90 + sin(a) * m * spettro[i]);
    curveVertex(width/2 - 20, height - 150 + sin(a) * m * spettro[i]);
    curveVertex(width/2 - 20, height - 150 + sin(a) * m * spettro[i]);
    endShape();
    
    beginShape(); //down left
    vertex(width/2, height - 100 + sin(a) * m * spettro[i]);
    vertex(width/2 - 40 , height -100 + sin(a) * m * spettro[i]);
    vertex(width/2 - 20, height - 150 + sin(a) * m * spettro[i]);
    endShape();
    
    a += inc;
    
  }
  
  //picche right
  
  for(int i = 0; i < 300; i += 2)
  {
    strokeWeight(2);
    beginShape();  //right up
    curveVertex(width/2, 100 + sin(a) * m * spettro[i]);
    curveVertex(width/2, 100 + sin(a) * m * spettro[i]);
    curveVertex(width/2 + 20,150 + sin(a) * m * spettro[i]);
    curveVertex(width/2 + 80, height/2 - 20 + sin(a) * m * spettro[i]);
    curveVertex(width/2 + 80, height/2 - 20 + sin(a) * m * spettro[i]);
    endShape();
    
    beginShape(); // middle right
    curveVertex(width/2 + 80, height/2 - 20 + sin(a) * m * spettro[i]);
    curveVertex(width/2 + 80, height/2 - 20 + sin(a) * m * spettro[i]);
    curveVertex(width/2 + 100, height/2 + 40 + sin(a) * m * spettro[i]);
    curveVertex(width/2 + 70, height/2 + 90 + sin(a) * m * spettro[i]);
    curveVertex(width/2 + 20, height - 150 + sin(a) * m * spettro[i]);
    curveVertex(width/2 + 20, height - 150 + sin(a) * m * spettro[i]);
    endShape();
    
    beginShape();   // down right
    noFill();
    vertex(width/2, height - 100 + sin(a) * m * spettro[i]);
    vertex(width/2 + 40 , height -100 + sin(a) * m * spettro[i]);
    vertex(width/2 + 20, height - 150 + sin(a) * m * spettro[i]);
    endShape();
    
    a += inc;
  }
  

  
}

void picche()
{
   pushMatrix();
     
     scale(0.1); 
     
     strokeWeight(20);
      
     //LEFT 
      
    noFill();
    beginShape(); //left up
    stroke(0);
    curveVertex(width/2, 100);
    curveVertex(width/2, 100 );
    curveVertex(width/2 - 20,150 );
    curveVertex(width/2 - 80, height/2 - 20 );
    curveVertex(width/2 - 80, height/2 - 20 );
    endShape();

    beginShape(); // middle left
    curveVertex(width/2 - 80, height/2 - 20 );
    curveVertex(width/2 - 80, height/2 - 20 );
    curveVertex(width/2 - 100, height/2 + 40 );
    curveVertex(width/2 - 70, height/2 + 90);
    curveVertex(width/2 - 20, height - 150 );
    curveVertex(width/2 - 20, height - 150 );
    endShape();
    
    beginShape(); //down left
    vertex(width/2, height - 100 );
    vertex(width/2 - 40 , height -100 );
    vertex(width/2 - 20, height - 150);
    endShape();
    
    //RIGHT
    
    beginShape();  //right up
    curveVertex(width/2, 100 );
    curveVertex(width/2, 100 );
    curveVertex(width/2 + 20,150 );
    curveVertex(width/2 + 80, height/2 - 20 );
    curveVertex(width/2 + 80, height/2 - 20 );
    endShape();
    
    beginShape(); // middle right
    curveVertex(width/2 + 80, height/2 - 20 );
    curveVertex(width/2 + 80, height/2 - 20 );
    curveVertex(width/2 + 100, height/2 + 40 );
    curveVertex(width/2 + 70, height/2 + 90 );
    curveVertex(width/2 + 20, height - 150 );
    curveVertex(width/2 + 20, height - 150 );
    endShape();
    
    beginShape();   // down right
    noFill();
    vertex(width/2, height - 100 );
    vertex(width/2 + 40 , height -100 );
    vertex(width/2 + 20, height - 150 );
    endShape();
    
    popMatrix();
}

void quadri()
{

  fill(255,0,0);
  scale(0.2);
  strokeWeight(2);
  beginShape();
  stroke(0);
  vertex(width/2-50, height/2);
  vertex(width/2, height/2 -70);
  vertex(width/2 + 50 , height/2);
  vertex(width/2 , height/2 + 70);
  vertex(width/2-50, height/2);
  endShape();
}

void cuori()
{
  scale(0.07);
  strokeWeight(10);
  fill(255,0,0);
  beginShape();
  stroke(0);
  curveVertex(width/2, height/2 - 130);
  curveVertex(width/2, height/2 - 130);
  curveVertex(width/2 -100, height/2 -220);
  curveVertex(width/2 - 150, height/2 -50 );
  curveVertex(width/2, height - 100);
  curveVertex(width/2, height - 100);
  endShape();
  
  beginShape();
  curveVertex(width/2 -5, height/2 - 130);
  curveVertex(width/2 -5, height/2 - 130);
  curveVertex(width/2 + 100, height/2 -220);
  curveVertex(width/2 + 150, height/2 -50 );
  curveVertex(width/2 -5, height - 100);
  curveVertex(width/2 -5, height - 100);
  endShape();
}