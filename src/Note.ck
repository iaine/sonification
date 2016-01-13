/**
*  Note structures for internal use
*
*  @author: Iain Emsley
*/


/**
*  Note structure that uses floats
*/
public class FloatNote {
  float frequency;
  float duration;
  int pan;
}

/**
*  Note structure that uses integers
*/ 
public class IntNote {
  int frequency;
  int duration;
  int pan;
}

/**
*  Note structure for Wav file
*  @param String filename: The file name to load
*  @param Int sampleRate: The rate to play the sample
*  @param Int frequency: set the frequency to play the sample
*  @param Int duration: Set the duration to play the file for
*  @param Int pan: Set the pan on the file if desired
*/
public class WavNote {

  string filename;

  int sampleRate;
  int frequency;
  int duration;
  int pan;
}

/**
* Note taken from the spatial XML files
*/
public class SpatialNote {

  string filename;

  float x;
  float y;
  float z;
}
