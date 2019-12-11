/** largeur d'une raquette */
final int RACKET_WIDTH  = 10;
/** hauteur d'une raquette */
final int RACKET_HEIGHT = 40;
/** vitesse de déplacement vertical d'une raquette */
final int RACKET_SPEED  = 30;
/** distance du bord de la fenêtre pour la raquette */
final int BORDER_SPACE  = 20;


/**
 * Une raquette.
 */
class Racket{
  int x;
  int y;
  int largeur;
  int hauteur;
  color col;
  int score;
}
Racket initRacket(int lx, int ly, int la, int ha, color c,int score) {
  Racket rect = new Racket();
  rect.x = lx;
  rect.y = ly;
  rect.largeur = la;
  rect.hauteur = ha;
  rect.col = c;
  rect.score = score;
  return rect;
}
void showRacket(Racket r)
{
  fill(r.col);
  rect(r.x,r.y,r.largeur,r.hauteur);

}

void moveRacketUp(Racket r)
{
  r.y -= RACKET_SPEED;
}
void moveRacketDown(Racket r)
{
 r.y += RACKET_SPEED;
}

void RacketWall(){
  if(r.y> height-300 ){
    r.y = height-300;
    
  }
  if(r.y<0 ){
    r.y = 0;
  }if(r2.y> height-300 ){
    r2.y = height-300;
    
  }
  if(r2.y<0 ){
    r2.y = 0;
  }
}
