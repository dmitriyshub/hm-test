#!/bin/bash

ln -s $1 ~/Desktop/link$1
echo "hello from the filelink" >> ~/Desktop/link$1
cat ~/Desktop/link$1

: '

   58  mkdir -p grocery/{fruit/{mango,eggs},vegetables/{celery,onion}}
   59  mv grocery/fruit/eggs/ grocery/fruit/grapes
   60  echo "fruit is not a dessert" >grocery/fruit/grapes/banana
   61  echo grocery/fruit/mango grocery/vegetables/celery | xargs -n 1 cp grocery/fruit/grapes/banana
   62  tree grocery/
   63  mkdir grocery/vegetables/tomato && mv grocery/vegetables/tomato grocery/fruit/
   64  tree grocery/
   65  rm -rf grocery/
   66  history | tail -20

'