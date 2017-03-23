#!/bin/bash

count=0

for file in *
do
	chmod +x $file
	echo "$file da co the run"
	count=$(($count+1))
done

echo tong so file dc \"chmod +x\" l $count
