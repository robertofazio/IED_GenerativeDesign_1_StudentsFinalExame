
// Class used to represent sound information

class SoundData
{

  public float[] spectrum;
  public float frequency;
  public float volume;

  SoundData(float[] spectrum, float frequency, float volume )
  {
    this.spectrum = spectrum;
    this.frequency = frequency;
    this.volume = volume;
  }

}