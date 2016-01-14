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
              <<< arg[0] >>>;
              p.createFactory(arg, "playchannel");
          }
        }
      }

      
   }


   fun void send(string conf[]) {
      OscSend s;
      string hostname;
      if (Std.atoi(conf["x"]) > 1) {
          "localhost" => hostname;
      } else {
          "129.67.193.131" => hostname;
      }

      6789 => int port;

      s.setHost(hostname, port);
      <<< "sending: ",Std.atoi(conf["x"]) >>>;
      s.startMsg("/social", "i");
      s.addInt(Std.atoi(conf["x"]));
      //s.addInt(Std.atoi(conf["y"]));
      10::ms => now;
   }
}
