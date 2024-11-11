# @Author: Mitul Tyagi
# @Date:   2024-11-04 21:46:38
# @Description: Variables

: '
- A shell variable is a character string in a shell that stores some value. It could be an integer, filename, string, or some shell command itself. 
  Basically, it is a pointer to the actual data stored in memory.
- Bash variables become part of the shell environment until they are unset.
- The unset command directs a shell to delete a variable and its stored data from list of variables.
- The readonly command can make the variable read only. It can not be modified or unset.
- Variable data could be accessed by appending the variable name with '$'.
- A variable name could contain any alphabet (a-z, A-Z), any digits (0-9), and an underscore ( _ ). However, a variable name must start with an alphabet
  or underscore. It can never start with a number. 
- The "set" command can be used to list all the variables.
- There must be no spaces around the "=" sign: VAR=value works; VAR = value does not work.
- The 'export' command is one of the essential built-in commands in the Bash shell, allowing users to manage environment variables effectively. 
  It is defined in POSIX standards, which state that the shell will assign the export attribute to specified variables, causing them to be included in the 
  environment of subsequently executed commands. Simply put, the export command makes environment variables available to child processes, enabling changes to 
  be reflected immediately in the current shell session without needing to start a new session.
- In Bash, environment variables are set when user starts a new shell session, and changes to these variables are not automatically picked up by the shell. 
  The export command allows user to update and propagate the values of environment variables to the current session and any spawned child processes, ensuring
  that changes are immediately effective.
- Local Variable: Variables which are specific to the current instance of shell. They are basically used within the shell, but not available for the program or
  other shells that are started from within the current shell. 
- Environment Variable: These variables are commonly used to configure the behavior script and programs that are run by shell. Environment variables are only 
  created once, after which they can be used by any user.
- Shell Variables: Variables that are set by shell itself and help shell to work with functions correctly. It contains both, which means it has both, some 
  variables are Environment variable, and some are Local Variables. Ex: $PWD, $HOME, $SHELL , etc.
- Environment variables have extended scope. They persist in any child processes spawned by the shell in which they originate. To list all the environment 
  variables "env" command is used.
- Escape Sequences	Significance
  \n	              new line
  \r	              carriage return
  \t	              horizontal tab
  \b	              backspace
  \\	              backslash

'
#!/bin/bash
var=23
echo "$var"
var=21
echo "Enter the first number"
read FIRST_NUM
echo "Enter the second number"
read SECOND_NUM
SUM=$((FIRST_NUM + SECOND_NUM))
echo "Sum of $FIRST_NUM + $SECOND_NUM = $SUM"
# readonly var
unset var
echo $var

echo "Enter two numbers"
read first second

echo "Entered numbers are $first and $second and their product is " $((first * second))
