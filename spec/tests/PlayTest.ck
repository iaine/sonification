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

//a.assertEquals(pw.createFactory([0],""), "Argument error");
//a.assertEquals(pw.createFactory(["../data/c.wav"], "playwave"), "Argument error");
<<< "End assertion tests" >>>;

<<< "Begin Mocks" >>>;
m.createMock(pw, "playwave",[60]);
m.createMock(pw, "playwave",[60.0]);
m.createMock(pw, "playwave",["../data/c.wav"]);
<<< "End Mocks" >>>;
