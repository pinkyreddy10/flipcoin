#! /bin/bash
heads=0
tails=0
for (( i=1; i<=30; i++ ))
do
	result=$(( RANDOM%2 ))
	echo $result
	if [ $result -eq 0 ]
	then
		heads=$(( heads+1 ))
	else
		tails=$(( tails+1 ))
	fi
done
echo "heads " $heads
echo "tails " $tails
