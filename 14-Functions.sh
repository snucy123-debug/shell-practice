#!/bin/bash

#FUCNCTIONS 

#function_name() {   ← Start function
#   commands
#}                   ← End function
#---------------------------------------------------------------------------------------#

USERID=$(id -u)
if [ $USERID -eq 0 ] 
then echo "you were running with root  access please continue"
else echo "you were not running with root access please use root access"
exit 1
fi

#MAKING-FUNCTION

VALIDATE() {
if [ $1 -eq 0 ]   #so here $1,$2. are args soo it will be like $1=$?,$2=MYSQL,PYTHON3,NGINX.
then 
echo " $2 installing  sucessfully "
else 
echo " $2 insatting failure Please try again"
fi
}
#MY SQL
dnf list installed mysql 
if [ $? -nq 0 ]
then
  echo "so mysql is not installed will install it now"
else
    echo "my sql is already installed"
    exit 1
 dnf install mysql 
 VALIDATE $? "MYSQL"
 fi
 

