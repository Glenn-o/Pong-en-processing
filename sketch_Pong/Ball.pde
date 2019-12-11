/** largeur (ou diamètre) de la balle */
int BALL_WIDTH = 50;
/** vitesse de déplacement de la balle */
final int BALL_SPEED = 15;
/** couleur de la balle */
final color BALL_COLOR = BLANC; 

/**
 * Une balle.
 */
class Ball {

  /** abscisse du centre de la balle */
  int x;

  /** ordonnée du centre de la balle */
  int y;

  /** mouvement sur l'axe des abscisses */
  int mvt_x;

  /** mouvement sur l'axe des ordonnées */
  int mvt_y;
}

/**
 * Initialisation d'une balle : tous les attributs prennent des valeurs par défaut.
 */
Ball initBall() {
  Ball ball = new Ball();
  ball.x = width/2;
  ball.y = height/2;
  ball.mvt_x = BALL_SPEED;
  ball.mvt_y = BALL_SPEED;
  return ball;
}

/**
 * Affichage de la balle
 */
void showBall(Ball b)
{
  fill(BALL_COLOR);
  ellipse(b.x, b.y, BALL_WIDTH, BALL_WIDTH);
}

/**
 * Déplacement de la balle
 */
void moveBall(Ball b)
{
  // Mouvement Horizontal
  b.x += b.mvt_x;
  if (collisionHorizontale(b))
  {
    b.x -= b.mvt_x; // mouvement annulé
    b.mvt_x *= -1; // changement de direction
  }

  // Mouvement Vertical
  b.y += b.mvt_y;
  if (collisionVerticale(b))
  {
    b.y -= b.mvt_y; // mouvement annulé
    b.mvt_y *= -1; // changement de direction
  }
}

/**
 * Retourne vrai si la balle ....
 */
boolean collisionHorizontale(Ball b)
{
  boolean mur_droit= (b.x + 0.5*BALL_WIDTH > width);
  boolean mur_gauche=(b.x -0.5*BALL_WIDTH<0);
  boolean raq1= collision(r.x,r.y,r.largeur,r.hauteur,ball.x,ball.y,BALL_WIDTH/2,BALL_WIDTH/2);
  boolean raq2= collision(r2.x,r2.y,r2.largeur,r2.hauteur,ball.x,ball.y,BALL_WIDTH/2,BALL_WIDTH/2);
  if (mur_droit){
    r.score++;
     ball=initBall();
  }if (mur_gauche){
    r2.score++;
     ball=initBall();
  }
  textSize(60);
  text(r.score,(width/2)-100,100);
  text(r2.score,(width/2)+100,100);
  return mur_droit || mur_gauche || raq1 || raq2;
}

/**
 * Retourne vrai si la balle ...
 */
boolean collisionVerticale(Ball b)
{
  return (b.y > height) || (b.y < 0);
}
