// Constantes - Couleurs //<>//

final color NOIR = color(0);
final color BLANC = color(255);
final color ROUGE = color(255, 0, 0);
final color VERT = color(0, 255, 0);
final color BLEU = color(0, 0, 255);

// Etat du jeu

/** Gestion de la pause */

/** La balle */
Ball ball;

/** racket */
Racket r;
Racket r2;

void gestionClavier()
  {
    if(keyPressed)
    {
      if (key=='z')moveRacketUp(r);
      if (key=='s') moveRacketDown(r);
      if (key=='p')moveRacketUp(r2);
      if (key=='m') moveRacketDown(r2);
    }
  }

void keyPressed(){
  if (key==' ')
  {
    enPause = !enPause;
  }
  if (enPause == true)
  {
    noLoop();
  }else{
    loop();
  }
}
boolean enPause= false;
void setup()
{
  size(2000, 1500);

  // on initialise nos objets
  ball = initBall();
  r = initRacket(40,100,50,300,BLANC,0);
  r2 = initRacket(width-80,100,50,300,BLANC,0);
  
}

/**
 * Fonction de rafraichissement Processing.
 */
void draw()
{
  
  background(0);
  showRacket(r);
  showRacket(r2);
  showBall(ball); 
  moveBall(ball);
  gestionClavier();
  RacketWall();
}
