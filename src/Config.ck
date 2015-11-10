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

  /**
  *  Read in config file
  */
  fun string[] readConf(string fname)
  {
    if (!file.open(fname, FileIO.READ))
    {
      <<< "File cannot open " >>>;
    }  

    60 => int size;

    int con[size];
    for (0 => int i; i < size; i++) { 
        file => con[i];
    }

    file.close(); 

    return con;
  }

  /**
  *  Function to read in string data
  */ 
  fun string[] readData(string line)
  {
    line.find("=") => int spl;
    line.substring((spl + 1)) => con[line.substring(0,(spl - 1))];
  }
}
