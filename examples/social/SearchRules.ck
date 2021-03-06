/**
*  Rules for the client to assign a channel
*  We use the X axis in this rule section
*
*  Author: Iain Emsley
*/

public class SearchRules extends IRule {
   fun int intrules (string str) {}
   fun float fltrules(string str) {}
   fun string strrules(string str) {}
   // float
   fun string fltToStr(float i) {}

   fun float assignTone (int degree) {
      return (degree == 1) ? 260.00 : 440.00;
   }
}
