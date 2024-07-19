#!bin/bash
i=0
echo "Enter a Number: "
read i
for i in {1..$i}
do 
  echo $i
done

echo "Please enter a variable name"
read VARNAME
echo "Value of variable named $VARNAME : ${!VARNAME}"