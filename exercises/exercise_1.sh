#!/bin/bash

__GLOBAL_num_arg=$#


#arg_handle()
#{
#	for arg in "$#"
#	do
#}

debug_option()
{
	echo $*
	echo $1
	echo $2
	echo $3
}

help_option()
{
	echo 'usage : test_arugument [OPTION]'
	echo 'OPTION list: '
	echo " -h | --help : print usage"
	echo "-d           : print current dir"
	echo "--cd <dir>   : change dir to <dir>"
	echo "-n           : print number of arguments"
	echo "-s <string>  : print a string with special format"
}

dir_option()
{
	pwd
}

cd_option()
{
		cd > echo $1
}

num_arg_option()
{
	echo $__GLOBAL_num_arg
}

format_string_option()
{
	echo -e "\033[32m *** $1 *** \033[0m"
}

option_handle()
{
	case $1 in
		"-h" | "--help" ) help_option;;
		"-d" ) dir_option;;
		"--cd" ) cd_option $2 ;;
		"-n" ) num_arg_option;;
		"-s" ) format_string_option "$2";;
		* ) echo "error $1, type -h or --help for more information";;
	esac	
}

queue_option()
{
	# neu khong co option nao duoc nhap vao
	if [ -z "$*" ]
	then
		echo "error_1: no argument"
		help_option
		exit 1
	fi
	
	#debug_option $*
	
	count_arg=1

	while [ "$count_arg" -le $# ]
	do
		#arg hien tai la gi
		#echo "$count_arg : ${!count_arg} : \$$count_arg"	
		
		echo
	
		#lam cong viec gi
		if [ "${!count_arg}" = "-s" ]
		then
			temp=$(($count_arg+1))
			option_handle ${!count_arg} "${!temp}"
			((count_arg++))
		elif [ "${!count_arg}" = "--cd" ]
		then
			temp=$((count_arg+1))	
			option_handle ${!count_arg} "${!temp}"
			((count_arg++))	
		else
			option_handle ${!count_arg}
		fi

		echo

		#dieu kien dung cua vong while
		((count_arg++))
	done

exit 0
}

queue_option "$@"
