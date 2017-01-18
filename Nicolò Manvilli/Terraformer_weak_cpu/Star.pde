
// Class used to draw a fading star

class Star
{
 
  private PApplet applet;

  private PVector position;
  private float alpha;
  
  Star( PApplet applet, float alpha )
  {
    this.applet = applet;
    this.alpha = alpha;
    position = new PVector(
      round( random(50, applet.width/2) ),
      round( random(50, applet.width/2) )
    );
  }

  boolean isDead()
  {
    if ( alpha > 0 )
      return false;
    else
      return true;
  }

  void draw()
  {
    if (alpha > 0)
    {
      applet.pushMatrix();
      applet.noStroke();
      applet.fill( 0, 0, 100, alpha );
      applet.ellipse( position.x, position.y, 2, 2 );
      applet.popMatrix();
      alpha -= 2;
      if (alpha < 0)
        alpha = 0;
    }
  }
  
}