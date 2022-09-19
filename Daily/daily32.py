'''
BASH:
  969  mkdir -p big/{movies/{weshoes,sushi,harrypotter},food/{burger,bbq}}
  970  cd big/movies/sushi/
  971  mv ../weshoes ../godfather
  972  mv ../sushi /home/dimash/big/food/
  973  echo > ../../food/sushi/Besli
  974  cp ../../food/sushi/Besli ../../food/bbq/
  975  cp ../../food/sushi/Besli ../../food/bbq/Besli
  976  tree ~/big/
  977  sudo chmod go=rx ~/big/food/bbq/Besli
  978  ls -l ~/big/food/bbq/
  979  groupadd BBQlover
  980  sudo groupadd BBQlover
  981  rm -rf ~/big
  982  cd ~
  983  ls
  984  sudo groupdel BBQlover
  985  clear
  986  history | tail -25
  GIT:
   997  mkdir yalaGit
  998  touch yalaGit/iLoveGit.txt
  999  cd yalaGit/
 1000  git init
 1001  echo "Git is in my blood" > iLoveGit.txt
 1002  git add .
 1003  git commit -m "first commit"
 1004  echo "Git diff" >> iLoveGit.txt
 1005  git diff
 1006  git commit -am "second commit"
 1007  git checkout -b "ColdFix"
 1008  echo "ColdFix" >> iLoveGit.txt
 1009  git commit -am "Third commit"
 1010  git checkout master
 1011  git merge ColdFix
 1012  git checkout -b HotFix
 1013  echo "HotFix" >> iLoveGit.txt
 1014  git commit -am "HotFix"
 1015  git checkout master
 1016  git merge HotFix
 1017  git log
 1018  git rebase master ColdFix
 1019  git log
 1020  git branch
 1021  git checkout master
 1022  git log
 1023  clear

'''
import json
def jpath(file):

    f = open(file)
    data_dict = json.load(f)

    return data_dict

a = jpath('file.json')
print(a)


'''
AWS:
1. What should you do in order to keep the data on EBS volumes safe?
(Choose TWO)

Ensure that EBS data is encrypted at rest << YES
Regularly update firmware on EBS devices
Store a backup daily in an external drive
Create EBS snapshots << YES
Prevent any unauthorized access to AWS data centers

2. In the AWS Shared responsibility Model, which of the following
are the responsibility of the customer? (Choose TWO)

Disk disposal
Patching the Network infrastructure
Configuring network access rules << YES
Controlling physical access to compute resources
Setting password complexity rules << YES

3. What is the AWS service that provides you the highest level of
control over the underlying virtual infrastructure?

Amazon Redshift
Amazon EC2 << YES
Amazon RDS
Amazon DynamoDB

4. A company’s AWS workflow requires that it periodically perform
large-scale image and video processing jobs. The customer is
seeking to minimize cost and has stated that the amount of time
it takes to process these jobs is not critical, but that cost
minimization is the most important factor in designing the
solution. Which EC2 instance class is best suited for this
processing?

EC2 Reserved Instances - No Upfront
EC2 Reserved Instances - All Upfront 
EC2 On-Demand Instances
EC2 Spot Instances << YES

5. Who is responsible for scaling a DynamoDB database in the AWS
Shared Responsibility Model?

Your security team
AWS << YES
Your development team
Your internal DevOps team 

'''