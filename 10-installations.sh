#!bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
  echo "You are not super User.Get Super User Access."
  exit 1
else 
  echo "You are Super User."
fi

dnf install mysql -y

if [ $? -ne 0 ]
then 
  echo "Installation of mysql...FALURE"
  exit 1
else 
  echo "Installation of mysql...SUCCESS"
fi

dnf install git -y

if [ $? -ne 0 ]
then 
  echo "Installation of GIT...FALURE"
  exit 1
else 
  echo "Installation of GIT...SUCCESS"
fi
