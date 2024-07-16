#!bin/bash

#Declarationa dn Initialization of Array
PLACES=("Hyderabad" "Chennai" "Banglore")
#While initializing values to array,each value must have "" 
#And also seperation of each value must be done with space

#Printing of Array Values
echo "First Place is : ${PLACES[0]}"
echo "Second Place is : ${PLACES[1]}"
echo "Third Place is : ${PLACES[2]}"
echo "If want to Print all Places at a time: ${PLACES[@]}"