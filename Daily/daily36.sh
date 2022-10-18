#!/bin/bash
# 1216  clear
# 1217  pwd
# 1218  mkdir -p cloud/{services/{cloud_trail},region/{availability_zone,local_zone}}
# 1219  tree cloud/
# 1220  rm -rf cloud/
# 1221  mkdir -p cloud/{services/cloud_trail,region/{availability_zone,local_zone}}
# 1222  tree cloud/
# 1223  cd cloud/region/local_zone/
# 1224  mkdir ../../services/cloud_watch
# 1225  mkdir /home/dimash/cloud/region/wavelengthzone
# 1226  echo "The Difference between CloudWatch and CloudTrail: CloudWatch
#focuses on the activity of AWS services and resources, reporting
#on their health and performance. On the other hand, CloudTrail is
#a log of all actions that have taken place inside your AWS
#environment" > ~/cloud/services/cloud_trail/trailvswatch
# 1227  cp ~/cloud/services/cloud_trail/trailvswatch ~/cloud/services/cloud_watch/trailvswatch
# 1228  echo ~
# 1229  ps aux | awk '{print $1,$2}' > iPid
# 1230  cat iPid | tail -5
# 1231  cat iPid | head -5

#code a bash function which receives a PID.
#the function will check periodically (in a method of your choice - at,
#chron, sleep Etc. ... ) whether the process is up.
#if the proc is down - a new file named "WARNING - pid -number: [PID]
#is DOWN" will be created in the user home dir

pidfunc(){
  #finda=$(ps aux | awk '{print $2}' | grep ^$pidid$)
  sudo kill -s 0 $1
  if [ $? -eq 0 ]; then
    return 0
  else
    touch ~/WARNING-pid-number:\ $1\ is\ down
    return 1
  fi

}


(crontab -l; echo "* * * * * $0")| awk '!x[$0]++'| crontab -
pidfunc $1
#sudo /bin/bash -c 'echo "* * * * * root /home/baeldung/job.sh" >> /etc/crontab'
