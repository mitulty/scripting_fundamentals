# @Author: Mitul Tyagi
# @Date:   2024-11-07 21:22:57
# @Description: Expressions
: '
- All variables are strings. bash does not have a type system. An integer variable can be declared using declare and let.
- declare with -i makes the variable assignment as an integer. The variable then can not be reassigned to string. Any assignment will result the value to be 0.
- The let command allows to declare a variable and perform an arithmetic operation during the assignment. The difference here is that the variable can 
  later be reassigned to something other than an integer.
- Parameter expansion allows to substitute an expression with its value.It can be used to get values from variables, invoke commands, and perform arithmetic
  operations.
- expr command can be used for arithmetic operations. Whitespaces are crucial between operators and operands.
- For more advanced calculations, especially floating-point arithmetic, bc command can be used.
- To evaluate string expressions double brackets are used.
'
#!/bin/bash

declare -i A=2+2
A=6
echo "A = $A"
A=hell
echo "A = $A"

let B=2+2
echo "B = $B"
B=test
echo "B = $B"
let "B=2*2"
echo "B = $B"
let B++
echo "B = $B"

Var=2
echo "Var = $Var"
echo "Appended Var = ${Var}string"

M=2
N=2
echo '$((M + N + 1)) = ' $((M + N + 1))
echo '$((2 + 3)) = '$((2 + 3)) # Output: 5
x=10
y=$((x * 2))
echo "y = $y" # Output: 20

expr 2 + 3  # Output: 5
expr 10 / 2 # Output: 5
expr $M + 5 # Output: 7

echo $(expr $M \* 50)         # Output: 100
echo "scale=2; 3.14 * 2" | bc # Output: 6.28

str="hello"
if [[ "$str" == "hello" ]]; then
  echo "Strings match"
fi
