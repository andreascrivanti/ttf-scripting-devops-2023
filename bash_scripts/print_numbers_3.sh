#!/bin/bash
printNumbers() {
    max=$1
    if [ -z "$max" ]
    then
    	echo "limit not specified"
    else
	    echo "numbers: "
	    for((i=1;i<=max;i++))
	    do
	    	echo $i
	    done
    fi
}

printNumbers $1
