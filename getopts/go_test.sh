#!/bin/bash

# “h” and “help” option : help.
# “n” option : show number of arguments.
# “s" <string> : format string.
# "cd" <dir> : change dir to <dir>.
# "d" option : show current dir.

# read the options
TEMP=`getopt -o hnds:p: --long \help,\cd:,\printf: -- "$@"`
echo $TEMP
eval set -- "$TEMP"
#echo $*

echo $1
#echo $2

# extract options and their arguments into variables.
while true 
do
    case "$1" in
	-h | --help ) echo "help"; shift;;

        --cd )
            case "$2" in
                "" ) echo cd ;shift 2;;
                * ) echo cd "$2"; shift 2;;
            esac ;;

        -n ) echo $#; shift;;

        -s )
            case "$2" in
                "" ) echo s ;shift 2;;
                * ) echo s with string ; shift 2;;
            esac ;;

	-- ) shift ; break;;
	
	-p | --printf )
	 	case $2 in
			"" ) echo ""; shift 2;;
			* ) for a in $2; do echo $a; done; shift 2;;
	    	esac
		;;
	
	-d ) echo `pwd`; shift;;

        * ) echo "Internal error! with $1" ; exit 1 ;;
    esac
done
