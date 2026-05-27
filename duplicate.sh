#!/bin/bash
https://www.codewars.com/kata/5656b6906de340bd1b0000ac/train/shell
longest () {
    merge="$1$2"
    # 1. fold -w 1  -> Splits string into one char per line
    # 2. sort -u    -> Sorts them and removes duplicates
    # 3. tr -d '\n' -> Pastes them back into a single string
    fina=$(echo -n "$merge" | fold -w 1 | sort -u | tr -d '\n')
    echo $fina
    
    
}
longest "$1" "$2"
