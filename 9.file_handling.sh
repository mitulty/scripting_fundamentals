# @Author: Mitul Tyagi
# @Date:   2024-11-09 15:14:54
# @Description: File Handling
: ' 
- mktemp makes disposable temp files.
- mkfifo creates named pipes for inter-process communication.Multiple processes can communicate via named pipes.
'
#!/bin/bash
# Store contents of the file in a variable
file_contents=$(cat 7.myfile.txt)

echo "File contents: $file_contents"

# Read file line-by-line
while read line; do
    echo "$line"
done <"7.myfile.txt"

# Write output to file
echo "This is some text" >outfile.txt

# Append output to the end of file
echo "Appending this line" >>appendfile.txt

echo "This gets printed and logged" | tee logfile.txt

# Check if file exists
if [ -f "7.myfile.txt" ]; then
    echo "File found"
else
    echo "File not found"
fi

# Get file size
filesize=$(stat -c%s "7.myfile.txt")
echo "Size: $filesize bytes"

# Get file permissions
perms=$(stat -c%A "7.myfile.txt")
echo "Permissions: $perms"

# Read CSV file line-by-line
# while IFS="," read -r col1 col2 col3; do
#     echo "$col1 | $col2 | $col3"
# done <file.csv

# Extract JSON value
# name=$(cat file.json | jq -r '.name')
