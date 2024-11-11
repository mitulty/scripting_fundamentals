# @Author: Mitul Tyagi
# @Date:   2024-11-04 21:24:30
# @Description: Basics of Bash Scripting

<<multi_line_comment
- #! is called the shebang directive. It is the first line in any directive. It indicates that a file is executable by the interpreter mentioned.
multi_line_comment
: '
- This is also a multiline comment.
'
: '
- Metacharacters in Shell
    -> # - Precedes a comment
    -> ; - command seprator
    -> * - filename expansion wildcard
    -> ? - single character wildcard in filename expansion
    -> \ - escape unique character interpretation
    -> " " - interprets literally, but evaluates metacharacters
    -> ' ' - interprets literally
'

# Shebang Directive
#!/bin/bash

# echo Hello World
echo "Hello World!!"

# Defining Variables
FIRST_NAME=Mitul
LAST_NAME="Tyagi"

# Accessing Variables
echo "Welcome $FIRST_NAME $LAST_NAME"

echo "\$1 each"
echo "$1 each"
echo '$1 each'
