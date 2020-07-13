#!/bin/bash
heads=0
tails=0
flag=0
while [ $flag -eq 0 ]
do
	flip=$(( RANDOM%2 ))
	if [ $flip -eq 1 ]
	then
		heads=$(( $heads+1 ))
	else
		tails=$(( $tails+1 ))
	fi
	if [ $heads -eq 21 ] || [ $tails -eq 21 ]
	then
		flag=1
	fi
done
echo "Heads appered "$heads" times"
echo "Tails appeared "$tails" times"

