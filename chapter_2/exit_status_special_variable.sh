#!/bin/bash

# Write a script that executes the command "cat /etc/shadow". If the command
# returns a 0 exit status, report "Command succeeded" and exit with a 0 exit
# status. If the command returns a non-zero exit status, report "Command failed"
# and exit with a 1 exit status

cat /etc/shadow 
RETURN_CODE="$?" # This special variable contains the return code for the 
                 # previously executed command
if [ ${RETURN_CODE} -ne 0 ]
then 
    echo "Command failed"
    exit 1
else 
    echo "Command succeeded"
    exit 0
fi