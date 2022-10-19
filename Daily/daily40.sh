#!/bin/bash
: '

 1395  mkdir -p ~/aws/{networking/{vpc,route53},compute/{vpc,ec2,elastic_beanstalk,aurora}}
 1396  cd aws/compute/vpc/
 1397  rsync -a -v ../vpc/ ../../networking/ && rm -r ../vpc/
 1398  mv ../aurora/ ../lambda
 1399  cp -r ../../compute/ ~/aws/networking/
 1400  tree ~/aws
 1401  rm -rf ~/aws
 1402  ls ~
 1403  clear
 1404  history | tail -40

'

function desk() {
    ls -lahR ~/Desktop/ >> ~/Desktop/iFile.txt
}

desk