/**
*  Unit tests for the socket class
*/

Assert a;

MockSocket s;
int rec_obj[2];

//test the Socket class
a.assertNotNull(s);

int recv;

string c[];
"127.0.0.1" => c["hostname"];
"4567" => c["port"];
"test" => c["channel"];
"i"    => c["types"];

spork ~ s.read(c);
spork ~ oscs();
spork ~ r(recv);


a.assertEquals(recv,60);

fun void oscs() {

OscSend s1;
s1.setHost( "127.0.0.1", 4567 );
s1.startMsg("test", "i");
60 => s1.addInt;

}

fun int r(int recv) {
OscRecv r;
6789 => r.port;
r.listen();
r.event("/resp") @=> OscEvent e;
while ( true )
{
  e => now;

  while (e.nextMsg() != 0)
{
    e.getInt() => recv;
}
}
}
