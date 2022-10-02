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

:'
Create the CafeDB Private Subnet 1. This subnet hosts the Amazon RDS database instance.
It is a private subnet that is defined in the same Availability Zone as the CafeInstance.
'
aws ec2 create-subnet \
--vpc-id <CafeInstance VPC ID> \
--cidr-block 10.200.2.0/23 \
--availability-zone <CafeInstance Availability Zone>a

:'
Create the CafeDB Private Subnet 2. This is the extra subnet that is required to form the database subnet group.
It is an empty private subnet that is defined in a different Availability Zone than the CafeInstance.
'
aws ec2 create-subnet \
--vpc-id <CafeInstance VPC ID> \
--cidr-block 10.200.10.0/23 \
--availability-zone <availability-zone>b

:'
Create the CafeDB Subnet Group. A database (DB) subnet group is a collection of subnets in a VPC.
When you create an Amazon RDS instance, you specify the VPC where the RDS instance resides by associating the instance with a DB subnet group.
'
aws rds create-db-subnet-group \
--db-subnet-group-name "CafeDB Subnet Group" \
--db-subnet-group-description "DB subnet group for Cafe" \
--subnet-ids <Cafe Private Subnet 1 ID> <Cafe Private Subnet 2 ID> \
--tags "Key=Name,Value= CafeDatabaseSubnetGroup"

aws rds create-db-subnet-group \
--db-subnet-group-name "CafeDB Subnet Group" \
--db-subnet-group-description "DB subnet group for Cafe" \
--subnet-ids subnet-02e2e9e3fca60eb59 subnet-062ce33fceb82f3c8 \
--tags "Key=Name,Value= CafeDatabaseSubnetGroup"

:'
You can now create the CafeDBInstance that is shown in the After Migration topology diagram.
Using the AWS CLI, create an Amazon RDS MariaDB instance with the following configuration settings
These options specify the creation of a MariaDB database instance that is deployed in the same Availability Zone as the Café instance.
It also uses the DB subnet group that you built in the previous step
'

aws rds create-db-instance \
--db-instance-identifier CafeDBInstance \
--engine mariadb \
--engine-version 10.5.13 \
--db-instance-class db.t3.micro \
--allocated-storage 20 \
--availability-zone us-west-2a \
--db-subnet-group-name "CafeDB Subnet Group" \
--vpc-security-group-ids sg-01a75bc7eeac07eb7 \
--no-publicly-accessible \
--master-username root --master-user-password 'Re:Start!9'

:'
Monitor the status of the database instance, and wait until it shows a value of available. In the SSH window, enter:
'
aws rds describe-db-instances \
--db-instance-identifier CafeDBInstance \
--query "DBInstances[*].[Endpoint.Address,AvailabilityZone,PreferredBackupWindow,BackupRetentionPeriod,DBInstanceStatus]"


:'
Use the mysqldump utility to create a backup of the local cafe_db database.
This utility program is part of the MySQL database product, and it is available for you to use.
In the SSH window, enter:
'
mysqldump --user=root --password='Re:Start!9' \
--databases cafe_db --add-drop-database > cafedb-backup.sql

:'
Next, restore the backup to the Amazon RDS database by using the mysql command.
You must specify the endpoint address of the RDS instance in the command. In the SSH window, enter:
'
mysql --user=root --password='Re:Start!9' \
--host=<RDS Instance Database Endpoint Address> \
< cafedb-backup.sql


mysql --user=root --password='Re:Start!9' \
--host=cafedbinstance.cohadum7zyqv.us-west-2.rds.amazonaws.com \
< cafedb-backup.sql
