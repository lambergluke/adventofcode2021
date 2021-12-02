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

    one=$((i))
    two=$((i+1))
    three=$((i+2))
    four=$((i+1))
    five=$((i+2))
    six=$((i+3))

    #if [[ $i -eq 0 ]]
    #then
    #    let test=0
    #fi
    first=${arr[$one]}
    second=${arr[$two]}
    third=${arr[$three]}
    fourth=${arr[$four]}
    fifth=${arr[$five]}
    sixth=${arr[$six]}

    #echo "one" $first
    #echo "two" $second
    #echo "three" $third
    #sum1=$(($first + $second + $third))
    sum1=$(("${first//[[:space:]]/}" + "${second//[[:space:]]/}" + "${third//[[:space:]]/}"))
    sum2=$(("${fourth//[[:space:]]/}" + "${fifth//[[:space:]]/}" + "${sixth//[[:space:]]/}"))

    echo "sum1" $sum1
    echo "sum2" $sum2
    

    if [ "$sum1" -lt "$sum2" ]
    then
        up=$((up+1))
        echo "hit"
    fi
    

done
echo $up