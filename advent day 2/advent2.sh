#!/bin/bash

filename='input.txt'
horizontal=0
depth=0

while IFS=" " read -r direction value
do

    val="${value//[[:space:]]/}"

    case $direction in

        up)
        val=$((val*-1))
        depth=$((depth+val))
        ;;

        down)
        depth=$((depth+val))
        ;;

        forward)
        horizontal=$((horizontal+val))
        ;;
    esac


done < $filename
        total=$((horizontal * depth))
        echo $total