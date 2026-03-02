#!/bin/bash

USERID=$(id -u)  
# Here we use $() to store the command date so we use it.“Run this command and store its OUTPUT”
if  [ $USERID -ne 0 ]  
# Here we use [] for in conditions to text 
then
    echo "SORRY!!! YOUR NOT RUNNING IN ROOT ACCESS SO PLEASE USE SUDO SU"
    exit 1  #we took exit 1 for if user id is  not equal to 0 
            #then they are not using root acess so it have to stop there so if we donnot keep exit 1 here 
            #then it will go to "else" condition also so we use exit code. to stop the script immediately"
else
    echo "YOUR SUCESSFULLY USING ROOT ACCESS PLEASE CONTINUE"

    fi
    