/**
*   Assertion tests for Play Sound
*/

PlayWave pw;
Sample s;
Assert a;

<<< "Asserting not null" >>>;
a.assertNotNull(pw);

pw.convertMidi(60) => float l;
a.assertEquals(l, 261.625565, 1.0);

<<< "End assertion tests" >>>;

pw.playSound(60);

a.assertNotNull(s.highFrequency());
