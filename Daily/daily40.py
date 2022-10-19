a = [1, None, None, 5, None, 2]
def count_one(any_list):
    counter = 0
    for i in any_list:
        if i == None:
            counter += 1
    return counter

print(count_one(a))


'''
AWS:
1. You ONLY want to manage Applications and Data. Which type of Cloud
Computing model should you use?

On-premises
Infrastructure as a Service (IaaS)
Software as a Service (SaaS) 
Platform as a Service (PaaS) << YES

2. What is the pricing model of Cloud Computing?

Discounts over time
Pay-as-you-go pricing << YES
Pay once a year
Flat-rate pricing

3. Which Global Infrastructure identity is composed of one or more discrete data
centers with redundant power, networking, and connectivity, and are used to
deploy infrastructure?

Edge Locations
Availability Zones << YES
Regions

4. Which of the following is NOT one of the Five Characteristics of Cloud
Computing?

Rapid elasticity and scalability
Multi-tenancy and resource pooling
Dedicated Support Agent to help you deploy applications << YES
On-demand self service

5. Which are the 3 pricing fundamentals of the AWS Cloud?

Compute, Storage, and Data transfer in the AWS Cloud
Compute, Networking, and Data transfer out of the AWS Cloud
Compute, Storage, and Data transfer out of the AWS Cloud << YES
Storage, Functions, and Data transfer in the AWS Cloud

'''