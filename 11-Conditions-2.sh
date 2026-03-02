#!/bin/bash

USERID=(id -u)

if ( $USERID -nq 0 )

then
    echo "SORRY!!! YOUR NOT RUNNING IN ROOT ACCESS SO PLEASE USE SUDO SU"
    exit 1

else
    echo "YOUR SUCESSFULLY USING ROOT ACCESS PLEASE CONTINUE"

    fi
    