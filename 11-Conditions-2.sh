#!/bin/bash

USERID=$(id -u)  
# Here we use $() to store the command date so we use it.“Run this command and store its OUTPUT”
if  [ $USERID -ne 0 ]  
# Here we use [] for in conditions to text 
then
    echo "SORRY!!! YOUR NOT RUNNING IN ROOT ACCESS SO PLEASE USE SUDO SU"
            #we took exit 1 for if user id is  not equal to 0 
            #then they are not using root acess so it have to stop there so if we donnot keep exit 1 here 
            #then it will go to "else" condition also so we use exit code. to stop the script immediately"
else
    echo "YOUR SUCESSFULLY USING ROOT ACCESS PLEASE CONTINUE"

    fi


#-------OUTPUT----------------

# 3.239.208.115 | 172.31.9.178 | t3.micro | https://github.com/snucy123-debug/shell-practice.git
# [ ec2-user@ip-172-31-9-178 ~/shell-practice ]$ sh 11-Conditions-2.sh
# SORRY!!! YOUR NOT RUNNING IN ROOT ACCESS SO PLEASE USE SUDO SU

# 3.239.208.115 | 172.31.9.178 | t3.micro | https://github.com/snucy123-debug/shell-practice.git
# [ ec2-user@ip-172-31-9-178 ~/shell-practice ]$ sudo su

# 3.239.208.115 | 172.31.9.178 | t3.micro | https://github.com/snucy123-debug/shell-practice.git
# [ root@ip-172-31-9-178 /home/ec2-user/shell-practice ]# sh 11-Conditions-2.sh
# YOUR SUCESSFULLY USING ROOT ACCESS PLEASE CONTINUE

    