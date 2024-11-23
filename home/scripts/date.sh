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

convert_to_hijri() {
  local jd=$(($(date -d "$1" +%s) / 86400 + 2440588)) # Julian Day
  local l=$((jd - 1948440 + 10632))
  local n=$(((l - 1) / 10631))
  local l=$((l - n * 10631))
  local j=$(((l - 1) / 354))
  local l=$((l - j * 354))
  local k=$((l / 30))
  local day=$((l - k * 30))
  local month=$((k + 1))
  local year=$((30 * n + j + 1))
  
  echo "$year $month $day"
}

hour=$(date +"%H")
minute=$(date +"%M")
second=$(date +"%S")
day=$(date +"%d")
month=$(date +"%m")
year=$(date +"%Y")

hijri_date=$(convert_to_hijri "$year-$month-$day")
hijri_year=$(echo $hijri_date | awk '{print $1}')
hijri_month=$(echo $hijri_date | awk '{print $2}')
hijri_day=$(echo $hijri_date | awk '{print $3}')

arabic_hour=$(convert_to_arabic $hour)
arabic_minute=$(convert_to_arabic $minute)
arabic_second=$(convert_to_arabic $second)
arabic_day=$(convert_to_arabic $day)
arabic_month=$(convert_to_arabic $month)
arabic_year=$(convert_to_arabic $year)

arabic_hijri_day=$(convert_to_arabic $hijri_day)
arabic_hijri_month=$(convert_to_arabic $hijri_month)
arabic_hijri_year=$(convert_to_arabic $hijri_year)

echo "$arabic_hour:$arabic_minute:$arabic_second $arabic_day/$arabic_month/$arabic_year | $arabic_hijri_day/$arabic_hijri_month/$arabic_hijri_year"
