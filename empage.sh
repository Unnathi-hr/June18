#!/bin/bash
echo "please enter the file name"
read fname
echo "enter the age of employee"
read n
echo "list of employee whose age is $n"
if ! [ -f "$fname" ]; then
	echo "error: file $fname does not exist."
	exit 1

fi

sed '1d' "$fname" > temp

found=false
while read -r line
do
	age=$(echo "$line" | awk -F " " '{print $3}')

	if [ "$age" is -ge "$n" ]
       	then
		echo "$line" | awk -F " " '{print $1}'
		found=true
	fi
done < temp
if ! $found; then
	echo "no employee found in the given age $n"
fi


