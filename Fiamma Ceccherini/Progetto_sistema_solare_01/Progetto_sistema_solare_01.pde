// Fiamma Ceccherini - Esame 16.01.2017

import processing.pdf.*;
float x;
float y;


void setup()
{
  size(800,800, P3D); // Funzione 3D ( asse x,y,z);
  
 
}

void draw()
{
 background(0);
 fill(200,200,0);
 noStroke();
 translate( width/2, height/2, 90); //( x,y,z);
 lights();


 
 rotateY(frameCount*-0.009); // ruotazione dell'intero sistema intorno all'asse Y,successivamente specifico l'inclinazione di ogni oggetto rispetto all'assex x,
 sphere(150);  // SUN 
 
 
 pushMatrix();
//Earth
   translate(200,0,0);  
  rotateX(radians(45));    // SATELLITE'S ROTATION AROUND AXIS X (inclinazione)
 rotateY(radians(frameCount));         // SATELLITE'S MOVEMENT
   fill(0,23,230);
  sphere(20);
   
   pushMatrix();
   //Earth's Satellite (Moon)
     translate(55,0,0);
     fill(255);
     sphere(2);
   popMatrix();
   
 
 
 popMatrix();
 
 
 
 pushMatrix();
                             //GIOVE
  translate(300,0,0);
  fill(252,178,28);
  sphere(30);
 popMatrix();
 
 pushMatrix();    //MARTE
 translate(250,0,0);
    fill(230,3,0);
   sphere(15);
    popMatrix();
    
 
 pushMatrix();  // SATURNO
 translate(375,0,0);
 fill( 152,116,69);
 sphere(25);
 
 noFill();
 strokeWeight(2);
 stroke(182,138,80);   //SATURNO
 ellipse(2,2,85,30);
 ellipse(0,0,80,25);
 ellipse(0,0,75,20);
 popMatrix();
 
 pushMatrix();
 strokeWeight(1);
 stroke(255);
 rotateX(radians(95));  // inclinazione orbite rispetto all'asse x 
 ellipse(0,0,600,600);
 popMatrix();
 
 
 pushMatrix();
 rotateX(radians(97));
 ellipse(0,0,500,500);  //2
 popMatrix();
 
 pushMatrix();
 rotateX(radians(93));
 ellipse(2,2,400,400);  //3
 popMatrix();
 
 pushMatrix();
 rotateX(radians(99));
 ellipse(2,2,750,750);   //4
 popMatrix();
}
void keyPressed ()
{ if (key=='1')
{ saveFrame("immagine-###.pdf");
  
}
}
void keyReleased()
{
endRecord();
}