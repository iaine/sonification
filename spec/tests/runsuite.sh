/bin/bash

CHUCK=`chuck Assert.ck Mock.ck `

chuck --loop &

chuck + ../../src/minnelieder.ck

for file in ./*Test.ck; do
    $CHUCK $file
done
