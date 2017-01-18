
// Class used to show the webcam (with a colored overlay)

class Webcam extends Capture
{

  private PApplet applet;

  private boolean camAvailable;

  private PVector camOrigin;
  private PVector camNewSize;

  Webcam( PApplet applet, int camResolutionX, int camResolutionY )
  {
    super( applet, camResolutionX, camResolutionY );

    this.applet = applet;
    camAvailable = false;

    camOrigin = new PVector();
    camNewSize = new PVector();
    float camRatio = (float)camResolutionX / camResolutionY;

    // Webcam image must be moved and scaled to fill a square of side applet.width/2
    if ( camRatio >= 1)
    {
      // Scale height, then offset width
      camNewSize.y = applet.width / 2;
      camNewSize.x = round( camRatio * camNewSize.y );
      camOrigin.y = 0;
      camOrigin.x = round( - (camNewSize.x - applet.width/2) );
    }
    else
    {
      // Scale width, then offset height
      camNewSize.x = applet.width / 2;
      camNewSize.y = round( camNewSize.x / camRatio );
      camOrigin.x = 0;
      camOrigin.y = round( - (camNewSize.y - applet.width/2) );
    }

    start();    
  }

  void draw( int brightness )
  {

    if ( camAvailable )
    {
      // Webcam image
      read();
      loadPixels();
      filter( GRAY );
      applet.image( this, camOrigin.x, camOrigin.y, camNewSize.x, camNewSize.y );

      // Overlay
      applet.pushMatrix();
      applet.noStroke();
      applet.fill( 0, 0, brightness, 93);
      applet.rect( camOrigin.x, camOrigin.y, camNewSize.x, camNewSize.y );
      applet.popMatrix();
    }
    else
    {
      if ( available() )
        camAvailable = true;
    }

  }

}