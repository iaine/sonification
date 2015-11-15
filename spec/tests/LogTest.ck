/**
*  Tests for Log File
*  @author Iain Emsley 
*/

Assert a;
Log l;

a.assertNotNull(l);
"testlog.txt" => string name;
l.createLog(name);
a.assertEquals(name, l.logFile);

l.writeLog("test message");
l.writeLog("test messageg:");

