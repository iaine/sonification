/**
*  Socket class
*/

/**
*  Socket class
*/

class Socket
{

   fun void read(string conf[]){}
   fun void send(string conf[]){}
}


public class OSCSocket extends Socket
{
   fun void read(string conf[]){

      OscRecv recv;

      Std.atoi(conf["port"]) => recv.port;
   
      recv.listen;
      "/" + conf["channel"] + ", " + conf["types"] => string chan;
      recv.event(chan) @=> OscEvent e;

      while ( true ) 
      {
        e => now;

        while (e.nextMsg() != 0)
        {
          
          <<< e.getInt() >>>;
        }
      }

      
   }


   fun void send(string conf[]) {

   }
}
