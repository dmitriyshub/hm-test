''' AWS:
1. Why does every AWS Region contain multiple Availability Zones?
Multiple Availability Zones allows you to build resilient
and highly available architecture. << YES

Multiple Availability Zones allows for data replication and
global search.

Multiple Availability Zones within a region increases the
storage capacity available in that region.

Multiple Availability Zones results in lower total cost
compared to deploying in a single Availability Zones

2. Which of the following statements describes the AWS Cloud’s
agility?
AWS allows you to host your replications in multiple regions
around the world

AWS allows you to pay upfront to reduce costs

AWS allows you to provision resources in minutes << YES

AWS provides customizable hardware at the lowest possible
code

3. What are the benefits of using the Amazon Relational Database
Service? (Choose TWO)
Complete control over the underlying host

Resizable compute capacity

Supports the document and key-value data structure

Lower administrative burden << YES

Scales automatically to larger or smaller instance types << YES

4. What does AWS Service Catalog provide?
It enables customers to quickly find descriptions and use
cases for AWS services

It allows developers to deploy infrastructure on AWS using
familiar programming languages

It enables customers to explore the different catalogs of
AWS services

It simplifies organizing and governing commonly deployed IT
services << YES

5. What is the framework created by AWS Professional Services that
helps organizations design a road map to successful cloud
adoption?
AWS Search Manager
AWS WAF
AWS CAF << YES
Amazon EFS
======================================================================
'''
def display_info(company=None,price=None):
    if company :
        print(f'Company name: {company}')
        if price:
            print(f'Price: {price}')


display_info(company='Amazon',price=128)