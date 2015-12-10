Assert a;
FileIO f;
FS fs;

int i;
float fl;

"ints.txt" => string intf;
"floats.txt" => string floatf;
"strings.txt" => string stringf;

if (!f.open(intf, FileIO.APPEND))
{
  <<< "Could not open " ,intf >>>;
  me.exit();
}

f.write("100");
f.write(" ");
for (0 => i; i < 100; i++) {
   f.write(i);
   f.write(" ");
}

if (!f.open(intf, FileIO.APPEND))
{
  <<< "Could not open " ,intf >>>;
  me.exit();
}

f.write("100");
f.write(" ");
for (0 => i; i < 100; i++) {
   f.write((i $ float));
   f.write(" ");
}

f.close();

fs.readInts(intf) @=> int val[];
a.assertEquals(101, val.size());
a.assertEquals(100,val[0]);

fs.readFloats(intf) @=> float fval[];
a.assertEquals(101, fval.size());
a.assertEquals(100.0,fval[0], 0);



