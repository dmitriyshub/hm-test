import math

def iP_validate():
    # Checking IP address validity
    while True:
        global  ip_address
        ip_address = input("Enter an IP address: ")
        # Checking octets
        a = ip_address.split('.')
        if (len(a) == 4) and (1 <= int(a[0]) <= 223) and (int(a[0]) != 127) and (
                int(a[0]) != 169 or int(a[1]) != 254) and (
                0 <= int(a[1]) <= 255 and 0 <= int(a[2]) <= 255 and 0 <= int(a[3]) <= 255):
            input_cidr()
            break

        else:
            print("\nThe IP address is INVALID! Please retry!\n")
            continue


def input_cidr():
    global cidr
    cidr = int(input("Enter an cidr between 1 to 32 :"))
    if cidr in range(1,33):
        return cidr
    elif (cidr > 32) or (cidr <0)  :
        print("Invalid cidr number,try again !")
        input_cidr()
    else:
       cidr = subnet_mask(ip_address)
       print("current subnet mask is :",cidr)


def subnet_mask(ip_address) :
    ip_split = ip_address.split('.')
    ip_class = int(ip_split[0])

    if ip_class in range(1,128):
        cidr = 8
        #return cidr

    elif ip_class in range(128,192):
        cidr = 16
        #return cidr

    else :#ip_class in range(192,256):
        cidr = 24
    return cidr

########################
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
            ###### We stop here #######

    def pow_of_tow():
        global x
        x = int(input("Enter your number  :"))
        list_1 = []
        for i in range(1, 24):
            list_1.append(2 ** i)
        print(list_1)

        for i in list_1:
            if x >= i:
                continue
            else:
                x = i
                break
        print(x)

##############################
math.ceil(math.log(7))


##############################



####Main Functions####
iP_validate()
choos_option()
#input_cidr()
#subnet_mask(ip_address)
