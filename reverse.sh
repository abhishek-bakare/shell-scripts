#https://www.codewars.com/kata/58069e4cf3c13ef3a6000168/train/shell
reverse (){
  st=$1
  rev=$(echo "$st" | rev)
  clean=$((10#$rev))
  echo $clean

}

reverse $1
