/**
*
*  Client to send an OSC message
*  @todo: Write the Minnelieder socket send code
*/

// get command line
if( me.args() ) me.arg(0) => hostname;
if( me.args() > 1 ) me.arg(1) => Std.atoi => port;

// send object
OscSend xmit;

// aim the transmitter
xmit.setHost( hostname, port );
"playold.txt"  => string fname;
int drama[5000];
readInts(fname) @=> drama;

for (0 => int i; i<drama.cap();i++) {

    xmit.startMsg( "/osc/test", "f" );

    drama[i] => xmit.addFloat;
    // advance time
    0.2::second => now;

}
