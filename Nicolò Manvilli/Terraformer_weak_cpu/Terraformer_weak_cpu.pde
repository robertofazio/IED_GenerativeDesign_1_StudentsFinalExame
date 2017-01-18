/*
 * TERRAFORMER
 *
 * © 2017 Nicolò Manvilli, all rights reserved
 *
 * Channel your creativity through the sound of a theremin to raise the ground of an alien planet and form a landscape!
 *
 * The landscape is a 3D representation of the sound spectrum in time. 
 * The sun represents the current sound: volume is proportional to radius, frequency is represented by color.
 * The stars are randomly generated.
 *
 * You can use any other audio input (even a whistle), but keep in mind that "clean" sounds give better results.
 *
 * Inspirations:
 *  3D Terrain Generation by Daniel Shiffman: https://www.youtube.com/watch?v=IKB1hWWedMk
 *
 */

import processing.sound.*;
import processing.video.*;

// Sound analyzer
SoundAnalyzer analyzer;
int fft_bands;
int relevant_bands;
float minVolume;
float maxVolume;

// Spectrums
int number_of_spectrums;
float[][] spectrums;

// Sun
Sun sun;
float sunScale;

// Landscape
Landscape landscape;
int landMaxElevation;
int landNodesDistX;
int landNodesDistY;
int landHorizonOffset;

// Webcam
Webcam webcam;
boolean show_webcam;
int camResolutionX;
int camResolutionY;

// Stars
int numberOfStars;
Star[] stars;

void setup()
{

  // Configuration
  size( 1366, 760, P3D );
  fft_bands = 256;
  relevant_bands = 83;
  minVolume = 0.01;
  maxVolume = 1.5;
  number_of_spectrums = 115;
  landMaxElevation = 200;
  landNodesDistX = 8;
  landNodesDistY = 8;
  landHorizonOffset = -200;
  sunScale = 1.6;
  show_webcam = true;
  camResolutionX = 640;
  camResolutionY = 480;
  numberOfStars = 20;

  // Prepare canvas
  noCursor();
  colorMode( HSB, 360, 100, 100, 100 );
  background( 0, 0, 5 );

  // Prepare to analyze the input audio stream
  analyzer = new SoundAnalyzer( this, fft_bands, minVolume, maxVolume );

  // Prepare the array of spectrums
  spectrums = new float[number_of_spectrums][fft_bands];

  // Prepare the sun (represents the volume and frequency of sound by using radius and hue)
  sun = new Sun( this, relevant_bands, minVolume, maxVolume, sunScale );

  // Prepare the Landscape (each horizontal line represents a spectrum)
  landscape = new Landscape( this, relevant_bands, landMaxElevation, landNodesDistX, landNodesDistY, landHorizonOffset, minVolume, maxVolume );

  // Prepare the webcam
  if ( show_webcam )
    webcam = new Webcam( this, camResolutionX, camResolutionY );

  // Prepare stars
  stars = new Star[numberOfStars];
  for ( int i = 0; i < numberOfStars; i++ )
  {
    stars[i] = new Star( this, round( 100 - (i * (100/numberOfStars)) ) );
  }

} // end of setup()      

void draw()
{

  // Analyze sound
  SoundData soundData = analyzer.analyzeSound();

  // Shift the spectrums array
  for ( int i = 0; i < number_of_spectrums-1; i++ )
  {
    if (spectrums[i+1] != null)
      spectrums[i] = spectrums[i+1].clone();
  }

  // Add current spectrum to the array
  spectrums[number_of_spectrums-1] = soundData.spectrum;

  // Disable 3D z-indexing (must draw sky and sun as 2D background elements) 
  hint( DISABLE_DEPTH_TEST );

  // Prepare the sun
  sun.setSoundData( soundData );
  int sunlight = sun.getLight();

  // Draw the sky (webcam)
  if ( show_webcam )
    webcam.draw( sunlight );
  else
    background( 0, 0, 5 );

  // Draw the sun
  sun.draw();

  //  Draw stars
  for ( int i = 0; i < stars.length; i++ )
  {
    if ( stars[i].isDead() )
      stars[i] = new Star( this, 100 );

    stars[i].draw();
  }

  // Re-enable 3D z-indexing
  hint( ENABLE_DEPTH_TEST );

  // Draw the landscape
  landscape.draw( spectrums, sunlight );


  //println( "Band: " + round( soundData.frequency ) + ", " + "Volume: " + soundData.volume );

} // end of draw()