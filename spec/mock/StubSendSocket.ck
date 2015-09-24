/**
*   Stub method to send data
*/

me.arg(0) => string hostname;
Std.atoi(me.arg(1)) => int port;
Std.atoi(me.arg(2)) => int messageBody;

OscSend xmit;

xmit.setHost(hostname, port);
xmit.startMsg("/test", "i");
messageBody => xmit.addInt;
<<< "message sent" >>>;
