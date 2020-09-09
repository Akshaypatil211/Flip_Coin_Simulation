#!/bin/bash
read -p "enter how many times u want to toss the coin greater than 40 :" num
Heads=0
Tails=0
while (($num!=0))
do
	Flip=$((RANDOM%2))
	if [[ $Flip -eq 0 ]]
	then
		((Heads++))
	else
		((Tails++))
	fi
	if(( $Heads==21 || $Tails == 21)) 
	then
		break
	fi
	((num--))
done

