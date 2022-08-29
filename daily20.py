#!bin/python3

# pokemon="Bulbasaur"
# print(pokemon[0:4])
# print(pokemon[4:7])
# print(pokemon[3:7])
# print(pokemon[::2])
# print(pokemon[1:-1:2])
# print(pokemon[::-1])
# print(pokemon[-2:])
#
#
# x,y = input("Please give me two numbers: ").split()
# if x>y:
#     print(x)
# else:
#     print(y)
#
# x,y,z = input("Please give me two numbers: ").split()
# print(x,y,z)
#
# x,y,z = int(x), int(y), int(z)
#
# largest = 0
# print(x,y,z)
# if x>y and x>z:
#     largest=x
#     print(largest)
# elif y>x and y>z:
#     largest=y
#     print(largest)
# else:
#     largest=z
#     print(largest)
#
# grade = int(input("what is your last exam grade? "))
# if grade >= 70:
#     print("you pass")
# else:
#     print("go and learn hard!")
# grade = 0
#
# while grade not in range(1,101) :
#     grade = int(input("what is your last exam grade (between 1-100)? "))
#
#
# if grade >= 70:
#     print("you pass")
# else:
#     print("go and learn hard!")

birthday_month = int(input("in which month you was born? 1-12 : "))
if birthday_month in (12,1,2):
    print("winter")
elif birthday_month in (3,4,5):
    print("spring")
elif birthday_month in (6,7,8):
    print("summer")
elif birthday_month in (9,10,11):
    print("fall")
else:
    print("not a valid month")