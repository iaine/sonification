/**
*  Class to read in the configuration file
*/
FileIO file;

public class Config
{
  /**
  *  Read the config file
  */
  fun string[] readConf(string host, string port, string channel, string types)
  {
    string conf[10];
    host => conf["host"];
    port => conf["port"];
    channel => conf["channel"];
    types => conf["types"];

    return conf;
  }
}
