#!/bin/bash

ssh_connect(){
  read -p"which ssh user? " ssh_user
  read -p"Which ip address? " ip_address
  read -p"Do you have a pem file?Y/N" answer
  if [ $answer == 'Y' ] || [ $answer == 'y' ]; then
      read -p"path to file? " file_path
      if [ -f $file_path ]; then
          ssh -i $file_path $ssh_user@$ip_address
          return 0
      else
        echo "file doesnt exist"
        return 1
      fi
  elif [ $answer == 'N' ] || [ $answer == 'n' ]; then
      ssh $ssh_user@$ip_address
      return 0
  else
    return 1

  fi

  echo "$ssh_user@$ip_address"
  ssh $ssh_user@$ip_address

}
ssh_connect

'''
   58  mkdir -p cloud/{storage/{vpc,s3,redshift},database/{rds,dynamodb}}
   59  tree cloud/
   60  cd cloud/storage/vpc/
   61  mv ../vpc/ ../ebs
   62  mv ../redshift/ ../../database/
   63  tree ~/cloud/
   64  echo "S3 is object storage, EBS is block storage
designed for EC2, EFS is file storage" > ../ebs/factstorage
   65  cp ../ebs/factstorage ../s3/factstorage
   66  cp ../ebs/factstorage ../../database/dynamodb/factstorage
   67  rm -rf ~/cloud/
   68  history | tail -25
'''
'''
   71  mkdir GitDot && cd GitDot && touch GitComma.txt
   72  echo "git is the boss" > GitComma.txt
   73  git init
   74  git add GitComma.txt
   75  git commit -m"first commit"
   76  git log
   77  git diff
   78  git diff --help
   79  git checkout -b GitDash
   80  echo "git is the boss 2" >> GitComma.txt
   81  git commit -am"second commit"
   82  git branch
   83  git checkout master
   84  git log
   85  git merge GitDash
   86  git log
   87  git checkout -b NewBranch
   88  echo "git is the boss 3" >> GitComma.txt
   89  git commit -am"second commit"
   90  git checkout main
   91  git checkout master
   92  git merge NewBranch
   93  git log
   94  git rebase master GitDash
   95  git log
   96  git checkout GitDash
   97  git log
   98  history | tail -20
   99  history | tail -25
  100  history | tail -30
  101  history | tail -33

'''