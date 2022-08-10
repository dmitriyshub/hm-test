#!/bin/bash

sum=0

#function read_from_user()
#{
#      read -ep $'Give me two numbers' num1 num2
#
#}

#########FUNCTION#########FUNCTIONS#########FUNCTIONS#########
##############################################################

##########################
function is_prime() {
sum=$1
for((i=2; i<=$sum/2; i++))
do
  answer=$(( sum%i ))
  if [ $answer -eq 0 ]
  then
    echo "$sum is not a prime number."
    exit
  fi
done
echo "$sum is a prime number."
}
##########################
function is_odd_or_even() {

    sum=$1
    odd_even="null"
    if [ $(( $sum % 2 )) -eq 0 ]
    then odd_even="even"
    else
      odd_even="odd"
      fi
    echo $odd_even
}
##########################
function is_div_by_5() {
    if [ $(( $1 % 5 )) -ne 0 ]; then
      echo The number cant be devided by 5
    else
      echo The number can be devivded by 5
    fi
}
##########################
function addition()
{
    local sum=$(($1 + $2))
    echo $sum
}
##########################
function substruct()
{
  local sum=$(($1 - $2))
  echo $sum
}
##########################
function multiplication() {
  local sum=$(($1 * $2))
  echo $sum
}
##########################
function divide()
{
  local sum=$(($1 / $2))
  echo $sum
}
##########################
function power_of()
{
  local sum=$(($1 ** $2))
  echo $sum
}
##########################
function modulo()
{
  local sum=$(($1 % $2))
  echo $sum
}
##########################
function menu()
{
echo "Enter Two numbers : "
read a
read b

echo "Enter Choice: "
echo "################"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
echo "5. Power of"
echo "6. Modulo"
echo "################"
read -p 'Your choice: ' choice

case $choice in
  1)addition $a $b
  ;;
  2)substruct $a $b
  ;;
  3)multiplication $a $b
  ;;
  4)divide $a $b
  ;;
  5)power_of $a $b
  ;;
  6)modulo $a $b
esac
}
##########################


#########MAIN#########MAIN#########MAIN#########
menu