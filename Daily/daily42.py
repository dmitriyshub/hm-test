

import json
#Using the json package, dump the following dictionary:
stocks = {'PLW': 360.0, 'TEN': 320.0, 'CDR': 329.0}
print(type(stocks))

a = json.dumps(stocks, indent=4, sort_keys=True)
print(a)

'''

======================================================================
AWS:
1. company is planning to move a number of legacy applications to
the AWS Cloud. The solution must be cost-effective. Which
approach should the company take?

Use AWS Lambda to host the legacy applications in the cloud. << YES
Use an Amazon S3 static website to host the legacy application
code.
Rehost the applications on Amazon EC2 instances that are
right-sized.
Migrate the applications to dedicated hosts on Amazon EC2.

2. What is the best practice for managing AWS IAM access keys?

There is no need to manage access keys.
Never use access keys, always use IAM roles.
Customers should rotate access keys regularly. << YES
AWS rotate access keys on a schedule.

3. A company uses Amazon EC2 instances to run applications that are
dedicated to different departments. The company needs to break
out the costs of these applications and allocate them to the
relevant department. The EC2 instances run in a single VPC.
How can the company achieve these requirements?

Enable billing access for IAM users and view the costs in Cost
Explorer.
Add additional Amazon VPCs and launch each application in a
separate VPC.
Create tags by department on the instances and then run a cost
allocation report. << YES
Enable billing alerts through Amazon CloudWatch and Amazon SNS.

4. Customers using AWS services must patch operating systems on
which of the following services?
AWS Fargate
AWS Lambda
Amazon EC2 << YES
Amazon DynamoDB

5. According to the AWS shared responsibility model, which of the
following is a responsibility of AWS?

Updating security group rules to enable connectivity.
Patching software running on Amazon EC2 instances.
Configuring network ACLs to block malicious attacks.
Updating the firmware on the underlying EC2 hosts. << YES

6. Which AWS service is always serverless and has SQL capabilities?

RDS
Aurora 
DynamoDB
Athena << YES

7. You would like to use a serverless service to prepare data so it
can be loaded for analytics. Which service would you use?

Athena 
RDS
Glue << YES
ElastiCache

8. Which relational database is a proprietary technology from AWS
and is cloud-optimized?

DynamoDB
Oracle
Athena
Aurora << YES

9. You would like to migrate databases to AWS while still being able
to use the database during the migration. What service allows you
to do this?

Elastic MapReduce (EMR)
Database Migration Service (DMS) << YES
AWS Storage Gateway
Snowball

10. How can you create Hadoop clusters to analyze and process a
vast amount of data?
EMR << YES
Athena
EC2 Instances
Redshift
======================================================================

'''