/**
*  Receiver for the entropy code
*
*  author: Iain Emsley
*/

Socket osc;
Log l;

string config[10];
c.readConf(me.arg(0), me.arg(1), me.arg(2), me.arg(3)) @=> config;
 
s.read(config);
