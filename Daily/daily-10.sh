#!/bin/bash

#1008  mkdir -p grocery/{fruit/{mango,eggs},vegetables/{celery,onion}}
# 1009  mv grocery/fruit/eggs/ grocery/fruit/grapes
# 1010  echo "Fruit is not a dessert" > grocery/fruit/grapes/banana
# 1011  cat grocery/fruit/grapes/banana
# 1012  tee grocery/{fruit/mango/banana,vegetables/celery/banana} < grocery/fruit/grapes/banana
# 1013  mkdir grocery/vegetables/tomato && mv grocery/vegetables/tomato grocery/fruit/
# 1014  rm -rf grocery/
# 1015  sudo yum update
# 1016  sudo yum install vsftpd
# 1017  sudo systemctl start vsftpd
# 1018  sudo systemctl enable vsftpd
# 1019  sudo systemctl status vsftpd
# 1020  history | tail -20



# Write a Script that display for the user his “motivation daily
#sentence” by select numbers ranges from 1 - 7.
: '
echo "Please select your favorite color! "

select Day in Sun Mon Tue Wed Thu Fri Sat
do

case $Day in
Sun)
echo "Success is not final failure is not fatal: It is the courage to continue that counts"
exit 0
;;

Mon)
echo "It is better to fail in originality than to succeed in imitation."
exit 0
;;

Tue)
echo "The road to success and the road to failure are almost exactly the same."
exit 0
;;

Wed)
echo "Success usually comes to those who are too busy looking for it."
exit 0
;;

Thu)
echo "Develop success from failures. Discouragement and failure are two of the surest stepping stones to success."
exit 0
;;

Fri)
echo "I never dreamed about success. I worked for it."
exit 0
;;

Sat)
echo "To know how much there is to know is the beginning of learning to live."
exit 0
;;

*)
echo "Wrong number"

esac

done
'



: '
row=1

while [ $row -le 5 ]
do

  # for the output
  count=1

  # for the column
  c=1

  while [ $c -le $row ]
  do
  	# print the value
  	printf "* "

    # update count
    count=$(( $count + 2 ))

    # update c
    c=$(( $c + 1 ))
  done

  # go to new line
  printf "\n"

  # update r
  row=$(( $row + 1 ))

done
'

size=9
let mid=size/2
col=0
row=0
echo $mid
while [[ $col -ne $size ]]
do
  row=0
  while [[ $row -ne $size ]]
  do
    if [[ $col -eq $mid ]] || [[ $row -eq $mid ]]
    then
      echo -n "*"
    else
      echo -n " "
    fi
  let row=$row+1
  done
echo
let col=$col+1
done




