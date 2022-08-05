#!/bin/bash
#filetest1
: '
 1025  mkdir -p grocery/{bakery/cakes/{mini-rolls,bars},home/cleaning/{wipes,polish}}
 1026  cd /home/dimash/grocery/bakery/cakes/bars/
 1027  touch sweetland
 1028  find ./sweetland -type f -exec cp /home/dimash/grocery/home/cleaning/ {} \;
 1029  find ./sweetland -type f -exec cp /home/dimash/grocery/home/cleaning {} \;
 1030  pwd
 1031  tee ~/grocery/home/cleaning/{wipes/sweetland,polish/sweetland} < sweetland
 1032  mv ../bars/ ../Pie/
 1033  pwd
 1034  cd ..
 1035  ls
 1036  useradd Diet247
 1037  sudo useradd Diet247
 1038  setfacl u:Diet247:r-- ~/grocery/bakery/cakes
 1039  setfacl -m u:Diet247:r-- ~/grocery/bakery/cakes
 1040  getfacl ../cakes/
 1041  sudo userdel Diet247
 1042  cat /etc/passwd | tail -1
 1043  cd ~ && rm -rf ~/grocery/
 1044  history | tail 21\
 1045  history | tail 22
 1046  history | tail -22
'

# 6. Write a script that will print any value(s) which was given as
 #args.
 #Each value will be print in a new line.

for arg; do
   echo "$arg"
done

: '
#7. 1.check if the number of given arguments is less than 3 and if it
 #is echo the number of arguments is not enough. enter at least 3
 #arguments. if 3 arguments were given than check which is tha
 #largest value.

if [ ! "$#" -ge 3 ]
then

    echo "the number of arguments is not enough. enter at least 3 ."
    exit 1
fi

#Initialize maxEle with
#the first argument
maxEle=$1

#Loop that compares maxEle with the
#passed arguments and updates it
for arg in "$@"
do
    if [ "$arg" -gt "$maxEle" ]
    then
        maxEle=$arg
    fi
done
echo "Largest value among the arguments passed is: $maxEle"
'

: '
# 8 Write a script to check if a number is odd, even or zero. Echo
  #even for an even number, odd for an odd number and zero for zero.

echo "---- EVEN OR ODD IN SHELL SCRIPT -----"
echo -n "Enter a number:"
read n
echo -n "RESULT: "

if [ $n == 0 ]
then
  echo "Number is Zero!"
elif [ `expr $n % 2` == 0 ]
then
	echo "$n is even"
elif [ ! `expr $n % 2` == 0 ]
then
	echo "$n is Odd"
else
  echo "Try again!"
fi
'

: '
# 9. write a while loop that echos welcome and the iteration number
  #and runs 5 times Print should start at 5 and finish at 1.
let counter=5
while [[ $counter -gt 0 ]]; do
  echo "Welcome $counter"
  let counter--
  #let counter=$counter-1
  done
  '
: '

10. create a while loop which echoes welcome and the iteration
number and runs 5 times . the printout should start at 4 and
finish at 0.
'

: '
let counter=4
while [[ $counter -ge 0 ]]; do
  echo "Welcome $counter"
  let counter--
  #let counter=$counter-1
  done
'

: '
# 11. Create a while loop which receives an argument as the counter and runs that amount of times.
let counter=$1
let this=1
while [[ $counter -gt 0 ]]; do
  echo $this
  let this++
  let counter--
  done
  '



: '
# 12. Write a shell script to ask your name, program name and enrollment number and print it on the screen.
echo "Please follow"
read -ep $'what is your name?\n' name
read -ep $'What is your username?\n' username
read -ep $'What is your enrollment number?\n' enrnum
echo "Your name is $name " "Your username is $username " "Your enrollment number is $enrnum"
'

: '
#13. Write a shell script to find the sum, the average and the
 #product of the four integers entered. (use let for tha math
 #expressions).
'
: '
echo "Please insert 4 integers"
read a b c d

sum=`expr $a + $b + $c + $d`
avg=`expr $sum / 4`
#dec=`expr $sum % 4`
#dec=`expr \( $dec \* 1000 \) / 4`
product=`expr $a \* $b \* $c \* $d`
echo "the sum: " $sum
echo "the avg: " $avg
#echo $dec
echo "the product: " $product
'

: '
#14. Write a shell program to exchange the valu33es of two variables.
echo “value for a:”
read a
echo “value for b:”
read b

echo “before swapping”
echo A = $a
echo B = $b
echo "after swapping"
a=`expr $a + $b`
b=`expr $a - $b`
a=`expr $a - $b`
echo A = $a
echo B = $b
'

: '
# 15. Write a shell script to find the lines containing a number in a file.
echo "Enter a filename for searching any kind of numbers: "
read filename
grep [0-9] $filename
'



