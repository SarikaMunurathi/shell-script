#!bin/bash

NUMBER=$1

if [ $NUMBER -gt 10 ]
then 
  echo "Given Number $NUMBER is Greater than 10"
else 
   echo "Given Number $NUMBER is Less than 10"
fi

#-gt, -lt, -eq, -ge, -le