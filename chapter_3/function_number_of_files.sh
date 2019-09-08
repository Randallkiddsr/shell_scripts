#!bin/bash

# Write a shell script that consists of a funcion that displays the number
# of files in the present working directory. Name this function "file_count"
# and call it in your script. If you use a variable in your script, make it a 
# local variable

function file_count()
{
    local NUMBER_OF_FILES=$(ls -1| wc -l)
    echo ${NUMBER_OF_FILES}
}
file_count 
if [ $? -eq "0" ]
then 
    echo "Command successful"
    exit 0
else 
    echo "Command unsuccessful"
    exit 1
fi