#!/bin/bash
#echo "Size of the square?"
size=4
#
#for (( i=0; i<$size; i++ )); do
#    for (( j=0; j<$size; j++ )); do
#        printf "*"
#    done
#    printf "\n"
#done

#
#row=1
#col=1
#while [[ $row -le 4 ]]; do
#
#    while [[ $col -le 4 ]]; do
#        echo -n "*"
#        col=$col+1
#    echo "*"
#    col=1
#    row=$row+1
#
#done
#done
#
## for the rows
#r=1
#
#while [ $r -le 4 ]
#do
#
#  # for the output
#  count=1
#
#  # for the column
#  c=1
#
#  while [ $c -le $r ]
#  do
#  	# print the value
#  	printf "* "
#
#    # update count
#    count=$(( $count + 2 ))
#
#    # update c
#    c=$(( $c + 1 ))
#  done
#
#  # go to new line
#  printf "\n"
#
#  # update r
#  r=$(( $r + 1 ))
#
#done
#
#row=4
#col=4
#size=0
#while [[ $row -gt $size ]]
#do
#  while [[ $col -gt $size ]]
#  do
#    echo -n "*"
#    let col=$col-1
#  done
#  echo
#  let row=$row-1
#  col=4
#done


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
#
#
