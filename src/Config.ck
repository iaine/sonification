/**
*  Class to read in the configuration file
*/
FileIO file;

public class Config
{
  /**
  *  Read the config file
  */
  fun string[] readConf()
  {
    if (!file.open("config.txt", FileIO.READ))
    {
      <<< "File open " >>>;
    }    
  }
}
