#!?bin/bash

#►COLORS
G="\e[32m"
R="\e[31m"
M="\e[35m"
NO="\e[0m"

USERID=$(id -u)
if [ $USERID -eq 0 ] 
then echo -e "\e[31;42m" "you were running with root  access please continue $NO" 
else echo  -e "$R you were not running with root access please use root access $NO"
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
if [ $? -eq 0 ] #So here if exit code = 0 then it just paste my sql is installed ,if  it is not equal to 0 then
                #then it will  instll it simple  the function validate should be down of not installed command because it works
                #so if  its not there down of that it will other command and it will not run"
then
  echo -e " $M my sql is already installed"
else
    echo -e "$R my sql not installed will install it $NO "
    dnf install mysql 
    VALIDATE $? "mysql"
fi

dnf list installed nginx
if [ $? -ne 0 ]
then echo -e "$R NOT INSTALLED WILL INSTALL IT NOW $NO "
dnf install nginx
VALIDATE $? "Nginx"
else
echo -e "$G NGINX INSTALLED SUCCESSFULLY $NO "
fi

