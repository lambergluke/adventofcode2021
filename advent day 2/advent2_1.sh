#!/bin/bash

filename='input.txt'
horizontal=0
depth=0
aim=0
while IFS=" " read -r direction value
do

    val="${value//[[:space:]]/}"


    case $direction in

        up)
        val=$((val*-1))
        aim=$((aim+val))
        ;;

        down)
        aim=$((aim+val))
        ;;

        forward)
        horizontal=$((horizontal+val))
        increase=$((aim*val))
        depth=$((depth+increase))
        ;;
    esac


done < $filename
        total=$((horizontal * depth))
        echo $total