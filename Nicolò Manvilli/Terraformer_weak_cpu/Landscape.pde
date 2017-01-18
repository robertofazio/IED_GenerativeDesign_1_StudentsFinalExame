
// Class used to draw a landscape from an array of nodes

class Landscape
{

  private PApplet applet;

  private int relevantBands;
  private float minVolume;
  private float maxVolume;

  private int maxElevation;
  private PVector nodesDistance;
  private int horizonOffset;


  Landscape( PApplet applet, int relevantBands, int maxElevation, int nodesDistanceX, int nodesDistanceY, int horizonOffset, float minVolume, float maxVolume )
  {
    this.applet = applet;

    this.relevantBands = relevantBands;
    this.minVolume = minVolume;
    this.maxVolume = maxVolume;

    this.maxElevation = maxElevation;    
    this.nodesDistance = new PVector( nodesDistanceX, nodesDistanceY );
    this.horizonOffset = horizonOffset;
  }


  void draw( float[][] nodes, float brightness )
  {
    applet.pushMatrix();

    // Perspective
    translate( applet.width/2, 0 );
    rotateX( radians(45) );
    rotateZ( radians(16.8) );
    translate( 0, horizonOffset );

    applet.fill( 170, 50, brightness);

    float strokeBrightness = brightness + 40;
    if ( strokeBrightness > 100 )
      strokeBrightness = 100;
    applet.stroke( 140, 50, strokeBrightness );

    // Draw a triangle grid using nodes array for coordinates (nodes[y][x] = z)
    for ( int y = 0; y < nodes.length - 1; y++ )
    {

      // Draw a triangle strip
      applet.beginShape( TRIANGLE_STRIP );
      for ( int x = 0; x < relevantBands; x++ )
      {
        float z = map( nodes[y][x], minVolume, maxVolume, 0, maxElevation);
        applet.vertex( x * nodesDistance.x, y * nodesDistance.y, z );

        float nextZ = map( nodes[y+1][x], minVolume, maxVolume, 0, maxElevation);
        applet.vertex( x * nodesDistance.x, (y+1) * nodesDistance.y, nextZ );
      }
      applet.endShape();

    }

    applet.popMatrix();
  }

}