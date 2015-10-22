/**
*  Entropy sonification
*
*/

OSCSocket s;
Config c;

fun void main()
{
  c.readConf(me.args[0], me.args[1], me.args[2], me.args[3])
  s.read();
}

main(me.args());
