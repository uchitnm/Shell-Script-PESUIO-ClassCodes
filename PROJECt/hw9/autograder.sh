#!/bin/bash

MaxMark=${1}

if [ ! ${MaxMark} ]
then
    echo "No Maxmimum marks is given. Syntax - ./autograder.sh 50"
    exit
fi
echo "Maximum marks evaluated for is : " ${MaxMark}
echo ""

dir_cont=$(ls students/)

for i in ${dir_cont}

do

    stud_file=$(ls students/${i}/| grep -i task1.sh)

    if [ ! ${stud_file} == "" ]
    then
            echo "Evaluating ${i} ..." | lolcat
            # echo ${stud_file}
            chmod +x students/${i}/${stud_file}
            ./students/${i}/${stud_file} > students/${i}/temp.txt
            # echo `diff expected.txt students/${i}/temp.txt`
            tmp_no=`diff -u expected.txt students/${i}/temp.txt | grep ^'+' | wc -l`
            final_no=$(( ${tmp_no}-1 ))
            # echo ${final_no}
            if [ ${final_no} != -1 ]
                then
                    stud_mark=$(( ${final_no}*5 ))
                    stud_mark=$(( 50-${stud_mark} ))
                    echo "${i} has incorrect output (${final_no} lines are not matching)."
                    # echo ${stud_mark}
            else 
                    final_no=0
                    echo "${i} has Correct output."

            fi
            echo "${i} has earned a score of ${stud_mark} / ${MaxMark}"
            python3 mail.py ${i} ${stud_mark} ${final_no} hangman.python3@gmail.com
            echo ""
            echo "----------------------------------------------------"
            rm students/${i}/temp.txt
    else
        echo ${i} "have no turened in Assignment."
        python3 mail.py ${i} '' '' hangman.python3@gmail.com
        echo ""
        echo "----------------------------------------------------"
    fi

    

done
