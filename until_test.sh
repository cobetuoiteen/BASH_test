#!/bin/bash

echo 'Nhap vao 1 so > 0'
read num_in
echo so vua nhap la $num_in

if [ "$num_in" -le 0 ]
then
	#neu so nhap vao <=0
	echo So vua nhap khong hop le
else
	#neu so nhap vao > 0
	until [ "$num_in" -eq 0  ];
	do
		echo "this is $num_in"
		num_in=$(($num_in-1));
	done
fi

exit 0
