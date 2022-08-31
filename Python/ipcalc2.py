import re
import ipaddress

# import requests
# print(requests.get("https://networkcalc.com/api/ip/10.5.1.0/27?binary=true").json())

# Input:
# 1. IP number
# • Valid ip number should be given (verify – hint: regex)

# 2. Subnet mask in CIDR (optional – if not given the subnet will be inferred from the class)
# • Verify that an integer legit valid number was input

# 3. Will the partitioning be according to number of hosts or number of subnets
# • Verify the input

# 4. Number of hosts/subnets (according to previous question)
# • Verify that an integer legit valid number was input


ip_addr ="128.0.0.10"
user_cidr = 16
subnet_mask = "255.255.255.0"

sm_split = subnet_mask.split('.') # split subnet mask to list
print(sm_split)

sm_split_int = [int(item) for item in sm_split] # change to int
print(sm_split_int)
temp = 0
counter = 0



print(temp)
print(bin(int(sm_split[3])))








def check_ip(ip_addr):

    validip = re.match(r"^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])$", ip_addr)

    if validip:
        return print(validip.group())
    else:
        return print("Not valid IP")

#check_ip(ip_addr)


def subnet_mask(ip_addr) :
    ip_split = ip_addr.split('.')
    ip_class = int(ip_split[0])

    if ip_class in range(1,128):
        cidr = 8
        return cidr

    elif ip_class in range(128,192):
        cidr = 16
        return cidr

    else :#ip_class in range(192,256):
        cidr = 24
        return cidr

#print(subnet_mask(ip_addr))


# for i in range(1,128):
#     print(i)

