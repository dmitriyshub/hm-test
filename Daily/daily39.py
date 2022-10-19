import re

text = 'Programming in Python - from A to Z'

text_list = re.split('\s+', text)
print(text_list)


'''
AWS:
1. How long can you reserve an EC2 Reserved Instance?

1 or 3 years << YES
2 or 4 years
6 months or 1 year
Anytime between 1 and 3 years.

2. A company would like to deploy a high-performance computing (HPC)
application on EC2. Which EC2 instance type should it choose?

Compute Optimized << YES
Storage Optimized
Memory Optimized
General Purpose

3. Which of the following is NOT an EC2 Instance Purchasing Option?

Spot Instances
Reserved Instances
On-demand Instances
Connect Instances << YES

4. Which EC2 Purchasing Option should you use for an application you
plan on running on a server continuously for 1 year?

Reserved Instances << YES
Spot Instances
On-demand Instances
Convertible Instances

'''