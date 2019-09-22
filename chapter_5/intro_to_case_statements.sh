#!bin/bash
# To create a case statment, start with the word `case`, follow it with an
# expression and the end the line with the word `in`. Next, list a pattern or 
# value you want to test against the variable. End the pattern with paranthesis. 
# Id the pattern is matched, the commands following it will be executed. You 
# can test for multiple values using the same pattern. Finally, the case
# statement is ended with `esac` - case spelled backwards

# Here is an example case statement

case $VAR in 
    pattern_1)
    # Commmands go here
    ;;
    pattern_N)
    # Commands go here
    ;;
esac

# Here is an actual case statement

COMMAND=$1 # Remember variable names must be all upper-case! 
case ${COMMAND} in 
    start) # patterns are case sensitive
    /usr/sbin/sshd
    ;;
    stop)
    kill $(cat /var/run/sshd.pid)
    ;;
    *)
    echo "Usage ${command}"
    exit 1
esac

# In the above script, $1 is the first argument supplied to shell script. 
# if $1 is start then  /usr/sbin/sshd. if $1 is stop then the kill command
# is executed. Any pattern other than `start` or `stop` (will be case sensitive)
# will cause the echo and exit command to be executed. 

# Example 3 with case and wildcards

read -p "Enter y or n: " ANSWER
case ${ANSWER} in
    [yY]|[yY][eE][sS])
    echo "You answered yes"
    exit 0
    ;;
    [nN]|[nN][oO])
    echo "You answered no"
    exit 0
    ;;
    *)
    echo "You answered ${ANSWER}. This is an invalid answer."
    exit 1
    ;;
esac