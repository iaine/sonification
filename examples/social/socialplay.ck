/**
*  Play function for social coding
*
*  @author: Iain Emsley
*/

PlayFactory cpf;
Log cl;
Socket cs;
SearchRules cr;
Config c;

cl.createLog("DEBUG", "logsearch.txt");

string config[10];
c.readConf(me.arg(0), me.arg(1), me.arg(2), me.arg(3)) @=> config;

cs.read(config);
