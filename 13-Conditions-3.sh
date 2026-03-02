#!/bin/bash
#-----------------------"INSTALL MY SQL"-------------------#


#01►ABOVE FOR ROOT ACCESS.
USERID=$(id -u)
if [ $USERID -ne 0 ]
then
echo "please use root access"
exit 1
else
echo "Yes !!! you were in root acess please continue..."

fi

#02► CHECK WEATHER MY SQL IS ALREADY INSTALLED OR NOT ?.

dnf list installed mysql
if[ $? -eq 0 ]
then
echo "my sql already installed"
exit
else
echo "my  sql not yet installed will install now"

#03►IF MYSQL NOT YET INSTALLED WILL INSTALL IT NOW.

dnf install mysql
if [ $? -eq 0 ]
then 
echo "my sql installed sucessfully...."
else
echo "my sql not installed PLEASE TRY AGAIN..."
fi
fi