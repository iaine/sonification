/**
*   Assertion tests for Play Sound
*/

PlayWave pw;

Assert a;

<<< "Asserting not null" >>>;
a.assertNotNull(pw);

<<< "End assertion tests" >>>;

pw.playSound(60);
