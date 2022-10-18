#!/bin/bash
# Determine the Instance ID of the CafeInstance. Switch to the SSH window for the CLI Host instance and enter:
aws ec2 describe-instances \
--filters "Name=tag:Name,Values= CafeInstance" \
--query "Reservations[*].Instances[*].InstanceId"

# Stop the Café instance and change its instance type to t3.micro
aws ec2 stop-instances --instance-ids <CafeInstance Instance ID>

# Change the instance type to t3.micro. In the SSH window for the CLI Host instance, enter:
aws ec2 modify-instance-attribute \
--instance-id <CafeInstance Instance ID> \
--instance-type "{\"Value\": \"t3.micro\"}"


aws ec2 start-instances --instance-ids <CafeInstance Instance ID>

# Check the current state of the instance, and wait until the status shows running. In the SSH window for the CLI Host instance, enter:
aws ec2 describe-instances \
--instance-ids <CafeInstance Instance ID> \
--query "Reservations[*].Instances[*].[InstanceType,PublicDnsName,PublicIpAddress,State.Name]"