#!/bin/bash

function is_number () {
  re='^[0-9]+$'
  if ! [[ $1 =~ $re ]] ; then
    echo "error: Not a number" >&2; exit 1
  fi
}


#Your task is to write and test a function which takes
#three arguments (a year, a month, and a day of the
#month) and returns the corresponding day of the year, or
#returns None if any of the arguments is invalid.
#Input: (2000, 12, 31) - (Y, M, D)
#Result:366
#Input: (2000, 1, 1) - (Y, M, D)
#Result:1
#Input: (1900, 3, 1) - (Y, M, D)
#Result:60
#Input: (2000, 3, 1) - (Y, M, D)
#Result:61

function check_day_of_year () {

  day=$(date -d "$2/$3/$1" +%j)
  echo $day
}

check_day_of_year "2020" "12" "31"
check_day_of_year "2013" "11" "21"


#2. Your task is to write and test a function which takes
#two arguments (a year and a month) and returns the
#number of days for the given month/year pair (while only
#February is sensitive to the year value, your function
#should be universal).
#Input: 1900,2 - (Y, M)
#Result: 28
#Input: 2000,2
#Result: 29
#Input: 2016,1
#Result: 31
#Input: 1987,11
#Result: 30

function check_day_of_month () {
  day=$(cal $2 $1 | xargs echo | awk '{print $NF}')
  echo $day
}
check_day_of_month 1991 12

#3. Your task is to write and test a function which takes
#one argument (a year) and returns True if the year is a
#leap year, or False otherwise.
#As you surely know, due to some astronomical reasons, years
#may be leap or common. The former are 366 days long, while
#the latter are 365 days long.
#Since the introduction of the Gregorian calendar (in 1582),
#the following rule is used to determine the kind of year:
#• if the year number isn't divisible by four, it's a
#common year;
#• otherwise, if the year number isn't divisible by 100,
#it's a leap year;
#• otherwise, if the year number isn't divisible by 400,
#it's a common year;
#• Otherwise, it's a leap year.

function check_leap_year () {
  year=$1
  if [[ $year -le 1582 ]]; then
    echo "Not within the Gregorian calendar period"
  elif ! [[  $year%4 -eq 0 ]]; then
    echo "Common year"
  elif ! [[ $year%100 -eq 0 ]]; then
    echo "Leap year"
  elif ! [[ $year%400 -eq 0  ]]; then
    echo "Common year"
  else
    echo "Leap day"
  fi
}

check_leap_year 2600

