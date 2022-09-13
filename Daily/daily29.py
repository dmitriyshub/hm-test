'''
Create a list of words from the given text. Then standardize this text
(change uppercase letters to lowercase, remove punctuation marks).
Extract words longer than six characters and print the result to the
console.
'''

a = "Python is powerful... and fast plays well with othersruns everywhere is friendly & easy to learn is Open These are some of the reasons people who use Python would rather not use anything else"
a = a.lower().replace('.','').replace('&','').split()
a = [ x for x in a if len(x) > 6]
print(a)

'''
Our task is to implement a function called accuracy(), which takes two
arguments y_true, y_pred and calculates the accuracy of our model. The
result is rounded to four decimal places.
In response, call the function on our data and print the result to the
console.
'''
y_true = [0, 0, 1, 1, 0, 1, 0]
y_pred = [0, 0, 1, 0, 0, 1, 0]

def accuract(y_true,y_pred):
    count = 0.0
    correct = 0.0
    for i in range(len(y_true)):
        count += 1
        if y_true[i] == y_pred[i]:
            correct += 1
    acc = correct / count
    #acc = "{:.4f}".format(acc)

    return round(acc,4)

print(accuract(y_true,y_pred))

#Write a script that output the following pattern ( Use Loops )
n=10
for col in range(1,n+1):
    for row in range(1,n*2):
        if (col == 1) or (row+col == n*2) or (col / row == 1):
            print("*",end='')
        else:
            print(' ', end='')
    print()

'''
AWS:
1. Which of the following describes the payment model that AWS makes
available for customers who consistently use Amazon EC2 over a
3-year term to reduce their total computing costs?
Save when you commit << YES
Pay less as AWS grows
Pay less by using more
Pay as you go

2. Which statement best describes the operational excellence pillar
of the AWS Well-Architected Framework?
The efficient use of computing resources to meet
requirements
The ability of a system to recover gracefully from failure
The ability to monitor systems and improve supporting
processes and procedures. >> YES
The ability to manage datacenter operations more efficiently

3. Your company is designing a new application that will store and
retrieve photos and videos. Which of the following services
should you recommend as the underlying storage mechanism?
Amazon EBS
Amazon Instance store
Amazon S3 << YES
Amazon SQS

4. According to the AWS Shared Responsibility model, which of the
following are the responsibility of the customer? (Choose Two )

Controlling physical access to AWS regions
Patching applications installed on Amazon EC2 << YES
Ensuring that the underlying EC2 host is configured properly
Managing environment events of AWS data center
Protecting the confidentiality of data in transit in Amazon
S3 << YES

5. What is the AWS service that enables you to manage all of your
AWS accounts from a single master account?

Amazon Config
AWS Trusted Advisor
AWS Organizations << YES
AWS WAF
'''