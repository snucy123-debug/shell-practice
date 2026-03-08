#!/bin/bash

#Find the number less than 65 or not ?

#-eq (equal)
#-ne (not equal)
#-gt (greater than)
#-lt (less than)
#-ge (greater or equal)
#-le (less or equal)

NUMBER=$1
if [ $NUMBER -gt 65 ]  # soo herer we use []square braces for "test" in conditions and we have to give space in first and end [ command ]
then 
echo "$NUMBER is greaterthan  65"
else
echo "$NUMBER is not no greaterthan  65"
fi

# ------------------------------------OUTPUT-----------------------------------------------------
# 9 is not no greaterthan  65
