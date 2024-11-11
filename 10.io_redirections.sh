# @Author: Mitul Tyagi
# @Date:   2024-11-09 15:24:01
# @Description: I/O Redirections
: "
- Before a command is executed, its input and output may be redirected using a special notation interpreted by the shell. Redirection allows commands'
  file handles to be duplicated, opened, closed, made to refer to different files, and can change the files the command reads from and writes to. 
- Redirection may also be used to modify file handles in the current shell execution environment. 
- Bash handles several filenames specially when they are used in redirections
    ->/dev/fd/fd: If fd is a valid integer, file descriptor fd is duplicated.
    ->/dev/stdin: File descriptor 0 is duplicated.
    ->/dev/stdout: File descriptor 1 is duplicated.
    ->/dev/stderr: File descriptor 2 is duplicated.
    ->/dev/tcp/host/port: If host is a valid hostname or Internet address, and port is an integer port number or service name, Bash attempts to open the 
                          corresponding TCP socket.
    ->/dev/udp/host/port: If host is a valid hostname or Internet address, and port is an integer port number or service name, Bash attempts to open the 
                          corresponding UDP socket.
    ->/dev/null: It is used as a garbage can for the command line. Unwanted output can be redirected to this location to simply make it disappear.
- A failure to open or create a file causes the redirection to fail. A failure to open or create a file causes the redirection to fail.
- Redirection of input causes the file whose name results from the expansion of word to be opened for reading on file descriptor n, or the standard input
 (file descriptor 0) if n is not specified.The general format for redirecting input is: [n]<word
- Redirection of output causes the file whose name results from the expansion of word to be opened for writing on file descriptor n, or the standard output 
 (file descriptor 1) if n is not specified. If the file does not exist it is created; if it does exist it is truncated to zero size. The general format for 
 redirecting output is: [n]>[|]word
- Redirection of output in this fashion causes the file whose name results from the expansion of word to be opened for appending on file descriptor n, or 
  the standard output (file descriptor 1) if n is not specified. If the file does not exist it is created. The general format for appending output is:
  [n]>>word
- The following construct allows both the standard output (file descriptor 1) and the standard error output (file descriptor 2) to be redirected to the file
  whose name is the expansion of word. These are: &>word and >&word. Of the two forms, the first is preferred. This is semantically equivalent to
  >word 2>&1
- The followin construct allows both the standard output (file descriptor 1) and the standard error output (file descriptor 2) to be appended to the file 
  whose name is the expansion of word. The format for appending standard output and standard error is: &>>word. This is semantically equivalent to: >>word 2>&1
- A here-document is used to redirect input into an interactive shell script or program. This type of redirection instructs the shell to read input from the 
  current source until a line containing only word (with no trailing blanks) is seen. All of the lines read up to that point are then used as the standard 
  input (or file descriptor n if n is specified) for a command. The format of here-documents is:
                                                                    [n]<<[-]word
                                                                            here-document
                                                                    delimiter
  No parameter and variable expansion, command substitution, arithmetic expansion, or filename expansion is performed on word. If any part of word is quoted,
  the delimiter is the result of quote removal on word, and the lines in the here-document are not expanded. If word is unquoted, all lines of the here-document
  are subjected to parameter expansion, command substitution, and arithmetic expansion, the character sequence \newline is ignored, and '\' must be used to 
  quote the characters '\', '$', and '\`'. If the redirection operator is '<<-', then all leading tab characters are stripped from input lines and the line 
  containing delimiter. This allows here-documents within shell scripts to be indented in a natural fashion.
- Here strings: A variant of here documents, the format is: [n]<<< word. The word undergoes tilde expansion, parameter and variable expansion, command 
  substitution, arithmetic expansion, and quote removal. Filename expansion and word splitting are not performed. The result is supplied as a single string, 
  with a newline appended, to the command on its standard input (or file descriptor n if n is specified).
- Duplicating File Descriptors: The redirection operator [n]<&word is used to duplicate input file descriptors. If word expands to one or more digits, the 
  file descriptor denoted by n is made to be a copy of that file descriptor. If the digits in word do not specify a file descriptor open for input, 
  a redirection error occurs. If word evaluates to '-', file descriptor n is closed. If n is not specified, the standard input (file descriptor 0) is used.
  The operator [n]>&word is used similarly to duplicate output file descriptors. If n is not specified, the standard output (file descriptor 1) is used.
  If the digits in word do not specify a file descriptor open for output, a redirection error occurs. If word evaluates to '-', file descriptor n is closed.
  As a special case, if n is omitted, and word does not expand to one or more digits or '-', the standard output and standard error are redirected as 
  described previously.
- Moving File Descriptors: The redirection operator [n]<&digit- moves the file descriptor digit to file descriptor n, or the standard input (file descriptor 0)
  if n is not specified. digit is closed after being duplicated to n. Similarly, the redirection operator [n]>&digit- moves the file descriptor digit to file 
  descriptor n, or the standard output (file descriptor 1) if n is not specified.
- The redirection operator [n]<>word causes the file whose name is the expansion of word to be opened for both reading and writing on file descriptor n,
  or on file descriptor 0 if n is not specified. If the file does not exist, it is created.
"
#!/bin/bash
ls >dirlist 2>&1
ls 2>&1 >dirlist
