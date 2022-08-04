#!/bin/bash
: '
# Receive an argument and validate if its only one argument
if (( $# == 1 )); then
  echo "Great, just one"
  else
    echo "error"
fi
'

# Receive two arguments and validate its true
: '
if [ $# == 2 ] ; then
  echo "Great, only two"
  else
    echo "error"
fi
'

# Receive arguments and validate if it ranges between 2 - 4
# if trues echos “Great” otherwise echos “error”
: '
if (( $# >= 2 && $# <= 4 )) ; then
  echo "Great"
  else
    echo "error"
fi
'
#check if external argument value less than 10 . If it does less
#than 10 echo "you have entered the correct argument” otherwise echo “False”.

: '
if (( $1 < 10 )) ; then
  echo "you have entered the correct argument"
  else
    echo "False"
fi
'


: '
5.create a script that asks the user for an input of his age and check
if the age is greater than 18 echo you are legally allowed in.
otherwise echo you are not allowed .


read -e -p "What is your age?" age

if (( age >= 18 )); then
  echo "you are legally allowed in"
  else
    echo "you are not allowed"
    fi
'

: '
Ask the user to enter a password. Check if the password matches
“123”. If it matches echo verified. If not, echo denied.(use silent
mode with read )



read -ep $'Please insert your password:\n' pass

if (( pass == 123 )); then
  echo "Verified!"
else
  echo "Denied!"
fi
'

: '
Write a script that request the user to enter two numbers and
compare between them, if they are equal echos “equal” otherwise echos
“not equal”



read -ep $'Please give me two numbers:\n' num1 num2

if (( num1 == num2 )); then
  echo "equal"
  else
    echo "Not equal"
    fi
'
: '
write a script that request the name of a file or directory (in
your current directory) and check if it is a regular file/dir .
Echos “Great” if it’s regular file otherwise “not regular”
'
: '
read -ep $'Please give me a file name:\n>' filename

if [ -f "$filename" ] ; then
  echo "Regular File"
  elif [ -d "$filename" ]; then
  echo "Regular Directory"
    else
      echo "Not a regular"
    fi
'

echo "Please select your favorite color! "

select color in blue red yellow green exit_loop
do

case $name in
blue)
echo "Blue is a primary color"
;;
red)
echo "Red is a primary color"
;;
yellow)
echo "Yellow is a primary color"
;;
green)
echo "Green is a secondary color"
;;
exit_loop)
return
;;
*)
echo "This color is not available"


esac

done
