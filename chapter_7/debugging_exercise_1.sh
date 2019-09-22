#!/bin/bash -x

# Write a shell script that exits on error and displays commands as they will
# execute, including all expansions and substitutions. Use 3 ls commands in 
# your script. Make the first one succeed, the second one fail and the
# third one succeed. If you are using the proper options, the third ls command
# will not be executed 

TEST_VAR="script started"
echo "${TEST_VAR}"
ls
set -e
ls ../chapter_51 # No such directory exists
set +e
ls ../chapter_5

# To modify the above script so that the script continues even when if an error
# occurs, comment lines 12 and 14. 