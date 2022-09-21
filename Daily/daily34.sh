#!/bin/bash

: '
  Bash:
  968  mkdir -p cloud/{db/{dynamoDB,RDS},serverless/{cloudfront,fargate}}
  969  git tree cloud/
  970  tree cloud/
  971  rm -rf cloud/
  972  mkdir -p cloud/{db/{dynamoDB,RDS},serverless/{cloudfront,fargate,aurora}}
  973  git tree
  974  tree cloud/
  975  mv cloud/serverless/aurora/ cloud/db/
  976  tree cloud/
  977  mv cloud/serverless/cloudfront/ cloud/serverless/lambda
  978  echo "Data migration is the process of moving data from one location to
another, one format to another, or one application to another.
Generally, this is the result of introducing a new system or
location for the data" > cloud/db/FactDB
  979  cat cloud/db/FactDB
  980  echo "Serverless is a cloud-native development model that allows
developers to build and run applications without having to manage
servers." > cloud/serverless/lambda/factserverless
  981  cat cloud/serverless/lambda/factserverless > cloud/serverless/fargate/fctless
  982  pstree
  983  rm -rf cloud/
  984  ls
  985  history
  Git:
  1034  mkdir YalaGit && touch $_/iLoveGit.txt
 1035  cd YalaGit/
 1036  git init
 1037  echo "Git is in my blood" > iLoveGit.txt
 1038  git add .
 1039  git commit -m "first commit"
 1040  echo "Git Diff" >> iLoveGit.txt
 1041  git diff
 1042  git commit -am "git diff commit"
 1043  git checkout -b ColdFix
 1044  echo "Commit from ColdFix" >> iLoveGit.txt
 1045  git commit -am "Commit from ColdFix"
 1046  git checkout master
 1047  git merge ColdFix
 1048  git status
 1049  git log
 1050  git checkout -b NewBranch
 1051  git log
 1052  echo "Commit from NewBranch" >> iLoveGit.txt
 1053  git commit -am "Commit from NewBranch"
 1054  git checkout master
 1055  git merge NewBranch
 1056  git rebase master ColdFix
 1057  git log
 1058  git checkout ColdFix
 1059  git log
 1060  clear
 1061  history

'

select opt in restart shutdown exit; do

  case $opt in
    restart)
      shutdown -r +1
      break
      ;;
    shutdown)
      shutdown -h +1
      break
      ;;
    exit)
      break
      ;;

    *)
      echo "Invalid option $REPLY"
      ;;
  esac
done