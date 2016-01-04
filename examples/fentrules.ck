/**
*  Read in floats, then pass to play.
*  This script uses a rule to alter the power given to the note
*/

// Class declarations
Log l;
FS f;
PlayFactory pf;
EntRules er;


l.createLog("TRACE", "entropy.txt");

me.arg(0) => string fname;

l.writeLog("INFO", "Filename was " + me.arg(0));

float data[2000000];

f.readFloats(fname) @=> data;

for (0 => int d; d < data.cap(); d++) {
  [data[d], er.calculatePosition(data[d])] @=> float arg[];
  pf.createFactory(arg, "panwave");
}
