#!bin/bash

# Write a shell script that renames all the files in the current working
# directory that end with .jpg to begin with today's date in the following 
# format: YYYY-MM-DD. 

shopt -s nullglob # handle instances when there are no .jpg files in the pwd
for FILE in *.jpg
do 
    RENAMED_FILE=$(date +%F)-${FILE}
    mv ${FILE} ${RENAMED_FILE}
done

