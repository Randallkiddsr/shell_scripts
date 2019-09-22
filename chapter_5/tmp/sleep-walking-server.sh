#!/bin/bash
# This is a start up script for an application called sleep-walking-server
# (Taken from Pg 55 of "Shell Scripting" by Jason Cannon). Make this into a 
# executable

# Instructions: Place this script in /tmp
# 
# Description: This script simulates a service or dameon (daemon is a process 
# that runs in the background and performs a specified operation at predefined 
# times or in response to certain events. This is a UNIX term.)

PID_FILE="sleep-walking-server.pid"
trap "rm ${PID_FILE}; exit" SIGHUP SIGINT SIGTERM
echo "$$" > ${PID_FILE}

while true
do 
    :
done
