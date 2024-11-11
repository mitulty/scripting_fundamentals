# @Author: Mitul Tyagi
# @Date:   2024-11-09 15:48:53
# @Description: Functions
: " 
- Shell functions are a way to group commands for later execution using a single name for the group. They are executed just like a "regular" command. When
  the name of a shell function is used as a simple command name, the list of commands associated with that function name is executed. Shell functions are 
  executed in the current shell context; no new process is created to interpret them.
- Functions are declared using this syntax:
    fname () compound-command [ redirections ] or
    function fname [()] compound-command [ redirections ]
- This defines a shell function named fname. The reserved word function is optional. If the function reserved word is supplied, the parentheses are optional. 
  The body of the function is the compound command. That command is usually a list enclosed between { and }.
- If the function reserved word is used, but the parentheses are not supplied, the braces are recommended. compound-command is executed whenever fname is 
  specified as the name of a simple command.
- Functions may be recursive. The FUNCNEST variable may be used to limit the depth of the function call stack and restrict the number of function invocations.
  By default, no limit is placed on the number of recursive calls.
"
#!/bin/bash
func1() {
    local var='func1 local'
    echo "In func1, var = $var"
    func2
}

func2() {
    echo "In func2, var = $var"
}

var=global
echo "var before calling functions = $var"
func1
