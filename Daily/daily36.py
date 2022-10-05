#!/usr/bin/python
import os
'''
code a python function which receives a service name.
the function will check periodically (in a method of your choice )
whether the process is up.
if the proc is down - a new file named "WARNING - service name
-number: [Service] is DOWN" will be created in the user home dir.

'''


def servicefunc(service_name):
    status = os.system(f'systemctl is-active {service_name}')
    file_path = r'/home/dimash/'
    file_name = f'WARNING - service name-number: {service_name} is DOWN.txt'

    if status != 0:
        with open(os.path.join(file_path,file_name), 'w') as fp:
            fp.write(f'{service_name}')
    else:
        return f'{service_name} is running'


print(servicefunc('sshdf'))


'''
======================================================================
AWS:
1. A company needs to host a big data application on AWS using EC2 instances. Which
of the following AWS Storage services would they choose to automatically get high
throughput to multiple compute nodes?

AWS Storage Gateway
Amazon Elastic Block Store
Amazon Elastic File System << yES
S3

2. Which of the following actions may reduce Amazon EBS costs? (Choose TWO)

Distributing requests to multiple volumes
Changing the type of the volume << YES
Deleting unused Bucket ACLs
Deleting unnecessary snapshots
Using reservations << YES

3. What is the maximum amount of data that can be stored in S3 in a single AWS
account?

100 PetaBytes
5 TeraBytes
Virtually unlimited storage << yES
10 Exabytes

4. What should you consider when storing data in Amazon Glacier?

Attach Glacier to an EC2 Instance to be able to store data
Glacier can only be used to store frequently accessed data and data archives
Pick the right Glacier class based on your retrieval needs << YES
Amazon Glacier only accepts data in a compressed format

5. What is the benefit of Amazon EBS volumes being automatically replicated within the
same availability zone?

Elasticity
Traceability
Accessibility 
Durability << yes

======================================================================
'''