#! /bin/sh

for file in *
do
	if [ -d $file ]
	then
		cp chmod_all.sh $file/
	fi
done
