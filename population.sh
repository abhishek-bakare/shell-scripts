#!/bin/bash
#https://www.codewars.com/kata/563b662a59afc2b5120000c6/train/shell
nbYear() {
    # your code
    po=$1
    per=$2
    new=$3
    thr=$4
    count=0
    #nper=$(echo "scale=2; $per / 100 " | bc -l)
    #echo $nper
    while (( po < thr )); do
    po=$(echo "val=$po + ($po * ($per / 100)) + $new; scale=0; val / 1" | bc -l)
    (( count++ ))
    #echo $po
    done
    #echo $po
    echo $count
}

nbYear $1 $2 $3 $4
