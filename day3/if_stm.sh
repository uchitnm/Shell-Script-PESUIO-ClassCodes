#!/bin/bash

#iif [ ${a} -eq 0 ]
#then 
#	echo "Its 0"
#else 
#	if [ ${a} -eq 1 ]
#		then
#			echo "Its 1"
#	else
	
#		echo "NONE"
#	fi
#fi
#echo `expr $a + $b`
#echo "$(( $a + $b ))"


var=$( cat /etc/shadow )

result=$?

if [ $result -eq 0 ]
then
	echo "Runned Sucesufully"
else
	echo "Runned UnSuccessfully"
fi


