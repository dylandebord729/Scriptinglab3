#!/bin/sh
option=$1
filename=$2

if [ -e $filename ] ; then 

if [ "$option" = "-e" ] ; then
egrep -o '[a-zA-Z0-9.-]+@[a-zA-Z0-9.-]+\.[a-z]{3}\>' $filename 
exit 0
elif [ "$option" = "-p" ] ; then

#Used the following site for getting a phone number
#https://stackoverflow.com/questions/2269586/grep-with-regex-for-phone-number
#grep '\(([0-9]\{3\})\|[0-9]\{3\}\)[ -]\?[0-9]\{3\}[ -]\?[0-9]\{4\}' file

egrep -o '(([0-9]{3})|[0-9]{3}-)[0-9]{3}-[0-9]{4}' $filename
exit 0
fi
echo "Invalid argument"

else
	echo "Invalid file name: $filename"
fi
echo "Usage: $0 (-e|-p) input_file "
