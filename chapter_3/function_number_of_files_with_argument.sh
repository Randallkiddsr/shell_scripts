#!bin/bash

# Modify the other script in this folder and make the "file_count" function 
# accept a directory as an argument. Next, have the function display the name 
# of the directory followed by colon. Finally, display the number of files
# to the screen on the next line. Call the function three times. First on the
# "/etc" directory, next on the "/var" directory and finally on the "usr/bin"
# directory. 

function file_count()
{
    for DIR in $@
    do 
    #local DIR=$1
        echo ${DIR}:
        local NUMBER_OF_FILES=$(ls ${DIR} -1 | wc -l)
        echo ${NUMBER_OF_FILES}
    done
}

file_count /etc /var /usr/bin
if [ $? -eq "0" ]
then 
    echo "Command successful"
    exit 0
else 
    echo "Command unsuccessful"
    exit 1
fi