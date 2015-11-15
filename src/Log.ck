FileIO f;

public class Log
{
  string logFile;
  fun void createLog(string fname)
  {
    fname => logFile;
  }

  fun void writeLog(string message)
  {
    if (f.isClosed() {
        f.open(logFile, FileIO.APPEND)
    }

    f.write(message + "\n");
  }
}
