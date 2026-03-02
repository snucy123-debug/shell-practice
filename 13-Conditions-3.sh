#!/bin/bash
#-----------------------"INSTALL MY SQL"-------------------#


#01►ABOVE FOR ROOT ACCESS.
USERID=$(id -u)
if [ $USERID -ne 0 ]
then
echo "please use root access"
else
echo "Yes !!! youu were in root acess please continue..."
fi

#02► CHECK WEATHER MY SQL IS ALREADY INSTALLED OR NOT ?.

dnf list installed mysql
if[ $? -eq 0]
then
echo "my sql already installed"
else
echo "my  sql not yet iinstalled will install now"
dnf install mysql
if [ $? -eq 0 ]
then 
echo "my sql installed sucessfully...."
else
echo "my sql not installed"
fi
fi