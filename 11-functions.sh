#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

VALIDATE(){
   if [ $1 -ne 0 ]
   then
        echo "$2...FAILURE"
        exit 1
    else
        echo "$2...SUCCESS"
    fi
}

if [ $USERID -ne 0 ]
then
    echo "Please run this script with root access."
    exit 1 # manually exit if error comes.
else
    echo "You are super user."
fi

dnf install mysql -y &>>$LOGFILE
VALIDATE $? "Installing MySQL"

dnf install git -y &>>$LOGFILE
VALIDATE $? "Installing Git"






# #!bin/bash

# #!bin/bash

# USERID=$(id -u)
# TIMESTAMP=$(date+%F-%H-%M-%S)
# SCRIPTNAME=$(echo $0 | cut -d "." -F1)
# LOGFILE=/tmp/$TIMESTAMP/$SCRIPTNAME.log

# VALIDATE(){
#   if [ $1 -ne 0]
#    then 
#      echo "$2.. IS FAILURE"
#      exit 1
#     else
#      echo "$2..IS SUCCESS"
#   fi
# }

# if [ $USERID -ne 0 ]
# then
#   echo "You are not super User.Get Super User Access."
#   exit 1
# else 
#   echo "You are Super User."
# fi

# dnf install mysql -y &>>$LOGFILE
# VALIDATE $? "Installing MYSQL"

# dnf install git -y &>>$LOGFILE
# VALIDATE $? "Installing GIT"
