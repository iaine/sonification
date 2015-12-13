/**
*  Socket class
*/
class ISocket
{

   fun void read(string conf[]){}
   fun void send(string conf[]){}
}


public class Socket extends ISocket
{
   fun void read(string conf[]){

      OscRecv recv;
      PlayFactory p;

      Std.atoi(conf["port"]) => recv.port;
      recv.listen();
      "/" + conf["channel"] + " ," + conf["types"] => string chan;
 
      recv.event(chan) @=> OscEvent e;
      int args[5];
      while ( true ) 
      {
        e => now;

        while (e.nextMsg() != 0)
        {
          [e.getInt()] @=> int arg[];
          p.createFactory(arg, "playwave");
        }
      }

      
   }


   fun void send(string conf[]) {

   }
}
