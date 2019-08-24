#!/bin/bash

# Write a shell script that accepts unlimited file or directory name as an argument
# reports if it is regular fie, a directory, or another type of file. 

NAMES=$@ # positional parameter

for NAME in ${NAMES}
do 
    if [ -d ${NAME} ]
    then 
        echo " ${NAME} is a directory"
    elif [ -f ${NAME} ]
    then 
        echo "${NAME} exists and is  file"
    else 
        echo "${NAME} is neither a valid file nor a valid directory"
    fi
done