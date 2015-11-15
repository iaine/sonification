Assert a;
FileIO f;
FS fs;

int i;

"ints.txt" => string intf;
"floats.txt" => string floatf;
"strings.txt" => string stringf;

     if (!f.open(intf, WRITE_ONLY))
     {
         <<< "Could not open " ,intf >>>;
         me.exit();
     }


for (0 => i; i < 100; i++) {
     f.write(i);
     f.write("\n");
}

f.close();
