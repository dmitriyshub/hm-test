'''
Implement the function is_palindrome(), which takes as an argument str
and checks if this is a palindrome (expression that sounds the same
from left to right and from right to left).
If so, the function should return True, on the contrary False.
'''

def is_palindrome(str):

   rev_str = str[::-1]
   if str == rev_str:
       return True
   else:
       return False

print(is_palindrome('aba'))


'''
======================================================================
AWS:
1. Which of the following aspects of security are managed by AWS? (Choose TWO)

VPC Security
Hardware patching << YES
Encryption of EBS volumes
Securing global physical infrastructure << YES
Access permissions

2. or managed services like Amazon DynamoDB, which of the below is AWS
responsible for? (Choose TWO)

Logging access activity
Patching the database software << YES
Protecting credentials
Operating system maintenance << YES
Creating access policies

3. Which of the following describes the payment model that AWS makes available
for customers who consistently use Amazon EC2 over a 3-year term to reduce
their total computing costs?

Save when you commit << YES
Pay less as AWS grows
Pay less by using more
Pay as you go

4. One of the major advantages of using AWS is cost savings. What does AWS
provide to reduce the cost of running Amazon EC2 instances?

Low monthly instance maintenance costs
Low-cost instance tagging
Per-second instance billing << YES
Low instance start-up fees

5. Which of the following are advantages of using AWS as a cloud computing
provider? (Choose TWO)

Eliminates the need to monitor servers and applications
Eliminates the need to guess on infrastructure capacity needs << YES
Enables customers to trade their capital expenses for operational expenses
Manages all the compliance and auditing tasks
Provides custom hardware to meet any specification << YES
======================================================================

'''