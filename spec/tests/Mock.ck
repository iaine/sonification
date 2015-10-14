/**
*  Very naive Mock class for testing
*/

class Mock()
{

  fun void createMock(string class, string functionname) {
    if (class == "Play") {
      playMock pm;
      pm.createMock(class, functionname);
    } else {
      <<< "Class not found", class >>>;
    }
  }
}

class playMock ()
{
   fun void createMock(string class, string functionname) 
   {
      Play p;
      if (functionname == "playSound") {
        p.playSound();
      } else {
        <<< "Function name is invalid", functionname >>>;
      }
   }
}
