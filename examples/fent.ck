/**
*  Read in floats, then pass to playFactory.
*  Simple Sine Wave is created for the sound
*/

Log l;
FS f;
PlayFactory pf;

l.createLog("TRACE", "entropy.txt");

me.arg(0) => string fname;

l.writeLog("INFO", "Filename was " + me.arg(0));

float data[2000000];

f.readFloats(fname) @=> data;

for (0 => int d; d < data.cap(); d++) {
  [data[d]] @=> float arg[];
  pf.createFactory(arg, "playwave");
}
