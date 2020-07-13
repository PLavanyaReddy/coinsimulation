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
	elif [ $heads -eq 21 ] && [ $tails -eq 21 ]
	then
		flag=2
	fi
done
if [ $flag -eq 2 ]
then
	while [ $flag -eq 2 ]
	do
		flip=$(( RANDOM%2 ))
        if [ $flip -eq 1 ]
        then
                heads=$(( $heads+1 ))
        else
                tails=$(( $tails+1 ))
        fi
	if [ $(( $heads-$tails )) -eq 2 ] || [ $(( $tails-$heads )) -eq 2 ]
	then
		flag=0
	fi
	done
fi
echo "Heads appered "$heads" times"
echo "Tails appeared "$tails" times"

