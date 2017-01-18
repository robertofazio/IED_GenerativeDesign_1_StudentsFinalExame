
// Class used to analyze the input sound stream

class SoundAnalyzer extends FFT
{

  private int fftBands;
  private float minVolume;
  private float maxVolume;

  SoundAnalyzer( PApplet applet, int fftBands, float minVolume, float maxVolume )
  {
    super( applet, fftBands );
    this.fftBands = fftBands;

    this.minVolume = minVolume;
    this.maxVolume = maxVolume;

    AudioIn in = new AudioIn( applet, 0 );
    in.start();
    input( in );
  }

  public SoundData analyzeSound()
  {
    // FFT
    float[] spectrum = new float[fftBands];
    analyze( spectrum );

    // Find most relevant band and get its number and volume
    int band = 0;
    float bandVolume = 0;
    for( int i = 0; i < spectrum.length; i++ )
    {
      // Volume gets lowered by minVolume
      spectrum[i] -= minVolume;

      // Volume gets limited to maxVolume
      if ( spectrum[i] >= maxVolume)
        spectrum[i] = maxVolume;

      if ( spectrum[i] >= bandVolume )
      {
        band = i;
        bandVolume = spectrum[i];
      }
    }

    // Update sound data
    return new SoundData( spectrum, (float)band, bandVolume );
  }
  
}