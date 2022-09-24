#!/bin/bash
# Set the Region
AZ=`curl -s http://169.254.169.254/latest/meta-data/placement/availability-zone`
export AWS_DEFAULT_REGION=${AZ::-1}
# Obtain latest Linux AMI
AMI=$(aws ssm get-parameters --names /aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2 --query 'Parameters[0].[Value]' --output text)
echo $AMI

SUBNET=$(aws ec2 describe-subnets --filters 'Name=tag:Name,Values=Public Subnet' --query Subnets[].SubnetId --output text)
echo $SUBNET

SG=$(aws ec2 describe-security-groups --filters Name=group-name,Values=WebSecurityGroup --query SecurityGroups[].GroupId --output text)
echo $SG

#!/bin/bash
# Install Apache Web Server
yum install -y httpd

# Turn on web server
systemctl enable httpd.service
systemctl start  httpd.service

# Download App files
wget https://aws-tc-largeobjects.s3.amazonaws.com/CUR-TF-100-RESTRT-1/171-lab-%5BJAWS%5D-create-ec2/dashboard-app.zip
unzip dashboard-app.zip -d /var/www/html/

#The command launches a new instance (run_instances) using these parameters:
'''
Image: Uses the AMI value obtained earlier from the Parameter Store
Subnet: Specifies the Public Subnet obtained earlier and, by association, the VPC in which to launch the instance

Security Group: Uses the Web Security Group obtained earlier, which permits HTTP access
User Data: References the User Data script you downloaded, which installs the web application
Instance Type: Specifies the type of instance to launch
Tags: Assigns a Name tag with the value of Web Server
'''
INSTANCE=$(\
aws ec2 run-instances \
--image-id $AMI \
--subnet-id $SUBNET \
--security-group-ids $SG \
--user-data file:///home/ec2-user/UserData.txt \
--instance-type t3.micro \
--tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=Web Server}]' \
--query 'Instances[*].InstanceId' \
--output text \
)

echo $INSTANCE
#All information related to the instance will be displayed in JSON format
aws ec2 describe-instances --instance-ids $INSTANCE
# only displays the name of the instance State.
aws ec2 describe-instances --instance-ids $INSTANCE --query 'Reservations[].Instances[].State.Name' --output text
#retrieve a URL to the instance
aws ec2 describe-instances --instance-ids $INSTANCE --query Reservations[].Instances[].PublicDnsName --output text

aws ec2 describe-instances --instance-ids i-031412e6471b2faa3 --query 'Reservations[].Instances[].PrivateIpAddress' --output text
aws ec2 describe-instances --instance-ids i-031412e6471b2faa3 --query 'Reservations[].Instances[].State.Name' --output text
aws ec2 describe-instances --instance-ids i-031412e6471b2faa3 --query Reservations[].Instances[].PublicDnsName --output text

aws ec2 describe-instances --instance-ids i-031412e6471b2faa3 --query 'Reservations[].Instances[].SecurityGroup' --output text
aws ec2 describe-instances --instance-ids i-031412e6471b2faa3 --query 'Reservations[].Instances[].GroupName' --output text
aws ec2 authorize-security-group-ingress --group-id sg-0ad408338ece02a0a --protocol tcp --port 22 --cidr 0.0.0.0/0

#check userdata script log
sudo tail -f /var/log/cloud-init-output.log

