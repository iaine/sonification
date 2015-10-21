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
      PlayFactory pf;

      OscRecv recv;
      //@todo remove the hardcoded dependency
      6449 => recv.port;
     
      recv.listen();

      recv.event("/test, i") @=> OscEvent e;

      while ( true ) 
      {
        e => now;

        while (e.nextMsg() != 0)
        {
          
          e.getFloat();
        }
      }

      
   }


   fun void send() {

   }
}
