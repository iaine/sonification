/**
*   Assertion tests for Play Sound
*/

PlayFactory pw;
Assert a;
Mock m;

SinOsc s => dac;

WvOut w;
"../data/c.wav" => string fname;

fname => w.wavFilename;
1 => w.record;

Std.mtof(60) => float c;
c => s.freq;
1::second => now;
0 => w.record;

null @=> w;

<<< "Asserting not null" >>>;
a.assertNotNull(pw);

//pw.convertMidi(60) => float l;
//a.assertEquals(l, 261.625565, 1.0);

a.assertEquals(pw.playSound(), "Argument error");
a.assertEquals(pw.playSound("failme"), "Argument error");
<<< "End assertion tests" >>>;

<<< "Begin Mocks" >>>;
m.createMock(pw, "playSound",[60]);
m.createMock(pw, "playSound",[60.0]);
m.createMock(pw, "playSound",["failme"]);
<<< "End Mocks" >>>;

<<< "Playing Bufer" >>>;
m.createMock(pw, "playBuffer",["../data/c.wav"]);
