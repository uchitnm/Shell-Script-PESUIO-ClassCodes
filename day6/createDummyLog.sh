#!/bin/bash

# Name : Uchit N M


NO_OF_FILES=4

(ls logs)

if [ ${?} -eq 0 ]
    then
        (rm -r logs)
    fi

## OR ##

# All_file=$(ls | grep -c logs)
# if [ ${All_file} == 1 ]
# then
#     (rm -r logs)
# fi

(mkdir logs)

for i in A B C D
do
    ( mkdir logs/${i} )
done

for i in A B C D
do
    # # for j in { 1..4}
    # for j in {1..4}
    # do
    # temp=$( date "+%Y-%m-%d%n" | tr -s '-' '_' )
    #     ( touch logs/${i}/${i}_${j}_${temp}_${RANDOM}.logs )
    # done
    j=1
    while [[ ${j} -lt ` expr ${NO_OF_FILES} + 1 ` ]]
    do
    temp=$( date "+%d_%m_%Y%n" ) # | tr -s '-' '_' )
        ( touch logs/${i}/${i}_${j}_${temp}_${RANDOM}.logs )
        (( j++ ))
    done
done

 