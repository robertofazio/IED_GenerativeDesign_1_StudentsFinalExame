import processing.sound.*;
SoundFile file;
int time;

//Initial screen

int stars = 1000;
float[] x = new float[stars];
float[] y = new float[stars];
float[] speed = new float[stars];

//Text 

PFont font;
String title = "The theory of everything";
String subtitle = "Designed by Piero Di Cuollo";
String conclusion1 = "A theory of everything (ToE), final theory, ultimate theory, or master theory is a hypothetical single,";
String conclusion2 = "all-encompassing, coherent theoretical framework of physics that fully explains and links together all physical aspects of the universe.";
String conclusion3 = "Eventually a single explanatory framework, called «string theory», has emerged that intends to be the ultimate theory";
String conclusion4 = "of the universe. According to string theory, every particle in the universe, at its most microscopic level";
String conclusion5 = "(Planck length), consists of varying combinations of vibrating strings (or strands) with preferred patterns of vibration.";
String conclusion6 = "It seems to be the extreme attempt of human reason to penetrate the mind of God.";

//Compositions' variables

float radius = 150;
int numPoints = 1000;
int numStrings = 100;

float[][] xyArray; 
float angle;
float[][]xyArray1;

int numStar = 500;
int numStar1 = 1500;


//Agent

int NORTH = 0;
int NORTHEAST = 1; 
int EAST = 2;
int SOUTHEAST = 3;
int SOUTH = 4;
int SOUTHWEST = 5;
int WEST = 6;
int NORTHWEST= 7;

float stepSize = 1;
float diameter = 0.8;

int direction;
float posX, posY;
float posX1, posY1;


//Black Hole

float t;

float  sw;
color col0;
int n = 100000;

float blue = 223, black = 20;

float ease(float p, float g)
{
  if (p < 0.5) 
  return 0.5 * pow (2*p, g); 
  
  else 
  return 1 - 0.5 * pow(2*(1 - p), g);
}


void setup()
{
 // Setup for the entire sketch
 size(displayWidth, displayHeight, P3D);
 smooth();
 colorMode(HSB, 360, 100, 100, 100);
 
 file = new SoundFile(this, "brianeno.mp3");
 file.play();
 lights();
 background(0, 0, 0);
 
 //Setup for text
 font = createFont("Helvetica", 30);
 fill(0, 0, 86);
 textFont(font);
 textAlign(CENTER, CENTER);
 
 // Setup for agent
 
 posX = width/2;
 posY = height/2;
 posX1 = width/3;
 posY1 = width/3;
 
 
 //Setup for initial screen
 
  
  for(int i = 0; i<stars; i++)
  {
   x[i] = random(0, width);
   y[i] =random(0, height);
   speed[i] = random(1, 4);
  }
 
  
 
 // Setup for compositions
 
 angle = TWO_PI / numPoints;
 xyArray = new float[numPoints][3];
 xyArray1 = new float[numStrings][3];
 
 
 
 for(int i=0; i<numPoints; i++)
 {
   float x = radius * sin(angle * i);
   float y = radius * cos(angle * i);
   
   xyArray[i][0] = x;
   xyArray[i][1] = y;
 }
  
 
 angle = TWO_PI / numStrings;
 xyArray1 = new float[numStrings][3];
 
 for(int i=0; i<numStrings; i++)
 {
   float x1 = radius * sin(angle * i);
   float y1 = radius * cos(angle * i);
 
   xyArray1[i][0] = x1;
   xyArray1[i][1] = y1;
  }

}

void draw()
{
  
  time += 1;  //Defining sequencial time for the entire sketch
  
  //Initial sketch
 
  if ((time > 0) && (time < 2100))
 {
   fill(0, 0, 0, 10);
   rect(0, 0, width, height);
  
     for (int i = 0; i<stars; i++)
   {
    fill(0, 0, 100);
    noStroke();
    ellipse(x[i], y[i], speed[i], speed[i]);
    y[i] += speed[i]/2;
   }

}
 
  // Title 
  
  if ((time > 2101) && (time < 2500))
  {
    background(0, 0, 0);
    font = createFont("Helvetica", 140);
    fill(0, 0, 86);
    textFont(font);
    textAlign(CENTER, CENTER);
    text(title, width/2, height/2); 
    
    // Subtitle
    
    font = createFont("Helvetica", 20);
    fill(0, 0, 86);
    textFont(font);
    textAlign(CENTER, CENTER);
    text(subtitle, width - 150, height - 100); 
  }  

  //Title and subtitle in fading
  
  if((time > 2501) && (time < 2700))
  {
    background(0, 0, 0);
    font = createFont("Helvetica", 140);
    fill(0, 0, 86, 8);
    textFont(font);
    textAlign(CENTER, CENTER);
    text(title, width/2, height/2); 
    
    font = createFont("Helvetica", 20);
    fill(0, 0, 86, 8);
    textFont(font);
    textAlign(CENTER, CENTER);
    text(subtitle, width - 150, height - 100); 
  }

   // Video
  
  if((time > 2701) && (time < 3200))
   {
     background(0, 0, 0);
     Composition0();
   }
   
   
   
   if((time > 3201) && (time < 5500))
   {
     background(0, 0, 0);
     Moon();
     Stars0();
   }
   
   if((time > 5501) && (time < 6000))
   {
     background(0, 0, 0);
     Composition1();
   }
   
   if((time > 6001) && (time < 6500))
   {
     background(0, 0, 0);
     Stars0();
     Sun();
   }
   
  if((time > 6501) && (time < 7100))
  {
   background(0, 0, 0);
   Composition2();
  }
   
 
  if((time > 7101) && (time < 7131))
  {
   background(0, 0, 0);
   Stars1();
  }
    
 if((time > 7131) && (time < 9300))
  {
   Agent();
   Agent1();
  }
   
  if((time > 9301) && (time < 9800))
  {
   background(0, 0, 0);
   Composition3();
  }
  
   
  if((time > 9801) && (time < 10000))
  {
   background(black);
   blackHole();
  }
   
  if((time > 10001) && (time < 10700))
  {
   background(0, 0, 0);
   Composition4();
  }
   
  if((time > 10701) && (time < 11000))
  {
   background(0, 0, 0);
   Composition5();
  }
   
 //Final sketch and conclusions
  
  if((time > 11001) && (time < 11600))
  {
   font = createFont("Helvetica", 20);
   fill(0, 0, 100);
   textFont(font);
   textAlign(CENTER, CENTER);
   text(conclusion1, width/2, 70); 
   text(conclusion2, width/2, 100);
  }

  
  if((time > 11601) && (time < 12100))
  {
   font = createFont("Helvetica", 20);
   fill(0, 0, 100);
   textFont(font);
   text(conclusion3, width/2, 150);
   text(conclusion4, width/2, 180);
   text(conclusion5, width/2, 210);
  }
    
   
    
  if((time > 12101) && (time < 12600))
  {
   font = createFont("Helvetica", 20);
   fill(0, 0, 100);
   textFont(font);
   text(conclusion6, width/2, height - 200);
  }
    
  
  if((time >= 13150))
  {
   background(0, 0, 0);
   file.stop();
  }


}