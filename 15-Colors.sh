#!?bin/bash

#►COLORS

GREEN="e/[32m"
RED="e/[31m"
MAGENTA="e/[35m"
NO="e/[0m"
USERID=$(id -u)
if [ $USERID -eq 0 ] 
then echo "you were running with root  access please continue" 
else echo  -e "\e[1;33;44m" you were not running with root access please use root access $NO "
exit 1
fi
S
#MAKING-FUNCTION

VALIDATE() {
if [ $1 -eq 0 ]   #so here $1,$2. are args soo it will be like $1=$?,$2=MYSQL,PYTHON3,NGINX.
then 
echo " $2 INSTALLED SUCCESSFULLLY "
else 
echo " $2 INSTALLATION FAILED PLEASE TRY AGAIN"
fi
}
#MY SQL
dnf list installed mysql 
if [ $? -eq 0 ] #So here if exit code = 0 then it just paste my sql is installed ,if  it is not equal to 0 then
                #then it will  instll it simple  the function validate should be down of not installed command because it works
                #so if  its not there down of that it will other command and it will not run"
then
  echo -e " $MAGENTA my sql is already installed $NO "
  exit 1
else
    echo -e "$RED my sql not installed $MAGENTA will install it $NO "
    dnf install mysql 
    VALIDATE $? "mysql"
  
fi

dnf list installed nginx
if [ $? -ne 0 ]
then echo -e " $RED nginx not installed  $MAGENTA WILL INSTALL  IT NOW $NO "
dnf install nginx
VALIDATE $? "Nginx"
else
echo -e " $MAGENTA nginx already installed sucessfully...$NO "
fi
