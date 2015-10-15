/**
*  Very naive Mock class for testing
*/

public class Mock
{

  fun void createMock (string classname, string functionname, int args[]) 
  {
    if (classname == "Play") {
      playMock pm;
      pm.createMock(classname, functionname, args);
    } else {
      <<< "Class not found", classname >>>;
    }
  }
}

class playMock
{
   fun void createMock (string classname, string functionname, int args[]) 
   {
      PlayWave p;
      if (functionname == "playSound") {
        p.playSound(args[0]);
      } else {
        <<< "Function name is invalid", functionname >>>;
      }
   }
}

Mock m;
m.createMock("Play", "playSound", [60]);
