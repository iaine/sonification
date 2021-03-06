/**
*  Rules for the client to assign a channel
*  We use the X axis in this rule section
*
*  Author: Iain Emsley
*/

public class ClientRules extends IRule {
   fun int intrules (string str) {}
   fun float fltrules(string str) {}
   fun string strrules(string str) {}
   // float
   fun string fltToStr(float i) {}

   fun string assignTone (int degree) {
      return (degree == 1) ? 260 : 440;
   }
}
