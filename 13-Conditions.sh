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
if [ $? -eq 0 ]
then
echo "my sql already installed"
exit 1
else
echo "my  sql not yet installed will install now"
fi
#03►IF MYSQL NOT YET INSTALLED WILL INSTALL IT NOW.

dnf install mysql
if [ $? -eq 0 ]
then 
echo "my sql installed sucessfully...."
else
echo "my sql not installed PLEASE TRY AGAIN..."
fi

#---------------------------OUTPUT------------------------------
# Yes !!! you were in root acess please continue...
# Error: No matching Packages to list
# my  sql not yet installed will install now
# Last metadata expiration check: 0:07:00 ago on Mon Mar  2 11:57:50 2026.
# Dependencies resolved.
# ======================================================================================================================================================
#  Package                                    Architecture           Version                           Repository                                  Size
# ======================================================================================================================================================
# Installing:
#  mysql                                      x86_64                 8.0.44-1.el9_7                    rhel-9-appstream-rhui-rpms                 2.8 M
# Installing dependencies:
#  mariadb-connector-c-config                 noarch                 3.2.6-1.el9_0                     rhel-9-appstream-rhui-rpms                  11 k
#  mysql-common                               x86_64                 8.0.44-1.el9_7                    rhel-9-appstream-rhui-rpms                  72 k

# Transaction Summary
# ======================================================================================================================================================
# Install  3 Packages

# Total download size: 2.9 M
# Installed size: 60 M
# Is this ok [y/N]: y
# Downloading Packages:
# (1/3): mariadb-connector-c-config-3.2.6-1.el9_0.noarch.rpm                                                             72 kB/s |  11 kB     00:00
# (2/3): mysql-common-8.0.44-1.el9_7.x86_64.rpm                                                                         228 kB/s |  72 kB     00:00
# (3/3): mysql-8.0.44-1.el9_7.x86_64.rpm                                                                                420 kB/s | 2.8 MB     00:06
# ------------------------------------------------------------------------------------------------------------------------------------------------------
# Total                                                                                                                 430 kB/s | 2.9 MB     00:06
# Running transaction check
# Transaction check succeeded.
# Running transaction test
# Transaction test succeeded.
# Running transaction
#   Preparing        :                                                                                                                              1/1
#   Installing       : mariadb-connector-c-config-3.2.6-1.el9_0.noarch                                                                              1/3
#   Installing       : mysql-common-8.0.44-1.el9_7.x86_64                                                                                           2/3
#   Installing       : mysql-8.0.44-1.el9_7.x86_64                                                                                                  3/3
#   Running scriptlet: mysql-8.0.44-1.el9_7.x86_64                                                                                                  3/3
#   Verifying        : mariadb-connector-c-config-3.2.6-1.el9_0.noarch                                                                              1/3
#   Verifying        : mysql-8.0.44-1.el9_7.x86_64                                                                                                  2/3
#   Verifying        : mysql-common-8.0.44-1.el9_7.x86_64                                                                                           3/3

# Installed:
#   mariadb-connector-c-config-3.2.6-1.el9_0.noarch             mysql-8.0.44-1.el9_7.x86_64             mysql-common-8.0.44-1.el9_7.x86_64

# Complete!
# my sql installed sucessfully....

