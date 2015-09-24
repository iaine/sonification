FileIO file;

me.arg(0) => string path;


if (!file.open(path, FileIO.READ)) {
    <<<"file opening failed">>>;
    int ret[0]; // error opening the specified file
    <<< ret[0] >>>;
} else {
    <<< "File opened" >>>;
    file.close();
}
