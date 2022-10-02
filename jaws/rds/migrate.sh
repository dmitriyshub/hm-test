:'
Determine the Instance ID, Instance Type, Public DNS name, Public IP address, and Availability Zone of the CafeInstance.
Use an AWS CLI command that also returns the VPC ID of its VPC, and the Group ID of its security group.
In the SSH window, enter
Note the use of the filters and query options on the command to select the correct instance and to specify the information that you want to retrieve, respectively.
'
aws ec2 describe-instances \
--filters "Name=tag:Name,Values= CafeInstance" \
--query "Reservations[*].Instances[*].[InstanceId,InstanceType,PublicDnsName,PublicIpAddress,Placement.AvailabilityZone,VpcId,SecurityGroups[*].GroupId]"

:'
Determine the IPv4 CIDR block of the Cafe VPC. In the SSH window, enter:
'
aws ec2 describe-vpcs --vpc-ids <CafeInstance VPC ID> \
--filters "Name=tag:Name,Values= Cafe VPC" \
--query "Vpcs[*].CidrBlock"

:'
Determine the Subnet ID and IPv4 CIDR block of Cafe Public Subnet 1, which is the only subnet in the VPC. In the SSH window, enter:
'
aws ec2 describe-subnets \
--filters "Name=vpc-id,Values=<CafeInstance VPC ID>" \
--query "Subnets[*].[SubnetId,CidrBlock]"

:'
Determine the list of Availability Zones in the Region. In the command below, substitute <region> with the actual region name
(e.g., us-east-1 or us-west-2). In the SSH window, enter:
'

aws ec2 describe-availability-zones \
--filters "Name=region-name,Values=<region>" \
--query "AvailabilityZones[*].ZoneName"

:'
Create the CafeDatabaseSG security group. This security group is used to protect the Amazon RDS instance.
It should have an inbound rule that only allows MySQL requests (using the default TCP protocol and Port 3306)
from instances that are associated with the CafeSecurityGroup.
This rule ensures that only the CafeInstance is able to access the database. In the SSH window, enter:
'
aws ec2 create-security-group \
--group-name CafeDatabaseSG \
--description "Security group for Cafe database" \
--vpc-id <CafeInstance VPC ID>

:'
Next, create the inbound rule for the security group. In the SSH window, enter:
'
aws ec2 authorize-security-group-ingress \
--group-id <CafeDatabaseSG Group ID> \
--protocol tcp --port 3306 \
--source-group <CafeSecurityGroup Group ID>

aws ec2 authorize-security-group-ingress \
--group-id sg-0fb9e6207bfc52531 \
--protocol tcp --port 3306 \
--source-group sg-01a75bc7eeac07eb7

:'
Run the following command to confirm that the ingress rule was applied appropriately:
'
aws ec2 describe-security-groups \
--query "SecurityGroups[*].[GroupName,GroupId,IpPermissions]" \
--filters "Name=group-name,Values='CafeDatabaseSG'"


