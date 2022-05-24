#!/bin/bash

# Q2

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


