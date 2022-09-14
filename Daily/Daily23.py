sentence = "Earth is the only place in the known universe confirmed to host life"
for i in sentence.split(' '):
    print(i[0].upper(), end=' ')


for i in range(3,12):

    print('{:.2f}'.format(i), end=' ')

print()
x=1
for i in range(5):

    for i in range(x):
        print("*", end='')
    print()
    x+=1

print("Separator")
x = 1
y = 1
for i in range(5):
    y=1
    for i in range(5):
        if ( 1 < x < 5 ):
            if (y == 1 or y == 5):
                print('*', end='')
            else:
                print(end=' ')
        else:
            print("*",end='')
        y += 1

    print()
    x+=1