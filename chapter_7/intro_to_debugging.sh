#!/bin/bash -ex

# The flag -x is used for debugging. Setting this flag after the she-bang
# prints the commands and their arguments as they are executed. Since this
# is placed at the very top, the printing happens for every executed command in
# the script. 

# We can also encapsulate a block of code with this printing code as such:

#!/bin/bash
TEST_VAR="test"
set -x # Starts displaying
echo "${TEST_VAR}"
set +x # Stop displaying

# The flag -e is useful for finding errors in your scripts. It causes your 
# script to exit immediately if a command exits with a non-zero status. 

# This can also be encapsulated inside a code block using set -e and set +x

# For most purposes using these 2 flags are enough for debugging. We will 
# stick to them 
