import re
import ipaddress
from ipaddress import *

# interface = IPv4Interface('192.0.2.5/24')
# print(interface.with_netmask)
# '192.0.2.5/255.255.255.0'

# ip="241.1.1.112"
# aa=re.match(r"^\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}$",ip)

ip = [input("IP address: ")]

for i in ip:
    validip = re.match(r"^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])$", i)
    if validip:
        print(validip.group())
    else:
        print("Not valid")


def check_ip(ip):
    for i in ip:
        validip = re.match(r"^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])$",i)

        if validip:
            print(validip.group())

# def subnet_calc():
#
#         # Checking IP address validity
#         while True:
#             ip_address = input("Enter an IP address: ")
#
#             # Checking octets
#             a = ip_address.split('.')
#
#             if (len(a) == 4) and (1 <= int(a[0]) <= 223) and (int(a[0]) != 127) and (
#                     int(a[0]) != 169 or int(a[1]) != 254) and (
#                     0 <= int(a[1]) <= 255 and 0 <= int(a[2]) <= 255 and 0 <= int(a[3]) <= 255):
#                 break
#
#             else:
#                 print("\nThe IP address is INVALID! Please retry!\n")
#                 continue
#
#         masks = [255, 254, 252, 248, 240, 224, 192, 128, 0]
#
# print(subnet_calc())