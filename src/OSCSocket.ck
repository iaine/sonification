/**
*  Socket class
*/

/**
*  Socket class
*/

class Socket
{

   fun void read(){}
   fun void send(){}
}


public class OSCSocket extends Socket
{
   fun void read(){

      OscRecv recv;
      //@todo remove the hardcoded dependency
      6449 => recv.port;
      <<< "reading from 6449 " >>>;     
      if (!recv.listen()) {
        <<< "Not listening" >>>;
      }

      recv.event("/test, i") @=> OscEvent e;

      while ( true ) 
      {
        e => now;

        while (e.nextMsg() != 0)
        {
          
          <<< e.getInt() >>>;
        }
      }

      
   }


   fun void send() {

   }
}
