
// Class used to draw a circle that responds to given SoundData

class Sun
{

  private PApplet applet;

  private SoundData soundData;

  private int relevantBands;
  private float minVolume;
  private float maxVolume;
  private float scale;

  private PVector center;
  private int maxRadius;

  Sun( PApplet applet, int relevantBands, float minVolume, float maxVolume, float scale  )
  {
    this.applet = applet;
    this.relevantBands = relevantBands;
    this.minVolume = minVolume;
    this.maxVolume = maxVolume;
    this.scale = scale;

    center = new PVector(0, 0);
    maxRadius = applet.width / 2;
  }

  void setSoundData( SoundData soundData )
  {
     this.soundData = soundData;
  }

  public int getLight()
  {
    int brightness = round( map(
      soundData.volume,
      minVolume, maxVolume,
      0, 15
    ));

    return brightness;
  }

  void draw()
  {

    // Normalize frequency to use as hue
    int hue = round( map(
      soundData.frequency,
      0, relevantBands,
      0, 140
    ));
  
    // Normalize volume to use as radius
    int radius = round( scale * map(
      soundData.volume,
      minVolume, maxVolume,
      0, maxRadius
    ));

    // Draw the circle
    applet.pushMatrix();
    applet.noStroke();
    applet.fill( hue, 50, 100, 30 );
    applet.ellipse( center.x, center.y, radius, radius );
    applet.popMatrix();

  } // end of draw()
  
}