/**
*  Exception class
*  @author Iain Emsley
*
*  Usage:
*  Exception e;
*  e.createMessage("test");
*  e.print(); //prints "test":string 
*/

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
