#!/bin/bash

# To find all instances in your account that are tagged with a tag of :
aws ec2 describe-instances --filter "Name=tag:Project,Values=ERPSystem"

# Use the --query parameter to limit the output of the previous command to only the instance ID of the discovered instance:
aws ec2 describe-instances --filter "Name=tag:Project,Values=ERPSystem" --query 'Reservations[*].Instances[*].InstanceId'

# Copy the following command and run it in the Linux terminal window to include both the instance ID and the Availability Zone of each instance in your return result:
aws ec2 describe-instances --filter "Name=tag:Project,Values=ERPSystem" --query 'Reservations[*].Instances[*].{ID:InstanceId,AZ:Placement.AvailabilityZone}'

# Copy and run the following command to also include the Environment and Version tags in your output:
aws ec2 describe-instances --filter "Name=tag:Project,Values=ERPSystem" --query \
'Reservations[*].Instances[*].{ID:InstanceId,AZ:Placement.AvailabilityZone,Project:Tags[?Key==`Project`] | [0].Value,Environment:Tags[?Key==`Environment`] | [0].Value,Version:Tags[?Key==`Version`] | [0].Value}'

# add a second tag filter to see only the instances associated with the project named ERPSystem that belong to the Environment named development:
aws ec2 describe-instances --filter "Name=tag:Project,Values=ERPSystem" "Name=tag:Environment,Values=development" --query \
'Reservations[*].Instances[*].{ID:InstanceId,AZ:Placement.AvailabilityZone,Project:Tags[?Key==`Project`] | [0].Value,Environment:Tags[?Key==`Environment`] | [0].Value,Version:Tags[?Key==`Version`] | [0].Value}'


# you will change all of the Version tags on the instances marked as development for the project ERPSystem.
# This script first uses the command aws ec2 describe-instances to return only a list of instance IDs for the development machines that belong to the ERPSystem project.
# It then passes those values to the aws ec2 create-tags command, which either creates a new tag or (in this case) overwrites an existing tag.
# Notice how the first command uses the --output text option to manipulate the return results as text instead of as JSON.
# Using this command instead of JSON on a simple return result—in this case, a list of IDs—can make it easier to manipulate the return result and pass it to other commands.
ids=$(aws ec2 describe-instances --filter "Name=tag:Project,Values=ERPSystem" "Name=tag:Environment,Values=development" --query 'Reservations[*].Instances[*].InstanceId' --output text)

aws ec2 create-tags --resources $ids --tags 'Key=Version,Value=1.1'

# To verify that the version number on these instances has been incremented and that other non-development boxes in the ERPSystem project have been unaffected, copy and run the following command:

aws ec2 describe-instances --filter "Name=tag:Project,Values=ERPSystem" --query \
'Reservations[*].Instances[*].{ID:InstanceId, AZ:Placement.AvailabilityZone, Project:Tags[?Key==`Project`] |[0].Value,Environment:Tags[?Key==`Environment`] | [0].Value,Version:Tags[?Key==`Version`] | [0].Value}'

