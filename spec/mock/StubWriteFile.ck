FileIO file;

me.arg(0) => string path;

"Write a test" => string content;

file.open(path, FileIO.APPEND);
    
file.write(content);

file.close();
