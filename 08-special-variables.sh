#!bin/bash

echo "To Print All Variables: $@"
echo "To Print Number variables Passed: $#"
echo "To Get Script-Name: $0"
echo "To get Current Working Directory: $PWD"
echo "To get Home direcotory: $HOME"
echo "To get which user is running the script: $USER"
echo "To get HostName: $HOSTNAME"
sleep 60 &  # & denotes to run the in background
echo "To get the process ID of current schell-script: $$"
echo "To get the Process ID of last background command: $!"