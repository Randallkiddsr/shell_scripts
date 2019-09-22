#!/bin/bash

# Modify the shell script in `logging_exercise.sh` so that it uses a logging
# function. Additionally, tag each syslog message with "randomly" and include
# the process ID. Generate 3 random numbers

function my_logger() {
    RANDOM_NUMBER=${RANDOM}
    MESSAGE="Random number : ${RANDOM_NUMBER}"
    echo "${MESSAGE}"
    logger -i -t randomly -p user.info "${MESSAGE}"
}

my_logger 
my_logger
my_logger