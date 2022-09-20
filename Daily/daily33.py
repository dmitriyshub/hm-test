import json
Dictionary = {
"id": "04",
"name": "sunil",
"Age": 30,
"Jobtitle" : "Developer"
}
with open('file2.json', 'w') as jsonfile:

    json_dict = json.dump(Dictionary,jsonfile)

'''
SELECT YEAR(`orderDate`) AS `Year`, COUNT(`status`) AS `TotalOrders` FROM `orders` GROUP BY `year`;
SELECT SUM(`amount`) AS `total`, YEAR(`orderDate`) AS `year` FROM `payments` INNER JOIN `orders` USING (`customerNumber`) GROUP BY year
'''
'''
======================================================================
AWS:
1. Using Amazon RDS falls under the shared responsibility model. Which of the
following are customer responsibilities? (Choose TWO)

Building the relational database schema << YES
Patching the database software
Managing the database settings << YES
Performing backups
Installing the database

2. Under the Shared Responsibility Model, which of the following controls do
customers fully inherit from AWS? (Choose TWO)

Physical controls << YES
Awareness & training
Database controls
Patch management controls
Environmental controls << YES

3. What are AWS shared controls?

Controls that the customer and AWS collaborate together upon the secure
the infrastructure

Controls that a customer inherits from AWS

Controls that are solely the responsibility of the customer based on the
application they are deploying within AWS services

Controls that apply to both the infrastructure layer and customer layers << YES

4. According to the AWS shared responsibility model, what are the controls that
customers fully inherit from AWS? (Choose TWO)

Awareness and Training
Data center security controls << YES
Environmental controls << YES
Resource Configuration Management
Communications controls

5. Which of the following is NOT correct regarding Amazon EC2 On-demand
instances?

With on-demand instances, no longer-term commitments or upfront payments
are needed
You have to pay a start-up fee when launching a new instance for the first time << YES
When using on-demand Linux instances, you are charged per second based on
an hourly rate
The on-demand instances follow the AWS pay-as-you-go pricing model

======================================================================
'''