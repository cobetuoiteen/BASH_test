#! /bin/sh
# test_1.sh
#author : Truong Huynh Tien
#date: 2017_03_20

for file in $HOME/Desktop/Hello_world_test/*
do
	if grep -l 'main()' $file
	then
		more $file
	fi
done
exit()
