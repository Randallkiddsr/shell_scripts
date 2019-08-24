#!/bin/bash

# Write a shell script that accepts a file or directory name as an argument.
# Have the script report if it is a regular file, a directory or another 
# type of file. If it is a regular file, exit with a 0 exit status. If it is a 
# directory, exit with a 1 exit status. If it is some other type of file, exit
# with a 2 exit status. 

NAME=$1
if [ -f ${NAME} ]
then 
    echo " ${NAME} is a file"
    exit 0
elif [ -d ${NAME} ]
then 
    echo "${NAME} exists and is a directory"
    exit 1
else 
    echo "${NAME} is neither a valid file nor a valid directory"
    exit 2
fi