#!/bin/bash

<<comment 
	Write a shell script that takes an optional argument as a directory and removes all zero length
ordinary files in the directory. If directory argument is not given, it should remove all zero-length
files in the current directory. If given directory argument is not a valid directory, your program
should terminate with an error (exit 1). You can use man [ command to learn more about checking
file information.
Ex:
$ ls –l /home/std/Desktop
-rw------- 1 std std 152144 Jun 20 2005 alice-in-wonderland.txt
-rw------- 1 std std 0 Jun 20 2005 barleby-scrivener.txt
-rw------- 1 std std 13421 Jun 20 2005 calaveras-county.txt
-rw------- 1 std std 635 Jun 20 2005 french.txt
-rw------- 1 std std 0 Jun 20 2005 hawthorne.txt
-rw------- 1 std std 172541 Jun 20 2005 looking-glass.txt
drwx------ 14 std std 476 May 25 2007 shakespeare
-rw------- 1 std std 0 Jun 20 2005 trees-and-other-poems.txt
$ ./myprog3.sh /home/std/Desktop
3 zero-length files are removed from the directory: /home/std/Desktop
$ ls –l /home/std/Desktop
-rw------- 1 std std 152144 Jun 20 2005 alice-in-wonderland.txt
-rw------- 1 std std 13421 Jun 20 2005 calaveras-county.txt
-rw------- 1 std std 635 Jun 20 2005 french.txt
-rw------- 1 std std 172541 Jun 20 2005 looking-glass.txt
drwx------ 14 std std 476 May 25 2007 shakespeare
 

comment

# I checked if there is a optional argument in line 11 . 

#If optional argument is given it enters the if block in line 11 and I checked the given argument  is valid or not .If not I give an error and exit.

#If optional argument is not given line 23 work and it takes the directory as a current directory.

if [ $# -ge 1 ]
then
 	if [[ -d "$1" ]]
	then
		directory=$1
	else
		echo "argument is not a valid path"
		exit 1
	fi

else 
	directory=$(pwd)
	
	echo "$directory"
fi
var="$(find $directory -maxdepth 1 -size 0 -type f | wc -l)" 

find $directory -maxdepth 1 -size 0 -type f -delete

echo "$var zero-length files are removed from the directory: $directory"
