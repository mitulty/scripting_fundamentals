# @Author: Mitul Tyagi
# @Date:   2024-11-07 21:50:26
# @Description: Count and print the number of lines in a file
#!/bin/bash

declare input=$1
declare -i counter=1
declare -i lines=$(wc -l <$input)
declare -i pad=${#lines} # Hash operator returns the length of the variable.

while IFS= read line; do
    printf "%+${pad}s" $counter
    echo "| $line"
    ((counter++))
done <"$input"
