#! /bin/sh

echo ---------------------------------------test ------------------------------------------------

echo use '$*'

for param in $*
do
	echo $param
done

echo ============================================================================

echo use '"$@"'

for param in "$@"
do
	echo $param
done

echo ---------------------------------------test ------------------------------------------------


