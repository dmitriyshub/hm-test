
'''
AWS
1. AWS Cost Explorer and AWS Trusted Advisor are services examples of which
Well-Architected Framework pillar?
Security
Operational Excellence
Cost Optimization  << YES !
Performance Efficiency
---------------------------------------------------------------------------
2. Which of the following are design principles of Performance Efficiency?
Go global in minutes & experiment more often. << YES !
Analyze and attribute expenditure & stop spending money on data center
operations.
Make frequent, small, reversible changes & anticipate failure.
Automate security best practices & keep away people from data.
---------------------------------------------------------------------------
3. Which of the following is NOT an AWS Partner Network (APN) type?
APN Technology Partners.
APN Services Partners.  << YES !
APN Consulting Partners,
APN Training Partners.
---------------------------------------------------------------------------
4. Which AWS service is the key to Operational Excellence?
CloudFormation  << YES !
EC2
OsWork
CodeDeploy
---------------------------------------------------------------------------
5. Implementing Security Groups, NACLs, KMS, or CloudTrail reflects which
Well-Architected FrameWork Pillar?
Reliability
Performance Efficiency
Security  << YES !
Cost Optimization
'''


counter = 0
ranger = 5
for i in range(5):
    print(' ' * counter, end='')
    for j in range(5):

        print("*", end='')
    counter+=1
    print()

print('*****')
print(' *****')
print('  *****')
print('   *****')
print('    *****')

secret_num = 99
chance = 3
choice = 0
while chance > 0:

    print(f"you have {chance} opportunities")
    choice = input('guess the secret number: ')

    if not choice.isnumeric():
        print("its not a number i dont want to play with you!")
        chance = 0
    elif int(choice) == secret_num:
        print("you are a winner!")
    elif int(choice) > secret_num:
        print("higher than the secret number")
    elif int(choice) < secret_num:
        print("lower than the secret number")
    chance -=1
    if chance == 0:
        print("Looser bye!")


class Pet:
    def __init__(self,name=None,type=None,age=0):
        self.__name = name
        self.__animal_type = type
        self.__age = age

    def set_name(self,name):
        self.__name = name

    def set_age(self,age):
        self.__age = age

    def set_type(self,type):
        self.__animal_type = type

    def get_name(self):
        return self.__name

    def get_age(self):
        return self.__age

    def get_animal_type(self):
        return self.__animal_type

my_pet = Pet()
my_pet.set_name('Pinky')
my_pet.set_type('Cat')
my_pet.set_age(11)

print(f'my pet name is {my_pet.get_name()}')
print(f'My pet type is {my_pet.get_animal_type()}')
print(f'My pet age is {my_pet.get_age()}')

