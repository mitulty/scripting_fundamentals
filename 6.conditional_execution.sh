# @Author: Mitul Tyagi
# @Date:   2024-11-06 22:12:08
# @Description: If and If/Else
: '
- There are total 5 conditional statements which can be used in bash programming.
    -> if statemen
    -> if-else statement
    -> if..elif..else..fi statement (Else If ladder)
    -> if..then..else..if..then..fi..fi..(Nested if)
    -> switch statement
-   if [ expression ];
    then
        statement
    fi
-   if [ expression ];
    then
        statement1
    else
       statement2
    fi
-   if [ expression1 ];
    then
        statement1
        statement2
        .
        .
    elif [ expression2 ];
    then
        statement3
        statement4
        .
        .
    else
        statement5
    fi

-   if [ expression1 ];
    then
        statement1
        statement2
        .
    else
        if [ expression2 ];
        then
            statement3
            .
        fi
    fi
-   case  in
        Pattern 1) Statement 1;;
        Pattern n) Statement n;;
    esac
- Following symbols can be used for logical operations:
    -> -eq/=  : equality check
    -> -ne/!= : inequality check
    -> -lt    : less than
    -> -le    : less than or equal
    -> -gt    : greater than
    -> -ge    : greater than or equal
'
#!/bin/bash

#Initializing two variables
a=10
b=20

#Check whether they are equal
if [ $a -eq $b ]; then
    echo "a is equal to b"
fi

#Check whether they are not equal
if [ $a -ne $b ]; then
    echo "a is not equal to b"
fi

#Initializing two variables
a=20
b=20

if [ $a = $b ]; then
    #If they are equal then print this
    echo "a is equal to b"
else
    #else print this
    echo "a is not equal to b"
fi

a=32
b=34

if [ $a -gt $b ]; then
    #If a is greater print this
    echo "a is greater to b"
elif [ $a -lt $b ]; then
    #If b is greater print this
    echo "b is greater to a"
elif [ $a = $b ]; then
    #If a equal to b
    echo "a and b are equal"
else
    #Else print this
    echo "a is not equal to b"
fi

NAME=mitul

if [[ "$NAME" == "mitul" ]]; then
    echo "same name"
else
    echo "not same name"
fi

str="hello"

if [[ "$str" == "hello" ]]; then
    echo "Strings match"
fi

CARS="bmw"

#Pass the variable in string
case "$CARS" in
#case 1
"mercedes") echo "Headquarters - Affalterbach, Germany" ;;

#case 2
"audi") echo "Headquarters - Ingolstadt, Germany" ;;

#case 3
"bmw") echo "Headquarters - Chennai, Tamil Nadu, India" ;;
esac
