#!/bin/bash

numberOfFiles=$(find . -maxdepth 1 -not -type d|wc -l)

echo "Let's play! Can you guess the number of files in $(pwd) ? "

function guess(){
	while true;
	do
	
	echo "Type your guess (integers only)"

	read guess
		
		if [[ $guess -eq $numberOfFiles ]];
			then
			echo "Congratulations"
			break;
		elif [[ $guess -lt $numberOfFiles ]];
			then
			echo "Your guess is too low. Type new guess"
		else
			echo "Your guess is to high. Type new guess"
		fi

	done
}

guess
