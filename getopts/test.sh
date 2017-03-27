read x
read y

if [ $x -le 100 ] && [ $y -le 100 ] && [ $x -ge -100 ] && [ $y -ge -100 ] && [ $y -ne 0 ]
then
    echo $((x + y))
    echo $((x - y))
    echo $((x * y))
    echo $((x / y))
fi
