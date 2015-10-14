/**
*  Code for playing a sound
*
*  @author Iain Emsley
*/


public class Play extends IPlay
{

  fun void playSound(int freq) {
    SinOsc sw;
    freq => sw.freq;
    1::second => now;
    // switch note off
    0 => sw.freq; 
  }
}
