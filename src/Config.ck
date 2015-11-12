/**
*  Class to read in the configuration file
*/

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
  fun string[] readConfFile(string fname)
  {
      FileIO file;
      <<< "hhhh" >>>;
      <<< fname >>>;
    if (!file.open(fname, FileIO.READ))
    {
        string con[0];
      <<< "File cannot open " >>>;
      me.exit();
    }  
 
    5 => int size;

    string con[size];

    for (0 => int i; i < size; i++) {
        <<<  "bbbb" >>>;
        file => con[i];
    }

    file.close(); 
    <<< con >>>;
    return con;
  }

  /**
  *  Function to read in string data
  */ 
  fun string[] readData(string line)
  {
    string r[];
    line.find("=") => int spl;
    line.substring((spl + 1)) @=> r[line.substring(0,(spl - 1))];
  }
}
