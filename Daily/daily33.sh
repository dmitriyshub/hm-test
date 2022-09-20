: '
 1029  mkdir -p cloud/{stotage/{vpc,s3,redshift},database/{rds,dynamodb}}
 1030  tree cloud/
 1031  cd cloud/stotage/vpc/
 1032  mv ../vpc/ ../ebs
 1033  mv ../redshift/ ../../database/
 1034  echo "S3 is object storage, EBS is block storage
designed for EC2, EFS is file storage" > factstorage
 1035  cp factstorage ../s3/factstorage
 1036  cp factstorage ../../database/dynamodb/factstorage
 1037  who
 1038  uptime
 1039  cd ~
 1040  tls
 1041  ls
 1042  tree  yalaGit/cloud/
 1043  rm -rf yalaGit/
 1044  mkdir git4ecer && touch $_/getgit.txt
 1045  cd git4ecer/
 1046  git init
 1047  echo "git is in my soul" > getgit.txt
 1048  git add .
 1049  git commit -m "First Commit"
 1050  echo "git Diff" >> getgit.txt
 1051  git diff
 1052  git commit -am "Second Commit"
 1053  git checkout -b gotgit
 1054  git log
 1055  echo "Merge to main" >> getgit.txt
 1056  git commit -am "Merge commit"
 1057  git checkout master
 1058  git merge gotgit
 1059  git log
 1060  git checkout -b newBranch
 1061  echo "Rebase to main" >> getgit.txt
 1062  git commit -am "Rebase commit"
 1063  git checkout master
 1064  git merge newBranch
 1065  git log
 1066  git rebase master gotgit
 1067  git log
 1068  git checkout gotgit
 1069  git log
 1070  clear
 1072  history | tail -50
'

#!/bin/bash

is_palindrome(){

  str=$1
  revstr=`echo $str|rev`

  if [ $str = $revstr ];then
          echo True
          return 0
  else
          echo False
          return 1
  fi

}

is_palindrome level

'''
======================================================================
AWS:
1. Using Amazon RDS falls under the shared responsibility model. Which of the
following are customer responsibilities? (Choose TWO)

Building the relational database schema << YES
Patching the database software
Managing the database settings
Performing backups
Installing the database

2. Under the Shared Responsibility Model, which of the following controls do
customers fully inherit from AWS? (Choose TWO)

Physical controls << YES
Awareness & training
Database controls
Patch management controls
Environmental controls << YES

3. What are AWS shared controls?

Controls that the customer and AWS collaborate together upon the secure
the infrastructure

Controls that a customer inherits from AWS

Controls that are solely the responsibility of the customer based on the
application they are deploying within AWS services

Controls that apply to both the infrastructure layer and customer layers << YES

4. According to the AWS shared responsibility model, what are the controls that
customers fully inherit from AWS? (Choose TWO)

Awareness and Training
Data center security controls << YES
Environmental controls << YES
Resource Configuration Management
Communications controls

5. Which of the following is NOT correct regarding Amazon EC2 On-demand
instances?

With on-demand instances, no longer-term commitments or upfront payments
are needed
You have to pay a start-up fee when launching a new instance for the first time << YES
When using on-demand Linux instances, you are charged per second based on
an hourly rate
The on-demand instances follow the AWS pay-as-you-go pricing model

======================================================================
'''
