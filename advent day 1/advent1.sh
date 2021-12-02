#!/bin/bash

filename='input.txt'
up=0
arr=()
test=0
while IFS="" read -r i
do
    arr+=($i)

done < $filename

for i in "${!arr[@]}"
do

    test=$((i-1))

    if [[ $i -eq 0 ]]
    then
        let test=0
    fi
    this=${arr[$i]}
    last=${arr[$test]}

    echo $last
    echo $this
    

    if [ "${this//[[:space:]]/}" -gt "${last//[[:space:]]/}" ]
    then
        up=$((up+1))
        echo "hit"
    fi
    

done
echo $up