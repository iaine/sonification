/**
*   Tests to read the config
*/

Assert a;
Config c;

a.assertNotNull(c);
"127.0" => string host;
c.readConf(host,"4556", "/text", "i i") @=> string conf[];
a.assertNotNull(conf["host"]);
a.assertEquals(conf["host"], host);
