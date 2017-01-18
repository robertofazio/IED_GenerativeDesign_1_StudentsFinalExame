//Teresa Dal Dosso - Interaction Design: esame - 16.01.2017

import processing.pdf.*; 
float x;
float y;
float density; //loop for
float ax, ay; //mouse mapped
float cx_10, cx_9, cx_8; //colors
float addx = x; 
boolean aumentox = true;
int petali;
PFont font; //install the font located in the data folder


void setup()
{
  size(displayWidth,displayHeight);
  frameRate(60);
  colorMode(HSB, 360, 360, 360, 100);
  background(360);
  
  // INFO TEXT
  PFont font = createFont("AmaticSC-Regular",70);
  smooth();
  textFont(font);//
  fill(360,100,100);
  //textSize(25);
  text("click & drag, mouse is drawing", width-width*2/3 , height-height*3/5);
  textSize(40);
  text("Teresa Dal Dosso", width-width/3, height-height/3);
}

void draw()
{   
    smooth();
    
    //translate the entire write()
    pushMatrix();
    translate(width/2,height/2);
    write();
    popMatrix();  
}


void write()
{   
  for (float i = 0; i < density; i++)
  { 
    
                                                              // mouse need to be "translated" to get the drawing effect
    float ax = map(mouseX, 0, width, -width/2, width/2);
    float ay = map(mouseY, 0, height, -height/2, height/2);
    
     x = x + (ax - x) * 0.01;
     y = y + (ay - y) * 0.01;

                                                               // stating the Hue float as generally valid
     float cx_10 = map(mouseX, width/6, width*5/6, 30, 360);
    
                                                               //create the rotation and the ellipses
     rotate(TWO_PI/petali);
     strokeWeight(0.65);
     stroke(cx_10, cx_9, cx_8, 20);
     noFill();
     ellipse(x,y,y/4-width/30+addx,y/4-(addx+width/30)/1.618);
   }
} 


void mousePressed()  
{                                   //everything here just happens once, each time you click
  background(360);                  //redraw white background
  density = (int)random(40,60);     //choose a randomic number for the loop for
  petali = (int)random(3,10);       //choose a randomic value for dividing 2pi
  cx_9 = random(100,360);           //choose a randomic value for the Saturation
  cx_8 = random(50,360);            //choose a randomic value for the Luminosity
  redraw();   
  aumentox = true;                  //control boolean
 }
   
 
 void mouseReleased()  
{  
  aumentox = false;                 //control boolean
 }   
    
   
                                    //increase the x value when mouse is dragged
  void mouseDragged() 
{ 
    if (aumentox)
   {
      addx = addx + width/190;
    }
    
     if (addx > width/6)
    {
       addx = 0;
     }
  
    if (aumentox == false)
   {
      addx = x;
    }
    
 }
 
 
                                     //SAVE A PDF.TIFF
 void keyPressed()
{
  saveFrame("immagine-###.pdf"); 
}

void keyReleased()
{
   endRecord();
}
    