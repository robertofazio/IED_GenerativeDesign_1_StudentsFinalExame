import processing.sound.*;

FFT fft; // frequenza music
SoundFile file;

int bande = 512;
float[] spettro = new float[bande];

int vis= 0;  // switch ani
PImage img;



void setup()
{
  size(700, 500);
  background(0);
  
  
  fft = new FFT(this, bande);
   
  file = new SoundFile(this, "sample.mp3");
  
  file.play();
  fft.input(file);
  file.loop();
  file.amp(5);
  
}

void draw()
{
  background(0);
  fft.analyze(spettro);
  
  switch(vis)
  {  case 0:
  
      vis1();
      
     break;
  
     case 1:
      
      vis2();
      
     break;
     
     case 2:
  
      vis3();
      
     break;
     
     case 3:
     
      vis4();
     
     break;
  }
 
  
}