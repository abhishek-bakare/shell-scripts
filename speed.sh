#!/bin/bash
#https://www.codewars.com/kata/56484848ba95170a8000004d/train/shell
gps() {
    # your code
    s=$1
    IFS="," read -r -a lis <<< "$2"
    ARR=()
    if (( ${#lis[@]} <= 1 )); then 
      echo "0"
    fi
    for (( i=0; i<${#lis[@]}-1; i++ )); do
      del=$(echo "scale=6; ${lis[i+1]} - ${lis[i]}" | bc -l)
      mul=$(echo "scale=6; ($del * 3600) / $s; scale=6;" | bc -l)
      ARR+=("$mul")
    done
    max=$(printf "%s\n" "${ARR[@]}" | sort -nr | head -n 1)
    echo "${max}" | cut -d. -f1

}
gps "$1" "$2"
