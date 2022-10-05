#!/bin/bash

# dir exercise
: '
  991  mkdir -p grocery/{bakery/bread/{focaccia,cholla},drinks/juices/{Pepsi,Coke}}
  992  touch grocery/drinks/juices/Coke/Coke_not_healthy
  993  chmod 555 grocery/drinks/juices/Coke/Coke_not_healthy
  994  touch Pepsi_zero && chmod 775 Pepsi_zero
  995  tee grocery/bakery/bread/{focaccia/Pepsi_zero,cholla/Pepsi_zero} < Pepsi_zero
  996  mv grocery/bakery/bread/cholla grocery/bakery/bread/Petta
  997  mv grocery/bakery/bread/Petta grocery/drinks/juices
  998  rm -r grocery/
  999  rm -rf grocery/

'

# 1 exercise
: '
read -ep $'Input a number:\n' num
if [ $num -eq 1 ]; then
echo "Correct number"
fi
'

# 2 exercise
: '
var=b

if [[ $var > a  ]]; then
echo "the value is true"
else
echo "no"
fi
'

# 3 exercise
: '
filename=$1
if [ $# -eq 0 ]; then
  echo "Please give me an argument!"
elif [ -f $filename ] || [ -d $filename ] ; then
  echo "Great"
else
  echo "Not regular"
fi
'

# 4 exercise
: '
filename=$1
if [ $# -eq 0 ]; then
  echo "Please give me an argument!"
elif [ -d $filename ] ; then
  echo "Awesome"
else
  echo "Not directory"
fi
'




# 5 exercise
: '
filename=$1
if [ $# -eq 0 ]; then
  echo "Please give me an argument!"
elif [ -x $filename ] ; then
  echo "Wow"
else
  echo "Not executable"
fi
'

# 6 exercise

echo "Please select your favorite color! "

select color in blue red yellow green exit_loop
do

case $color in
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
echo "Bye!"
break
;;

*)
echo "This color is not available"


esac

done


# 7 exercise

: '
counter=1
while (( $counter <= 10 ))
do
echo " This is a count number: $counter"
(( ++counter ))
done
'

# 8 exercise
: '
for num in {1..10}
do
echo " This is a count number: $num"
done
'
