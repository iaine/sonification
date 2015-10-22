/**
*   Tests to read the config
*/

Assert a;
Config c;

a.assertNotNull(c);

a.assertNotNull(c.readConf());
