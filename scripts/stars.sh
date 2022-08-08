#!/bin/bash
#
#size=5
#param=5
#i=1
#j=1
#
#while [[ $i -le $size ]]; do
#    j=1
#    while [[ $j -le $size ]]; do
#
#      if [[ $j -lt $param ]]; then
#        echo -n " "
#      else
#        echo -n "*"
#      fi
#
#      let j=$j+1
#
#  done
#
#  let i=$i+1
#  param=$param-1
#  echo
#done


#size=10
#i=1
#j=1
#g=1
#param=$size
#while [ $i -le $size ]; do
#  j=1
#  while [ $j -le $size ];do
#
#    if [ $j -eq $param ] ; then
#      g=1
#      while [ $g -le 5 ]; do
#
#      echo -n "*"
#      let g=$g+1
#      done
#
#    else
#      echo -n " "
#    fi
#    let j=$j+1
#  done
#    echo
#    let param=$param-1
#    let i=$i+1
#done




#size=10
#let size2=$size/2
#row=1
#col=1
#
#param=$size2
#while [ $row -le $size2 ]; do
#  col=1
#  while [ $col -le $size ];do
#    if [[ $row -eq 1 ]]; then
#
#    fi
#
#  let col=$col+1
#  done
#    echo
#    let param=$param-1
#    let row=$row+1
#done


#size=10
#row=1
#col=1
#
#while [ $row -le $size ]; do
#
#  while [ $col -le $size ]; do
#
#  if [[ $row -eq 1 || $row -eq $size || $col -eq 1 || $col -eq $size || $row -eq $col || $row+$col -eq $size+1 ]]; then
#  echo -n "*"
#  else
#  echo -n " "
#  fi
#  let col=$col+1
#
#
#
#  done
#
#  echo
#  let row=$row+1
#  col=1
#done


#size=5
#space=0
#counter=1
#counter2=1
#
#while [ $counter -le $size ]; do
#  space=0
#  while [ $space -lt $counter ]; do
#    echo -n " "
#
#    let space=$space+1
#  done
#  counter2=1
#  while [ $counter2 -le $size ]; do
#    if [[ $counter -eq 1 || $counter -eq $size || $counter2 -eq 1 || $counter2 -eq 5 ]]; then
#    echo -n "*"
#    else
#    echo -n " "
#    fi
#    let counter2=$counter2+1
#  done
#  echo
#  let counter=$counter+1
#done


width=10
height=5
let space=$width/2
col=1
row=1

while [[ $row -le $height ]]; do
  col=0
  while [[ $col -le $width ]]; do
  if [[ $row -eq $height ||  ($col -ge $space && $col -le $width-space) ]]; then
  echo -n "*"
  else
  echo -n " "
  fi
  col=$col+1
  done

  echo
  space=$space-1
  row=$row+1
done