#!/bin/h
if [ $# != 2 ]
then
	echo "Invalid input"
	exit 0
fi
if [ $1 -le 0 ] || [ $2 -le 0 ] 
then
	echo "Input must be greater than 0"
	exit 0
fi
row=$1
col=$2
i=1
j=1
while [ $i -le $row ]
do
	while  [ $j -le $col ]
	do
		mult=`expr $i \* $j`
		printf "%d*%d=%d\t" $i $j $mult
		j=`expr $j + 1`
	done
	printf "\n"
	j=1
	i=`expr $i + 1`
done
exit 0
