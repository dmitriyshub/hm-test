#!/bin/bash
# 1216  clear
# 1217  pwd
# 1218  mkdir -p cloud/{services/{cloudtrail},region/{availability_zone,local_zone}}
# 1219  tree cloud/
# 1220  rm -rf cloud/
# 1221  mkdir -p cloud/{services/cloudtrail,region/{availability_zone,local_zone}}
# 1222  tree cloud/
# 1223  cd cloud/region/local_zone/
# 1224  mkdir ../../services/cloudwatch
# 1225  mkdir /home/dimash/cloud/region/wavelengthzone
# 1226  echo "The Difference between CloudWatch and CloudTrail: CloudWatch
#focuses on the activity of AWS services and resources, reporting
#on their health and performance. On the other hand, CloudTrail is
#a log of all actions that have taken place inside your AWS
#environment" > ~/cloud/services/cloudtrail/trailvswatch
# 1227  cp ~/cloud/services/cloudtrail/trailvswatch ~/cloud/services/cloudwatch/trailvswatch
# 1228  echo ~
# 1229  ps aux | awk '{print $1,$2}' > iPid
# 1230  cat iPid | tail -5
# 1231  cat iPid | head -5

(crontab -l; echo "* * * * * $0")| awk '!x[$0]++'| crontab -


pidfunc(){
  #finda=$(ps aux | awk '{print $2}' | grep ^$pidid$)
  sudo kill -s 0 $1

  if [ $? -eq 0 ]; then
    exit 0
  else
    touch ~/WARNING-pid-number:\ $1\ is\ down
    exit 1
  fi

}
pidfunc $1
#sudo /bin/bash -c 'echo "* * * * * root /home/baeldung/job.sh" >> /etc/crontab'