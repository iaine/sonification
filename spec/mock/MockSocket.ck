/**
*   Stub methods for sockets
*
*   http://stackoverflow.com/questions/6670423/how-to-stub-a-socket-in-c 
*   as inspiration
*/

class ISocket
{

   fun void read(string conf[]){}
   fun void send(string conf[]){}
}


public class MockSocket extends ISocket
{
   fun void read(string conf[]){

      OscRecv recv;
      OscSend s;

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
          [e.getInt()] @=> args;
          s.setHost( conf["hostname"], 6789 );
          s.startMsg("/resp", conf["types"]);
          args[0] => int tmp => s.addInt;
        }
      }


   }


   fun void send(string conf[]) {
      OscSend s;
      conf["hostname"] => string hostname;
       Std.atoi(conf["port"]) => int port;

      s.setHost( hostname, port );
      "/" + conf["channel"] + " ," + conf["types"] => string chan_s;
      s.startMsg( chan_s, conf["types"] );
      //s.addInt;
   }
}
