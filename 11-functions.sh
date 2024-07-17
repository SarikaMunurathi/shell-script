#!bin/bash

#!bin/bash

USERID=$(id -u)


VALIDATE(){
  if [ $1 -ne 0]
   then 
     echo "$2.. IS FAILURE"
     exit 1
    else
     echo "$2..IS SUCCESS"
  fi
}

if [ $USERID -ne 0 ]
then
  echo "You are not super User.Get Super User Access."
  exit 1
else 
  echo "You are Super User."
fi

dnf install mysql -y
VALIDATE $? "Installing MYSQL"

dnf install git -y
VALIDATE $? "Installing GIT"
