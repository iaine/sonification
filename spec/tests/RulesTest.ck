/**
*  Test for Rules interface
*
*/


Assert a;
MockRules m;

a.assertNotNull(m);

a.assertEqual(m.floatToStr(49.9), "a.wav");
a.assertEqual(m.floatToStr(50.1), "a=b.wav");
