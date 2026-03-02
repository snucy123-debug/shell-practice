#!/bin/bash

USERID=$(id-u)  
# Here we use $() to store the command date so we use it.“Run this command and store its OUTPUT”
if  [ $USERID -ne 0 ]  
# Here we use [] for in conditions to text 
then
    echo "SORRY!!! YOUR NOT RUNNING IN ROOT ACCESS SO PLEASE USE SUDO SU"
    exit 1 # give exit code if it gives othher than 0 upto 126
else
    echo "YOUR SUCESSFULLY USING ROOT ACCESS PLEASE CONTINUE"

    fi
    