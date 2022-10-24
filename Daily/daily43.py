
y_true = [0, 0, 1, 1, 0, 1, 0]
y_pred = [0, 0, 1, 0, 0, 1, 0]
def accuracy(y_true,y_pred):
    count = 0
    correct = 0
    for i in range(len(y_true)):
        count += 1
        if y_true[i] == y_pred[i]:
            correct += 1
    acc = correct / count
    return round(acc,4)

print(accuracy(y_true,y_pred))


'''

1. According to the AWS Shared Responsibility Model, which of the
following are customer responsibilities for security-related?
(Select Two)

Securing global network security
Updating security patch for AWS Lambda
Patching security update on EC2 Instances << YES
Patching of the hardware infrastructure
Configuring IAM Permission << YES

2. Which service provides decoupled messaging for microservices
applications?

Amazon SQS << YES
AWS Systems Manager
Amazon Connect
Amazon Pinpoint

3. Which tool allows you to upload images to S3 using programming
language-specific APIs?

AWS Command Line Interface (CLI)
AWS Software Developer Kit (SDK) << YES
Integrated Development Environments (IDE)
AWS Management Console (Browser)

4. Which EC2 instance type is the most cost-effective to purchase
for short-term, spiky, or unpredictable workloads that cannot be
interrupted?

Dedicated instances
Spot Instances
On-Demand Instances << YES
Reserved Instances

5. Which AWS database supports key-value and document data models?

Amazon DynamoDB << YES
Amazon Redshift
Amazon Aurora
Amazon Neptune

6. A company is planning to deploy a MySQL database with full
control of database administration. Which service should the
company use?

Amazon RDS
Amazon EC2 << YES
Amazon S3
Amazon Neptune

7. Which of the following service provides a content delivery
network (CDN) service?

Amazon CloudFront << YES
Amazon VPC
Amazon CloudWatch
Amazon Route 53

8. Which Cloud Computing Model is not offered by AWS Cloud?

Networking as a Service (NaaS) << YES
Software as a Service (SaaS)
Platform as a Service (PaaS)
Infrastructure as a Service (IaaS)

9. A company has 5 petabytes of data and needs to store it for
backup, so they can restore during disaster recovery. Which S3
storage class should be used which is cost-effective?

Amazon S3 Standard-Infrequent Access (S3 Standard-IA)
Amazon S3 Intelligent-Tiering (S3 Intelligent-Tiering)
Amazon S3 Standard (S3 Standard)
Amazon S3 Glacier Deep Archive (S3 Glacier Deep Archive) << yes

10. Which statement best describes the Availability Zones?

A separate geographical location with multiple locations that are
isolated from each other.

Content distribution network that is used to distribute content
to users with fast speed and low latency.

Distinct locations within an AWS Region that are isolated from
failures in other Availability Zones. << YES

The geographic is an area that defines the physical locations of
AWS data centers closest to target users.
======================================================================

'''