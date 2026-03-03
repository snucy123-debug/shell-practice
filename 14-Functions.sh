#!/bin/bash

#FUCNCTIONS 

#function_name() {   ← Start function
#   commands
#}                   ← End function
#---------------------------------------------------------------------------------------#

USERID=$(id -u)
if [ $USERID -eq 0 ] 
then echo "you were running with root  access please continue" 
else echo  -e \e[31m"you were not running with root access please use root access"
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
  echo "my sql is already installed"
  exit 1
else
    echo "my sql not installed will install it"
    dnf install mysql 
    VALIDATE $? "mysql"
  
fi

dnf list installed nginx
if [ $? -ne 0 ]
then echo "nginx not installed yes will it now"
dnf install nginx
VALIDATE $? "Nginx"
else
echo "nginx already installed sucessfully..."
fi

# -----------------------OUTPUT------------------------------

you were running with root  access please continue
Error: No matching Packages to list
so mysql is not installed will install it now
Last metadata expiration check: 0:16:33 ago on Mon Mar  2 18:53:59 2026.
Dependencies resolved.
======================================================================================================================================================
 Package                                    Architecture           Version                           Repository                                  Size
======================================================================================================================================================
Installing:
 mysql                                      x86_64                 8.0.44-1.el9_7                    rhel-9-appstream-rhui-rpms                 2.8 M
Installing dependencies:
 mariadb-connector-c-config                 noarch                 3.2.6-1.el9_0                     rhel-9-appstream-rhui-rpms                  11 k
 mysql-common                               x86_64                 8.0.44-1.el9_7                    rhel-9-appstream-rhui-rpms                  72 k

Transaction Summary
======================================================================================================================================================
Install  3 Packages

Total download size: 2.9 M
Installed size: 60 M
Is this ok [y/N]: y
Downloading Packages:
(1/3): mysql-common-8.0.44-1.el9_7.x86_64.rpm                                                                         1.0 MB/s |  72 kB     00:00
(2/3): mysql-8.0.44-1.el9_7.x86_64.rpm                                                                                 27 MB/s | 2.8 MB     00:00
(3/3): mariadb-connector-c-config-3.2.6-1.el9_0.noarch.rpm                                                            1.1 kB/s |  11 kB     00:10
------------------------------------------------------------------------------------------------------------------------------------------------------
Total                                                                                                                 178 kB/s | 2.9 MB     00:16
Running transaction check
Transaction check succeeded.
Running transaction test
Transaction test succeeded.
Running transaction
  Preparing        :                                                                                                                              1/1
  Installing       : mariadb-connector-c-config-3.2.6-1.el9_0.noarch                                                                              1/3
  Installing       : mysql-common-8.0.44-1.el9_7.x86_64                                                                                           2/3
  Installing       : mysql-8.0.44-1.el9_7.x86_64                                                                                                  3/3
  Running scriptlet: mysql-8.0.44-1.el9_7.x86_64                                                                                                  3/3
  Verifying        : mariadb-connector-c-config-3.2.6-1.el9_0.noarch                                                                              1/3
  Verifying        : mysql-8.0.44-1.el9_7.x86_64                                                                                                  2/3
  Verifying        : mysql-common-8.0.44-1.el9_7.x86_64                                                                                           3/3

Installed:
  mariadb-connector-c-config-3.2.6-1.el9_0.noarch             mysql-8.0.44-1.el9_7.x86_64             mysql-common-8.0.44-1.el9_7.x86_64

Complete!
 mysql installing  sucessfully
Installed Packages
nginx.x86_64                                              2:1.20.1-22.el9_6.3                                              @rhel-9-appstream-rhui-rpms
nginx already installed sucessfully...
