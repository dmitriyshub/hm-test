# 1. Define the variables ten=10 twenty=20 hundred=100 in one
# assignment (pack-unpack) .
# a. print the value of the var twenty.
# b. print whether the value of the var twenty equals a hundred.
# (without using conditions)
# c. Move the content of var ten to twenty.
# d. Check the values of variables ten & twenty.
# e. Increment var “ten” by 1 (using shorthand operator)

ten,twenty,hundred = 10,20,100

print(twenty)
print( twenty == hundred )
twenty = ten
print(ten,twenty)
ten += 1


# 2. Define the following variables by one assignment.
# var1=aa var2=aa var3=Aa var4=bb
# a. Print the value of the var3
# b. print whether the var2 equal var1 (without using
# conditions)
# c. print whether the var2 equal var13
# d. Move the content of var4 to var2
# e. print whether var4 equals var2.

var1,var2,var3,var4 = "aa","aa","Aa","bb"
print(id(var1), id(var2))
a = 100000
b = 100000
print(id(a), id(b))
print(var3)
print( var2 == var1 )
print( var2 == var3 )
var2 = var4
print( var4 == var2 )


# 3. Assign the following vars, first,second=True,False
# demonstrate a truth table for the logical operators and or not.

first,second = True, False
print(first and second)
print(first or second)
print(first or not second)
print(first and not second)


# 4. Assign the following vars, bin_first=0b0111, bin_second=0b0101
# demonstrate the truth table for the bitwise operators and or not.

bin_first = 0b0111
bin_second = 0b0101

print(bin_first & bin_second)
print(bin_first | bin_second)

# 5. Ask the user to enter his name and last name in two separate lines
# and print the results.
input()



ip = '192.168.1.1'
print('.'.join([bin(int(x)+256)[3:] for x in ip.split('.')]))

def ip2bin(ip):
    octets = map(int, ip.split('/')[0].split('.')) # '1.2.3.4'=>[1, 2, 3, 4]
    binary = '{0:08b}{1:08b}{2:08b}{3:08b}'.format(*octets)
    range = int(ip.split('/')[1]) if '/' in ip else None
    return binary[:range] if range else binary

ip2bin('255.255.127.0')