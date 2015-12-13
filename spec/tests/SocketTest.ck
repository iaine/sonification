/**
*  Unit tests for the socket class
*/

Assert a;

Socket s;
int rec_obj[2];
string config[];
"127.0.0.1" @=> config["host"];
"4567" @=> config["port"];
"/osctest" @=> config["channel"];
"i" @=> config["type"];

//test the Socket class
a.assertNotNull(s);

OscSend xmit;

xmit.setHost( "127.0.0.1", 4567 );
xmit.startMsg( "/osctest", "i" );
60 => xmit.addInt;
a.assertEquals(rec_obj[0], 60);
