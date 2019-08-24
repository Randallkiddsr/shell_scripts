#!/bin/bash

# Write a shell script that accepts a file or directory name as an argument
# reports if it is regular fie, a directory, or another type of file. 

# Also perform an ls command against the file or directory with the long 
# listing option

NAME=$1 # positional parameter

if [ -d ${NAME} ]
then 
    echo " ${NAME} is a directory"
elif [ -f ${NAME} ]
then 
    echo "${NAME} exists and is a file"
else 
    echo "${NAME} is neither a valid file nor a valid directory"
fi

ls -l ${NAME}