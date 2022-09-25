

#Discover the region in which the Command Host instance is running:
curl http://169.254.169.254/latest/dynamic/instance-identity/document | grep region

#UserData Script
'''
#!/bin/bash
yum update -y --security
amazon-linux-extras install epel -y
yum -y install httpd php stress
systemctl enable httpd.service
systemctl start httpd
cd /var/www/html
wget http://aws-tc-largeobjects.s3.amazonaws.com/CUR-TF-100-TULABS-1/10-lab-autoscaling-linux/s3/ec2-stress.zip
unzip ec2-stress.zip

echo 'UserData has been successfully executed. ' >> /home/ec2-user/result
find -wholename /root/.*history -wholename /home/*/.*history -exec rm -f {} \;
find / -name 'authorized_keys' -exec rm -f {} \;
rm -rf /var/lib/cloud/data/scripts/*
'''

#run instance ! change Values
aws ec2 run-instances --key-name KEYNAME --instance-type t3.micro --image-id AMIID \
--user-data file:///home/ec2-user/UserData.txt --security-group-ids HTTPACCESS --subnet-id SUBNETID \
--associate-public-ip-address --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=WebServerBaseImage}]' \
--output text --query 'Instances[*].InstanceId'
#The output of this command will provide you with an InstanceId

#Use the aws ec2 wait instance-running command to monitor this instance's status.
aws ec2 wait instance-running --instance-ids NEW-INSTANCE-ID

#obtain the public DNS name
aws ec2 describe-instances --instance-id NEW-INSTANCE-ID --query 'Reservations[0].Instances[0].NetworkInterfaces[0].Association.PublicDnsName'

#Use the aws ec2 create-image command to create a new AMI based on this instance
aws ec2 create-image --name WebServer --instance-id NEW-INSTANCE-ID
