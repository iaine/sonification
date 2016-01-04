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
   fun string fltToStr(float i) {
      return (i < 50.0) ? "tweet.wav" : "cuckoo.wav";
   }
   
   /**
   *  Calculate the relative position of the sound made 
   *  using the float. We remove 50 to centre on 0 as the middle
   *  with -1 to the left and 1 to right.  
   */
   fun float calculatePosition (float i) {
      return (i - 50);
   }
}
