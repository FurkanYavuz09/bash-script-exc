#!/bin/bash

# Q1 Write a shell script that reads integers (one-per-line) from the user until it reads the word “end”.
#Afterward, it will report the maximum number given by the user.

#add function takes an integer parameter and creates a string with '*' length integer parameter 
add () {	
	temp=" "
	x="*"
	counter=0
	while [ $counter -ne "$1" ]
	do
		temp+=$x
		counter=$((counter+1))
	done
	echo "$temp"
 	}
 # giving a integer parameter to add function from a file taking as a command line argument  by reading line by line
  	
while read -r line
do
	
	add $line
	
done < $1





