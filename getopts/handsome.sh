#logger()
#{
#    while getopts "st:n:a:" opt; do
#       case $opt in
#          s) flag="true";;
#          t|n|a) echo "Do nothing";;
#       esac
#    done
#
#    shift `expr $OPTIND - 1`
#    if [ $flag = "true" ]; then
#        echo "Message is " $@
#    fi
#}

logger() {
    local flag=0
    local log
    local TEMP=`getopt -o if:ep:sS:t:n:P:Tdu:hV --long \id:,\file:,\skip-empty,\no-act,\priority:,\octet-count,\prio-prefix,\stderr,\size:,\tag:,\server:,\port:,\tcp,\udp,\rfc3164,\rfc5424:,\sd-id:,\sd-param:,\msgid:,\socket:,\socket-errors:,\journald:,\help,\version -- "$@"`
    eval set -- "$TEMP"
    while true; do
        echo $@
        case $1 in
           -s|--stderr) flag=1  ; shift          ;;
           --         ) shift   ; log=$@ ; break ;;
           *          ) shift                    ;;
        esac
    done
    if [ $flag -eq 1 ]; then
        echo "ERROR ($(basename "$0")): $log" >&2
    fi

    local LOGGER=`which logger`
    $LOGGER "$@" 2> /dev/null
}


logger $@
