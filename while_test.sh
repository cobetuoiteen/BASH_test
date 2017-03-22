#!/bin/bash

echo "enter a number (should smaller than 100): "
read num_input
echo this is $num_input

while [ 0 -le "$num_input" ]
do
	echo "this is $num_input"
	num_input=$(($num_input-1))
done

# $(( )) : cu phap dung de danh gia va uoc luong mot bieu thuc, do shell ksh su dung, co the thay the bang expr nhung khong nen (cac shell cu dung expr)

exit 0
