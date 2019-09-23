# Introduction to Shell Scripting 
Solved exercises from ***Shell Scripting*** by ***Jason Cannon***.


### A quick introduction

Anything that can be executed at the command line can be put inside a shell script. In case of shell scripts, the shell acts as the *interpreter* and executes the commands listed in the script once after the other. Shell scripts provide a great way to automate tasks and that was my main motivation to start learning shell scripting. 

The book [Shell Scripting](https://www.amazon.com/Shell-Scripting-Automate-Command-Programming-ebook/dp/B015FZAXU6) by Jason Cannon is a wonderful introduction to the shell scripting (and command line) and this repository is a collection of exercises from Jason's book and my solutions to them as I worked through the book. The solution scripts should work on any UNIX-like OS (I haven't yet tested the solutions on a Windows OS). I will be grateful if you can find and report any errors. 

### Checklists

Jason's book contains a collection of best practices and checklists for 
writing shell scripts. I reproduce them here. 

1. Note that the first line of each script starts with a #! (also called as "shebang") followed by the path to the bash 
shell program, ***/bin/bash***. When a script's first line starts with a 
shebang, what follows is used as the inerpreter for the commands listed
in the script. For all exercises here we use the bash shell program as 
the interpreter.

 2. Before executing the script, make sure that it is executable by running the following command on command line: <br>`chmod 755 name_of_script.sh` where `name_of_script.sh` is the absolute or relative path to the shell script. 

 3. Comment at the beginning what the intention and purpose of the script is. Remember that the user of the script (probably a future you) will not remember why certain choices were made. Comment liberally throughout the script to guard against that. 

 4. Declare global variables at the top of the script following the initial comments. 
 
    Example

 ```shell
    TEST_VAR="test"
    DEBUG=true
 ```
5. Group all functions together following the global variables

6. Use local variables *inside* functions. 

7. Use flags (`-e -x`) to debug your scripts. 

8. Have proper exit statuses at various exit points

9. Exit your script with an explicit exit status. 

    Example
```
    exit 0
```



