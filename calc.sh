#!/bin/bash

sum=0

#function read_from_user()
#{
#      read -ep $'Give me two numbers' num1 num2
#
#}

#########FUNCTION#########FUNCTIONS#########FUNCTIONS#########
##############################################################

function is_prime() {
sum=$1
for((i=2; i<=$sum/2; i++))
do
  ans=$(( sum%i ))
  if [ $ans -eq 0 ]
  then
    echo "$sum is not a prime number."
    exit
  fi
done
echo "$sum is a prime number."
}


function addition()
{
    local sum=$(($1 + $2))
    echo $sum
}

function substruct()
{
  local sum=$(($1 - $2))
  echo $sum
}

function multiplication() {
  local sum=$(($1 * $2 ))
  echo $sum
}

function divide()
{
  local sum=$(($1 / $2))
  echo $sum
}

function power_of()
{
  local sum=$(($1 ** $2))
  echo $sum
}

function modulo()
{
  local sum=$(($1 % $2))
  echo $sum
}


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

#########MAIN#########MAIN#########MAIN#########
menu