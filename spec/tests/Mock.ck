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

  fun void createMock (string classname, string functionname, string args[])
  {
    if (classname == "Play") {
      playMock pm;
      pm.createMock(classname, functionname, args);
    } else {
      <<< "Class not found", classname >>>;
    }
  }

  fun void createMock (string classname, string functionname, string args[]) 
  {
    if (classname == "Config") {
      confMock cm;
      cm.createMock(classname, functionname, args);
    } else {
      <<< "Class not found", classname >>>;
    }
  }
}

class playMock
{
   fun void createMock (string classname, string functionname, int args[]) 
   {
      PlayFactory p;
      if (functionname == "createFactory") {
        p.createFactory(args,"playSound");
      } else {
        <<< "Function name is invalid", functionname >>>;
      }
   }

   fun void createMock (string classname, string functionname, string args[])
   {
      PlayFactory p;
      if (functionname == "createFactory") {
        p.createFactory(args,"playSound");
      } else {
        <<< "Function name is invalid", functionname >>>;
      }
   }
}

class confMock
{
   fun void createMock (string classname, string functionname, string args[])
   {
      Config c;
      c.readConf(args[0], args[1], args[2], args[3]);
   }
}

Mock m;
m.createMock("Play", "createFactory", [60]);
m.createMock("Config", "readConf", ["host","port","chan","ty"]);
