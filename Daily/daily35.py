def top_n(list_n,n):
    """
    Implement a function top_n() which extracts top n largest values from
    the given list.
    :return:
    """
    list_n = sorted(list_n, reverse=True)
    return list_n[:n]

list_n = [4, 5, 2, 9, 5, 2, 8, 2, 8, 10]

print(top_n(list_n,3))
#print(top_n(list_n,3))

'''
SELECT sum(amount) as total , productName
FROM `orders` 
INNER JOIN orderdetails USING (`orderNumber`) 
INNER JOIN products USING (`productCode`)
INNER JOIN customers USING (customerNumber)
INNER JOIN payments USING (customerNumber)
WHERE `status`="shipped" 
GROUP BY `productName` ORDER BY total;
'''

"""
======================================================================
AWS:
1. You decide to buy a reserved instance for a term of one year.
Which option provides the largest total discount?

All up-front reservation << yES
No up-front reservation
All reserved instance payment options provide the same discount level
Partial up-front reservation

2. A company is migrating a web application to AWS. The
application’s compute capacity is continually utilized throughout
the year. Which of the below options offer the company the most
cost-effective solution? (Choose TWO)

Savings Plans << ?
On-demand Instances
Spot Instances
Dedicated Hosts
Reserved Instances

3. Which of the following has the greatest impact on cost? (Choose
TWO)

The number of IAM roles provisioned
Data Transfer In charges
Data Transfer Out charges
Compute charges
The number of services used << ?

4. Who from the following will get the largest discount?

A user who chooses to buy Reserved, Standard, All upfront
instances << ?
A user who chooses to buy Reserved, Convertible, All upfront
instances
A user who chooses to buy Reserved, Standard, No upfront
instances
A user who chooses to buy On-demand, Convertible, Partial upfront
instances

5. Which of the following is an available option when purchasing
Amazon EC2 instances?

The ability to bid to get the lowest possible prices
The ability to pay upfront to get lower hourly costs
The ability to buy Dedicated Instances for up to 90% discount
The ability to register EC2 instances to get volume discounts on
every hour the instances are running << ?

======================================================================


"""