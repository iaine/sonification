/**
*  Mock for rules
*/

public class MockRules extends IRule {
   fun int intrules (string op) {
     if (op == "journalarticle") {
         return 60;
     }
   }
   fun float fltrules() {}
   fun string strrules(string op) {
   }

   fun string floatToStr(float f) {
       return (f < 50.0) ? "a.wav" : "b.wav";
   }
}
