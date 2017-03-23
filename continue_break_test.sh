#!/bin/bash

# theo ly thuyet, while true se lap vo han nhung chuong trinh se chi chay va in ra hello 1 lan
# vi while bi break
while true
do
	echo Hello
	break
done

#

for x in 1 2 3 4 5
do
	echo "dong nay minh khong hieu : $x"
	if [ $x == 2 ]
	then
		continue 2
	else
		echo $x
	fi
done	
