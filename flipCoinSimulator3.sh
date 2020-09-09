#!/bin/bash

Heads=0
Tails=0
while True
do
	Flip=$((RANDOM%2))
	if [[ $Flip -eq 0 ]]
	then
		((Heads++))
	else
		((Tails++))
	fi
	if(( $Heads==21)) 
	then
		echo "head won :"$(($Heads - $Tails ))
		break
	elif(($Tails == 21))
	then
		echo "Tails won :"$(($Tails - $Heads ))
		break
	fi
done

