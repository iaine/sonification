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
      FS f;
     
      f.readString(fname) @=> string tmp_conf[];
    string con[5];
    for (0 => int i; i < 5; i++) {
        readData(tmp_conf[i]) @=> string tmp[];
        <<< "data",tmp[0] >>>;
        con[tmp[0]] => tmp[1];
    }
    
    return con;
  }

  /**
  *  Function to read in string data
  */ 
  fun string[] readData(string line)
  {
    string r[1];
    splitLine(line) => int spl;

    if (spl > 0) { 
      line.substring((spl + 1)) => r[line.substring(0,spl)];
    }
    return r;
  }

  /**
  *  Function to split the line
  */ 
  fun int splitLine(string line) {
      return line.find("=");
  }
}
