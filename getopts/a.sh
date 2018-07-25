TEMP=`getopts -o "st:" -- "$@"`
set -- $TEMP

for i in $@ ; do
    echo $i
done

echo "**********************"

while true ; do
   case $1 in
       "-s") echo $@; a="True"; shift ;;
       --) echo $@; shift ; log="$@"; echo $log;;
       *) echo $@; break;;
   esac
done
  
