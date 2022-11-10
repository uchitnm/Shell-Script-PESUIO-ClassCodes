#!/bin/bash

# readFile=$(cat text1.txt)

# count=0

# for i in ${readFile}
# do
#     if [$1 == ${i}]
#         then
#             ((count++))



# echo ${1} : ${count}


# Name : UCHIT N M
# PRN : PES1202201213
# Date : 08-11-2022

readFile=$(cat text1.txt)
echo $readFile
usage="Give the Exam name after the filename i.e ./exam.sh -exam UPSC" 
count=0
junk_no=0
agg1=${1}
agg2=${2}
if [ $# == 0 ]
then
    echo ${usage}
fi

if [[ $agg1 == '-exam' ]]
then
    if [ "$agg2" == "UPSC" ] || [ "$agg2" == "CAT" ] || [ "$agg2" == "GMAT" ] || [ "$agg2" == "PESSAT" ] || [ "$agg2" == "CET" ] || [ "$agg2" == "GRE" ]
    then
        for i in ${readFile}
        do
            if [[ "$agg2" == "${i}" ]]
                then
                    (( count++ ))
            fi
        done      
        echo ${agg2} : ${count} 


    elif [[ $agg2 == 'junk' ]]

        then
            for j in ${readFile}
            do
            if [ "${j}" != "UPSC" ] && [ "${j}" != "CAT" ] && [ "${j}" != "GMAT" ] && [ "${j}" != "PESSAT" ] && [ "${j}" != "CET" ] && [ "${j}" != "GRE" ]
                    then
                    (( junk_no++ ))
                fi
            done
            echo junk : ${junk_no}
            

    else
        echo ${usage}
    fi
else
    echo ${usage}
fi