#! /bin/sh

echo nhap vao 1 chuoi
read array

array=$array

echo

for elem in $array
do
	echo $elem
	echo ${#elem}
#	echo ${!elem}
	echo =================================
done
