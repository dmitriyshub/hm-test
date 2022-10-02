#!/bin/bash


# 1197  mkdir -p cloud/{s3/{standard-ia,s3glacier},vpc/{standard,ebs,acl}}
# 1198  tree cloud/
# 1199  mv cloud/vpc/standard cloud/s3/
# 1200  tree cloud/
# 1201  mv cloud/vpc/ebs cloud/vpc/cidr
# 1202  tree cloud/
# 1203  echo "S3 Glacier Instant Retrieval storage class allows you to archive
#older media content affordably while still making it available in
#milliseconds when it's needed. " >> cloud/s3/s3glacier/whatisglacier
# 1204  cat cloud/s3/s3glacier/whatisglacier > cloud/vpc/glacieragain
# 1205  cat cloud/s3/s3glacier/whatisglacier > /home/dimash/cloud/vpc/glacieragain
# 1206  echo $HOME
# 1207  echo ~
# 1208  chmod uo=rw cloud/s3/s3glacier/whatisglacier
# 1209  ls -l cloud/s3/s3glacier/whatisglacier
# 1210  rm -rf cloud/
# 1211  clear
# 1212  history | tail -30



:'
Write a bash function in a script that SSH to a remote server using
shell script
'

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