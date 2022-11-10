#!/bin/bash

# $(ls > temp)

count=$(ls | wc -w | xargs)

# for i in ${lsop}
# do
#     (( count++ ))
# done

echo "No. of Items in ${PWD} = ${count}"