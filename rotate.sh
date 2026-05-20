#!/bin/bash
#https://www.codewars.com/kata/56a4872cbb65f3a610000026/train/shell
max_rot () {
    # your code
    n=$1
    max=$((10#$n))
    len=${#n}
    #len-1: no need to rotate when single digit left
    for (( i=0; i<len-1; i++ )); do
    #capturing bet 0:i
    left="${n:0:i}"
    #capturing from i:all
    right="${n:i}"
    rotated_right="${right:1}${right:0:1}"
    n=${left}${rotated_right}
    current_num=$((10#$n))
    if (( $current_num > $max )); then
    max=$current_num
    fi
    done
    echo $max
}
max_rot "$1"
