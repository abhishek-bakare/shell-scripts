#https://www.codewars.com/kata/58a2d1fdd7f6c7e51b000076/train/shell
month=$(echo "$1" | tr '[:upper:]' '[:lower:]')

case "$month" in
  jan|january) op="01";;
  feb|february) op="02";;
  mar|march) op="03";;
  apr|april) op="04";;
  may) op="05";;
  jun|june) op="06";;
  jul|july) op="07";;
  aug|august) op="08";;
  sep|september) op="09";;
  oct|october) op="10";;
  nov|november) op="11";;
  dec|december) op="12";;
  *) op=""
esac

echo $op
