/**
*  Rules for entropy example
*/

IRule ir;

/**
*  Extend the IRule class. We only need float to string
*/
public class EntRules extends IRule {

   fun int intrules (string str) {}
   fun float fltrules(string str) {}
   fun string strrules(string str) {}
   /**
   *  If float is less than 50, then display tweet
   *  else cuckoo for a retweet 
   */
   fun float fltToStr(float i) {
      return (i < 50.0) ? "tweet.wav" : "cuckoo.wav";
   }
}
