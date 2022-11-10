#!/bin/bash

if [ ${#} != 0 ]
then
    ( touch ${1} )

    ( echo -e '#!/bin/bash\n#Uchit N M' > ${1} )
    exit
else
    echo "Wrong Syntax : makeSh.sh <File Name"
    exit

fi
