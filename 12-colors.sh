#!bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPTNAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPTNAME-$TIMESTAMP.log
R="\e[31m"
G="\e[32m"
N="\e[0m"

echo "Script started executing at: $TIMESTAMP"

VALIDATE(){
  if [ $1 -ne 0 ]
   then 
     echo -e "$2..$R FAILURE $N"
     exit 1
    else
     echo -e "$2..$G SUCCESS $N"
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

dnf install dockerr -y &>>$LOGFILE
VALIDATE $? "Installing Docker"