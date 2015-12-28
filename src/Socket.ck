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

  
          int arg[5];
          float args[5];
      while ( true ) 
      {
        e => now;

        while (e.nextMsg() != 0)
        {
          if (conf["types"] == "f") {
              [e.getFloat()] @=> args;
              p.createFactory(args, "playwave");
          } else {
              [e.getInt()] @=> arg;
              p.createFactory(arg, "playwave");
          }
        }
      }

      
   }


   fun void send(string conf[]) {

   }
}
