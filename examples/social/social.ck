/**
*  Social coding experiment files
*
*  @author: Iain Emsley
*/

Log l;
ServerRules sr;
Socket s;

me.arg(0) => string socialmedia;

string c[10];
sr.assignChannel(socialmedia) => c["x"];

sr.assignMachine(socialmedia) => c["y"];


s.send(c);
me.exit();
