#!/bin/bash 

echo $0 # echo the file name

Username=$1
Password=$2

echo Username=$1



#When execute the file we can to add values to this variables
#./script_name $1value $2value



$0 - The name of the script
$1 - The first argument sent to the script
$2 - The second argument sent to the script
$3 - The third argument... and so forth
$# - The number of arguments provided
$@ - A list of all arguments provided


if [ $# -eq 0 ];
then
  echo "$0: Missing arguments"
  exit 1
elif [ $# -gt 2 ];
then
  echo "$0: Too many arguments: $@"
  exit 1
else
  echo "We got some argument(s)"
  echo "==========================="
  echo "Number of arguments.: $#"
  echo "List of arguments...: $@"
  echo "Arg #1..............: $1"
  echo "Arg #2..............: $2"
  echo "==========================="
fi

echo "And then we do something with $1 $2"
