# 1. ask the user to enter a number from 1-7 and print the
# corresponding day in the week. For example: 1 = sunday , 2 =
# monday etc.
# Pay attention - you have to validate in input if it is a number
# between 1 - 7 , if false ask from him to enter a valid number
# again, third time exit from the script.

days = {1:"sunday",2:"monday",3:"tuesday",4:"wednesday",5:"thursday",6:"friday",7:"saturday"}
counter = 0
while counter <= 3:

    day = int(input("which day between 1-7?"))
    if day not in days:
        print("ID10T")
        counter+=1
        if counter == 3:
            print("bye!")
            break
        continue

    else:
        print(days[day])
        break

# 2. Ask the user to enter his phone number, check if it's a compound
# from 10 numbers, if true print “ you enter a correct number”
# otherwise print “you have entered not valid number, try again” ,
# if it still not validate print “ not valid number, bye” and exit.

valid_number = True
counter = 1
while valid_number:
    phone_number = input("What is your number?")
    counter+=1
    if len(phone_number) == 10:
        print("your number is correct")
        break
    else:
        if counter < 3:
            print("try again")
        else:
            print("bye!")
            break



# 3. ask the user to enter his phone number,check if its compound is
# from 10 numbers, if true , check if it starts with 054, if true
# print “Me too have partner number” otherwise print “go and buy
# partner. If the number is not validated, print “you have entered
# not valid number, try again” , if it is still not validate print
# “ not valid number, bye” and exit.

valid_number = True
counter = 1
while valid_number:
    phone_number = input("What is your number?")
    counter+=1
    partner = "054"
    if len(phone_number) == 10:
        if phone_number[0:3] == partner:
            print("Me too have partner number")
            break
        else:
            print("not valid number, try again")
            if counter < 3:
                print("try again")
            else:
                print("bye!")
                break


# 4. ask the user to enter his name , then check if his name is more
# than 4 letters or not.
# If true check if his name has the letter
# “a”, if true print “Golden Name” otherwise, print “Nice name”
# otherwise print “your name is smaller than four letter”.

name = input("What is your name: ")
name_len =  len(name)

if name_len >= 4:
    if "a" in name:
        print("Golden Name!")
    else:
        print("nice name!")
else:
    print("your name is smaller than four letter!")

# 5. write a program that count from 1 - 10.(while loops)

i = 1
while i <= 10:
    print(i, end=" ")
    i+=1

# 6. write a program that counts from 10 - 1. (while loops)

i = 10
while i >= 1:
    print(i, end=" ")
    i-=1

