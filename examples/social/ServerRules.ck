/**
*  Rules for the client to assign a machine position
*  We use the Y axis in this rule section
*
*  Author: Iain Emsley
*/

public class ServerRules extends IRule() {
   fun int intrules (string str) {}
   fun float fltrules(string str) {}
   fun string strrules(string str) {}
   // float
   fun string fltToStr(float i) {}

   fun int assignChannel (string mediatype) {
      return (mediatype == "D7" || mediatype == "tweet) ? 270 : 90;
   }

   fun int assignMachine (string media) {
     int machine;
     if (media == "tweet" || media == "retweet") {
        machine => 0;
     } else {
        machine => 180;
     }
   }

   
}
