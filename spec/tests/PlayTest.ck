/**
*   Assertion tests for Play Sound
*/

PlayWave pw;

Assert a;

<<< "Asserting not null" >>>;
a.assertNotNull(pw);

a.assertEqual(pw.convertMidi(60), 261.625565);

<<< "End assertion tests" >>>;

pw.playSound(60);
