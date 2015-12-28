/**
*  Entropy sonification via command line
*
*/

// Declarations
PlayFactory p;
EntRules er;

//Load the first argument and cast to float
[Std.atof(me.arg(0))] => float fstArg;

//Return the relevant filename based on the rule
[er.floatToStr(fstArg)] @=> string ent[];

//Play the sound file given
p.createFactory(ent,"playwave");
