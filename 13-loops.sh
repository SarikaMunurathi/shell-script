#!bin/bash
Number=0
echo "Enter a Number: "
Read Number
for i in {1.."$Number"}
do 
  echo $i
done

echo "Please enter a variable name"
read VARNAME
echo "Value of variable named $VARNAME : ${!VARNAME}"