#! /bin/bash
heads=0
tails=0
while [ $heads -ne 21 -a $tails -ne 21 ]
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
headwins=$(( heads-tails ))
tailwins=$(( tails-heads ))

if [ $heads -gt $tails ]
then
	echo "heads wins " $headwins
elif [ $heads -lt $tails ]
then
	echo "tails wins " $tailwins
else
	echo "tie "
fi
