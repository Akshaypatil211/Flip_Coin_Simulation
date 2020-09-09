#!/bin/bash

read -p "enter the count how many time u want to toss :" num
Heads=0
Tails=0
while (( $num ))
do
	Flip=$((RANDOM%2))
	if [[ $Flip -eq 0 ]]
	then
		((Heads++))
	else
		((Tails++))
	fi
	((num--))
done
echo "Head won :"$Heads
echo "Tails won :"$Tails
