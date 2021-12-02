#!/bin/bash

filename='input2.txt'
horizontal=0
depth=0

while IFS=" " read -r direction value
do
    #echo $direction
    #echo $value
    val="${value//[[:space:]]/}"

    #if [ "$direction" = "up" ]
    #then
    #    val=$((val*-1))
    #    horizontal=$((horizontal+val))
    #elif [ "$direction" = "down" ]
    #    horizontal=$((horizontal+val))
    #then
    #elif [ "$direction" = "forward" ]
    #then
    #    depth=$((depth+val))
    #fi

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