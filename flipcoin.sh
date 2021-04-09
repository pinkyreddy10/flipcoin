#! /bin/bash
result=$(( RANDOM%2 ))
echo $result
if [ $result -eq 0 ]
then
	echo "heads"
else
	echo "tails"
fi
