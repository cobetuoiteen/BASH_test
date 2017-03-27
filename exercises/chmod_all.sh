#!/bin/bash

chmod_all()
{	
	count=0

	for file in *
	do
		if [ -f $file ]
		then
			chmod +x $file
			echo "$file da co the run"
			count=$(($count+1))
		fi
		
#		if [ -d $file ]
#		then
#			cd $file
#			chmod_all
#		fi
			
	done
	
	echo tong so file dc \"chmod +x\" l $count
}

chmod_all
