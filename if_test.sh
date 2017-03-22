#!/bin/bash

echo Nhap vao 1 so bi mat bat ki trong khoang tu 0 toi 1
read num_input

if [ $num_input = "0" ]
then
	echo "Ban vua nhap vao so 0"
else
	echo Ban vua nhapo vao so 1
fi

exit 0
