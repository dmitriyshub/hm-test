#!/bin/bash

#history | tail -n 35
#  926  ls
#  927  clear
#  928  mkdir -p big/{food/{crocs,kingstore,bbb},market/{mega,shufersal}}
#  929  tree big/
#  930  cd big/food/kingstore/
#  931  mv ../kingstore/ ../../market/
#  932  mv /home/dimash/big/food/crocs/ /home/dimash/big/food/rebar
#  933  touch ../../food/bbb/bbb{ismyworld,urger}
#  934  echo "BBB is Junk but Tasty with a lot of sauce" > ../../food/bbb/bbburger
#  935  cat ../../food/bbb/bbburger > ../../food/bbb/bbbismyworld
#  936* echo "\"\"\" \n" >> ../../food/bbb/bbburger
#  937  cat << EOF >> ../../food/bbb/bbburger
#"""
#a humburger, or simply burger, is a food consisting of
#fillings—usually a patty of ground meat, typically beef—placed
#inside a sliced bun or bread roll. Hamburger are often served
#with cheese, lettuce, tomato, onion, pickles or chilis;
#condiments such as ketchup, mustard, mayonnaise, relish, or a
#"special sauce", often a variation of Thousand Island dressing;
#and are frequently placed on sesame seed buns. A hamburger topped
#with cheese is called a cheese burger. “””
#EOF
#
#  938  tr '[:space:]' '\n' < ../../food/bbb/bbburger | cut -d "." -f1 | cut -d "," -f1  | grep ^burger
#  939  tr '[:space:]' '\n' < ../../food/bbb/bbburger | cut -d "." -f1 | cut -d "," -f1  | grep ^burger | wc -w
#  940  lscpu | grep "Model name"
#  941  rm -rf ~/big
#  942  cd ~
#  943  ls
#  944  clear
#  945  history | tail -n 25
#  946  history | tail -n 30
#  947  history | tail -n 35
#  948  clear
#  949  history | tail -n 35


size=10
col=1
row=1
start=0
end=5
start1=6
end1=9
while [[ $col -lt $size ]]; do
  let row=1
  while [[ $row -lt $size ]]; do
      if [[ $row -gt $start  ]] && [[ $row -le $end ]] && [[ $col -le 5 ]];then
        echo -n "*"
      elif [[ $row -gt $start1 ]] && [[ $row -lt $end1 ]] && [[ $col -gt 5 ]]; then
        echo -n "*"
      else
        echo -n " "
      fi
      let row=$row+1
  done
  let start=$start+2
  let end=$end+1
  echo
  let col=$col+1
  if [[ $col -gt 6 ]];then
    let start1=$start1-2
    let end1=$end1-1
  fi
done

