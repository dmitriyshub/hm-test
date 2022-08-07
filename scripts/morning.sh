#!/bin/bash
#echo "Size of the square?"
size=4

#*
#* *
#* * *
#* * * *
#* * * * *

# for the rows
r=1

while [ $r -le 5 ]
do

  # for the output
  count=1

  # for the column
  c=1

  while [ $c -le $r ]
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
  r=$(( $r + 1 ))

done


#2:
#****
#****
#****
#****

row=4
col=4
size=0
while [[ $row -gt $size ]]
do
  while [[ $col -gt $size ]]
  do
    echo -n "*"
    let col=$col-1
  done
  echo
  let row=$row-1
  col=4
done

#3
#**********
#**********
#**********
#**********
#**********
#**********
#**********
#**********
#**********
#**********
#**********

if [[ $# != 1 ]]
then
	echo not a good use of args - only one is allowed
	exit 1
fi
row=0
col=0
size=$1
# the outer controls the rows
while [[ $row -lt $size ]]
do
	#the inner controls the cols
	col=0
	while [[ $col -lt $size  ]]

	do
		echo -n "*"
		let col=$col+1
	done
	echo
	let row=$row+1
done



#
#echo "enter the sizeof the square"
#read size
#clear
#for (( i = 1; i <= size; i++ )); do
#    for (( j = 1; j <= size; j++ )); do
#
#        if [ "$i" == 1 ] || [ "$i" == "$size" ] || [ "$j" == 1 ] || [ "$j" == "$size" ]
#         then
##Set the Cursor Position using tput cup
#
##You can move the cursor to a specific row and column using tput cup. Following example positions the cursor at row i and column j.
#            tput cup $i $j
#            echo "*"
#        fi
#     done
#done

#4
#*****
#*   *
#*   *
#*   *
#*****

if [[ $# != 1 ]]
then
	echo not a good use of args - only one is allowed
	exit 1
fi
size=$1
upper_border=0
let lower_border=$size-1
left_border=0
let right_border=$size-1
row=0
col=0
# the outer controls the rows
while [[ $row -lt $size ]]
do
#the inner controls the cols
	col=0
	while [[ $col -lt $size  ]]
	do
	if [[ $row -eq $upper_border ]] || [[ $row -eq $lower_border ]] || [[ $col -eq $left_border ]]  || [[ $col -eq $right_border ]]
	then
		echo -n "*"
	else
	        echo -n " "
	fi
	let col=$col+1
	done
	echo
	let row=$row+1
done