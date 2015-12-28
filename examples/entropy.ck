/**
*  Entropy sonification via command line
*
*/

// Declarations
PlayFactory p;
EntRules er;
Log l;

//start the logging
l.createLog("entlog.txt", "TRACE");
//Load the first argument and cast to float
Std.atof(me.arg(0)) => float fstArg;
l.writeLog("INFO", "Arg received " + me.arg(0));

//Return the relevant filename based on the rule
er.fltToStr(fstArg) => string fname;
[fname] @=> string ent[];
l.writeLog("INFO", "Fname received " + fname);

//Play the sound file given
p.createFactory(ent,"playwave");
