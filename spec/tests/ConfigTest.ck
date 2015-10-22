/**
*   Tests to read the config
*/

Assert a;
Config c;

a.assertNotNull(c);
string conf[];
"host = 127.0.0.1" => string cline;
c.readLine(conf,cline);
a.assertEquals(conf["host"],"127.0.0.1");
