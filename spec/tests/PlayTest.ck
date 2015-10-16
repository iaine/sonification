/**
*   Assertion tests for Play Sound
*/

PlayWave pw;
Assert a;
Mock m;

<<< "Asserting not null" >>>;
a.assertNotNull(pw);

pw.convertMidi(60) => float l;
a.assertEquals(l, 261.625565, 1.0);

a.assertEquals(pw.playSound(), "Argument error");
a.assertEquals(pw.playSound("failme"), "Argument error");
<<< "End assertion tests" >>>;

<<< "Begin Mocks" >>>;
m.createMock(pw, "playSound",[60]);
m.createMock(pw, "playSound",[60.0]);

<<< "End Mocks" >>>;