: '
# 16. write a shell script that prompts the user for a name of a
 #file or directory and reports if it is a regular file, a
 #directory, or another type of file. Also perform an ls command
 #against the file or directory with the long listing option.

read -ep $'Please give me a file name\n' filename
if [ -f $filename ]; then
  echo "this is a regular file"
  ls -l $filename
elif [ -d $filename ]; then
  echo "this is a directory"
  ls -l $filename
elif ! [ -f $filename ] || ! [ -d $filename ]; then
  echo "this is a another type of file"
  ls -l $filename
else
  echo "something goes wrong please try again"
fi
'

: '
#17. Modify the previous script to that it accepts the file or
 #directory name as an argument instead of prompting the user to
 #enter it.

filename=$1
if [ $# = 0 ]; then
  echo "Please give me an argument when you run the script"
elif [ -f $filename ]; then
  echo "this is a regular file"
  ls -l $filename
elif [ -d $filename ]; then
  echo "this is a directory"
  ls -l $filename
elif [ ! -f $filename ] || [ ! -d $filename ]; then
  echo "this is a another type of file"
  ls -l $filename
else
  echo "something goes wrong please try again"
fi
'

: '
# 18. Write a shell script to display the digits which are in odd
  #position in a given 5 digit number
read -ep $'enter number with only 5 digits\n' number
counter=1
while (($counter <= 5)); do
  digit=`echo $number | cut -c $counter`
  echo $digit
  counter=`expr $counter + 2`
done
'

: '
# 19. Write a shell program to reverse the digits of five digit integer.
numbers=12345
sd=0
reverse=0
while [ $numbers -gt 0 ]
do
    digitnum=$(( $numbers % 10 ))
    echo "digitnum" $digitnum
    reverse=$(( $reverse * 10 + $digitnum ))
    echo "reverse" $reverse
    numbers=$(( $numbers / 10 ))
    echo "numbers" $numbers
done
echo "reverse version $reverse"
'


# 20. Write a shell script to find the largest among the 3 given
 #numbers.

: '
read -ep $'first number\n' num1
read -ep $'second number\n' num2
read -ep $'third number\n' num3

if [ $num1 -gt $num2 ] && [ $num1 -gt $num3 ]
then
    echo "the greatest number $num1"
elif [ $num2 -gt $num1 ] && [ $num2 -gt $num3 ]
then
    echo "the greatest number $num2"
else
    echo "the greatest number $num3"
fi
'

: '
# 22. Write a shell program to concatenate two strings and find the
  #length of the resultant string.

read -ep $'give me two strings\n' str1 str2
allstr="$str1$str2"

len=$(expr length $allstr)

echo "the length of the strings is: $len"

'

# 23. Write a shell program to find the position of substring in
 #given string
: ' #option 1
 read -ep $'Give the string: ' fullstring
 read -ep $'Give the substring: ' substring

prefix=${fullstring%%$substring*}
echo $prefix
index=${#prefix}
echo $index
if [[ index -eq ${#fullstring} ]];
then
    echo "Substring is not present in string."
else
    echo "Index of substring in string : $index"
fi
'
: ' #option 2
read a
read b
if [[ "$a" =~ "$b" ]]; then
    rest=${a#*$b}
    echo $(( ${#a} - ${#rest} - ${#b} +1 ))
else
    echo "-1"
fi
'

: '
# 25. Write a shell program to check whether a given string is
  #palindrome or not.
echo "Enter a String"
read input
reverse=""

len=${#input}
for (( i=$len-1; i>=0; i-- ))
do
	reverse="$reverse${input:$i:1}"
done
if [ $input == $reverse ]
then
    echo "$input is palindrome"
else
    echo "$input is not palindrome"
fi
'

: '
# 26. Write a shell program to convert all the contents into the
  #uppercase in a particular file.
read -p "What is your first name? " firstname
firstname=${firstname,,}
firstname=${firstname^^}
echo "Hello, ${firstname}."
'

: ' option 1 (string)
# 27. Write a shell program to count number of words, characters,
  #white spaces and special symbols in a given text

echo "Enter a String"
# Taking input from user
read text

# Counting words
word=$(echo -n "$text" | wc -w)
# Counting characters
char=$(echo -n "$text" | wc -c)

# Counting Number of white spaces (Here,specificly " ")
# sed "s/ change this to whitespace//g"
space=$(expr length "$text" - length `echo "$text" | sed "s/ //g"`)

# Counting special characters
special=$(expr length "${text//[^\~!@#$&*()]/}")

# Output
echo "Number of Words = $word"
echo "Number of Characters = $char"
echo "Number of White Spaces = $space"
echo "Number of Special symbols = $special"
'

: 'option 2 (file)
#!/bin/bash
echo Enter the filename
read file
c=`cat $file | wc -c`
w=`cat $file | wc -w`
l=`grep -c "." $file`
echo Number of characters in $file is $c
echo Number of words in $file is $w
echo Number of lines in $file is $l
'