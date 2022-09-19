'''
  963  mkdir -p big/{cinema/{mybaby,jpanika,cinemacity},food/{mcdonalds,bbb}}
  964  tree big/
  965  cd big/cinema/jpanika/
  966  mv ../jpanika/ ../../food/
  967  mv /home/dimash/big/cinema/mybaby /home/dimash/big/cinema/yesplanet
  968  mv ../jpanika/ ../../food/
  969  ls ..
  970  cd ..
  971  ls
  972  cp ../cinema/yesplanet/ ../food/bbb/
  973  cp ../cinema/yesplanet/ ../food/bbb/mybaby
  974  cp -r ../cinema/yesplanet/ ../food/bbb/
  975  ls
  976  ls bbb/
  977  ls bbb/yesplanet/
  978  rm -rf  ~/big/
  979  lscpu | grep "Model name"
  980  history | tail -20
'''
# Python code to print identity matrix

# Function to print identity matrix
def Identity(size):
    Identity_list = [[ 1 if j == n else 0 for n in range(size)]for j in range (size)]
    return Identity_list



print(Identity(2))

'''
SELECT sum(amount) as total, status FROM orders INNER JOIN payments USING (customerNumber) GROUP BY status;
'''

'''
======================================================================
AWS:
1. Under the shared responsibility model, which of the following is
the responsibility of AWS?

Client-side encryption
Server-Side encryption
Configuring infrastructure devices << YES
Filtering traffic with Security Groups

2. What should you do in order to keep the data on EBS volumes safe?
(Choose TWO)

Ensure that EBS data is encrypted at rest << YES
Regularly update firmware on EBS devices
Store a backup daily in an external drive
Create EBS snapshots << YES
Prevent any unauthorized access to AWS data centers

3. A company has developed a media transcoding application in AWS.

The application is designed to recover quickly from hardware
failures. Which one of the following types of instance would be
the most cost-effective choice to use?
Reserved instances
Spot Instances << YES
Dedicated instances
On-Demand instances

4. What is the most cost-effective purchasing option for running a
set of EC2 instances that must always be available for a period
of two months?
Spot Instances
Reserved Instances - All Upfront
On-Demand Instances << YES
Reserved Instances - No Upfront

5. A company has developed a media transcoding application in AWS.
The application is designed to recover quickly from hardware
failures. Which one of the following types of instance would be
the most cost-effective choice to use?

Reserved instances
Spot Instances << YES
Dedicated instances
On-Demand instances
======================================================================
'''