#!/bin/bash

touch final
cat $1 | sort | 

while [ read LINE ]
do
    if [ $prev != ${LINE} ]
        then
            echo ${LINE} >> final

            fi
            prev=${LINE}
done

rm ${1}
mv final ${1}