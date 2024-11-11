# @Author: Mitul Tyagi
# @Date:   2024-11-07 21:56:08
# @Description: Operators
: '
- There are 5 basic operators: Arithmetic, Relational, Boolean, Bitwise and File Test.
- Arithmetic Operators:These operators are used to perform normal arithmetic/mathematical operations. These are: +, -, /, *, %, ++ and --. Bash also provides
  some advanced arithmetic functions that can be used in arithmetic expressions. These functions include square roots (sqrt), exponents (**), and 
  absolute values (abs).
- Relational Operators: Relational operators are those operators which define the relation between two operands. They give either true or false depending
  upon the relation. These are: ==, !=, <, <=, >, >=.
    -eq	Equal to	                    [ $a -eq $b ]
    -ne	Not equal to	                [ $a -ne $b ]
    -gt	Greater than	                [ $a -gt $b ]
    -ge	Greater than or equal to	    [ $a -ge $b ]
    -lt	Less than	                    [ $a -lt $b ]
    -le	Less than or equal to	        [ $a -le $b ]
    <	Less than (strings)	            [ "$a" < "$b" ]
    <=	Less than or equal (strings)	[ "$a" <= "$b" ]
    >	Greater than (strings)	        [ "$a" > "$b" ]
    >=	Greater than or equal (strings)	[ "$a" >= "$b" ]
    ==	Equal to	                    [ $a == $b ]
    !=	Not equal to	                [ $a != $b ]
- Note: -eq, -ne, -gt, -ge, -lt, and -le work on integers, while <, <=, >, and >= work on string sorting order. These are commonly used in if statements and 
  loops to control program flow. The equal (==) and not equal (!=) operators are useful for comparing integers.
- Logical Opeators:  They perform logical operations. These are: Logical AND (&&), Logical OR (||) and Not Equal to (!).
- Bitwise Operators: A bitwise operator is an operator used to perform bitwise operations on bit patterns. These are: Bitwise AND (&), Bitwise OR (|), Bitwise
  XOR (^), Bitwise complement (~), Left Shift (<<) and Right Shift (>>).
- File Test Operators: These operators are used to test a particular property of a file. These are:
    -b operator: This operator check whether a file is a block special file or not. It returns true if the file is a block special file otherwise false.
    -c operator: This operator checks whether a file is a character special file or not. It returns true if it is a character special file otherwise false.
    -d operator: This operator checks if the given directory exists or not. If it exists then operators returns true otherwise false.
    -e operator: This operator checks whether the given file exists or not. If it exits this operator returns true otherwise false.
    -r operator: This operator checks whether the given file has read access or not. If it has read access then it returns true otherwise false.
    -w operator: This operator check whether the given file has write access or not. If it has write then it returns true otherwise false.
    -x operator: This operator check whether the given file has execute access or not. If it has execute access then it returns true otherwise false.
    -s operator: This operator checks the size of the given file. If the size of given file is greater than 0 then it returns true otherwise it is false.
- The ternary operator allows simple conditional expressions. ? :	Evaluates test condition and returns the "if true" or "if false" result.
- The ternary operator is structured as condition ? resultIfTrue : resultIfFalse. It tests the given condition and returns the specified result depending on 
  whether the condition evaluated to true or false.
- The operator =~ , which performs a regular expression match of the string to its left to the extended regular expression on its right. The string should
  be quoted, and the regular expression should not be quoted unless it is to be matched to literal strings.
              [[ "string" =~ pattern ]]
'
#!/bin/bash
# reading data from the user
read -r -p "Enter a: " a

read -r -p "Enter b: " b

add=$((a + b))
echo "Addition of a and b are: "${add}

sub=$((a - b))
echo "Subtraction of a and b are: "${sub}

mul=$((a * b))
echo "Multiplication of a and b are: "${mul}

div=$((a / b))
echo "Division of a and b are: "${div}

mod=$((a % b))
echo "Modulis of a and b are: "${mod}

((++a))
echo "Increment operator when applied on 'a' results into a :" "${a}"

((--b))
echo "Decrement operator when applied on 'b' results into b :" "${b}"

if (($a == $b)); then
    echo a is equal to b.
else
    echo a is not equal to b.
fi

if (($a != $b)); then
    echo a is not equal to b.
else
    echo a is equal to b.
fi

if (($a < $b)); then
    echo a is less than b.
else
    echo a is not less than b.
fi

if (($a <= $b)); then
    echo a is less than or equal to b.
else
    echo a is not less than or equal to b.
fi

if (($a > $b)); then
    echo a is greater than b.
else
    echo a is not greater than b.
fi

if (($a >= $b)); then
    echo a is greater than or equal to b.
else
    echo a is not greater than or equal to b.
fi

if (($a == "true" && $b == "true")); then
    echo Both are true.
else
    echo Both are not true.
fi

if (($a == "true" || $b == "true")); then
    echo Atleast one of them is true.
else
    echo None of them is true.
fi

if ((!$a == "true")); then
    echo "a" was initially false.
else
    echo "a" was initially true.
fi

bitwiseAND=$((a & b))
echo Bitwise AND of a and b is $bitwiseAND

bitwiseOR=$((a | b))
echo Bitwise OR of a and b is $bitwiseOR

bitwiseXOR=$((a ^ b))
echo Bitwise XOR of a and b is $bitwiseXOR

bitiwiseComplement=$((~a))
echo Bitwise Compliment of a is $bitiwiseComplement

leftshift=$((a << 1))
echo Left Shift of a is $leftshift

rightshift=$((b >> 1))
echo Right Shift of b is $rightshift

#reading data from the user
read -p 'Enter file name : ' FileName

if [ -e $FileName ]; then
    echo File Exist
else
    echo File doesnot exist
fi

if [ -s $FileName ]; then
    echo The given file is not empty.
else
    echo The given file is empty.
fi

if [ -r $FileName ]; then
    echo The given file has read access.
else
    echo The given file does not has read access.
fi

if [ -w $FileName ]; then
    echo The given file has write access.
else
    echo The given file does not has write access.
fi

if [ -x $FileName ]; then
    echo The given file has execute access.
else
    echo The given file does not has execute access.
fi

INT=345
if [[ "$INT" =~ ^-?[0-9]+$ ]]; then
    echo "INT is an integer."
else
    echo "INT is not an integer."
fi
