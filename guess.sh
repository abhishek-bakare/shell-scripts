#!/bin/bash
#https://www.codewars.com/kata/55efecb8680f47654c000095/train/shell
int_rac () {
    # your code
    n="$1"
    guess="$2"
    cuurent_guess="$guess"
    count=1
    while true; do
    next_guess=$(( (cuurent_guess + (n / cuurent_guess)) / 2 ))
    diff=$(( cuurent_guess - next_guess ))
    if [ $diff -lt 0 ]; then
      diff=$(( -diff ))
    fi
    if [ $diff -lt 1 ]; then
    break
    fi
    cuurent_guess=$next_guess
    count=$(( count + 1 ))
    done
    echo $count
}
int_rac "$1" "$2"
