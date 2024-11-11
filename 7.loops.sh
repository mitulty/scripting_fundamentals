# @Author: Mitul Tyagi
# @Date:   2024-11-07 22:20:18
# @Description: Loops
: ' 
- There are three looping statements: while, for and until. To alter the flow of loop statements break and continue can be used.
- while loop:  the command is evaluated and based on the resulting loop will execute, if the command is raised to false then the loop will be terminated.
                                                                while <condition>
                                                                do
                                                                    <command 1>
                                                                    <command 2>
                                                                    <etc>
                                                                done
- for loop: The for loop operates on lists of items. It repeats a set of commands for every item in a list. 
                                                                for <var> in <value1 value2 ... valuen>(list)
                                                                do
                                                                    <command 1>
                                                                    <command 2>
                                                                    <etc>
                                                                done
- until loop: The until loop is executed as many times as the condition/command evaluates to false. The loop terminates when the condition/command becomes true. 
                                                                until <condition>
                                                                do
                                                                    <command 1>
                                                                    <command 2>
                                                                    <etc>
                                                                done
'
#!/bin/bash

a=0

# -lt is less than operator

#Iterate the loop until a less than 10

while [ $a -lt 10 ]; do
    # Print the values
    echo $a
    # increment the value
    a=$(expr $a + 1)
done

#Start of for loop

for a in 1 2 3 4 5 6 7 8 9 10; do

    # if a is equal to 5 break the loop
    if [ $a == 5 ]; then
        break
    fi

    # Print the value
    echo “Iteration no $a”
done

for a in 1 2 3 4 5 6 7 8 9 10; do

    # if a = 5 then continue the loop and
    # don’t move to line 8

    if [ $a == 5 ]; then
        continue
    fi
    echo “Iteration no $a”
done

a=0

# -gt is greater than operator
#Iterate the loop until a is greater than 10

until [ $a -gt 10 ]; do

    # Print the values
    echo $a

    # increment the value
    a=$(expr $a + 1)
done

COLORS="red green blue"

# the for loop continues until it reads all the values from the COLORS

for COLOR in $COLORS; do
    echo “COLOR: $COLOR”
done

while read input_text; do
    case $input_text in
    hello) echo English ;;
    howdy) echo American ;;
    gday) echo Australian ;;
    bonjour) echo French ;;
    "guten tag") echo German ;;
    *)
        echo Unknown Language: $input_text
        ;;
    esac
done <7.myfile.txt

# Use of lists
echo rc{0,1,2,3,4,5,6,S}.d
cd /
ls -ld {,usr,usr/local}/{bin,sbin,lib}
cd -

<<infinite_loop
while true; do

    # Command to be executed
    # sleep 1 indicates it sleeps for 1 sec
    echo “Hi, I am infinity loop”
    sleep 1
done
infinite_loop
