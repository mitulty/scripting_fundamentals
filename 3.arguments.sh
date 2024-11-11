# @Author: Mitul Tyagi
# @Date:   2024-11-04 21:51:03
# @Description: Command Line Arguments
: '
- Arguments are a specific positions. Commands can take in arguments at a specific position counting from one (0 reserved for the shell). These are separated
  by a space.
- Command-line arguments are passed in the positional way i.e. in the same way how they are given in the program execution.
- $1 … $n : Positional argument indicating from 1 .. n. If the argument is like 10, 11 onwards, it has to be indicated as ${10}, ${11} and so on.
- $0 : This is not taken into the argument list as this indicates the “name” of the shell program.
- $@ : Values of the arguments that are passed in the program. This is used if the number of arguments are unknown.
- $# : Total number of arguments.
- $* : Get all the arguments as double-quoted.
- $$ : To know about the process id of the current shell.
- $? and $! : Exit status id and Process id of the last command
- Arguments can be passed along with the flags. The arguments can be identified with a single letter having - before that. A single letter can be meaningful.
'
#!/bin/bash
echo "You gave $1 $2"
echo "Total Number of arguments: $#"
echo "Arguments passed: $*"
