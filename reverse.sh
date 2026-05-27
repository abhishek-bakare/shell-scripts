#https://www.codewars.com/kata/58069e4cf3c13ef3a6000168/train/shell
reverse (){
  st=$1
  rev=$(echo "$st" | rev)
  #Force base-10 evaluation using '10#...' to strip the zero safely
  clean=$((10#$rev))
  echo $clean

}

reverse $1
