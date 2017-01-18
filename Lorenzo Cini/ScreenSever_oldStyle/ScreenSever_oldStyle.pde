// Design by Lorenzo Cini - Esame Interaction Design 16/01/2017

int colorValue = 0;
int pp = 0;                                    //inizializzo la variabile per la posizione del triangolo
static final int PIX = 2;                      //inizializzo la costante per la dimensione delle tracce
static final int NUM_T = 4;                    //inizializzo la costante che imposta il n di triangoli
static final int SPEED = 42;                   //inizializzo la costante per i FPS

void setup()
  {
    background(20);                            //definisco un colore di sfondo
    fullScreen(P3D);                           //dimensione del canvas
    smooth(2);                                 //anti-alias (valore)
    frameRate(SPEED);                          //definisco i fotogrammi al secondo
    colorMode(HSB);                            //definisco il metodo colore
  }

void draw()
  {   
    background(20);                    //imposto lo sfondo del canvas così da evitare la sovrapposizione degli oggetti del fotogramma
    
    pushMatrix();                              //genero il frame per l'animazione 
    noFill();                                  //nessun riempimento
    stroke(random(colorValue,255), 100, 70);            //colore random traccia
    strokeWeight(PIX);                         //spessore traccia
    translate(width/2 + 250, height/2 - 150);  //posizionamento del triangolo
    for(int i = 0; i < NUM_T; i++)             //ciclo for per creare il gruppo di triangoli
      {
        triangle(x1_0(pp + i),y1_0(pp + i),x2_0(pp + i),y2_0(pp + i),x3_0(pp + i),y3_0(pp + i)); //creo un triangolo con i punti di coordinate x1,y1, x2,y2, x3,y3
      }
    //point(x1_0(PosPoint),y1_0(PosPoint));    //creo un punto
    //point(x2_0(PosPoint),y2_0(PosPoint));    //creo un punto
    pp++;                                      //incremento di +1 la posizione dei triangoli per creare l'effetto movimento (per ogni gruppo di triangoli)
    popMatrix();                               //tolgo il frame per l'animazione successiva
   
    pushMatrix();                              //genero il frame per l'animazione 
    noFill();                                  //nessun riempimento
    stroke(random(colorValue,255), 100, 80);            //colore random traccia
    strokeWeight(PIX);                         //spessore traccia
    translate(width/2, height/2);              //posizionamento del triangolo
    for(int i = 0; i < NUM_T; i++)             //ciclo for per creare il gruppo di triangoli
      {
        triangle(x1_1(pp + i),y1_1(pp + i),x2_1(pp + i),y2_1(pp + i),x3_1(pp + i),y3_1(pp + i)); //creo una triangolo con i punti x1,y1, x2,y2, x3,y3
      }
    //point(x1_1(PosPoint),y1_1(PosPoint));    //creo un punto
    //point(x2_1(PosPoint),y2_1(PosPoint));    //creo un punto
    popMatrix();                               //tolgo il frame per l'animazione successiva
   
    pushMatrix();                              //genero il frame per l'animazione 
    noFill();                                  //nessun riempimento
    stroke(random(colorValue,255), 100, 90);            //colore traccia
    strokeWeight(PIX);                         //spessore traccia
    translate(width/3, height/3);              //posizionamento del triangolo
    for(int i = 0; i < NUM_T; i++)             //ciclo for per creare il gruppo di triangoli
      {
        triangle(x1_2(pp + i),y1_2(pp + i),x2_2(pp + i),y2_2(pp + i),x3_2(pp + i),y3_2(pp + i)); //creo un triangolo con i punti x1,y1, x2,y2, x3,y3
      }
    //point(x1_2(PosPoint),y1_2(PosPoint));    //creo un punto
    //point(x2_2(PosPoint),y2_2(PosPoint));    //creo un punto
    popMatrix();                               //tolgo il frame per l'animazione successiva
    
  }
  
void mouseMoved()
  {
    colorValue = colorValue + 15;
    if (colorValue > 255)
    {
      colorValue = 0;
    }
  }


/* GRUPPO FUNZIONI PER COORDINATE */

float x1_0(float k)                              //dichiaro funzione x1_0 per generare un valore di coordinata del punto
  {
    return sin(k / 10) * 100 + sin(k / 5) * 2;   //valore di ritorno della funzione
  }
float y1_0(float k)                              //dichiaro funzione y1_0 per generare un valore di coordinata del punto
  {
    return cos(k / 10) * 100;                    //valore di ritorno della funzione
  }
float x2_0(float k)                              //dichiaro funzione x2_0 per generare un valore di coordinata del punto
  {
    return cos(k / 100) * 400 + cos(k / 10) * 2; //valore di ritorno della funzione
  }
float y2_0(float k)                              //dichiaro funzione y2_0 per generare un valore di coordinata del punto
  {
    return sin(k / 50) * 300 + sin(k) * 5;       //valore di ritorno della funzione
  }
float x3_0(float k)                              //dichiaro funzione x3_0 per generare un valore di coordinata del punto
  {
    return cos(k / 20) * 200 + cos(k / 5) * 10;  //valore di ritorno della funzione
  }
float y3_0(float k)                              //dichiaro funzione y3_0 per generare un valore di coordinata del punto
  {
    return sin(k / 10) * 150 + sin(k) * 2;       //valore di ritorno della funzione
  }

float x1_1(float k)
  {
    return -(sin(k / 10) * 100 + sin(k / 5) * 4);
  }
float y1_1(float k)
  {
    return -(cos(k / 10) * 200);
  }
float x2_1(float k)
  {
    return -(cos(k / 100) * 400 + cos(k / 10) * 2) * 2;
  }
float y2_1(float k)
  {
    return -(sin(k / 50) * 300 + sin(k) * 5) * 2;
  }
float x3_1(float k)
  {
    return -(cos(k / 20) * 200 + cos(k / 5) * 10) * 2;
  }
float y3_1(float k)
  {
    return -(sin(k / 10) * 150 + sin(k) * 2) * 2;
  }

float x1_2(float k)
  {
    return (sin(k / 10) * 100 + sin(k / 5) * 2) * 2;
  }

float y1_2(float k)
  {
    return (cos(k / 10) * 100)*2;
  }
float x2_2(float k)
  {
    return -(cos(k / 100) * 400 + cos(k / 10) * 2) / 4;
  }
float y2_2(float k)
  {
    return (sin(k / 50) * 300 + sin(k) * 5) / 2;
  }
float x3_2(float k)
  {
    return (cos(k / 20) * 200 + cos(k / 5) * 10 ) * 3;
  }
float y3_2(float k)
  {
    return -(sin(k / 10) * 150 + sin(k) * 2);
  }

/* END GRUPPO FUNZIONI PER COORDINATE */