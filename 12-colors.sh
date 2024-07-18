#!bin/bash

USERID=$(id -u)
TIMESTAMP=$(date+%F-%H-%M-%S)
SCRIPTNAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$TIMESTAMP/$SCRIPTNAME.log
R="\e[31m"
G="\e[32m"
N="\e[0m"

VALIDATE(){
  if [ $1 -ne 0]
   then 
     echo -e "$2.. IS $R FAILURE $N"
     exit 1
    else
     echo -e "$2..IS $G SUCCESS $N"
  fi
}

if [ $USERID -ne 0 ]
then
  echo "You are not super User.Get Super User Access."
  exit 1
else 
  echo "You are Super User."
fi

dnf install mysql -y &>>$LOGFILE
VALIDATE $? "Installing MYSQL"

dnf install git -y &>>$LOGFILE
VALIDATE $? "Installing GIT"
