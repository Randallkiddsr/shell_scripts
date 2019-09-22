#!/bin/bash -ex

# This script sequentially executes the usual steps of add, commit, push
# in a git workflow. The script will stop if an error occurs

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