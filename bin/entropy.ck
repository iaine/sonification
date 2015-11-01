/**
*  Entropy sonification
*
*/

OSCSocket s;
Config c;

//fun void loop (me)
//{
  string config[10];
  c.readConf(me.arg(0), me.arg(1), me.arg(2), me.arg(3)) @=> config;
  <<< "reading" >>>;
  s.read(config);
//}

//loop(me);
