#!/bin/bash

# Write a shell script that displays one random number on the screen and also
# generates a syslog message with that random number. Use the "user" facility
# and the "info" facility for your message. Note that the flag -p with
# logger command is used to specify the faciity nd severity

# To generate a random number in a UNIX or Linux shell, the shell maintains a 
# shell variable named RANDOM. Each time this variable is read, a random number 
# between 0 and 32767 is generated.

echo "${RANDOM}"
MESSAGE="Random number : ${RANDOM}"

logger -p user.info "${MESSAGE}"