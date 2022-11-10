#!/bin/bash


# read -p "Enter the Operation Symbol : " sy
# read -p "Enter the First no : " a
# read -p "Enter the Second no : " b
# if [ $sy == '+' ]

# then 
# 	echo `expr $a + $b`
# else
# 	echo $a

# fi


if [ -f $1 ]
then
	echo "$1 is file "
else
	echo "NONE"

fi