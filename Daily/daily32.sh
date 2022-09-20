#write a program that finds the higher number from given three inputs,
#Pay attention the user has two opportunities to enter valid inputs
#then exit ( implement in a func )

function_name () {
  att=0
  re='^[0-9]+$'
  num1=""
  num2=""
  num3=""

  while [[ ! $num1 =~ $re ]] || [[ ! $num2 =~ $re ]] || [[ ! $num3 =~ $re ]]; do
      read -p "Give me three numbers: " num1 num2 num3

      if [[ $att -ge 2 ]]; then
          echo "Bye"
          exit
      fi
      att=$att+1
  done
  for n in $num1 $num2 $num3 ; do
    ((n > max)) && max=$n
  done
  echo $max

}

function_name