#!/bin/bash

USERID=$(id-u) # Here we use $() to store the command date so we use it.“Run this command and store its OUTPUT”

if ( $USERID -ne 0 )

then
    echo "SORRY!!! YOUR NOT RUNNING IN ROOT ACCESS SO PLEASE USE SUDO SU"

else
    echo "YOUR SUCESSFULLY USING ROOT ACCESS PLEASE CONTINUE"

    fi
    