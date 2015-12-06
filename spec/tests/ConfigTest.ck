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

c.readConfFile("/Users/iain.emsley/spec/data/config.txt") @=> string config[];
a.assertNotNull(config);
a.assertEquals(5, config.cap());
a.assertEquals("host=127.0.0.1", config[0]);

"host=127.0.0.1" => string confhost;
a.assertEquals(4, c.splitLine(confhost));

c.readData(confhost) @=> string read[];
a.assertNotNull(read);
a.assertEquals("127.0.0.1", read["host"]);
