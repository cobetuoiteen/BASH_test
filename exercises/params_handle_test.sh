#! /bin/sh

echo ---------------------------------------test ------------------------------------------------
echo

echo use '$*'

for param in $*
do
	echo $param
done

echo
echo ============================================================================
echo

echo use '"$@"'

for param in "$@"
do
	echo $param
done

echo
echo ---------------------------------------test ------------------------------------------------


