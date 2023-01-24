#!/bin/bash
printNumbers() {
    min=$1
    max=$2
    if [ -z "$min" ]
    then
    	echo "min limit not specified"
    elif [ -z "$max" ]
    then
    	echo "max limit not specified"
    elif [ "$min" -gt "$max" ]
    then
    	echo "min limit greater than max limit"
    else
	echo "numbers: "
	for((i=min;i<=max;i++))
	do
	    echo $i
	done
    fi
}

printNumbers $*
