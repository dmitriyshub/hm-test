'''
  819  mkdir -p grocery/{fruit/{corn,grapes,flat},vegetables/{potato,cauliflower}}
  820  mv grocery/fruit/corn/ grocery/vegetables/
  821  mv grocery/fruit/flat grocery/fruit/pear
  822  touch grocery/fruit/grapes/black
  823  echo " black black black black black" > grocery/fruit/grapes/black
  824  awk '{gsub(/black/,"yellow")}1' grocery/fruit/grapes/black > yellow
  825  cat yellow
  826  rm -rf grocery/
  827  sudo systemctl status atd
  828  echo "hello" > entry-hello | at now +5 minutes
  829  cat entry-hello
  830  echo "hello again" >> entry-hello | at now +1 hours
  837  echo "hello every time" >> entry-hello | at 10:10pm 10102022
  838  atq
  839  atrm 3
  840  atq
  841  for i in `atq | awk '{print $1}'`;do atrm $i;done
  842  atq
  843  history | tail -50
'''


'''
AWS
1) One of the most important AWS best-practices to follow is the
cloud architecture principle of elasticity. How does this
principle improve your architecture’s design?
By automatically scaling your on-premises resources based in
changes in demand.
By automatically provisioning the required AWS resources
based on changes in demand.  << YES

By automatically scaling your AWS resources using an Elastic
Load balancer.
By reducing interdependencies between application components
wherever possible.
-----------------------------------------------------------------
2. What does the AWS Health Dashboard provide? (Choose TWO)

Recommendations for cost optimization.

Detailed troubleshooting guidance to address AWS events impacting
your resources. << YES

A dashboard detailing vulnerabilities in your application.

Personalized view of AWS service health << YES

Health checks for Auto Scaling instances.
-----------------------------------------------------------------
3. What does the “Principle of Least Privilege” refer to:
All IAM users should have at least the necessary permissions to
access the core AWS services.

You should grant your users only the permissions they need when
they need them and nothing more << YES

IAM users should not be granted any permissions; to keep your
account safe

All trusted IAM users should have access to any AWS service in
the respective AWS account.
---------------------------------------------------------------------
4. In the AWS Shared responsibility Model, which of the following are
the responsibility of the customer? (Choose TWO)
Disk disposal

Patching the Network infrastructure

Configuring network access rules  << YES

Controlling physical access to compute resources

Setting password complexity rules. << YES

---------------------------------------------------------------------
5. Which of the below is a best-practice when designing solutions on
AWS?

Use AWS reservations to reduce costs when testing your production
environment

Provisioning a large compute capacity to handle any spikes in
load

Invest heavily in architecting your environment, as it is not
easy to change your design later.

Automate wherever possible to make architectural experimentation
easier. << YES

'''
'''
1. code a function which receives an endless amount of keyvalues.
The key value pair will be printed line by line. the last key
value pair that was printed, will be returned by the function.

2. code a function which receives endless amount of positional
parameters. the parameters will be printed line by line. the
amount of the parameters and the last parameter, that was
printed, will be returned by the function.

3. Write a script that output the following pattern (with loops).
'''
def endless(**args):
    count = 0
    for k,v in args.items():
        print(f"the key is {k} and the value is {v}")
        count+=1
    return k,v

#print(endless(a=1,b=2,c=3,d=4,e=5,f=6))

def posend(*args):
    for i in args:
        print(i)
    return i, len(args)
#print(posend(1,2,3,4,5,6,7))


for i in range(5):
    for j in range(5):
        if i == 0 or i == 4:
            print('*',end='')
        elif j == 0 or j == 4:
            print('*',end='')
        else:
            print(' ',end='')
    print()






