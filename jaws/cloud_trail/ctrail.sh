#Run the following command to list the buckets to recall the bucket name:
aws s3 ls

#In the command below, replace <monitoring####> with the actual bucket name that starts with monitoring
# (the bucket name is part of the output from the ls command that you ran).
# Run the adjusted command to download the CloudTrail logs:
aws s3 cp s3://<monitoring####>/ . --recursive

#Run the following command to extract the logs:
gunzip *.gz


#To analyze the structure of the logs, do the following:
cat <filename.json> | python -m json.tool


for i in $(ls); do echo $i && cat $i | python -m json.tool | grep sourceIPAddress ; done

for i in $(ls); do echo $i && cat $i | python -m json.tool | grep eventName ; done

#Choose the lookup-events command to see details about the command.
 #
 #Notice that you can look up events based on one of eight different attributes, including AWS access key, event name, user name, and others.
 #In the AWS CLI Command Reference page, scroll to the Example, which shows how to filter the trail for console logins.
 # Run that command in your terminal window:
 aws cloudtrail lookup-events --lookup-attributes AttributeKey=EventName,AttributeValue=ConsoleLogin


#Run the following command to find any actions that were taken on security groups in the AWS account:
aws cloudtrail lookup-events --lookup-attributes AttributeKey=ResourceType,AttributeValue=AWS::EC2::SecurityGroup --output text

#Run the following commands to find the security group ID that is used by the Café Web Server instance, and then echo the result to the terminal:
region=$(curl http://169.254.169.254/latest/dynamic/instance-identity/document|grep region | cut -d '"' -f4)
sgId=$(aws ec2 describe-instances --filters "Name=tag:Name,Values='Cafe Web Server'" --query 'Reservations[*].Instances[*].SecurityGroups[*].[GroupId]' --region $region --output text)
echo $sgId

#Now use the security group ID that the previous command returned to further filter your AWS CLI CloudTrail command results:
aws cloudtrail lookup-events --lookup-attributes AttributeKey=ResourceType,AttributeValue=AWS::EC2::SecurityGroup --region $region --output text | grep $sgId
