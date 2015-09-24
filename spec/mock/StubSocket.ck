/**
*   Stub methods for sockets
*/

OscRecv recv;

4567 => recv.port;

recv.listen();

int rec_ev;

recv.event( "/test, i" ) @=> OscEvent oe;

while (true) 
{
    oe => now;

    while (oe.nextMsg() != 0)
    {
        oe.getInt() => rec_ev;
        <<< "Received: ", rec_ev >>>;
    }
} //end whhile loop
