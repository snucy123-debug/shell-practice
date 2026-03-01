#!/bin/bash

echo "all variables passed through :$@" #All variables of script

echo "Number of variables passed on script :$#" #number of variables script

echo "what is the scriptr name : $0" #Script name 

echo "present working directory :$PWD"

echo "which user is running the script :$PWD"

echo "what is the home directory : $HOME"

echo "PID of the script : $$"

echo "Background PID OF PREVIOUS SCRIPT :$!"

echo "SO ABOVE GIVEN INFORMATION IS ----SPECIAL-VARIABLES------"


#***************************OUTPUT*************************************

all variables passed through :MY MOTHER NAME IS LAKSHMI
Number of variables passed on script :5
what is the scriptr name : 09-Special-variables.sh
present working directory :/home/ec2-user/shell-practice
which user is running the script :/home/ec2-user/shell-practice
what is the home directory : /home/ec2-user
PID of the script : 55796
SO ABOVE GIVEN INFORMATION IS ----SPECIAL-VARIABLES------

