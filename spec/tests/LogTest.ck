/**
*  Tests for Log File
*  @author Iain Emsley 
*/

Assert a;
Log l;

a.assertNotNull(l);
"testlog.txt" => string name;
l.createLog("ALL", name);
a.assertEquals(name, l.logFile);
a.assertEquals(0, l.logLevel);

l.writeLog("DEBUG","test message");
