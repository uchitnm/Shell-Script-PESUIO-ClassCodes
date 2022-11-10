#!/bin/bash

# Name : Uchit N M


NAME=${1}

if [ -f ${NAME} ]
then 
    echo "${NAME} is File."
elif [ -d ${NAME} ]
then 
    echo "${NAME} is Directory."
else
    echo "Improper Syntax give Use: ./check.sh <File/Dir Name>"

fi