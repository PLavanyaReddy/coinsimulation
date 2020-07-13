#!/bin/bash
read -p "Enter number of times the coin should be flipped: " num
heads=0
tails=0
for (( i=1;i<=$num;i++ ))
do
	flip=$(( RANDOM%2 ))
	if [ $flip -eq 1 ]
	then
		heads=$(( $heads+1 ))
	else
		tails=$(( $tails+1 ))
	fi
done
echo "Heads appered "$heads" times"
echo "Tails appeared "$tails" times"

