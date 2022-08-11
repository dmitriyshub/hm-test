#! /bin/bash

: '
*****************Hello and welcome to room 2 project of 10.8!!**************************
We have created a calculator:
1) The user veiws the menu
2) The user chooses the action & inputs the required numbers
3) The calculator program returns the answer and a few more interesting details about the resulting value!

***********************Enjoy************************************************************
'
#########FUNCTION#########FUNCTIONS#########FUNCTIONS#########
##############################################################


function check_int() {    #Checks the input - only integer numbers are valid, both positive and negative

check='^-?[0-9]+$'

if ! [[ $1 =~ $check ]] || [[ $# -ne 1 ]]
then
        echo The input is not valid- not int
	exit                           #Exits the calculator if input not valid, should return to the mune ideally.
	return 1
else
	return 0              #If the input is valid, the function is true
fi

}


function input () {  #Returns the global vars

local num                                      #Should ideally accept an argument number from the function, then run a while

read -p "Please enter an integer:" num

if check_int $num
then
	eval $1="'$num'"
fi

}


function addition() { #This function adds the argments the user gave as input and stores the result in sum variable.
    input gnum1
    input gnum2

    local result=$(($gnum1 + $gnum2))
    echo $result
}


function substruct() {  #This function subtracts the argments the user gave as input and stores the result in sum variable.
    input gnum1
    input gnum2

    local result=$(($gnum1 - $gnum2))
    echo $result
}

function multiplication() { #This multiplies the argments the user gave as input and stores the result in sum variable.
    input gnum1
    input gnum2

    local result=$(($gnum1 * $gnum2 ))
    echo $result
}

function divide() {
    input gnum1
    input gnum2
    if [[ $gnum2 -ne 0 ]]
    then
        local result=$(($gnum1 / $gnum2))
        echo $result                      #Echo is not executed because the output is stored in a var,the error message is from echo_props func.
    else
        echo "The input is not valid - division by 0 not allowed"
        exit                                                  #Exits to prevent division by zero, ideally should return to the calculator menu
    fi

}

function power_of() {
    input gnum1
    input gnum2

    local result=$(($gnum1 ** $gnum2))
    echo $result
}

function modulo() {                       #Should not accept 0 as the second argument, an error should be returned
    input gnum1                                  # (now exits the calculator)
    input gnum2

    local result=$(($gnum1 % $gnum2))
    echo $result
}


function is_prime() {            #This function takes the result from the calculation and returns whether it is a prime number or not
    local res=$1
    local i=2
    local flag=0
    while test $i -le `expr $res / 2`
    do
        if test `expr $res % $i` -eq 0
    then
    flag=1
    fi
    i=`expr $i + 1`
    done
    if test $flag -eq 1
    then
        echo "The number is Not Prime"
    else
        echo "The number is Prime"
    fi
}

function is_div_by_5() { #Checks whether the calculated result is divisible by 5 without a remainder

        if [[ $1%5 -ne 0 ]]
                then echo "The number can't be divided by 5"
        else
                echo  The number can be divided by 5
        fi

}

function is_odd_even() {

if [[ $1%2 -ne 0 ]]
then
	echo The number is odd
else
	echo The number is even
fi

}

function echo_props() {    #Echoes the calculation's result, as well as some of its properties
local res=$1
#echo we may have a problem $res
if check_int $res                           #Validates that the variable exists, and it's an integer (to avoid execution of this block code
then                                                               #when input numbers are not valid, division by 0)
	echo The result is $res
	is_prime $res
	is_div_by_5 $res
	is_odd_even $res
fi
}



function menu() {                        #The main function, displays a menu and calls different functions acc. to the choice

select choice in  Addition Subtraction Multiplication Division Power-of Modulo Exit
do
        case $choice in
        Addition)
        result=$(addition)
	echo_props $result
        ;;
        Subtraction)
        result=$(substruct)
        echo_props $result
        ;;
        Multiplication)
        result=$(multiplication)
	echo_props $result
        ;;
        Division)
        result=$(divide)
#	echo $result
	echo_props $result
	;;
        Power-of)
        result=$(power_of)
        echo_props $result
        ;;
        Modulo)
        result=$(modulo)
        echo_props $result
	;;

        Exit)
        echo Thank you for using our calculator!
        exit 0
        ;;

	*)
        echo error- The input is not valid
        ;;
        esac
done


}

#########MAIN#########MAIN#########MAIN#########


menu


