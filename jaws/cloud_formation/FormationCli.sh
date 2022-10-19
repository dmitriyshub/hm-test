# Run the following command to create a stack:

aws cloudformation create-stack \
--stack-name myStack \
--template-body file://template1.yaml \
--capabilities CAPABILITY_NAMED_IAM \
--parameters ParameterKey=KeyName,ParameterValue=vockey

# Check the status of each resource that is created by this stack:

watch -n 5 -d \
aws cloudformation describe-stack-resources \
--stack-name myStack \
--query 'StackResources[*].[ResourceType,ResourceStatus]' \
--output table

# To see the stack status and other details, run the describe-stacks command:

watch -n 5 -d \
aws cloudformation describe-stacks \
--stack-name myStack \
--output table

# Analyze the issue by running the describe-stack-events command with a query that returns only the CREATE_FAILED events:

aws cloudformation describe-stack-events \
--stack-name myStack \
--query "StackEvents[?ResourceStatus == 'CREATE_FAILED']"

# Run the describe-stacks command one more time.

aws cloudformation describe-stacks \
--stack-name myStack \
--output table

# Use the following command to delete the stack:
aws cloudformation delete-stack --stack-name myStack