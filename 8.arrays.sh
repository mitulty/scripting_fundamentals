# @Author: Mitul Tyagi
# @Date:   2024-11-07 22:36:10
# @Description: Arrays
: '
- Arrays allow to store and retrieve elements in a list form which can be used for certain tasks.
- They can be declared using the declare statement or as a list of elements.
- They arrays can be printed using loops or using @ symbol. There are a couple different ways to loop through the array. User can either loop through the 
  elements themselves, or loop through the indices.
- The @ symbol in the square brackets indicates that it is looping through all of the elements in the array. If users were to leave that out and just write 
  for str in ${myArray}, only the first string in the array would be printed.
- Arrays can be looped using indices too using ! . The exclamation mark at the beginning of the variable indicates that the script is accessing the indices
  of the array and not the elements themselves.
- Bash does not typically require curly braces for variables, but it does for arrays.
- To fetch the number of the elements array, use the # operator before the array name in the as in  "${#array_name[@]}".
- Individual element can be modified or accessed using the index. Indices like -1, -2 will refer from the last elements.
- Elements can be added to the array using +=.
- To delete an element from the array the unset command can be used.
- Arrays can be sliced using the : operator.
- Arrays in Bash can contain both numbers and strings
- Syntax	Result
    arr=()	      Create an empty array
    arr=(1 2 3)	  Initialize array
    ${arr[2]}	    Retrieve third element
    ${arr[@]}	    Retrieve all elements
    ${!arr[@]}	  Retrieve array indices
    ${#arr[@]}	  Calculate array size
    arr[0]=3	    Overwrite 1st element
    arr+=(4)	    Append value(s)
    str=$(ls)	    Save ls output as a string
    arr=( $(ls) )	Save ls output as an array of files
    ${arr[@]:s:n}	Retrieve n elements starting at index s
'
#!/bin/bash

myArray=("cat" "dog" "mouse" "frog")
declare -a sport=(
  [0]=football
  [1]=cricket
  [2]=hockey
  [3]=basketball
)

sport_new[0]=football
sport_new[1]=cricket
sport_new[2]=hockey
sport_new[3]=basketball

echo "${sport[@]}"
echo "${sport_new[@]}"
echo "Number of elements: ${#sport[@]}"

for str in ${myArray[@]}; do
  echo $str
done

for i in ${!myArray[@]}; do
  echo "element $i is ${myArray[$i]}"
done

echo "${sport[@]}"
sport+=("golf" "baseball")
echo "${sport[@]}"
echo "Size : ${#sport[@]}"
unset sport[1]
echo "${sport[@]}"
echo "${#sport[@]}"
unset sport[-3]
echo "${sport[@]}"

echo "sport = ${sport[@]}"
arr="${sport[@]:1:3}"
echo "arr which is sport[1:3] = ${arr[@]}"

myArray=(1 2 "three" 4 "five")
myArray+=("newElement1" "newElement2")
allThreads=(1 2 4 8 16 32 64 128)
allRuntimes=()
for t in ${allThreads[@]}; do
  runtime=$(./pipeline --threads $t)
  allRuntimes+=($runtime)
done
