/**
*  Class for file operations
*/

public class FS
{
  fun int[] readInts(string fname)
  {
    FileIO file;

    if (!file.open(fname, FileIO.READ)) {
         <<< "Could not open file" >>>;
    }
    
    int value[101];

    for (0 => int i; i < value.size(); i++ ) {
       file => value[i];
    }
    return value;  
  }

  fun float[] readFloats(string fname)
  {
    FileIO file;

    if (!file.open(fname, FileIO.READ)) {

    }

    float f_value[101];

    for (0 => int i; i < f_value.size(); i++ ) {
       file => f_value[i];
    }
    return f_value;
  }

  fun string[] readString(string fname)
  {
    FileIO file;

    if (!file.open(fname, FileIO.READ)) {

    }

    string f_value[10];

    for (0 => int i; i < f_value.size(); i++ ) {
       file => f_value[i];
    }
    return f_value;
  }
}
