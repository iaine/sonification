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
      } else if (factType == "playchannel") {
         PlayWave p;
         p.playChannel(args[0]);
      }
    } 

    fun void createFactory(float args[], string factType){
      if (factType == "playwave") {
         PlayWave p;
         p.playSound(args[0]);
      } else if (factType == "panwave") {
         PlayWave p;
         p.playPanSound(args);
      }
    }

    /**
    *  Wrapper for playing a sample from the file system
    */
    fun void createFactory(string args[], string factType){
      if (factType == "playwave") {
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
    
    (100 + freq) => sw.freq;
    100::ms => now;
 
  }

  /**
  *  Play sound using a float and panning the sound
  */
  fun void playPanSound(float freq[]) {
    
    SinOsc sw => Pan2 p => dac;
    
    (100 + freq[0]) => sw.freq;
    freq[1] => p.pan;
    100::ms => now;
                      
  }

  fun void playChannel (int chan) {
    if (chan == 90) {
        playChannelOne();
    } else {
        playChannelTwo();
    }
  }

  fun void playChannelOne() {
    SinOsc s => dac.chan(0);
    
    440 => s.freq;
    1 => s.gain;
    100::ms => now;
    0 => s.freq;
  }

  fun void playChannelTwo() {
    SinOsc s => dac.chan(1);

    220 => s.freq;
    1 => s.gain;
    100::ms => now;
    0 => s.freq;
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
