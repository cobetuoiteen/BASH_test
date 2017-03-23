#!/bin/bash

option_handle()
{
	case "$1" in
		"-h" | "--help" ) #print usage ;;
		"-d" ) #print current dir;;
		"--cd" "dir" ) #cd vao dir;;
		"-n" ) #show number agrumnent;;
		"-s" 'string' ) #printf **string**;;
		* ) echo "error $1"
	esac
exit 0	
}

queue_option()
{
	for option in $*
	do
		option_handle $option
	done
exit 0
}

echo 
echo
echo
echo
echo
echo

queue_option $*
