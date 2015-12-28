/**
*
*  Client to send an OSC message
*  @todo: Write the Minnelieder socket send code
*/
string hostname;
int port;

// get command line
if( me.args() ) me.arg(0) =>  hostname;
if( me.args() > 1 ) me.arg(1) => Std.atoi => port;

// send object
OscSend xmit;

// aim the transmitter
xmit.setHost( hostname, port );


me.arg(2)  => string fname;
int drama[200];
readInts(fname) @=> drama;

for (0 => int i; i<drama.cap();i++) {

    xmit.startMsg( me.arg(3), me.arg(4) );

    drama[i] => xmit.addFloat;
    // advance time
    0.2::second => now;

}

fun int[] readInts(string path) {

    // open the file
    FileIO file;
    if (!file.open(path, FileIO.READ)) {
        <<<"file opening failed">>>;
        int ret[0]; // error opening the specified file
        return ret;
    }

    // read the size of the array
    //4096 => int size;
    file => int size;
    // now read in the contents
    int ret[size];
    for (0 => int i; i < size; i++)
        file => ret[i];

    file.close();
    return ret;
}
