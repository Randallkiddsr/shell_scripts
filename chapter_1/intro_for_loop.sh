#!/bin/bash

# Write a shell script that displays "man", "bear", "pig", "dog", "cat" and
# "sheep" on screen with each appearing on a seperate line. Try to do this in
# as few lines as possible. 

ANIMALS="man bear pig dog cat sheep"
for ANIMAL in ${ANIMALS}
do 
    echo ${ANIMAL}
done