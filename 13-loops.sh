#!bin/bash
echo "enter Number: "
read i

for i in (1.."$@")
do 
  echo $i
done
