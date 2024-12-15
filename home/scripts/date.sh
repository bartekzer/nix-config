#!/usr/bin/env bash

arabic_digits=(٠ ١ ٢ ٣ ٤ ٥ ٦ ٧ ٨ ٩)

convert_to_arabic() {
  local input=$1
  local arabic_output=""
  for (( i=0; i<${#input}; i++ )); do
    digit=${input:$i:1}
    arabic_output+="${arabic_digits[$digit]}"
  done
  echo $arabic_output
}

hour=$(date +"%H")
minute=$(date +"%M")
second=$(date +"%S")
day=$(date +"%d")
month=$(date +"%m")
year=$(date +"%Y")

arabic_hour=$(convert_to_arabic $hour)
arabic_minute=$(convert_to_arabic $minute)
arabic_second=$(convert_to_arabic $second)
arabic_day=$(convert_to_arabic $day)
arabic_month=$(convert_to_arabic $month)
arabic_year=$(convert_to_arabic $year)

echo "$arabic_hour:$arabic_minute:$arabic_second $arabic_day/$arabic_month/$arabic_year | $(hirji)"
