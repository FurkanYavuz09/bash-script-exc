#!/bin/bash

# Q2 ) Write a shell script that takes a single command line argument which is a file containing one
#integer per line as the following:
#20
#18
#5
#32
#4
#From this data, your program should print out a row of stars of the given length for each integer. For
#the input above, your program should print the following:
#Ex:
#$ ./myprog1.sh filename
#********************
#******************
#*****
#********************************
#****


#I take the first input at first and choose that input as a max variable then in a while loop I take input until user enter 'end' .
#Everytime after the input I compared the input with a max.If input is bigger than max variable then new max become that input.
  
echo "Enter a sequence of numbers followed by \"end\""
read num1
max=$num1
while [[ "$num1" != "end" ]]
do
	read num1
	if [[ $num1 -gt $max ]]
	then
		max=$num1
	fi	
done 
echo "Maximum : $max"


