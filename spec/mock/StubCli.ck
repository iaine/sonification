/**
*  Basic Mock for CLI testing
*  @author Iain Emsley 
*/
Exception e;

me.arg(0) => string fname;

if (get_extension(fname) != "wav")
{
   e.createMessage("Only WAV files are supported");
   e.print();
} else 
{
   <<< "Success" >>>;
}

/**
*   Get the file extension
*/
fun string get_extension (string filename)
{
    filename.find(".") => int extPos;
    return filename.substring((extPos+1));
}

public class Exception 
{   
    string except;

    /**
    * Method to create an exception
    */
    fun string createMessage(string message)
    {
        message => except;
    }

    /**
    * Function to print the exception
    */
    fun void print()
    {
        <<< except >>>;
    }
}
