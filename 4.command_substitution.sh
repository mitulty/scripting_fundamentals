# @Author: Mitul Tyagi
# @Date:   2024-11-05 21:53:01
# @Decription: Command Substitution
: '
- Command substitution allows the output of a command to replace the command itself. Command substitution occurs when a command is enclosed as follows:
  $(command) or `command`
- Bash performs the expansion by executing command in a subshell environment and replacing the command substitution with the standard output of the command,
  with any trailing newlines deleted. Embedded newlines are not deleted, but they may be removed during word splitting.  
- The command substitution $(cat file) can be replaced by the equivalent but faster $(< file).
- When the old-style backquote form of substitution is used, backslash retains its literal meaning except when followed by '$', "`", or "\". The first
  backquote not preceded by a backslash terminates the command substitution. 
- When using the $(command) form, all characters between the parentheses make up the command; none are treated specially.
- Command substitutions may be nested. To nest when using the backquoted form, escape the inner backquotes with backslashes.
- If the substitution appears within double quotes, word splitting and filename expansion are not performed on the results.
'
#!/bin/bash
here=$(pwd)
echo "Current Directory is $here"

content=$(ls)
echo "It's contents are: \n $content"
