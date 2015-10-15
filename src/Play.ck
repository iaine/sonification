/**
*  Code for playing a sound
*
*  @author Iain Emsley
*/


/**
*  Interface for Play
*/

class IPlay {

  fun void playSound(int freq){}

}


public class PlayWave extends IPlay
{

  fun void playSound(int freq) {
    SinOsc sw => dac;
    freq => sw.freq;
    1::second => now;
    // switch note off
    0 => sw.freq; 
  }

  fun float convertMidi(int k) 
  {
    return Std.mtof(k);
  }
}
