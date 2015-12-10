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
  fun void playSound(float freq){}
  fun void playSound(string freq){}
}

/**
*  Factory class to be called
*/
public class PlayFactory
{
    fun void createFactory(int args[], string factType){
      if (factType == "playwave") {
         PlayWave p;
         p.playSound(args[0]);
      } 
    } 

    fun void createFactory(float args[], string factType){
      if (factType == "playwave") {
         PlayWave p;
         p.playSound(args[0]);
      }
    }

    /**
    *  Wrapper for playing a sample from the file system
    */
    fun void createFactory(string args[], string factType){
      if (factType == "playsound") {
         PlayWave p;
         p.playSound(args[0]);
      }
    }
}

class PlayWave extends IPlay
{

  /**
  *  Play sound using an integer
  */
  fun void playSound(int freq) {
    SinOsc sw => dac;
    freq => sw.freq;
    1::second => now;
    // switch note off
    0 => sw.freq; 
  }

  /**
  *  Play sound using a float
  */
  fun void playSound(float freq) {
    SinOsc sw => dac;
    freq => sw.freq;
    1::second => now;
    // switch note off
    0 => sw.freq; 
  }
  
  /**
  *  Convert Midi into Frequency 
  */
  fun float convertMidi(int k) 
  {
    return Std.mtof(k);
  }

  /**
  *  Play sound from a buffer
  */
  fun void playSound (string fname) {
     SndBuf buf => dac;
  
     fname => buf.read;
     0 => buf.pos;
     1 => buf.freq;
     100::ms => now;
  }
}
