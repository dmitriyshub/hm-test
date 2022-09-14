
#1

i = 0
while i <= 2:
    week = input('Enter a number to show corresponding day of the week: ')
    i = i +1
    week = str(week)
    if week.isdigit():
        week = int(week)
        if week >=1 and week <= 7:
            if week == 1:               ######## Should have done a list instead
                print('Sunday')
                break
            elif week == 2:
                print('Monday')
                break
            elif week == 3:
                print('Tuseday')
                break
            elif week == 4:
                print('wedensday')
                break
            elif week == 5:
                print('Thursday')
                break
            elif week == 6:
                print('friday')
                break
            elif week == 7:
                print('Saturday')
                break
        else:
            print('Invalid Input')
            continue


############
# 2

for i in range(2):
    inp = input('Enter your phone number: ')
    if inp.isdigit():
        if len(inp) == 10:
            print('Correct')
            break
        else:
            print('number is not correct')
            if i == 1:
                print('bye')
            continue
    else:
        print('phone number should be numbers only')


#######
# 3

for i in range(2):
    inp = input('Enter your phone number: ')
    if inp.isdigit() and inp.startswith('054'):
        if len(inp) == 10:
            print('cool i have a partner phone number too!')
            break
    elif inp.isdigit():
        if len(inp) == 10:
            print('go get a partner phone number !!')
        else:
            print('number is not correct')
            if i == 1:
                print('bye')
                continue

##########
# 4

name = input('Enter your name: ')
if len(name) < 3:
    print('your name is less than three letters !')
else:
    if 'a' in name:
        print('golden name')
    else:
        print('nice name')


##########
# 5

i = 10
while i >= 1:
    print(i)
    i = i - 1
#################
# 6
i = 1
while i <= 10:
    print(i)
    i = i + 1