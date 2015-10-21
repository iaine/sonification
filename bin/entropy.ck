/**
*  Entropy sonification
*
*/

OSCSocket s;
PlayWave p;

fun void main()
{
  s.read(p.playSound(60));
}
