#!/bin/bash -ex

# This script sequentially executes the usual steps of add, commit, push
# in a git workflow. The script will stop if an error occurs. To make this 
# into a command place this script in your `/usr/bin` folder. 

# Remember to make it an executable by  running the following command on command line:
#  `chmod 755 name_of_script.sh` where `name_of_script.sh` is the absolute or 
# relative path to the shell script.

function deploy(){

git add -A # add all files
git status # check status

# enter a commit message
read -p "Enter commit message: " MSG
git commit -m "${MSG}" # includes the -m flag

git push # finally push the commit to the remote repo
}

deploy
exit 0