int num = 500;
float raggio = 120;
float dist = 100;
float angle1;
float angle2;


void setup()
{
  size(800, 500);
  background(10, 35, 45);
}


void draw()
{
  int i = 0;
  
  translate(width/2, height/2);
  
  stroke(random(200, 255), 180, 0, 50);
  strokeWeight(random(1, 4));
 
  float angle1  = random(0, TWO_PI);
  float x1 = sin(angle1) * raggio;
  float y1 = cos(angle1) * raggio;
  float angle2 = random(0, TWO_PI);
  float x2 = sin(angle2) * raggio;
  float y2 = cos(angle2) * raggio;
  
  noFill();
  smooth();
  bezier(x1, y1, x1+random(-dist, dist), y1+random(-dist, dist), x2+random(-dist, dist), y2+random(-dist, dist), x2, y2);
 
 
}