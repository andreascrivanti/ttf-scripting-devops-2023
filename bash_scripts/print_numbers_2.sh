#!/bin/bash
printNumbers() {
    echo "Insert number limit: "
    read max
    echo "numbers: "
    for((i=1;i<=max;i++))
    do
    	echo $i
    done
}

printNumbers
