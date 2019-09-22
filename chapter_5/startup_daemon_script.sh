#!/bin/bash

# Create a startup script for an application called sleep-walking-server,
# which is provided in /tmp directory. The script should be named sleep-walking
# and accept "start" and "stop" as arguments. If anything other than "start" or
# "stop" is provided as an argument, display a usage statement: "Usage sleep-walking start|stop"
# and terminate the script with an exit status of 1

COMMAND=$1
case ${COMMAND} in 
    start|START)
    tmp/sleep-walking-server.sh &
    ;;
    stop|STOP)
    kill $(cat tmp/sleep-walking-server.pid)
    ;;
    *)
    echo "Incorrect usage"
    echo "Usage: $0 start|START|stop|STOP" # $0 is the current variable
    exit 1
esac