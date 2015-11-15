

public class Log
{
  // General string for log file
  string logFile;
  // Integer for log level
  int logLevel;
  fun void createLog(string level, string fname)
  {
    fname => logFile;
    enumLog(level) => logLevel;
  }

  /**
  *  Method to write the log file
  */
  fun void writeLog(string writeLevel, string message)
  {
    if (enumLog(writeLevel) >= logLevel) {
      FileIO f;
    
      if (!f.open(logFile, FileIO.APPEND)) {
        <<< "Can't open file" >>>;
        me.exit();
      }

      f.write(message);
      f.write("\n");
    }
  }
  
  /**
  *  Enumerate the log level
  */
  fun int enumLog (string lev)
  {
     int l;
     if (lev == "ALL")
     {
        0 => l; 
     } else if (lev == "TRACE") 
     {
        1 => l;
     } else if (lev == "DEBUG") 
     {
        2 => l;
     } else if (lev == "FATAL") 
     {
        3 => l;
     } else if (lev == "ERROR") 
     {
        4 => l;
     } else if (lev == "WARN") 
     {
        5 => l;
     }
     return l;
  }
}
