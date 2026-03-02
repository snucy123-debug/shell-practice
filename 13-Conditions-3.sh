#!/bin/bash
#-----------------------"INSTALL MY SQL"-------------------#

USERID=$(id -u) # 1st we check weatcher user using root access or not ?

if [ $USERID -ne 0 ]
then
echo "FOR MYSQL  installation please use in root access"
exit 1
else
echo "sucessfully ur with root acess please continue to install"
fi

dnf list installed mysql #checking weather MYSQL already  installed or not ?

if [ $? -nq 0 ]
then
echo "MY SQL IS NOT INSTALLED GOING TO INSTALL IT NOW"
      #So if exit code ($?) is not equal to 0 then my sql not installed so check below.
      dnf install mysql
      if [ $? -eq 0 ]
      then 
      echo "my sql installing sucessfully..........."
      else
      echo "ERROR!! My sql not installing...........please try again"
      fi