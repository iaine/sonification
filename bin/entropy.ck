/**
*  Entropy sonification
*
*/

OSCSocket s;
PlayFactory pf;

fun void main()
{
  [60] @=> int test[];
  s.read(pf.createFactory(test, "playwave"));
}

main();
