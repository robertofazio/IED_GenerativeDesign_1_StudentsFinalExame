int num = 20;              //numero delle linee
int opacity = 200;         //costante opacità
float distanza;            //distanza fra le linee
float arcClosed;           //chiusura dell'onda
float velocitaOnda;        //velocità del movimento onda
float movLinee;            //movimento linee tutte insieme
float dim;                 //dimensione archi onda
 

void setup()
{
  size(800, 500);
  strokeWeight(10);
  distanza = 35;
}


void draw()
{
  background(17, 49, 100);
  translate(width/2, height*.80);

  
  //WAVE 1
  
  for (int i = 0; i<num; i++)
  {
    stroke(153, 170, 197);
    noFill();
    smooth();
    dim = i*distanza;
    float movLinee = PI/num*i;
    float arcClosed = map(sin(velocitaOnda+movLinee), -1, 1, PI, TWO_PI);
    arc(0, 0, dim, dim, PI, arcClosed);
    
  }
  
  //WAVE 2
  
  for (int i = 0; i<num; i++)
  {
    stroke(89, 138, 167, opacity);
    noFill();
    smooth();
    dim = i*distanza;
    float movLinee = PI/num*i;
    float arcClosed = map(sin(velocitaOnda+movLinee), -2, 2, PI, TWO_PI);
    arc(0, 0, dim, dim, PI, arcClosed);
    
  }
  
  //WAVE 3
  
  for (int i = 0; i<num; i++)
  {
    stroke(94, 138, 207, opacity);
    noFill();
    smooth();
    dim = i*distanza;
    float movLinee = PI/num*i;
    float arcClosed = map(sin(velocitaOnda+movLinee), -3, 10, PI, TWO_PI);
    arc(0, 0, dim, dim, PI, arcClosed);
    
  }
  velocitaOnda += 0.0250;
}