#!/bin/bash
VERBOSE=true # global variable 

# An example of how to create a custom logging message
function logit () {
    local LOG_LEVEL=$1
    shift # shfits positonal parameters to the left
    MESSAGE=$@
    TIMESTAMP=$(date +"%Y-%m-%d %T")
    if [ ${LOG_LEVEL} = "ERROR" ] || ${VERBOSE}
    then
        echo "${TIMESTAMP} ${PROGRAM_NAME} [${PID}]: ${LOG_LEVEL} ${MESSAGE}"
    fi
}
logit ERROR ls