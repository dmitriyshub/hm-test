import math
# cidr=int(input("enter your cidr :"))
# num =(math.log(cidr,2))
# print(num)
# cidr_new_num = 32 -num #new cidr
# number_hosts= (2**num)-2
# cidr1=int(input("enter your cidr :"))
# num_of_subnets = cidr_new_num - cidr1
# final_num_of_subnets = (2**num_of_subnets)
#
# print(cidr_new_num)
# print(number_hosts)
# print(num_of_subnets)
# print(final_num_of_subnets)

# num_of_laptops = int(input("num of lap :"))
# num_of_network = int(input("num of lap :"))
def choos_option():
    print("""choose one of two options:
     1) num of hosts 
     2) num of subnets
     """)
    ans = input("What you would want to choos? ")
    if ans == "1":
        first_cidr = int(input("Enter your cidr :"))
        pow_of_tow()
        num = int((math.log(x, 2)))
        # print(num)
        cidr_new_num = 32 - num
        print("New cidr :", cidr_new_num)
        subnet_networks = 2 ** (cidr_new_num - first_cidr)
        print("Subnet network :", subnet_networks)
    elif ans == "2":
        first_cidr = int(input("Enter your subnets :"))





def pow_of_tow():
    global x
    x = int(input("Enter your number  :"))
    list_1 = []
    for i in range(1,24):
        list_1.append(2**i)
    print(list_1)

    for i in list_1 :
        if x >= i :
            continue
        else:
            x=i
            break
    print(x)
##############################

choos_option()

#############33
# x = int(input("enter num :")) # delete this command
# first_cidr=int(input("Enter your cidr :"))
# num =int((math.log(x,2)))
# #print(num)
# cidr_new_num = 32 -num
# print("New cidr :",cidr_new_num)
# subnet_networks = 2**(cidr_new_num -first_cidr)
# print("Subnet network :",subnet_networks)


# our_arry = [1,2,4,8,16,32,64,128,256,512,1024,2048,4096,8192,16384,32768,65536,131072]
#
# for i in our_arry :
#     if num_random <= i :


















