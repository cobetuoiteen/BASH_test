#!/bin/bash

echo vi du 1

echo +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
int_val=16

hello_world()
{
	int_val=25
	echo $int_val
	echo Hello world
}

echo "Ham hello_world se chay sau day :"

x=$(hello_world)

echo "test"

#x luc nay mang hai gia tri : 25 va Hello world
echo $x

#int_val luc nay = 16 (bien global)
echo $int_val

echo +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

echo vi du 2

echo +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

yes_or_no()
{
	echo "In function parameters are $*"
	echo "Param 1 $1 and Param 2 $2"
	echo "Is your name" "$1?"
	while true
	do
		echo -n "Enter yes or no: "
		read x
		case "$x" in
			[yY] | [yY][eE][sS] )	 return 0;;
			[nN] | [nN][oO])	 return 1;;
			* ) 			 echo "just enter yes or no"
		esac
	done
}

echo "Original Parameters are $*"

if yes_or_no "Is your name" "$1?"
then
	echo "Hi $1"
else
	echo "Never mind"
fi

echo +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

exit 0
